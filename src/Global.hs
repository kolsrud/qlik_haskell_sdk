{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE TypeSynonymInstances   #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
module Global where

import Text.JSON
import Control.Lens
import AbstractStructure
import HardCoded
import SDKMonad
import SDKBase
import PropClasses
import ModelEngine
instance QixClass Global where
  getHandle (Global (QixObject h _)) = h

createDocEx :: Global -> String -> String -> String -> String -> String -> SDKM CreateDocExResult
createDocEx obj docName userName password serial localizedScriptMainSection = createDocExAsync obj docName userName password serial localizedScriptMainSection >>= awaitResult

newtype CreateDocExResult = CreateDocExResult AbstractStructure
instance Show CreateDocExResult where show = show.toAs
instance ValueType CreateDocExResult where
  toValue (CreateDocExResult as) = toValue as
  fromValue as = CreateDocExResult (fromValue as)

instance AbstractStructureContainer CreateDocExResult where
  toAs (CreateDocExResult as) = as
  fromAs as = CreateDocExResult as
instance HasQReturn CreateDocExResult Doc
instance HasQDocId CreateDocExResult String

createDocExAsync :: Global -> String -> String -> String -> String -> String -> SDKM (Task CreateDocExResult)
createDocExAsync obj docName userName password serial localizedScriptMainSection =
  let args = [ ("qDocName", toValue docName), ("qUserName", toValue userName), ("qPassword", toValue password), ("qSerial", toValue serial), ("qLocalizedScriptMainSection", toValue localizedScriptMainSection) ]
   in sendRequestM (getHandle obj) "CreateDocEx" args (onMultiValueResponse "CreateDocEx")

getActiveDoc :: Global -> SDKM Doc
getActiveDoc obj = getActiveDocAsync obj >>= awaitResult

getActiveDocAsync :: Global -> SDKM (Task Doc)
getActiveDocAsync obj =
  sendRequestM (getHandle obj) "GetActiveDoc" [] (onReturnValueResponse "GetActiveDoc")

allowCreateApp :: Global -> SDKM Bool
allowCreateApp obj = allowCreateAppAsync obj >>= awaitResult

allowCreateAppAsync :: Global -> SDKM (Task Bool)
allowCreateAppAsync obj =
  sendRequestM (getHandle obj) "AllowCreateApp" [] (onReturnValueResponse "AllowCreateApp")

createApp :: Global -> String -> String -> SDKM CreateAppResult
createApp obj appName localizedScriptMainSection = createAppAsync obj appName localizedScriptMainSection >>= awaitResult

newtype CreateAppResult = CreateAppResult AbstractStructure
instance Show CreateAppResult where show = show.toAs
instance ValueType CreateAppResult where
  toValue (CreateAppResult as) = toValue as
  fromValue as = CreateAppResult (fromValue as)

instance AbstractStructureContainer CreateAppResult where
  toAs (CreateAppResult as) = as
  fromAs as = CreateAppResult as
instance HasQSuccess CreateAppResult Bool
instance HasQAppId CreateAppResult String

createAppAsync :: Global -> String -> String -> SDKM (Task CreateAppResult)
createAppAsync obj appName localizedScriptMainSection =
  let args = [ ("qAppName", toValue appName), ("qLocalizedScriptMainSection", toValue localizedScriptMainSection) ]
   in sendRequestM (getHandle obj) "CreateApp" args (onMultiValueResponse "CreateApp")

deleteApp :: Global -> String -> SDKM Bool
deleteApp obj appId = deleteAppAsync obj appId >>= awaitResult

deleteAppAsync :: Global -> String -> SDKM (Task Bool)
deleteAppAsync obj appId =
  let args = [ ("qAppId", toValue appId) ]
   in sendRequestM (getHandle obj) "DeleteApp" args (onSingleValueResponse "DeleteApp" "qSuccess")

isDesktopMode :: Global -> SDKM Bool
isDesktopMode obj = isDesktopModeAsync obj >>= awaitResult

isDesktopModeAsync :: Global -> SDKM (Task Bool)
isDesktopModeAsync obj =
  sendRequestM (getHandle obj) "IsDesktopMode" [] (onReturnValueResponse "IsDesktopMode")

cancelRequest :: Global -> Int -> SDKM ()
cancelRequest obj requestId = cancelRequestAsync obj requestId >>= awaitResult

cancelRequestAsync :: Global -> Int -> SDKM (Task ())
cancelRequestAsync obj requestId =
  let args = [ ("qRequestId", toValue requestId) ]
   in sendRequestM (getHandle obj) "CancelRequest" args (onMultiValueResponse "CancelRequest")

shutdownProcess :: Global -> SDKM ()
shutdownProcess obj = shutdownProcessAsync obj >>= awaitResult

shutdownProcessAsync :: Global -> SDKM (Task ())
shutdownProcessAsync obj =
  sendRequestM (getHandle obj) "ShutdownProcess" [] (onMultiValueResponse "ShutdownProcess")

reloadExtensionList :: Global -> SDKM ()
reloadExtensionList obj = reloadExtensionListAsync obj >>= awaitResult

reloadExtensionListAsync :: Global -> SDKM (Task ())
reloadExtensionListAsync obj =
  sendRequestM (getHandle obj) "ReloadExtensionList" [] (onMultiValueResponse "ReloadExtensionList")

replaceAppFromID :: Global -> String -> String -> [String] -> SDKM Bool
replaceAppFromID obj targetAppId srcAppID ids = replaceAppFromIDAsync obj targetAppId srcAppID ids >>= awaitResult

replaceAppFromIDAsync :: Global -> String -> String -> [String] -> SDKM (Task Bool)
replaceAppFromIDAsync obj targetAppId srcAppID ids =
  let args = [ ("qTargetAppId", toValue targetAppId), ("qSrcAppID", toValue srcAppID), ("qIds", toValue ids) ]
   in sendRequestM (getHandle obj) "ReplaceAppFromID" args (onSingleValueResponse "ReplaceAppFromID" "qSuccess")

copyApp :: Global -> String -> String -> [String] -> SDKM Bool
copyApp obj targetAppId srcAppId ids = copyAppAsync obj targetAppId srcAppId ids >>= awaitResult

copyAppAsync :: Global -> String -> String -> [String] -> SDKM (Task Bool)
copyAppAsync obj targetAppId srcAppId ids =
  let args = [ ("qTargetAppId", toValue targetAppId), ("qSrcAppId", toValue srcAppId), ("qIds", toValue ids) ]
   in sendRequestM (getHandle obj) "CopyApp" args (onSingleValueResponse "CopyApp" "qSuccess")

exportApp :: Global -> String -> String -> [String] -> Bool -> SDKM Bool
exportApp obj targetPath srcAppId ids noData = exportAppAsync obj targetPath srcAppId ids noData >>= awaitResult

exportAppAsync :: Global -> String -> String -> [String] -> Bool -> SDKM (Task Bool)
exportAppAsync obj targetPath srcAppId ids noData =
  let args = [ ("qTargetPath", toValue targetPath), ("qSrcAppId", toValue srcAppId), ("qIds", toValue ids), ("qNoData", toValue noData) ]
   in sendRequestM (getHandle obj) "ExportApp" args (onSingleValueResponse "ExportApp" "qSuccess")

publishApp :: Global -> String -> String -> String -> SDKM ()
publishApp obj appId name streamId = publishAppAsync obj appId name streamId >>= awaitResult

publishAppAsync :: Global -> String -> String -> String -> SDKM (Task ())
publishAppAsync obj appId name streamId =
  let args = [ ("qAppId", toValue appId), ("qName", toValue name), ("qStreamId", toValue streamId) ]
   in sendRequestM (getHandle obj) "PublishApp" args (onMultiValueResponse "PublishApp")

isPersonalMode :: Global -> SDKM Bool
isPersonalMode obj = isPersonalModeAsync obj >>= awaitResult

isPersonalModeAsync :: Global -> SDKM (Task Bool)
isPersonalModeAsync obj =
  sendRequestM (getHandle obj) "IsPersonalMode" [] (onReturnValueResponse "IsPersonalMode")

getUniqueID :: Global -> SDKM String
getUniqueID obj = getUniqueIDAsync obj >>= awaitResult

getUniqueIDAsync :: Global -> SDKM (Task String)
getUniqueIDAsync obj =
  sendRequestM (getHandle obj) "GetUniqueID" [] (onSingleValueResponse "GetUniqueID" "qUniqueID")

openApp :: Global -> String -> String -> String -> String -> Bool -> SDKM Doc
openApp obj docName userName password serial noData = openAppAsync obj docName userName password serial noData >>= awaitResult

openAppAsync :: Global -> String -> String -> String -> String -> Bool -> SDKM (Task Doc)
openAppAsync obj docName userName password serial noData =
  let args = [ ("qDocName", toValue docName) ] --, ("qUserName", toValue userName), ("qPassword", toValue password), ("qSerial", toValue serial), ("qNoData", toValue noData) ]
   in sendRequestM (getHandle obj) "OpenDoc" args (onReturnValueResponse "OpenApp")

