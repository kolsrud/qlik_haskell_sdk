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

getState :: SDKM SDKState
getState = do
  mvar <- get
  liftIO $ readMVar mvar

putState :: SDKState -> SDKM ()
putState s = do
  mvar <- get
  liftIO $ tryTakeMVar mvar
  liftIO $ putMVar mvar s

newRequestIdM :: SDKM RequestId
newRequestIdM = do
  s <- getState
  let id = requestId s
  putState (s { requestId = id + 1})
  return id

addRequestListner :: RequestId -> ResponseCallback -> SDKM ()
addRequestListner id callback = do
  s <- getState
  putState (s { requestMap = Map.insert id callback (requestMap s)})

setResult :: MVar SDKState -> ResponseMessage -> IO ()
setResult mvar r@(PushMessage _) = return ()
setResult mvar r@(ResponseMessage id _ _) = do
  s <- takeMVar mvar
  let requests = requestMap s
  case Map.lookup id requests of
    Nothing -> error $ "No request with id " ++ show id ++ " found in map."
    Just callback -> do
      callback r
      putMVar mvar (s { requestMap = Map.delete id requests })
