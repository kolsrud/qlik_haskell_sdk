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
  sendRequestM (getHandle obj) "GetNxProperties" [] (onMultiValueResponse "GetNxProperties")


setNxProperties :: Field -> NxFieldProperties -> SDKM ()
setNxProperties obj properties = setNxPropertiesAsync obj properties >>= awaitResult

setNxPropertiesAsync :: Field -> NxFieldProperties -> SDKM (Task ())
setNxPropertiesAsync obj properties =
  let args = [("qProperties", toValue properties)]
   in sendRequestM (getHandle obj) "SetNxProperties" args (onMultiValueResponse "SetNxProperties")


setAndMode :: Field -> Bool -> SDKM ()
setAndMode obj andMode = setAndModeAsync obj andMode >>= awaitResult

setAndModeAsync :: Field -> Bool -> SDKM (Task ())
setAndModeAsync obj andMode =
  let args = [("qAndMode", toValue andMode)]
   in sendRequestM (getHandle obj) "SetAndMode" args (onMultiValueResponse "SetAndMode")


selectAlternative :: Field -> SDKM Bool
selectAlternative obj = selectAlternativeAsync obj >>= awaitResult

selectAlternative_ :: Field -> Bool -> SDKM Bool
selectAlternative_ obj softLock = selectAlternativeAsync_ obj softLock >>= awaitResult

selectAlternativeAsync :: Field -> SDKM (Task Bool)
selectAlternativeAsync obj =
  sendRequestM (getHandle obj) "SelectAlternative" [] (onReturnValueResponse "SelectAlternative")

selectAlternativeAsync_ :: Field -> Bool -> SDKM (Task Bool)
selectAlternativeAsync_ obj softLock =
  let args = [("qSoftLock", toValue softLock)]
   in sendRequestM (getHandle obj) "SelectAlternative" args (onReturnValueResponse "SelectAlternative")


lowLevelSelect_qs :: Field -> [Int] -> Bool -> SDKM Bool
lowLevelSelect_qs obj values toggleMode = lowLevelSelect_qsAsync obj values toggleMode >>= awaitResult

lowLevelSelect_qs_ :: Field -> [Int] -> Bool -> Bool -> SDKM Bool
lowLevelSelect_qs_ obj values toggleMode softLock = lowLevelSelect_qsAsync_ obj values toggleMode softLock >>= awaitResult

lowLevelSelect_qsAsync :: Field -> [Int] -> Bool -> SDKM (Task Bool)
lowLevelSelect_qsAsync obj values toggleMode =
  let args = [("qValues", toValue values), ("qToggleMode", toValue toggleMode)]
   in sendRequestM (getHandle obj) "LowLevelSelect_qs" args (onReturnValueResponse "LowLevelSelect_qs")

lowLevelSelect_qsAsync_ :: Field -> [Int] -> Bool -> Bool -> SDKM (Task Bool)
lowLevelSelect_qsAsync_ obj values toggleMode softLock =
  let args = [("qValues", toValue values), ("qToggleMode", toValue toggleMode), ("qSoftLock", toValue softLock)]
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


selectValues :: Field -> [FieldValue] -> SDKM Bool
selectValues obj fieldValues = selectValuesAsync obj fieldValues >>= awaitResult

selectValues_ :: Field -> [FieldValue] -> Bool -> Bool -> SDKM Bool
selectValues_ obj fieldValues toggleMode softLock = selectValuesAsync_ obj fieldValues toggleMode softLock >>= awaitResult

selectValuesAsync :: Field -> [FieldValue] -> SDKM (Task Bool)
selectValuesAsync obj fieldValues =
  let args = [("qFieldValues", toValue fieldValues)]
   in sendRequestM (getHandle obj) "SelectValues" args (onReturnValueResponse "SelectValues")

selectValuesAsync_ :: Field -> [FieldValue] -> Bool -> Bool -> SDKM (Task Bool)
selectValuesAsync_ obj fieldValues toggleMode softLock =
  let args = [("qFieldValues", toValue fieldValues), ("qToggleMode", toValue toggleMode), ("qSoftLock", toValue softLock)]
   in sendRequestM (getHandle obj) "SelectValues" args (onReturnValueResponse "SelectValues")


select :: Field -> String -> SDKM Bool
select obj match = selectAsync obj match >>= awaitResult

select_ :: Field -> String -> Bool -> Int -> SDKM Bool
select_ obj match softLock excludedValuesMode = selectAsync_ obj match softLock excludedValuesMode >>= awaitResult

selectAsync :: Field -> String -> SDKM (Task Bool)
selectAsync obj match =
  let args = [("qMatch", toValue match)]
   in sendRequestM (getHandle obj) "Select" args (onReturnValueResponse "Select")