createSessionApp :: Global -> SDKM CreateSessionAppResult
createSessionApp obj = createSessionAppAsync obj >>= awaitResult

newtype CreateSessionAppResult = CreateSessionAppResult AbstractStructure
instance Show CreateSessionAppResult where show = show.toAs
instance ValueType CreateSessionAppResult where
  toValue (CreateSessionAppResult as) = toValue as
  fromValue as = CreateSessionAppResult (fromValue as)

instance AbstractStructureContainer CreateSessionAppResult where
  toAs (CreateSessionAppResult as) = as
  fromAs as = CreateSessionAppResult as
instance HasQReturn CreateSessionAppResult Doc
instance HasQSessionAppId CreateSessionAppResult String

createSessionAppAsync :: Global -> SDKM (Task CreateSessionAppResult)
createSessionAppAsync obj =
  sendRequestM (getHandle obj) "CreateSessionApp" [] (onMultiValueResponse "CreateSessionApp")

createSessionAppFromApp :: Global -> String -> SDKM CreateSessionAppFromAppResult
createSessionAppFromApp obj srcAppId = createSessionAppFromAppAsync obj srcAppId >>= awaitResult

newtype CreateSessionAppFromAppResult = CreateSessionAppFromAppResult AbstractStructure
instance Show CreateSessionAppFromAppResult where show = show.toAs
instance ValueType CreateSessionAppFromAppResult where
  toValue (CreateSessionAppFromAppResult as) = toValue as
  fromValue as = CreateSessionAppFromAppResult (fromValue as)

