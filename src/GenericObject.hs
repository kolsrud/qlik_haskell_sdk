module GenericObject where

import Text.JSON

import AbstractStructure
import SDKMonad (SDKM, ResponseMessage(..))
import SDKBase
import ModelEngine
import Control.Lens

newtype GenericObject = GenericObject QixObject

instance JSON GenericObject where
  readJSON v = case (readJSON v)::(Result QixObject) of
    Error e -> Error $ "Unable to parse as GenericObject. " ++ e ++ ": " ++ show v
    Ok q -> Ok (GenericObject q)
  showJSON (GenericObject q) = showJSON q

getLayout :: GenericObject -> SDKM GenericObjectLayout
getLayout obj = getLayoutAsync obj >>= awaitResult

getLayoutAsync :: GenericObject -> SDKM (Task GenericObjectLayout)
getLayoutAsync (GenericObject (QixObject h _)) =
  sendRequestM h "GetLayout" [] onGetLayoutResponse

onGetLayoutResponse :: ResponseProcessor GenericObjectLayout
onGetLayoutResponse (ResponseMessage _ _ result) = case readJSON result of
    Error e -> error $ "Cannot read return value for " ++ method ++ ": " ++ (show result)
    Ok (ValueObject a) -> case asGetC "qLayout" a of
                            Just layout -> GenericObjectLayout layout
                            Nothing     -> error $ "Cannot read property 'qLayout' for " ++ method ++
                                                   ": " ++ (show result)
 where
  method = "GetLayout"

getChildInfos :: GenericObject -> SDKM [NxInfo]
getChildInfos obj = getChildInfosAsync obj >>= awaitResult

getChildInfosAsync :: GenericObject -> SDKM (Task [NxInfo])
getChildInfosAsync (GenericObject (QixObject h _)) =
  sendRequestM h "GetChildInfos" [] onGetChildInfosResponse

onGetChildInfosResponse :: ResponseProcessor [NxInfo]
onGetChildInfosResponse (ResponseMessage _ _ result) = case readJSON result of
    Error e -> error $ "Cannot read return value for " ++ method ++ ": " ++ (show result)
    Ok (ValueObject a) -> a ^. asPropValueLens "qInfos"
 where
  method = "GetChildInfos"
