module HSDK where

import SDKBase
import SDKMonad (SDKM, ResponseMessage(..))
import Text.JSON
import AbstractStructure
import GenericObject
import Debug.Trace
import ModelEngine (GenericObjectProperties)

productVersion :: SDKM String
productVersion = productVersionAsync >>= awaitResult

productVersionAsync :: SDKM (Task String)
productVersionAsync = sendRequestM (-1) "ProductVersion" [] (onReturnResponse "ProductVersion")

openApp :: String -> SDKM App
openApp appName = openAppAsync appName >>= awaitResult

openAppAsync :: String -> SDKM (Task App)
openAppAsync appName =
  sendRequestM (-1) "OpenDoc"
               [("qDocName", ValueString appName)]
               (onReturnResponse "OpenApp")

evaluate :: App -> String -> SDKM String
evaluate app expr = evaluateAsync app expr >>= awaitResult
  
evaluateAsync :: App -> String -> SDKM (Task String)
evaluateAsync app expr =
  sendRequestM (getHandle app) "Evaluate"
               [("qExpression", ValueString expr)]
               (onReturnResponse "Evaluate")
              

onReturnResponse :: JSON a => String -> ResponseProcessor a
onReturnResponse method (ResponseMessage _ mret _) = case mret of
  Nothing -> error $ "No return value for " ++ method ++ "."
  Just v  -> case readJSON v of
    Error e -> error $ "Cannot read return value for " ++ method ++ ": " ++ (show v)
    Ok a -> a

createSessionObject :: App -> GenericObjectProperties -> SDKM GenericObject
createSessionObject app props = createSessionObjectAsync app props >>= awaitResult

createSessionObjectAsync :: App -> GenericObjectProperties -> SDKM (Task GenericObject)
createSessionObjectAsync app props =
  sendRequestM (getHandle app) "CreateSessionObject" [("qProp", ValueObject (toAs props))] (onReturnResponse "CreateSessionObject")

getObject :: App -> String -> SDKM GenericObject
getObject app objectId = getObjectAsync app objectId >>= awaitResult

getObjectAsync :: App -> String -> SDKM (Task GenericObject)
getObjectAsync app objectId =
  sendRequestM (getHandle app) "GetObject" [("qId", ValueString objectId)] (onReturnResponse "GetObject")

getHandle (App (QixObject h _)) = h