instance AbstractStructureContainer CreateSessionAppFromAppResult where
  toAs (CreateSessionAppFromAppResult as) = as
  fromAs as = CreateSessionAppFromAppResult as
instance HasQReturn CreateSessionAppFromAppResult Doc
instance HasQSessionAppId CreateSessionAppFromAppResult String

createSessionAppFromAppAsync :: Global -> String -> SDKM (Task CreateSessionAppFromAppResult)
createSessionAppFromAppAsync obj srcAppId =
  let args = [ ("qSrcAppId", toValue srcAppId) ]
   in sendRequestM (getHandle obj) "CreateSessionAppFromApp" args (onMultiValueResponse "CreateSessionAppFromApp")

productVersion :: Global -> SDKM String
productVersion obj = productVersionAsync obj >>= awaitResult

productVersionAsync :: Global -> SDKM (Task String)
productVersionAsync obj =
  sendRequestM (getHandle obj) "ProductVersion" [] (onReturnValueResponse "ProductVersion")

getAppEntry :: Global -> String -> SDKM AppEntry
getAppEntry obj appID = getAppEntryAsync obj appID >>= awaitResult

getAppEntryAsync :: Global -> String -> SDKM (Task AppEntry)
getAppEntryAsync obj appID =
  let args = [ ("qAppID", toValue appID) ]
   in sendRequestM (getHandle obj) "GetAppEntry" args (onSingleValueResponse "GetAppEntry" "qEntry")

engineVersion :: Global -> SDKM NxEngineVersion
engineVersion obj = engineVersionAsync obj >>= awaitResult

engineVersionAsync :: Global -> SDKM (Task NxEngineVersion)
engineVersionAsync obj =
  sendRequestM (getHandle obj) "EngineVersion" [] (onSingleValueResponse "EngineVersion" "qVersion")

abortRequest :: Global -> Int -> SDKM ()
abortRequest obj requestId = abortRequestAsync obj requestId >>= awaitResult