selectAsync_ :: Field -> String -> Bool -> Int -> SDKM (Task Bool)
selectAsync_ obj match softLock excludedValuesMode =
  let args = [("qMatch", toValue match), ("qSoftLock", toValue softLock), ("qExcludedValuesMode", toValue excludedValuesMode)]
   in sendRequestM (getHandle obj) "Select" args (onReturnValueResponse "Select")


toggleSelect :: Field -> String -> SDKM Bool
toggleSelect obj match = toggleSelectAsync obj match >>= awaitResult

toggleSelect_ :: Field -> String -> Bool -> Int -> SDKM Bool
toggleSelect_ obj match softLock excludedValuesMode = toggleSelectAsync_ obj match softLock excludedValuesMode >>= awaitResult

toggleSelectAsync :: Field -> String -> SDKM (Task Bool)
toggleSelectAsync obj match =
  let args = [("qMatch", toValue match)]
   in sendRequestM (getHandle obj) "ToggleSelect" args (onReturnValueResponse "ToggleSelect")

toggleSelectAsync_ :: Field -> String -> Bool -> Int -> SDKM (Task Bool)
toggleSelectAsync_ obj match softLock excludedValuesMode =
  let args = [("qMatch", toValue match), ("qSoftLock", toValue softLock), ("qExcludedValuesMode", toValue excludedValuesMode)]
   in sendRequestM (getHandle obj) "ToggleSelect" args (onReturnValueResponse "ToggleSelect")


clearAllButThis :: Field -> SDKM Bool
clearAllButThis obj = clearAllButThisAsync obj >>= awaitResult

clearAllButThis_ :: Field -> Bool -> SDKM Bool
clearAllButThis_ obj softLock = clearAllButThisAsync_ obj softLock >>= awaitResult

clearAllButThisAsync :: Field -> SDKM (Task Bool)
clearAllButThisAsync obj =
  sendRequestM (getHandle obj) "ClearAllButThis" [] (onReturnValueResponse "ClearAllButThis")

clearAllButThisAsync_ :: Field -> Bool -> SDKM (Task Bool)
clearAllButThisAsync_ obj softLock =
  let args = [("qSoftLock", toValue softLock)]
   in sendRequestM (getHandle obj) "ClearAllButThis" args (onReturnValueResponse "ClearAllButThis")


selectPossible :: Field -> SDKM Bool
selectPossible obj = selectPossibleAsync obj >>= awaitResult

selectPossible_ :: Field -> Bool -> SDKM Bool
selectPossible_ obj softLock = selectPossibleAsync_ obj softLock >>= awaitResult

selectPossibleAsync :: Field -> SDKM (Task Bool)
selectPossibleAsync obj =
  sendRequestM (getHandle obj) "SelectPossible" [] (onReturnValueResponse "SelectPossible")

selectPossibleAsync_ :: Field -> Bool -> SDKM (Task Bool)
selectPossibleAsync_ obj softLock =
  let args = [("qSoftLock", toValue softLock)]
   in sendRequestM (getHandle obj) "SelectPossible" args (onReturnValueResponse "SelectPossible")


selectExcluded :: Field -> SDKM Bool
selectExcluded obj = selectExcludedAsync obj >>= awaitResult

selectExcluded_ :: Field -> Bool -> SDKM Bool
selectExcluded_ obj softLock = selectExcludedAsync_ obj softLock >>= awaitResult

selectExcludedAsync :: Field -> SDKM (Task Bool)
selectExcludedAsync obj =
  sendRequestM (getHandle obj) "SelectExcluded" [] (onReturnValueResponse "SelectExcluded")

selectExcludedAsync_ :: Field -> Bool -> SDKM (Task Bool)
selectExcludedAsync_ obj softLock =
  let args = [("qSoftLock", toValue softLock)]
   in sendRequestM (getHandle obj) "SelectExcluded" args (onReturnValueResponse "SelectExcluded")


selectAll :: Field -> SDKM Bool
selectAll obj = selectAllAsync obj >>= awaitResult

selectAll_ :: Field -> Bool -> SDKM Bool
selectAll_ obj softLock = selectAllAsync_ obj softLock >>= awaitResult

selectAllAsync :: Field -> SDKM (Task Bool)
selectAllAsync obj =
  sendRequestM (getHandle obj) "SelectAll" [] (onReturnValueResponse "SelectAll")

selectAllAsync_ :: Field -> Bool -> SDKM (Task Bool)
selectAllAsync_ obj softLock =
  let args = [("qSoftLock", toValue softLock)]
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


