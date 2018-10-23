{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE TypeSynonymInstances   #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
module GenericMeasure where

import Text.JSON
import Control.Lens
import AbstractStructure
import HardCoded
import Task
import SDKMonad
import SDKBase
import PropClasses
import ModelEngine
instance QixClass GenericMeasure where
  getHandle (GenericMeasure (QixObject h _)) = h

getLayout :: GenericMeasure -> SDKM GenericMeasureLayout
getLayout obj = getLayoutAsync obj >>= awaitResult

getLayoutAsync :: GenericMeasure -> SDKM (Task GenericMeasureLayout)
getLayoutAsync obj =
  sendRequestM (getHandle obj) "GetLayout" [] (onSingleValueResponse "GetLayout" "qLayout")


applyPatches :: GenericMeasure -> [NxPatch] -> SDKM ()
applyPatches obj patches = applyPatchesAsync obj patches >>= awaitResult

applyPatchesAsync :: GenericMeasure -> [NxPatch] -> SDKM (Task ())
applyPatchesAsync obj patches =
  let args = [("qPatches", toValue patches)]
   in sendRequestM (getHandle obj) "ApplyPatches" args (onMultiValueResponse "ApplyPatches")


setProperties :: GenericMeasure -> GenericMeasureProperties -> SDKM ()
setProperties obj prop = setPropertiesAsync obj prop >>= awaitResult

setPropertiesAsync :: GenericMeasure -> GenericMeasureProperties -> SDKM (Task ())
setPropertiesAsync obj prop =
  let args = [("qProp", toValue prop)]
   in sendRequestM (getHandle obj) "SetProperties" args (onMultiValueResponse "SetProperties")


getProperties :: GenericMeasure -> SDKM GenericMeasureProperties
getProperties obj = getPropertiesAsync obj >>= awaitResult

getPropertiesAsync :: GenericMeasure -> SDKM (Task GenericMeasureProperties)
getPropertiesAsync obj =
  sendRequestM (getHandle obj) "GetProperties" [] (onSingleValueResponse "GetProperties" "qProp")


getInfo :: GenericMeasure -> SDKM NxInfo
getInfo obj = getInfoAsync obj >>= awaitResult

getInfoAsync :: GenericMeasure -> SDKM (Task NxInfo)
getInfoAsync obj =
  sendRequestM (getHandle obj) "GetInfo" [] (onSingleValueResponse "GetInfo" "qInfo")


getMeasure :: GenericMeasure -> SDKM NxLibraryMeasureDef
getMeasure obj = getMeasureAsync obj >>= awaitResult

getMeasureAsync :: GenericMeasure -> SDKM (Task NxLibraryMeasureDef)
getMeasureAsync obj =
  sendRequestM (getHandle obj) "GetMeasure" [] (onSingleValueResponse "GetMeasure" "qMeasure")


getLinkedObjects :: GenericMeasure -> SDKM [NxLinkedObjectInfo]
getLinkedObjects obj = getLinkedObjectsAsync obj >>= awaitResult

getLinkedObjectsAsync :: GenericMeasure -> SDKM (Task [NxLinkedObjectInfo])
getLinkedObjectsAsync obj =
  sendRequestM (getHandle obj) "GetLinkedObjects" [] (onSingleValueResponse "GetLinkedObjects" "qItems")


publish :: GenericMeasure -> SDKM ()
publish obj = publishAsync obj >>= awaitResult

publishAsync :: GenericMeasure -> SDKM (Task ())
publishAsync obj =
  sendRequestM (getHandle obj) "Publish" [] (onMultiValueResponse "Publish")


unPublish :: GenericMeasure -> SDKM ()
unPublish obj = unPublishAsync obj >>= awaitResult

unPublishAsync :: GenericMeasure -> SDKM (Task ())
unPublishAsync obj =
  sendRequestM (getHandle obj) "UnPublish" [] (onMultiValueResponse "UnPublish")


approve :: GenericMeasure -> SDKM ()
approve obj = approveAsync obj >>= awaitResult

approveAsync :: GenericMeasure -> SDKM (Task ())
approveAsync obj =
  sendRequestM (getHandle obj) "Approve" [] (onMultiValueResponse "Approve")


unApprove :: GenericMeasure -> SDKM ()
unApprove obj = unApproveAsync obj >>= awaitResult

unApproveAsync :: GenericMeasure -> SDKM (Task ())
unApproveAsync obj =
  sendRequestM (getHandle obj) "UnApprove" [] (onMultiValueResponse "UnApprove")