abortRequestAsync :: Global -> Int -> SDKM (Task ())
abortRequestAsync obj requestId =
  let args = [ ("qRequestId", toValue requestId) ]
   in sendRequestM (getHandle obj) "AbortRequest" args (onMultiValueResponse "AbortRequest")

abortAll :: Global -> SDKM ()
abortAll obj = abortAllAsync obj >>= awaitResult

abortAllAsync :: Global -> SDKM (Task ())
abortAllAsync obj =
  sendRequestM (getHandle obj) "AbortAll" [] (onMultiValueResponse "AbortAll")

getProgress :: Global -> Int -> SDKM ProgressData
getProgress obj requestId = getProgressAsync obj requestId >>= awaitResult

getProgressAsync :: Global -> Int -> SDKM (Task ProgressData)
getProgressAsync obj requestId =
  let args = [ ("qRequestId", toValue requestId) ]
   in sendRequestM (getHandle obj) "GetProgress" args (onSingleValueResponse "GetProgress" "qProgressData")

qvVersion :: Global -> SDKM String
qvVersion obj = qvVersionAsync obj >>= awaitResult

qvVersionAsync :: Global -> SDKM (Task String)
qvVersionAsync obj =
  sendRequestM (getHandle obj) "QvVersion" [] (onReturnValueResponse "QvVersion")

oSVersion :: Global -> SDKM String
oSVersion obj = oSVersionAsync obj >>= awaitResult

oSVersionAsync :: Global -> SDKM (Task String)
oSVersionAsync obj =
  sendRequestM (getHandle obj) "OSVersion" [] (onReturnValueResponse "OSVersion")

oSName :: Global -> SDKM String
oSName obj = oSNameAsync obj >>= awaitResult

oSNameAsync :: Global -> SDKM (Task String)
oSNameAsync obj =
  sendRequestM (getHandle obj) "OSName" [] (onReturnValueResponse "OSName")

qTProduct :: Global -> SDKM String
qTProduct obj = qTProductAsync obj >>= awaitResult

qTProductAsync :: Global -> SDKM (Task String)
qTProductAsync obj =
  sendRequestM (getHandle obj) "QTProduct" [] (onReturnValueResponse "QTProduct")

getDocList :: Global -> SDKM [DocListEntry]
getDocList obj = getDocListAsync obj >>= awaitResult

getDocListAsync :: Global -> SDKM (Task [DocListEntry])
getDocListAsync obj =
  sendRequestM (getHandle obj) "GetDocList" [] (onSingleValueResponse "GetDocList" "qDocList")

getInteract :: Global -> Int -> SDKM GetInteractResult
getInteract obj requestId = getInteractAsync obj requestId >>= awaitResult

newtype GetInteractResult = GetInteractResult AbstractStructure
instance Show GetInteractResult where show = show.toAs
instance ValueType GetInteractResult where
  toValue (GetInteractResult as) = toValue as
  fromValue as = GetInteractResult (fromValue as)

instance AbstractStructureContainer GetInteractResult where
  toAs (GetInteractResult as) = as
  fromAs as = GetInteractResult as
instance HasQReturn GetInteractResult Bool
instance HasQDef GetInteractResult InteractDef

getInteractAsync :: Global -> Int -> SDKM (Task GetInteractResult)
getInteractAsync obj requestId =
  let args = [ ("qRequestId", toValue requestId) ]
   in sendRequestM (getHandle obj) "GetInteract" args (onMultiValueResponse "GetInteract")

interactDone :: Global -> Int -> InteractDef -> SDKM ()
interactDone obj requestId def = interactDoneAsync obj requestId def >>= awaitResult

interactDoneAsync :: Global -> Int -> InteractDef -> SDKM (Task ())
interactDoneAsync obj requestId def =
  let args = [ ("qRequestId", toValue requestId), ("qDef", toValue def) ]
   in sendRequestM (getHandle obj) "InteractDone" args (onMultiValueResponse "InteractDone")

getAuthenticatedUser :: Global -> SDKM String
getAuthenticatedUser obj = getAuthenticatedUserAsync obj >>= awaitResult

getAuthenticatedUserAsync :: Global -> SDKM (Task String)
getAuthenticatedUserAsync obj =
  sendRequestM (getHandle obj) "GetAuthenticatedUser" [] (onReturnValueResponse "GetAuthenticatedUser")

