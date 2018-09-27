{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE TypeSynonymInstances   #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
module Field where

import Text.JSON
import Control.Lens
import AbstractStructure
import HardCoded
import SDKMonad
import SDKBase
import PropClasses
import ModelEngine
instance QixClass Field where
  getHandle (Field (QixObject h _)) = h

getNxProperties :: Field -> SDKM NxFieldProperties
getNxProperties obj = getNxPropertiesAsync obj >>= awaitResult

getNxPropertiesAsync :: Field -> SDKM (Task NxFieldProperties)
getNxPropertiesAsync obj =
  sendRequestM (getHandle obj) "GetNxProperties" [] (onSingleValueResponse "GetNxProperties" "qProperties")

setNxProperties :: Field -> NxFieldProperties -> SDKM ()
setNxProperties obj properties = setNxPropertiesAsync obj properties >>= awaitResult

setNxPropertiesAsync :: Field -> NxFieldProperties -> SDKM (Task ())
setNxPropertiesAsync obj properties =
  let args = [ ("qProperties", toValue properties) ]
   in sendRequestM (getHandle obj) "SetNxProperties" args (onMultiValueResponse "SetNxProperties")

setAndMode :: Field -> Bool -> SDKM ()
setAndMode obj andMode = setAndModeAsync obj andMode >>= awaitResult

setAndModeAsync :: Field -> Bool -> SDKM (Task ())
setAndModeAsync obj andMode =
  let args = [ ("qAndMode", toValue andMode) ]
   in sendRequestM (getHandle obj) "SetAndMode" args (onMultiValueResponse "SetAndMode")

selectAlternative :: Field -> Bool -> SDKM Bool
selectAlternative obj softLock = selectAlternativeAsync obj softLock >>= awaitResult

selectAlternativeAsync :: Field -> Bool -> SDKM (Task Bool)
selectAlternativeAsync obj softLock =
  let args = [ ("qSoftLock", toValue softLock) ]
   in sendRequestM (getHandle obj) "SelectAlternative" args (onReturnValueResponse "SelectAlternative")

lowLevelSelect_qs :: Field -> [Int] -> Bool -> Bool -> SDKM Bool
lowLevelSelect_qs obj values toggleMode softLock = lowLevelSelect_qsAsync obj values toggleMode softLock >>= awaitResult

lowLevelSelect_qsAsync :: Field -> [Int] -> Bool -> Bool -> SDKM (Task Bool)
lowLevelSelect_qsAsync obj values toggleMode softLock =
  let args = [ ("qValues", toValue values), ("qToggleMode", toValue toggleMode), ("qSoftLock", toValue softLock) ]
   in sendRequestM (getHandle obj) "LowLevelSelect_qs" args (onReturnValueResponse "LowLevelSelect_qs")

clear_qs :: Field -> SDKM Bool
clear_qs obj = clear_qsAsync obj >>= awaitResult

clear_qsAsync :: Field -> SDKM (Task Bool)
clear_qsAsync obj =
  sendRequestM (getHandle obj) "Clear_qs" [] (onReturnValueResponse "Clear_qs")

getCardinal :: Field -> SDKM Int
getCardinal obj = getCardinalAsync obj >>= awaitResult

getCardinalAsync :: Field -> SDKM (Task Int)
getCardinalAsync obj =
  sendRequestM (getHandle obj) "GetCardinal" [] (onReturnValueResponse "GetCardinal")

getAndMode :: Field -> SDKM Bool
getAndMode obj = getAndModeAsync obj >>= awaitResult

getAndModeAsync :: Field -> SDKM (Task Bool)
getAndModeAsync obj =
  sendRequestM (getHandle obj) "GetAndMode" [] (onReturnValueResponse "GetAndMode")

selectValues :: Field -> [FieldValue] -> Bool -> Bool -> SDKM Bool
selectValues obj fieldValues toggleMode softLock = selectValuesAsync obj fieldValues toggleMode softLock >>= awaitResult

selectValuesAsync :: Field -> [FieldValue] -> Bool -> Bool -> SDKM (Task Bool)
selectValuesAsync obj fieldValues toggleMode softLock =
  let args = [ ("qFieldValues", toValue fieldValues), ("qToggleMode", toValue toggleMode), ("qSoftLock", toValue softLock) ]
   in sendRequestM (getHandle obj) "SelectValues" args (onReturnValueResponse "SelectValues")

select :: Field -> String -> Bool -> Int -> SDKM Bool
select obj match softLock excludedValuesMode = selectAsync obj match softLock excludedValuesMode >>= awaitResult

selectAsync :: Field -> String -> Bool -> Int -> SDKM (Task Bool)
selectAsync obj match softLock excludedValuesMode =
  let args = [ ("qMatch", toValue match), ("qSoftLock", toValue softLock), ("qExcludedValuesMode", toValue excludedValuesMode) ]
   in sendRequestM (getHandle obj) "Select" args (onReturnValueResponse "Select")

toggleSelect :: Field -> String -> Bool -> Int -> SDKM Bool
toggleSelect obj match softLock excludedValuesMode = toggleSelectAsync obj match softLock excludedValuesMode >>= awaitResult

toggleSelectAsync :: Field -> String -> Bool -> Int -> SDKM (Task Bool)
toggleSelectAsync obj match softLock excludedValuesMode =
  let args = [ ("qMatch", toValue match), ("qSoftLock", toValue softLock), ("qExcludedValuesMode", toValue excludedValuesMode) ]
   in sendRequestM (getHandle obj) "ToggleSelect" args (onReturnValueResponse "ToggleSelect")

clearAllButThis :: Field -> Bool -> SDKM Bool
clearAllButThis obj softLock = clearAllButThisAsync obj softLock >>= awaitResult

clearAllButThisAsync :: Field -> Bool -> SDKM (Task Bool)
clearAllButThisAsync obj softLock =
  let args = [ ("qSoftLock", toValue softLock) ]
   in sendRequestM (getHandle obj) "ClearAllButThis" args (onReturnValueResponse "ClearAllButThis")

selectPossible :: Field -> Bool -> SDKM Bool
selectPossible obj softLock = selectPossibleAsync obj softLock >>= awaitResult

selectPossibleAsync :: Field -> Bool -> SDKM (Task Bool)
selectPossibleAsync obj softLock =
  let args = [ ("qSoftLock", toValue softLock) ]
   in sendRequestM (getHandle obj) "SelectPossible" args (onReturnValueResponse "SelectPossible")

selectExcluded :: Field -> Bool -> SDKM Bool
selectExcluded obj softLock = selectExcludedAsync obj softLock >>= awaitResult

selectExcludedAsync :: Field -> Bool -> SDKM (Task Bool)
selectExcludedAsync obj softLock =
  let args = [ ("qSoftLock", toValue softLock) ]
   in sendRequestM (getHandle obj) "SelectExcluded" args (onReturnValueResponse "SelectExcluded")

selectAll :: Field -> Bool -> SDKM Bool
selectAll obj softLock = selectAllAsync obj softLock >>= awaitResult

selectAllAsync :: Field -> Bool -> SDKM (Task Bool)
selectAllAsync obj softLock =
  let args = [ ("qSoftLock", toValue softLock) ]
   in sendRequestM (getHandle obj) "SelectAll" args (onReturnValueResponse "SelectAll")

lock :: Field -> SDKM Bool
lock obj = lockAsync obj >>= awaitResult

lockAsync :: Field -> SDKM (Task Bool)
lockAsync obj =
  sendRequestM (getHandle obj) "Lock" [] (onReturnValueResponse "Lock")

unlock :: Field -> SDKM Bool
unlock obj = unlockAsync obj >>= awaitResult

unlockAsync :: Field -> SDKM (Task Bool)
unlockAsync obj =
  sendRequestM (getHandle obj) "Unlock" [] (onReturnValueResponse "Unlock")

