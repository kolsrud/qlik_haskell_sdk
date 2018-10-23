module SDKMonad where

import System.IO (hFlush, stdout)
import Control.Monad.Trans (liftIO)
import Control.Concurrent.MVar
import Control.Monad.State.Lazy
import qualified Network.WebSockets  as WS
import Text.JSON.Types (JSValue)
import Data.Maybe (isJust)
import Data.Map (Map)
import qualified Data.Map as Map

type SDKM a = StateT (MVar SDKState) IO a
type RequestId = Int
type ResponseCallback = ResponseMessage -> SDKM ()
data ResponseMessage = ResponseMessage RequestId (Maybe JSValue) (Maybe JSValue) (Maybe JSValue)
                     | PushMessage String

data SDKState = SDKState {
  connection           :: WS.Connection,
  requestId            :: Int,
  requestMap           :: Map Int ResponseCallback,
  debugConsoleIsActive :: Bool
}

initialState conn = SDKState {
  connection           = conn,
  requestId            = 0,
  requestMap           = Map.empty,
  debugConsoleIsActive = False
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

atomicWrite :: (SDKState -> SDKState) -> SDKM ()
atomicWrite f = atomic f'
 where
  f' s = ((), f s)

atomicRead :: (SDKState -> a) -> SDKM a
atomicRead f = atomic f'
 where
  f' s = (f s, s)

newRequestIdM :: SDKM RequestId
newRequestIdM = atomic $ \s -> let id = requestId s
                                in (id, s {requestId = id +1})

addRequestListner :: RequestId -> ResponseCallback -> SDKM ()
addRequestListner id callback = atomicWrite $ \s ->
  s { requestMap = Map.insert id callback (requestMap s) }

setResult :: ResponseMessage -> SDKM ()
setResult r@(PushMessage _) = return ()
setResult r@(ResponseMessage id _ _ _) = do
  m_callback <- atomic $ \s -> let requests = requestMap s
                                in ( Map.lookup id requests
                                   , s { requestMap = Map.delete id requests }
                                   )
  case m_callback of
    Nothing -> error $ "No request with id " ++ show id ++ " found in map."
    Just callback -> callback r

activateDebugConsole, deactivateDebugConsole :: SDKM ()
activateDebugConsole   = atomicWrite (\s -> s { debugConsoleIsActive = True  })
deactivateDebugConsole = atomicWrite (\s -> s { debugConsoleIsActive = False })

printToDebugConsole :: String -> SDKM ()
printToDebugConsole msg = do
  debugConsole <- atomicRead debugConsoleIsActive
  when debugConsole (liftIO $ putStrLn msg >> hFlush stdout)
