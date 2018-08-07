module SDKBase where

import           Control.Concurrent  (forkIO, killThread)
import           Control.Monad       (forever, unless)
import           Control.Monad.Trans (liftIO)
import           Network.Socket      (withSocketsDo)
import           Data.Text           (Text)
import qualified Data.Text           as T
import qualified Data.Text.IO        as T
import qualified Network.WebSockets  as WS
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as C8
import           Data.CaseInsensitive  ( CI )
import qualified Data.CaseInsensitive as CI
       
import Text.JSON
import Text.JSON.Types
import Control.Concurrent.MVar
import Control.Monad.State.Lazy
import Data.Maybe
import Data.Map (Map)
import qualified Data.Map as Map
import Data.List
import Control.Exception (catch)
import SDKMonad
import AbstractStructure
import Debug.Trace

rpcRequest :: Handle -> RequestId -> String -> ParameterList -> String
rpcRequest handle requestId method params =
  "{\"jsonrpc\":\"2.0\",\"id\":" ++ show requestId ++
  ",\"method\":\"" ++ method ++
  "\",\"handle\": " ++ show handle ++
  ",\"params\":[" ++ intercalate "," (map (encode.showJSON.snd) params) ++ "]}"

newtype App = App QixObject

instance JSON App where
  readJSON v = case (readJSON v)::(Result QixObject) of
    Error e -> Error $ "Unable to parse as App. " ++ e ++ ": " ++ show v
    Ok q -> Ok (App q)
  showJSON (App q) = showJSON q

instance JSON QixObject where
  showJSON _ = error "QixObject showJSON is undefined."
  readJSON v = case v of
    JSObject obj ->
      let h = getProp obj "qHandle"
          t = getProp obj "qType"
       in Ok (QixObject h t)
    _ -> error $ "Type error parsing QixObject (" ++ show v ++ ")"

data QixObject = QixObject Handle String deriving Show

type ResponseProcessor a = ResponseMessage -> a
type Handle = Int
type URL = String
type Port = Int
data Task a = Task {
--  threadId :: ThreadId,
  taskMVar :: MVar a
}
type ParameterList = [(String, Value)]

parseResponseMessage :: Text -> ResponseMessage
parseResponseMessage msg =
  case decode (T.unpack msg) of
    Error e -> error $ "parseResponseMessage: " ++ e
    Ok (JSObject obj) ->
      let m_id     = getPropMaybe obj "id"
       in case m_id of
            Nothing ->
              let method = getProp obj "method"
               in trace (show (AbstractStructure obj)) $ PushMessage method
            Just id ->
              let result = getProp obj "result"
                  ret    = getPropMaybe result "qReturn"
               in trace (show (AbstractStructure obj)) $ ResponseMessage id ret (JSObject result)
    Ok x -> error $ "parseResponseMessage: " ++ (show x)

getProp :: JSON a => JSObject JSValue -> String -> a
getProp obj prop =
  let m_p = get_field obj prop
   in case fmap readJSON m_p of
        Just (Error e) -> error ("getProp: " ++ e ++ "(" ++ show m_p ++")")
        Just (Ok n) -> n
        Nothing -> error $ "Could not find property " ++ prop ++ " in json " ++ (show (AbstractStructure obj))

getPropMaybe :: JSON a => JSObject JSValue -> String -> Maybe a
getPropMaybe obj prop = case get_field obj prop of
  Nothing -> Nothing
  Just p -> case readJSON p of
    Error e -> error ("getProp: " ++ e ++ "(" ++ show p ++")")
    Ok n -> Just n

sendRequestM :: Handle -> String -> ParameterList -> ResponseProcessor a
             -> SDKM (Task a)
sendRequestM handle method params onResponse = do
  id <- newRequestIdM
  responseTask <- makeResponseTask id onResponse
  let rpcCall = rpcRequest handle id method params
  sendMessage rpcCall
  return responseTask

sendMessage :: String -> SDKM ()
sendMessage msg = do
  s <- getState
  let conn = connection s
  putState s
  -- liftIO $ putStrLn ("Sending message:   " ++ msg)
  liftIO $ WS.sendTextData conn (T.pack msg)

responseListner :: WS.Connection -> MVar SDKState -> IO ()
responseListner conn mvar = forever $ do
  txt <- WS.receiveData conn
  -- putStrLn ("Receiving message: " ++ T.unpack txt)
  setResult mvar (parseResponseMessage txt)

makeResponseTask :: RequestId -> ResponseProcessor a -> SDKM (Task a)
makeResponseTask id onResponse = do
  mvar <- liftIO $ newEmptyMVar
  addRequestListner id (\response -> putMVar mvar (onResponse response))
  return (Task { taskMVar = mvar })

withConnection :: URL -> Port -> SDKM () -> IO ()
withConnection url port m = do
  putStrLn $ "Connecting to " ++ url ++ ":" ++ (show port)
  catch (withSocketsDo $ WS.runClient url port
                                          "/app/"
                                          (runSDK m)
        )
    (\e -> case e::WS.ConnectionException of
             WS.ConnectionClosed -> return ()
             _ -> putStrLn $ "Caught error: " ++ show e)
 
setupSDK :: WS.Connection -> SDKM a -> SDKM a
setupSDK conn m = do
  mvar <- get
  threadId <- liftIO $ forkIO (responseListner conn mvar)
  x <- m
--  liftIO $ killThread threadId
  return x

runSDK :: SDKM () -> WS.ClientApp ()
runSDK m conn = do
  liftIO (putStrLn "runSDK")
  stateVar <- liftIO $ newMVar (initialState conn)
  evalStateT (setupSDK conn m) stateVar
  WS.sendClose conn (T.pack "Bye!")

awaitResult :: Task a -> SDKM a
awaitResult = liftIO.takeMVar.taskMVar
