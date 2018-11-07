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
import Control.Lens ((^.))
import Data.Maybe
import Data.Map (Map)
import qualified Data.Map as Map
import Data.List
import Control.Exception (catch)
import SDKMonad
import Task
import AbstractStructure
import Debug.Trace
       
rpcRequest :: Handle -> RequestId -> String -> ParameterList -> String
rpcRequest handle requestId method params =
  "{\"jsonrpc\":\"2.0\",\"id\":" ++ show requestId ++
  ",\"method\":\"" ++ method ++
  "\",\"handle\": " ++ show handle ++
  ",\"params\":[" ++ intercalate "," (map (encode.showJSON.snd) params) ++ "]}"

class QixClass a where
  getHandle :: a -> Handle
 
-- newtype App = App QixObject

-- instance JSON App where
--   readJSON v = case (readJSON v)::(Result QixObject) of
--     Error e -> Error $ "Unable to parse as App. " ++ e ++ ": " ++ show v
--     Ok q -> Ok (App q)
--   showJSON (App q) = showJSON q

type ResponseProcessor a = ResponseMessage -> Either String a
type URL = String
type Port = Int
type ParameterList = [(String, Value)]

onVoidResponse :: String -> String -> ResponseProcessor ()
onVoidResponse methodId propId (ResponseMessage _ _ _ (Just msg)) = Left ("Error received on call to " ++ methodId ++ ": " ++ show msg)
onVoidResponse methodId propId (ResponseMessage _ _ m_result _) = case fmap readJSON m_result of
  Nothing -> Left $ "No result value exists for response to " ++ methodId
  Just (Error e) -> Left $ "Cannot read return value for " ++ methodId ++ ": " ++ (show m_result)
  Just (Ok (ValueObject a)) -> Right ()

onSingleValueResponse :: ValueType a => String -> String -> ResponseProcessor a
onSingleValueResponse methodId propId (ResponseMessage _ _ _ (Just errorMsg)) = Left $ "Error received on call to " ++ methodId ++ ": " ++ show errorMsg
onSingleValueResponse methodId propId (ResponseMessage _ _ m_result _) = case fmap readJSON m_result of
  Nothing -> Left $ "No result value exists for response to " ++ methodId
  Just (Error e) -> Left $ "Cannot read return value for " ++ methodId ++ ": " ++ (show m_result)
  Just (Ok (ValueObject a)) -> Right $ a ^. asPropValueLens propId

onMultiValueResponse :: ValueType a => String -> ResponseProcessor a
onMultiValueResponse methodId (ResponseMessage _ _ _ (Just errorMsg)) = Left $ "Error received on call to " ++ methodId ++ ": " ++ show errorMsg
onMultiValueResponse methodId (ResponseMessage _ m_return m_result _) = case fmap readJSON m_result of
  Nothing -> Left $ "No result value exists for response to " ++ methodId
  Just (Error e) -> Left $ "Cannot read return value for " ++ methodId ++ ": " ++ (show m_result)
  Just (Ok a)    -> Right $ fromValue a

onReturnValueResponse :: ValueType a => String -> ResponseProcessor a
onReturnValueResponse methodId (ResponseMessage _ _ _ (Just errorMsg)) = Left $ "Error received on call to " ++ methodId ++ ": " ++ show errorMsg
onReturnValueResponse methodId (ResponseMessage _ m_return _ _) = case fmap readJSON m_return of
  Nothing -> Left $ "No return value for " ++ methodId ++ "."
  Just (Error e) -> Left $ "Cannot read return value for " ++ methodId ++ "."
  Just (Ok a) ->  Right $ fromValue a

parseResponseMessage :: Text -> ResponseMessage
parseResponseMessage msg =
  case decode (T.unpack msg) of
    Error e -> error $ "parseResponseMessage: " ++ e
    Ok (JSObject obj) ->
      let m_id     = getPropMaybe obj "id"
       in case m_id of
            Nothing ->
              let method = getProp obj "method"
               in --trace (show (AbstractStructure obj)) $
                  PushMessage method
            Just id ->
              let m_result = getPropMaybe obj "result"
                  m_error  = getPropMaybe obj "error"
                  m_ret    = m_result >>= (`getPropMaybe` "qReturn")
               in --trace (show (AbstractStructure obj)) $
                  ResponseMessage id m_ret (fmap JSObject m_result) (fmap JSObject m_error)
    Ok x -> error $ "parseResponseMessage: " ++ (show x)

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
  conn <- readState connection
  printToDebugConsole ("Sending message:   " ++ msg)
  liftIO $ WS.sendTextData conn (T.pack msg)

responseListner :: SDKM ()
responseListner = do
  conn <- readState connection
  forever $ do
    txt <- liftIO $ WS.receiveData conn
    printToDebugConsole ("Receiving message: " ++ T.unpack txt)
    setResult (parseResponseMessage txt)

makeResponseTask :: RequestId -> ResponseProcessor a -> SDKM (Task a)
makeResponseTask id onResponse = do
  task <- newTask
  addRequestListner id ((writeTask task) . onResponse)
  return task

data ConnectionType = DirectConnectionToPersonal
                    | StaticHeaderViaProxy String String

data ConnectionInfo = ConnectionInfo
     { connectionType :: ConnectionType
     , url            :: String
     , port           :: Int
     , virtualProxy   :: Maybe String
     }

defaultDirectConnectionToPersonal =
  ConnectionInfo { connectionType = DirectConnectionToPersonal
                 , url            = "127.0.0.1"
                 , port           = 4848
                 , virtualProxy  = Nothing
                 }
defaultStaticHeaderViaProxy (header, user) url =
  ConnectionInfo { connectionType = StaticHeaderViaProxy header user
                 , url            = url
                 , port           = 80
                 , virtualProxy   = Nothing
                 }

withConnection :: ConnectionInfo -> SDKM () -> IO ()
withConnection connectionInfo m = do
  let theurl    = url connectionInfo
  let theport   = port connectionInfo
  let thevproxy = maybe "" (\p -> "/" ++ p) (virtualProxy connectionInfo)
  let headers   = makeHeaders (connectionType connectionInfo)
  catch (withSocketsDo $ WS.runClientWith theurl theport
                                              (thevproxy ++ "/app/")
                                              WS.defaultConnectionOptions
                                              headers
                                              (runSDK m)
        )
    (\e -> case e::WS.ConnectionException of
             WS.ConnectionClosed -> return ()
             _ -> putStrLn $ "Caught error: " ++ show e)
  
makeHeaders :: ConnectionType -> [(CI C8.ByteString, C8.ByteString)]
makeHeaders connectionType = case connectionType of
  DirectConnectionToPersonal -> []
  StaticHeaderViaProxy header user -> [makeHeader (header, user)]
 
makeHeader :: (String,String) -> (CI C8.ByteString, C8.ByteString)
makeHeader (key,value) = ( CI.mk (C8.pack key)
                         , C8.pack value
                         )
            
runSDK :: SDKM () -> WS.ClientApp ()
runSDK m conn = do
  stateVar <- liftIO $ newMVar (initialState conn)
  forkIO $ evalStateT responseListner stateVar
  evalStateT m stateVar
  WS.sendClose conn (T.pack "Bye!")
