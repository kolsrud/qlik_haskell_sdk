{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE TypeSynonymInstances   #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
module Variable where

import Text.JSON
import Control.Lens
import AbstractStructure
import HardCoded
import SDKMonad
import SDKBase
import PropClasses
import ModelEngine
instance QixClass Variable where
  getHandle (Variable (QixObject h _)) = h

getNxProperties :: Variable -> SDKM NxVariableProperties
getNxProperties obj = getNxPropertiesAsync obj >>= awaitResult

getNxPropertiesAsync :: Variable -> SDKM (Task NxVariableProperties)
getNxPropertiesAsync obj =
  sendRequestM (getHandle obj) "GetNxProperties" [] (onMultiValueResponse "GetNxProperties")


setNxProperties :: Variable -> NxVariableProperties -> SDKM ()
setNxProperties obj properties = setNxPropertiesAsync obj properties >>= awaitResult

setNxPropertiesAsync :: Variable -> NxVariableProperties -> SDKM (Task ())
setNxPropertiesAsync obj properties =
  let args = [("qProperties", toValue properties)]
   in sendRequestM (getHandle obj) "SetNxProperties" args (onMultiValueResponse "SetNxProperties")


getContent :: Variable -> SDKM AlfaNumString
getContent obj = getContentAsync obj >>= awaitResult

getContentAsync :: Variable -> SDKM (Task AlfaNumString)
getContentAsync obj =
  sendRequestM (getHandle obj) "GetContent" [] (onMultiValueResponse "GetContent")


getRawContent :: Variable -> SDKM String
getRawContent obj = getRawContentAsync obj >>= awaitResult

getRawContentAsync :: Variable -> SDKM (Task String)
getRawContentAsync obj =
  sendRequestM (getHandle obj) "GetRawContent" [] (onReturnValueResponse "GetRawContent")


setContent :: Variable -> String -> Bool -> SDKM Bool
setContent obj content updateMRU = setContentAsync obj content updateMRU >>= awaitResult

setContentAsync :: Variable -> String -> Bool -> SDKM (Task Bool)
setContentAsync obj content updateMRU =
  let args = [("qContent", toValue content), ("qUpdateMRU", toValue updateMRU)]
   in sendRequestM (getHandle obj) "SetContent" args (onReturnValueResponse "SetContent")


forceContent :: Variable -> String -> Double -> SDKM ()
forceContent obj s d = forceContentAsync obj s d >>= awaitResult

forceContentAsync :: Variable -> String -> Double -> SDKM (Task ())
forceContentAsync obj s d =
  let args = [("qs", toValue s), ("qd", toValue d)]
   in sendRequestM (getHandle obj) "ForceContent" args (onMultiValueResponse "ForceContent")


