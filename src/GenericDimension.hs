{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE TypeSynonymInstances   #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
module GenericDimension where

import Text.JSON
import Control.Lens
import AbstractStructure
import HardCoded
import SDKMonad
import SDKBase
import PropClasses
import ModelEngine
instance QixClass GenericDimension where
  getHandle (GenericDimension (QixObject h _)) = h

getLayout :: GenericDimension -> SDKM GenericDimensionLayout
getLayout obj = getLayoutAsync obj >>= awaitResult

getLayoutAsync :: GenericDimension -> SDKM (Task GenericDimensionLayout)
getLayoutAsync obj =
  sendRequestM (getHandle obj) "GetLayout" [] (onMultiValueResponse "GetLayout")


applyPatches :: GenericDimension -> [NxPatch] -> SDKM ()
applyPatches obj patches = applyPatchesAsync obj patches >>= awaitResult

applyPatchesAsync :: GenericDimension -> [NxPatch] -> SDKM (Task ())
applyPatchesAsync obj patches =
  let args = [("qPatches", toValue patches)]
   in sendRequestM (getHandle obj) "ApplyPatches" args (onMultiValueResponse "ApplyPatches")


setProperties :: GenericDimension -> GenericDimensionProperties -> SDKM ()
setProperties obj prop = setPropertiesAsync obj prop >>= awaitResult

setPropertiesAsync :: GenericDimension -> GenericDimensionProperties -> SDKM (Task ())
setPropertiesAsync obj prop =
  let args = [("qProp", toValue prop)]
   in sendRequestM (getHandle obj) "SetProperties" args (onMultiValueResponse "SetProperties")


getProperties :: GenericDimension -> SDKM GenericDimensionProperties
getProperties obj = getPropertiesAsync obj >>= awaitResult

getPropertiesAsync :: GenericDimension -> SDKM (Task GenericDimensionProperties)
getPropertiesAsync obj =
  sendRequestM (getHandle obj) "GetProperties" [] (onMultiValueResponse "GetProperties")


getInfo :: GenericDimension -> SDKM NxInfo
getInfo obj = getInfoAsync obj >>= awaitResult

getInfoAsync :: GenericDimension -> SDKM (Task NxInfo)
getInfoAsync obj =
  sendRequestM (getHandle obj) "GetInfo" [] (onMultiValueResponse "GetInfo")


getDimension :: GenericDimension -> SDKM NxLibraryDimensionDef
getDimension obj = getDimensionAsync obj >>= awaitResult

getDimensionAsync :: GenericDimension -> SDKM (Task NxLibraryDimensionDef)
getDimensionAsync obj =
  sendRequestM (getHandle obj) "GetDimension" [] (onMultiValueResponse "GetDimension")


getLinkedObjects :: GenericDimension -> SDKM [NxLinkedObjectInfo]
getLinkedObjects obj = getLinkedObjectsAsync obj >>= awaitResult

getLinkedObjectsAsync :: GenericDimension -> SDKM (Task [NxLinkedObjectInfo])
getLinkedObjectsAsync obj =
  sendRequestM (getHandle obj) "GetLinkedObjects" [] (onMultiValueResponse "GetLinkedObjects")


publish :: GenericDimension -> SDKM ()
publish obj = publishAsync obj >>= awaitResult

publishAsync :: GenericDimension -> SDKM (Task ())
publishAsync obj =
  sendRequestM (getHandle obj) "Publish" [] (onMultiValueResponse "Publish")


unPublish :: GenericDimension -> SDKM ()
unPublish obj = unPublishAsync obj >>= awaitResult

unPublishAsync :: GenericDimension -> SDKM (Task ())
unPublishAsync obj =
  sendRequestM (getHandle obj) "UnPublish" [] (onMultiValueResponse "UnPublish")


approve :: GenericDimension -> SDKM ()
approve obj = approveAsync obj >>= awaitResult

approveAsync :: GenericDimension -> SDKM (Task ())
approveAsync obj =
  sendRequestM (getHandle obj) "Approve" [] (onMultiValueResponse "Approve")


unApprove :: GenericDimension -> SDKM ()
unApprove obj = unApproveAsync obj >>= awaitResult

unApproveAsync :: GenericDimension -> SDKM (Task ())
unApproveAsync obj =
  sendRequestM (getHandle obj) "UnApprove" [] (onMultiValueResponse "UnApprove")


