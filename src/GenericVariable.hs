{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE TypeSynonymInstances   #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
module GenericVariable where

import Text.JSON
import Control.Lens
import AbstractStructure
import HardCoded
import Task
import SDKMonad
import SDKBase
import PropClasses
import ModelEngine
instance QixClass GenericVariable where
  getHandle (GenericVariable (QixObject h _)) = h

getLayout :: GenericVariable -> SDKM GenericVariableLayout
getLayout obj = getLayoutAsync obj >>= awaitResult

getLayoutAsync :: GenericVariable -> SDKM (Task GenericVariableLayout)
getLayoutAsync obj =
  sendRequestM (getHandle obj) "GetLayout" [] (onSingleValueResponse "GetLayout" "qLayout")


applyPatches :: GenericVariable -> [NxPatch] -> SDKM ()
applyPatches obj patches = applyPatchesAsync obj patches >>= awaitResult

applyPatchesAsync :: GenericVariable -> [NxPatch] -> SDKM (Task ())
applyPatchesAsync obj patches =
  let args = [("qPatches", toValue patches)]
   in sendRequestM (getHandle obj) "ApplyPatches" args (onMultiValueResponse "ApplyPatches")


setProperties :: GenericVariable -> GenericVariableProperties -> SDKM ()
setProperties obj prop = setPropertiesAsync obj prop >>= awaitResult

setPropertiesAsync :: GenericVariable -> GenericVariableProperties -> SDKM (Task ())
setPropertiesAsync obj prop =
  let args = [("qProp", toValue prop)]
   in sendRequestM (getHandle obj) "SetProperties" args (onMultiValueResponse "SetProperties")


getProperties :: GenericVariable -> SDKM GenericVariableProperties
getProperties obj = getPropertiesAsync obj >>= awaitResult

getPropertiesAsync :: GenericVariable -> SDKM (Task GenericVariableProperties)
getPropertiesAsync obj =
  sendRequestM (getHandle obj) "GetProperties" [] (onSingleValueResponse "GetProperties" "qProp")


getInfo :: GenericVariable -> SDKM NxInfo
getInfo obj = getInfoAsync obj >>= awaitResult

getInfoAsync :: GenericVariable -> SDKM (Task NxInfo)
getInfoAsync obj =
  sendRequestM (getHandle obj) "GetInfo" [] (onSingleValueResponse "GetInfo" "qInfo")


setStringValue :: GenericVariable -> String -> SDKM ()
setStringValue obj val = setStringValueAsync obj val >>= awaitResult

setStringValueAsync :: GenericVariable -> String -> SDKM (Task ())
setStringValueAsync obj val =
  let args = [("qVal", toValue val)]
   in sendRequestM (getHandle obj) "SetStringValue" args (onMultiValueResponse "SetStringValue")


setNumValue :: GenericVariable -> Double -> SDKM ()
setNumValue obj val = setNumValueAsync obj val >>= awaitResult

setNumValueAsync :: GenericVariable -> Double -> SDKM (Task ())
setNumValueAsync obj val =
  let args = [("qVal", toValue val)]
   in sendRequestM (getHandle obj) "SetNumValue" args (onMultiValueResponse "SetNumValue")


setDualValue :: GenericVariable -> String -> Double -> SDKM ()
setDualValue obj text num = setDualValueAsync obj text num >>= awaitResult

setDualValueAsync :: GenericVariable -> String -> Double -> SDKM (Task ())
setDualValueAsync obj text num =
  let args = [("qText", toValue text), ("qNum", toValue num)]
   in sendRequestM (getHandle obj) "SetDualValue" args (onMultiValueResponse "SetDualValue")


