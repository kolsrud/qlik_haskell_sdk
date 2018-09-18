module SDKMonad where

import Control.Monad.Trans (liftIO)
import Control.Concurrent.MVar
import Control.Monad.State.Lazy
import qualified Network.WebSockets  as WS
--import Text.JSON
import Text.JSON.Types (JSValue)

import Data.Map (Map)
import qualified Data.Map as Map

type SDKM a = StateT (MVar SDKState) IO a
type RequestId = Int
type ResponseCallback = ResponseMessage -> IO ()
data ResponseMessage = ResponseMessage RequestId (Maybe JSValue) JSValue
                     | PushMessage String

data SDKState = SDKState {
  connection :: WS.Connection,
  requestId  :: Int,
  requestMap :: Map Int ResponseCallback
}

initialState conn = SDKState {
  connection = conn,
  requestId  = 0,
  requestMap = Map.empty
}

readState :: (SDKState -> a) -> SDKM a
readState f = do
  mvar <- get
  liftIO $ fmap f (readMVar mvar)
          
atomic :: (SDKState -> (a, SDKState)) -> SDKM a
atomic f = do
  mvar <- get
  liftIO $ do state <- takeMVar mvar
              let (x, state') = f state
              putMVar mvar state'
              return x
  
newRequestIdM :: SDKM RequestId
newRequestIdM = atomic $ \s -> let id = requestId s
                                in (id, s {requestId = id +1})

addRequestListner :: RequestId -> ResponseCallback -> SDKM ()
addRequestListner id callback = atomic $ \s ->
  ((), s { requestMap = Map.insert id callback (requestMap s) })

setResult :: MVar SDKState -> ResponseMessage -> IO ()
setResult mvar r@(PushMessage _) = return ()
setResult mvar r@(ResponseMessage id _ _) = do
  s <- takeMVar mvar
  let requests = requestMap s
  case Map.lookup id requests of
    Nothing -> error $ "No request with id " ++ show id ++ " found in map."
    Just callback -> do
      putMVar mvar (s { requestMap = Map.delete id requests })
      callback r
