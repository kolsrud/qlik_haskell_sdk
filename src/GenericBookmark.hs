{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE TypeSynonymInstances   #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
module GenericBookmark where

import Text.JSON
import Control.Lens
import AbstractStructure
import HardCoded
import SDKMonad
import SDKBase
import PropClasses
import ModelEngine
instance QixClass GenericBookmark where
  getHandle (GenericBookmark (QixObject h _)) = h

getFieldValues :: GenericBookmark -> String -> Bool -> BookmarkFieldPage -> SDKM [FieldValue]
getFieldValues obj field getExcludedValues dataPage = getFieldValuesAsync obj field getExcludedValues dataPage >>= awaitResult

getFieldValuesAsync :: GenericBookmark -> String -> Bool -> BookmarkFieldPage -> SDKM (Task [FieldValue])
getFieldValuesAsync obj field getExcludedValues dataPage =
  let args = [ ("qField", toValue field), ("qGetExcludedValues", toValue getExcludedValues), ("qDataPage", toValue dataPage) ]
   in sendRequestM (getHandle obj) "GetFieldValues" args (onSingleValueResponse "GetFieldValues" "qFieldValues")

getLayout :: GenericBookmark -> SDKM GenericBookmarkLayout
getLayout obj = getLayoutAsync obj >>= awaitResult

getLayoutAsync :: GenericBookmark -> SDKM (Task GenericBookmarkLayout)
getLayoutAsync obj =
  sendRequestM (getHandle obj) "GetLayout" [] (onSingleValueResponse "GetLayout" "qLayout")

applyPatches :: GenericBookmark -> [NxPatch] -> SDKM ()
applyPatches obj patches = applyPatchesAsync obj patches >>= awaitResult

applyPatchesAsync :: GenericBookmark -> [NxPatch] -> SDKM (Task ())
applyPatchesAsync obj patches =
  let args = [ ("qPatches", toValue patches) ]
   in sendRequestM (getHandle obj) "ApplyPatches" args (onMultiValueResponse "ApplyPatches")

setProperties :: GenericBookmark -> GenericBookmarkProperties -> SDKM ()
setProperties obj prop = setPropertiesAsync obj prop >>= awaitResult

setPropertiesAsync :: GenericBookmark -> GenericBookmarkProperties -> SDKM (Task ())
setPropertiesAsync obj prop =
  let args = [ ("qProp", toValue prop) ]
   in sendRequestM (getHandle obj) "SetProperties" args (onMultiValueResponse "SetProperties")

getProperties :: GenericBookmark -> SDKM GenericBookmarkProperties
getProperties obj = getPropertiesAsync obj >>= awaitResult

getPropertiesAsync :: GenericBookmark -> SDKM (Task GenericBookmarkProperties)
getPropertiesAsync obj =
  sendRequestM (getHandle obj) "GetProperties" [] (onSingleValueResponse "GetProperties" "qProp")

getInfo :: GenericBookmark -> SDKM NxInfo
getInfo obj = getInfoAsync obj >>= awaitResult

getInfoAsync :: GenericBookmark -> SDKM (Task NxInfo)
getInfoAsync obj =
  sendRequestM (getHandle obj) "GetInfo" [] (onSingleValueResponse "GetInfo" "qInfo")

apply :: GenericBookmark -> SDKM Bool
apply obj = applyAsync obj >>= awaitResult

applyAsync :: GenericBookmark -> SDKM (Task Bool)
applyAsync obj =
  sendRequestM (getHandle obj) "Apply" [] (onSingleValueResponse "Apply" "qSuccess")

publish :: GenericBookmark -> SDKM ()
publish obj = publishAsync obj >>= awaitResult

publishAsync :: GenericBookmark -> SDKM (Task ())
publishAsync obj =
  sendRequestM (getHandle obj) "Publish" [] (onMultiValueResponse "Publish")

unPublish :: GenericBookmark -> SDKM ()
unPublish obj = unPublishAsync obj >>= awaitResult

unPublishAsync :: GenericBookmark -> SDKM (Task ())
unPublishAsync obj =
  sendRequestM (getHandle obj) "UnPublish" [] (onMultiValueResponse "UnPublish")

approve :: GenericBookmark -> SDKM ()
approve obj = approveAsync obj >>= awaitResult

approveAsync :: GenericBookmark -> SDKM (Task ())
approveAsync obj =
  sendRequestM (getHandle obj) "Approve" [] (onMultiValueResponse "Approve")

unApprove :: GenericBookmark -> SDKM ()
unApprove obj = unApproveAsync obj >>= awaitResult

unApproveAsync :: GenericBookmark -> SDKM (Task ())
unApproveAsync obj =
  sendRequestM (getHandle obj) "UnApprove" [] (onMultiValueResponse "UnApprove")

