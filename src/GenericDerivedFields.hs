{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE TypeSynonymInstances   #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
module GenericDerivedFields where

import Text.JSON
import Control.Lens
import AbstractStructure
import HardCoded
import SDKMonad
import SDKBase
import PropClasses
import ModelEngine
instance QixClass GenericDerivedFields where
  getHandle (GenericDerivedFields (QixObject h _)) = h

setProperties :: GenericDerivedFields -> GenericDerivedFieldsProperties -> SDKM ()
setProperties obj prop = setPropertiesAsync obj prop >>= awaitResult

setPropertiesAsync :: GenericDerivedFields -> GenericDerivedFieldsProperties -> SDKM (Task ())
setPropertiesAsync obj prop =
  let args = [("qProp", toValue prop)]
   in sendRequestM (getHandle obj) "SetProperties" args (onMultiValueResponse "SetProperties")


getProperties :: GenericDerivedFields -> SDKM GenericDerivedFieldsProperties
getProperties obj = getPropertiesAsync obj >>= awaitResult

getPropertiesAsync :: GenericDerivedFields -> SDKM (Task GenericDerivedFieldsProperties)
getPropertiesAsync obj =
  sendRequestM (getHandle obj) "GetProperties" [] (onMultiValueResponse "GetProperties")


getInfo :: GenericDerivedFields -> SDKM NxInfo
getInfo obj = getInfoAsync obj >>= awaitResult

getInfoAsync :: GenericDerivedFields -> SDKM (Task NxInfo)
getInfoAsync obj =
  sendRequestM (getHandle obj) "GetInfo" [] (onMultiValueResponse "GetInfo")


getDerivedFieldData :: GenericDerivedFields -> SDKM NxDerivedFieldsData
getDerivedFieldData obj = getDerivedFieldDataAsync obj >>= awaitResult

getDerivedFieldDataAsync :: GenericDerivedFields -> SDKM (Task NxDerivedFieldsData)
getDerivedFieldDataAsync obj =
  sendRequestM (getHandle obj) "GetDerivedFieldData" [] (onMultiValueResponse "GetDerivedFieldData")


getDerivedField :: GenericDerivedFields -> String -> SDKM GetDerivedFieldResult
getDerivedField obj id = getDerivedFieldAsync obj id >>= awaitResult

newtype GetDerivedFieldResult = GetDerivedFieldResult AbstractStructure
instance Show GetDerivedFieldResult where show = show.toAs
instance ValueType GetDerivedFieldResult where
  toValue (GetDerivedFieldResult as) = toValue as
  fromValue as = GetDerivedFieldResult (fromValue as)

instance AbstractStructureContainer GetDerivedFieldResult where
  toAs (GetDerivedFieldResult as) = as
  fromAs as = GetDerivedFieldResult as
instance HasQReturn GetDerivedFieldResult Bool
instance HasQFields GetDerivedFieldResult NxDerivedField

getDerivedFieldAsync :: GenericDerivedFields -> String -> SDKM (Task GetDerivedFieldResult)
getDerivedFieldAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "GetDerivedField" args (onMultiValueResponse "GetDerivedField")


getListData :: GenericDerivedFields -> SDKM [NxContainerEntry]
getListData obj = getListDataAsync obj >>= awaitResult

getListDataAsync :: GenericDerivedFields -> SDKM (Task [NxContainerEntry])
getListDataAsync obj =
  sendRequestM (getHandle obj) "GetListData" [] (onMultiValueResponse "GetListData")


getDerivedFields :: GenericDerivedFields -> SDKM [NxDerivedField]
getDerivedFields obj = getDerivedFieldsAsync obj >>= awaitResult

getDerivedFieldsAsync :: GenericDerivedFields -> SDKM (Task [NxDerivedField])
getDerivedFieldsAsync obj =
  sendRequestM (getHandle obj) "GetDerivedFields" [] (onMultiValueResponse "GetDerivedFields")


getDerivedGroups :: GenericDerivedFields -> SDKM [NxDerivedGroup]
getDerivedGroups obj = getDerivedGroupsAsync obj >>= awaitResult

getDerivedGroupsAsync :: GenericDerivedFields -> SDKM (Task [NxDerivedGroup])
getDerivedGroupsAsync obj =
  sendRequestM (getHandle obj) "GetDerivedGroups" [] (onMultiValueResponse "GetDerivedGroups")


