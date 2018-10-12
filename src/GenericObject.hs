{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE TypeSynonymInstances   #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
module GenericObject where

import Text.JSON
import Control.Lens
import AbstractStructure
import HardCoded
import SDKMonad
import SDKBase
import PropClasses
import ModelEngine
instance QixClass GenericObject where
  getHandle (GenericObject (QixObject h _)) = h

getLayout :: GenericObject -> SDKM GenericObjectLayout
getLayout obj = getLayoutAsync obj >>= awaitResult

getLayoutAsync :: GenericObject -> SDKM (Task GenericObjectLayout)
getLayoutAsync obj =
  sendRequestM (getHandle obj) "GetLayout" [] (onMultiValueResponse "GetLayout")


getListObjectData :: GenericObject -> String -> [NxPage] -> SDKM [NxDataPage]
getListObjectData obj path pages = getListObjectDataAsync obj path pages >>= awaitResult

getListObjectDataAsync :: GenericObject -> String -> [NxPage] -> SDKM (Task [NxDataPage])
getListObjectDataAsync obj path pages =
  let args = [("qPath", toValue path), ("qPages", toValue pages)]
   in sendRequestM (getHandle obj) "GetListObjectData" args (onMultiValueResponse "GetListObjectData")


getHyperCubeData :: GenericObject -> String -> [NxPage] -> SDKM [NxDataPage]
getHyperCubeData obj path pages = getHyperCubeDataAsync obj path pages >>= awaitResult

getHyperCubeDataAsync :: GenericObject -> String -> [NxPage] -> SDKM (Task [NxDataPage])
getHyperCubeDataAsync obj path pages =
  let args = [("qPath", toValue path), ("qPages", toValue pages)]
   in sendRequestM (getHandle obj) "GetHyperCubeData" args (onMultiValueResponse "GetHyperCubeData")


getHyperCubeReducedData :: GenericObject -> String -> [NxPage] -> Int -> NxDataReductionMode -> SDKM [NxDataPage]
getHyperCubeReducedData obj path pages zoomFactor reductionMode = getHyperCubeReducedDataAsync obj path pages zoomFactor reductionMode >>= awaitResult

getHyperCubeReducedDataAsync :: GenericObject -> String -> [NxPage] -> Int -> NxDataReductionMode -> SDKM (Task [NxDataPage])
getHyperCubeReducedDataAsync obj path pages zoomFactor reductionMode =
  let args = [("qPath", toValue path), ("qPages", toValue pages), ("qZoomFactor", toValue zoomFactor), ("qReductionMode", toValue reductionMode)]
   in sendRequestM (getHandle obj) "GetHyperCubeReducedData" args (onMultiValueResponse "GetHyperCubeReducedData")


getHyperCubePivotData :: GenericObject -> String -> [NxPage] -> SDKM [NxPivotPage]
getHyperCubePivotData obj path pages = getHyperCubePivotDataAsync obj path pages >>= awaitResult

getHyperCubePivotDataAsync :: GenericObject -> String -> [NxPage] -> SDKM (Task [NxPivotPage])
getHyperCubePivotDataAsync obj path pages =
  let args = [("qPath", toValue path), ("qPages", toValue pages)]
   in sendRequestM (getHandle obj) "GetHyperCubePivotData" args (onMultiValueResponse "GetHyperCubePivotData")


getHyperCubeStackData :: GenericObject -> String -> [NxPage] -> SDKM [NxStackPage]
getHyperCubeStackData obj path pages = getHyperCubeStackDataAsync obj path pages >>= awaitResult

getHyperCubeStackData_ :: GenericObject -> String -> [NxPage] -> Int -> SDKM [NxStackPage]
getHyperCubeStackData_ obj path pages maxNbrCells = getHyperCubeStackDataAsync_ obj path pages maxNbrCells >>= awaitResult

getHyperCubeStackDataAsync :: GenericObject -> String -> [NxPage] -> SDKM (Task [NxStackPage])
getHyperCubeStackDataAsync obj path pages =
  let args = [("qPath", toValue path), ("qPages", toValue pages)]
   in sendRequestM (getHandle obj) "GetHyperCubeStackData" args (onMultiValueResponse "GetHyperCubeStackData")

getHyperCubeStackDataAsync_ :: GenericObject -> String -> [NxPage] -> Int -> SDKM (Task [NxStackPage])
getHyperCubeStackDataAsync_ obj path pages maxNbrCells =
  let args = [("qPath", toValue path), ("qPages", toValue pages), ("qMaxNbrCells", toValue maxNbrCells)]
   in sendRequestM (getHandle obj) "GetHyperCubeStackData" args (onMultiValueResponse "GetHyperCubeStackData")


getHyperCubeContinuousData :: GenericObject -> String -> NxContinuousDataOptions -> SDKM GetHyperCubeContinuousDataResult
getHyperCubeContinuousData obj path options = getHyperCubeContinuousDataAsync obj path options >>= awaitResult

getHyperCubeContinuousData_ :: GenericObject -> String -> NxContinuousDataOptions -> Bool -> SDKM GetHyperCubeContinuousDataResult
getHyperCubeContinuousData_ obj path options reverseSort = getHyperCubeContinuousDataAsync_ obj path options reverseSort >>= awaitResult

newtype GetHyperCubeContinuousDataResult = GetHyperCubeContinuousDataResult AbstractStructure
instance Show GetHyperCubeContinuousDataResult where show = show.toAs
instance ValueType GetHyperCubeContinuousDataResult where
  toValue (GetHyperCubeContinuousDataResult as) = toValue as
  fromValue as = GetHyperCubeContinuousDataResult (fromValue as)

instance AbstractStructureContainer GetHyperCubeContinuousDataResult where
  toAs (GetHyperCubeContinuousDataResult as) = as
  fromAs as = GetHyperCubeContinuousDataResult as
instance HasQDataPages GetHyperCubeContinuousDataResult [NxDataPage]
instance HasQAxisData GetHyperCubeContinuousDataResult NxAxisData

getHyperCubeContinuousDataAsync :: GenericObject -> String -> NxContinuousDataOptions -> SDKM (Task GetHyperCubeContinuousDataResult)
getHyperCubeContinuousDataAsync obj path options =
  let args = [("qPath", toValue path), ("qOptions", toValue options)]
   in sendRequestM (getHandle obj) "GetHyperCubeContinuousData" args (onMultiValueResponse "GetHyperCubeContinuousData")

getHyperCubeContinuousDataAsync_ :: GenericObject -> String -> NxContinuousDataOptions -> Bool -> SDKM (Task GetHyperCubeContinuousDataResult)
getHyperCubeContinuousDataAsync_ obj path options reverseSort =
  let args = [("qPath", toValue path), ("qOptions", toValue options), ("qReverseSort", toValue reverseSort)]
   in sendRequestM (getHandle obj) "GetHyperCubeContinuousData" args (onMultiValueResponse "GetHyperCubeContinuousData")


getHyperCubeTreeData :: GenericObject -> String -> SDKM [NxTreeNode]
getHyperCubeTreeData obj path = getHyperCubeTreeDataAsync obj path >>= awaitResult

getHyperCubeTreeData_ :: GenericObject -> String -> NxTreeDataOption -> SDKM [NxTreeNode]
getHyperCubeTreeData_ obj path nodeOptions = getHyperCubeTreeDataAsync_ obj path nodeOptions >>= awaitResult

getHyperCubeTreeDataAsync :: GenericObject -> String -> SDKM (Task [NxTreeNode])
getHyperCubeTreeDataAsync obj path =
  let args = [("qPath", toValue path)]
   in sendRequestM (getHandle obj) "GetHyperCubeTreeData" args (onMultiValueResponse "GetHyperCubeTreeData")

getHyperCubeTreeDataAsync_ :: GenericObject -> String -> NxTreeDataOption -> SDKM (Task [NxTreeNode])
getHyperCubeTreeDataAsync_ obj path nodeOptions =
  let args = [("qPath", toValue path), ("qNodeOptions", toValue nodeOptions)]
   in sendRequestM (getHandle obj) "GetHyperCubeTreeData" args (onMultiValueResponse "GetHyperCubeTreeData")


getHyperCubeBinnedData :: GenericObject -> String -> [NxPage] -> NxViewPort -> [NxDataAreaPage] -> Int -> Int -> Int -> SDKM [NxDataPage]
getHyperCubeBinnedData obj path pages viewport dataRanges maxNbrCells queryLevel binningMethod = getHyperCubeBinnedDataAsync obj path pages viewport dataRanges maxNbrCells queryLevel binningMethod >>= awaitResult

getHyperCubeBinnedDataAsync :: GenericObject -> String -> [NxPage] -> NxViewPort -> [NxDataAreaPage] -> Int -> Int -> Int -> SDKM (Task [NxDataPage])
getHyperCubeBinnedDataAsync obj path pages viewport dataRanges maxNbrCells queryLevel binningMethod =
  let args = [("qPath", toValue path), ("qPages", toValue pages), ("qViewport", toValue viewport), ("qDataRanges", toValue dataRanges), ("qMaxNbrCells", toValue maxNbrCells), ("qQueryLevel", toValue queryLevel), ("qBinningMethod", toValue binningMethod)]
   in sendRequestM (getHandle obj) "GetHyperCubeBinnedData" args (onMultiValueResponse "GetHyperCubeBinnedData")


applyPatches :: GenericObject -> [NxPatch] -> SDKM ()
applyPatches obj patches = applyPatchesAsync obj patches >>= awaitResult

applyPatches_ :: GenericObject -> [NxPatch] -> Bool -> SDKM ()
applyPatches_ obj patches softPatch = applyPatchesAsync_ obj patches softPatch >>= awaitResult

applyPatchesAsync :: GenericObject -> [NxPatch] -> SDKM (Task ())
applyPatchesAsync obj patches =
  let args = [("qPatches", toValue patches)]
   in sendRequestM (getHandle obj) "ApplyPatches" args (onMultiValueResponse "ApplyPatches")

applyPatchesAsync_ :: GenericObject -> [NxPatch] -> Bool -> SDKM (Task ())
applyPatchesAsync_ obj patches softPatch =
  let args = [("qPatches", toValue patches), ("qSoftPatch", toValue softPatch)]
   in sendRequestM (getHandle obj) "ApplyPatches" args (onMultiValueResponse "ApplyPatches")


clearSoftPatches :: GenericObject -> SDKM ()
clearSoftPatches obj = clearSoftPatchesAsync obj >>= awaitResult

clearSoftPatchesAsync :: GenericObject -> SDKM (Task ())
clearSoftPatchesAsync obj =
  sendRequestM (getHandle obj) "ClearSoftPatches" [] (onMultiValueResponse "ClearSoftPatches")


setProperties :: GenericObject -> GenericObjectProperties -> SDKM ()
setProperties obj prop = setPropertiesAsync obj prop >>= awaitResult

setPropertiesAsync :: GenericObject -> GenericObjectProperties -> SDKM (Task ())
setPropertiesAsync obj prop =
  let args = [("qProp", toValue prop)]
   in sendRequestM (getHandle obj) "SetProperties" args (onMultiValueResponse "SetProperties")


getProperties :: GenericObject -> SDKM GenericObjectProperties
getProperties obj = getPropertiesAsync obj >>= awaitResult

getPropertiesAsync :: GenericObject -> SDKM (Task GenericObjectProperties)
getPropertiesAsync obj =
  sendRequestM (getHandle obj) "GetProperties" [] (onMultiValueResponse "GetProperties")


getEffectiveProperties :: GenericObject -> SDKM GenericObjectProperties
getEffectiveProperties obj = getEffectivePropertiesAsync obj >>= awaitResult

getEffectivePropertiesAsync :: GenericObject -> SDKM (Task GenericObjectProperties)
getEffectivePropertiesAsync obj =
  sendRequestM (getHandle obj) "GetEffectiveProperties" [] (onMultiValueResponse "GetEffectiveProperties")


setFullPropertyTree :: GenericObject -> GenericObjectEntry -> SDKM ()
setFullPropertyTree obj propEntry = setFullPropertyTreeAsync obj propEntry >>= awaitResult

setFullPropertyTreeAsync :: GenericObject -> GenericObjectEntry -> SDKM (Task ())
setFullPropertyTreeAsync obj propEntry =
  let args = [("qPropEntry", toValue propEntry)]
   in sendRequestM (getHandle obj) "SetFullPropertyTree" args (onMultiValueResponse "SetFullPropertyTree")


getFullPropertyTree :: GenericObject -> SDKM GenericObjectEntry
getFullPropertyTree obj = getFullPropertyTreeAsync obj >>= awaitResult

getFullPropertyTreeAsync :: GenericObject -> SDKM (Task GenericObjectEntry)
getFullPropertyTreeAsync obj =
  sendRequestM (getHandle obj) "GetFullPropertyTree" [] (onMultiValueResponse "GetFullPropertyTree")


getInfo :: GenericObject -> SDKM NxInfo
getInfo obj = getInfoAsync obj >>= awaitResult

getInfoAsync :: GenericObject -> SDKM (Task NxInfo)
getInfoAsync obj =
  sendRequestM (getHandle obj) "GetInfo" [] (onMultiValueResponse "GetInfo")


clearSelections :: GenericObject -> String -> SDKM ()
clearSelections obj path = clearSelectionsAsync obj path >>= awaitResult

clearSelections_ :: GenericObject -> String -> [Int] -> SDKM ()
clearSelections_ obj path colIndices = clearSelectionsAsync_ obj path colIndices >>= awaitResult

clearSelectionsAsync :: GenericObject -> String -> SDKM (Task ())
clearSelectionsAsync obj path =
  let args = [("qPath", toValue path)]
   in sendRequestM (getHandle obj) "ClearSelections" args (onMultiValueResponse "ClearSelections")

clearSelectionsAsync_ :: GenericObject -> String -> [Int] -> SDKM (Task ())
clearSelectionsAsync_ obj path colIndices =
  let args = [("qPath", toValue path), ("qColIndices", toValue colIndices)]
   in sendRequestM (getHandle obj) "ClearSelections" args (onMultiValueResponse "ClearSelections")


exportData :: GenericObject -> NxExportFileType -> SDKM ExportDataResult
exportData obj fileType = exportDataAsync obj fileType >>= awaitResult

exportData_ :: GenericObject -> NxExportFileType -> String -> String -> NxExportState -> SDKM ExportDataResult
exportData_ obj fileType path fileName exportState = exportDataAsync_ obj fileType path fileName exportState >>= awaitResult

newtype ExportDataResult = ExportDataResult AbstractStructure
instance Show ExportDataResult where show = show.toAs
instance ValueType ExportDataResult where
  toValue (ExportDataResult as) = toValue as
  fromValue as = ExportDataResult (fromValue as)

instance AbstractStructureContainer ExportDataResult where
  toAs (ExportDataResult as) = as
  fromAs as = ExportDataResult as
instance HasQUrl ExportDataResult String
instance HasQWarnings ExportDataResult [Int]

exportDataAsync :: GenericObject -> NxExportFileType -> SDKM (Task ExportDataResult)
exportDataAsync obj fileType =
  let args = [("qFileType", toValue fileType)]
   in sendRequestM (getHandle obj) "ExportData" args (onMultiValueResponse "ExportData")

exportDataAsync_ :: GenericObject -> NxExportFileType -> String -> String -> NxExportState -> SDKM (Task ExportDataResult)
exportDataAsync_ obj fileType path fileName exportState =
  let args = [("qFileType", toValue fileType), ("qPath", toValue path), ("qFileName", toValue fileName), ("qExportState", toValue exportState)]
   in sendRequestM (getHandle obj) "ExportData" args (onMultiValueResponse "ExportData")


selectListObjectValues :: GenericObject -> String -> [Int] -> Bool -> SDKM Bool
selectListObjectValues obj path values toggleMode = selectListObjectValuesAsync obj path values toggleMode >>= awaitResult

selectListObjectValues_ :: GenericObject -> String -> [Int] -> Bool -> Bool -> SDKM Bool
selectListObjectValues_ obj path values toggleMode softLock = selectListObjectValuesAsync_ obj path values toggleMode softLock >>= awaitResult

selectListObjectValuesAsync :: GenericObject -> String -> [Int] -> Bool -> SDKM (Task Bool)
selectListObjectValuesAsync obj path values toggleMode =
  let args = [("qPath", toValue path), ("qValues", toValue values), ("qToggleMode", toValue toggleMode)]
   in sendRequestM (getHandle obj) "SelectListObjectValues" args (onMultiValueResponse "SelectListObjectValues")

selectListObjectValuesAsync_ :: GenericObject -> String -> [Int] -> Bool -> Bool -> SDKM (Task Bool)
selectListObjectValuesAsync_ obj path values toggleMode softLock =
  let args = [("qPath", toValue path), ("qValues", toValue values), ("qToggleMode", toValue toggleMode), ("qSoftLock", toValue softLock)]
   in sendRequestM (getHandle obj) "SelectListObjectValues" args (onMultiValueResponse "SelectListObjectValues")


selectListObjectPossible :: GenericObject -> String -> SDKM Bool
selectListObjectPossible obj path = selectListObjectPossibleAsync obj path >>= awaitResult

selectListObjectPossible_ :: GenericObject -> String -> Bool -> SDKM Bool
selectListObjectPossible_ obj path softLock = selectListObjectPossibleAsync_ obj path softLock >>= awaitResult

selectListObjectPossibleAsync :: GenericObject -> String -> SDKM (Task Bool)
selectListObjectPossibleAsync obj path =
  let args = [("qPath", toValue path)]
   in sendRequestM (getHandle obj) "SelectListObjectPossible" args (onMultiValueResponse "SelectListObjectPossible")

selectListObjectPossibleAsync_ :: GenericObject -> String -> Bool -> SDKM (Task Bool)
selectListObjectPossibleAsync_ obj path softLock =
  let args = [("qPath", toValue path), ("qSoftLock", toValue softLock)]
   in sendRequestM (getHandle obj) "SelectListObjectPossible" args (onMultiValueResponse "SelectListObjectPossible")


selectListObjectExcluded :: GenericObject -> String -> SDKM Bool
selectListObjectExcluded obj path = selectListObjectExcludedAsync obj path >>= awaitResult

selectListObjectExcluded_ :: GenericObject -> String -> Bool -> SDKM Bool
selectListObjectExcluded_ obj path softLock = selectListObjectExcludedAsync_ obj path softLock >>= awaitResult

selectListObjectExcludedAsync :: GenericObject -> String -> SDKM (Task Bool)
selectListObjectExcludedAsync obj path =
  let args = [("qPath", toValue path)]
   in sendRequestM (getHandle obj) "SelectListObjectExcluded" args (onMultiValueResponse "SelectListObjectExcluded")

selectListObjectExcludedAsync_ :: GenericObject -> String -> Bool -> SDKM (Task Bool)
selectListObjectExcludedAsync_ obj path softLock =
  let args = [("qPath", toValue path), ("qSoftLock", toValue softLock)]
   in sendRequestM (getHandle obj) "SelectListObjectExcluded" args (onMultiValueResponse "SelectListObjectExcluded")


selectListObjectAlternative :: GenericObject -> String -> SDKM Bool
selectListObjectAlternative obj path = selectListObjectAlternativeAsync obj path >>= awaitResult

selectListObjectAlternative_ :: GenericObject -> String -> Bool -> SDKM Bool
selectListObjectAlternative_ obj path softLock = selectListObjectAlternativeAsync_ obj path softLock >>= awaitResult

selectListObjectAlternativeAsync :: GenericObject -> String -> SDKM (Task Bool)
selectListObjectAlternativeAsync obj path =
  let args = [("qPath", toValue path)]
   in sendRequestM (getHandle obj) "SelectListObjectAlternative" args (onMultiValueResponse "SelectListObjectAlternative")

selectListObjectAlternativeAsync_ :: GenericObject -> String -> Bool -> SDKM (Task Bool)
selectListObjectAlternativeAsync_ obj path softLock =
  let args = [("qPath", toValue path), ("qSoftLock", toValue softLock)]
   in sendRequestM (getHandle obj) "SelectListObjectAlternative" args (onMultiValueResponse "SelectListObjectAlternative")


selectListObjectAll :: GenericObject -> String -> SDKM Bool
selectListObjectAll obj path = selectListObjectAllAsync obj path >>= awaitResult

selectListObjectAll_ :: GenericObject -> String -> Bool -> SDKM Bool
selectListObjectAll_ obj path softLock = selectListObjectAllAsync_ obj path softLock >>= awaitResult

selectListObjectAllAsync :: GenericObject -> String -> SDKM (Task Bool)
selectListObjectAllAsync obj path =
  let args = [("qPath", toValue path)]
   in sendRequestM (getHandle obj) "SelectListObjectAll" args (onMultiValueResponse "SelectListObjectAll")

selectListObjectAllAsync_ :: GenericObject -> String -> Bool -> SDKM (Task Bool)
selectListObjectAllAsync_ obj path softLock =
  let args = [("qPath", toValue path), ("qSoftLock", toValue softLock)]
   in sendRequestM (getHandle obj) "SelectListObjectAll" args (onMultiValueResponse "SelectListObjectAll")


selectListObjectContinuousRange :: GenericObject -> String -> [Range] -> SDKM Bool
selectListObjectContinuousRange obj path ranges = selectListObjectContinuousRangeAsync obj path ranges >>= awaitResult

selectListObjectContinuousRange_ :: GenericObject -> String -> [Range] -> Bool -> SDKM Bool
selectListObjectContinuousRange_ obj path ranges softLock = selectListObjectContinuousRangeAsync_ obj path ranges softLock >>= awaitResult

selectListObjectContinuousRangeAsync :: GenericObject -> String -> [Range] -> SDKM (Task Bool)
selectListObjectContinuousRangeAsync obj path ranges =
  let args = [("qPath", toValue path), ("qRanges", toValue ranges)]
   in sendRequestM (getHandle obj) "SelectListObjectContinuousRange" args (onMultiValueResponse "SelectListObjectContinuousRange")

selectListObjectContinuousRangeAsync_ :: GenericObject -> String -> [Range] -> Bool -> SDKM (Task Bool)
selectListObjectContinuousRangeAsync_ obj path ranges softLock =
  let args = [("qPath", toValue path), ("qRanges", toValue ranges), ("qSoftLock", toValue softLock)]
   in sendRequestM (getHandle obj) "SelectListObjectContinuousRange" args (onMultiValueResponse "SelectListObjectContinuousRange")


searchListObjectFor :: GenericObject -> String -> String -> SDKM Bool
searchListObjectFor obj path match = searchListObjectForAsync obj path match >>= awaitResult

searchListObjectForAsync :: GenericObject -> String -> String -> SDKM (Task Bool)
searchListObjectForAsync obj path match =
  let args = [("qPath", toValue path), ("qMatch", toValue match)]
   in sendRequestM (getHandle obj) "SearchListObjectFor" args (onMultiValueResponse "SearchListObjectFor")


abortListObjectSearch :: GenericObject -> String -> SDKM ()
abortListObjectSearch obj path = abortListObjectSearchAsync obj path >>= awaitResult

abortListObjectSearchAsync :: GenericObject -> String -> SDKM (Task ())
abortListObjectSearchAsync obj path =
  let args = [("qPath", toValue path)]
   in sendRequestM (getHandle obj) "AbortListObjectSearch" args (onMultiValueResponse "AbortListObjectSearch")


acceptListObjectSearch :: GenericObject -> String -> Bool -> SDKM ()
acceptListObjectSearch obj path toggleMode = acceptListObjectSearchAsync obj path toggleMode >>= awaitResult

acceptListObjectSearch_ :: GenericObject -> String -> Bool -> Bool -> SDKM ()
acceptListObjectSearch_ obj path toggleMode softLock = acceptListObjectSearchAsync_ obj path toggleMode softLock >>= awaitResult

acceptListObjectSearchAsync :: GenericObject -> String -> Bool -> SDKM (Task ())
acceptListObjectSearchAsync obj path toggleMode =
  let args = [("qPath", toValue path), ("qToggleMode", toValue toggleMode)]
   in sendRequestM (getHandle obj) "AcceptListObjectSearch" args (onMultiValueResponse "AcceptListObjectSearch")

acceptListObjectSearchAsync_ :: GenericObject -> String -> Bool -> Bool -> SDKM (Task ())
acceptListObjectSearchAsync_ obj path toggleMode softLock =
  let args = [("qPath", toValue path), ("qToggleMode", toValue toggleMode), ("qSoftLock", toValue softLock)]
   in sendRequestM (getHandle obj) "AcceptListObjectSearch" args (onMultiValueResponse "AcceptListObjectSearch")


expandLeft :: GenericObject -> String -> Int -> Int -> Bool -> SDKM ()
expandLeft obj path row col all = expandLeftAsync obj path row col all >>= awaitResult

expandLeftAsync :: GenericObject -> String -> Int -> Int -> Bool -> SDKM (Task ())
expandLeftAsync obj path row col all =
  let args = [("qPath", toValue path), ("qRow", toValue row), ("qCol", toValue col), ("qAll", toValue all)]
   in sendRequestM (getHandle obj) "ExpandLeft" args (onMultiValueResponse "ExpandLeft")


expandTop :: GenericObject -> String -> Int -> Int -> Bool -> SDKM ()
expandTop obj path row col all = expandTopAsync obj path row col all >>= awaitResult

expandTopAsync :: GenericObject -> String -> Int -> Int -> Bool -> SDKM (Task ())
expandTopAsync obj path row col all =
  let args = [("qPath", toValue path), ("qRow", toValue row), ("qCol", toValue col), ("qAll", toValue all)]
   in sendRequestM (getHandle obj) "ExpandTop" args (onMultiValueResponse "ExpandTop")


collapseLeft :: GenericObject -> String -> Int -> Int -> Bool -> SDKM ()
collapseLeft obj path row col all = collapseLeftAsync obj path row col all >>= awaitResult

collapseLeftAsync :: GenericObject -> String -> Int -> Int -> Bool -> SDKM (Task ())
collapseLeftAsync obj path row col all =
  let args = [("qPath", toValue path), ("qRow", toValue row), ("qCol", toValue col), ("qAll", toValue all)]
   in sendRequestM (getHandle obj) "CollapseLeft" args (onMultiValueResponse "CollapseLeft")


collapseTop :: GenericObject -> String -> Int -> Int -> Bool -> SDKM ()
collapseTop obj path row col all = collapseTopAsync obj path row col all >>= awaitResult

collapseTopAsync :: GenericObject -> String -> Int -> Int -> Bool -> SDKM (Task ())
collapseTopAsync obj path row col all =
  let args = [("qPath", toValue path), ("qRow", toValue row), ("qCol", toValue col), ("qAll", toValue all)]
   in sendRequestM (getHandle obj) "CollapseTop" args (onMultiValueResponse "CollapseTop")


drillUp :: GenericObject -> String -> Int -> Int -> SDKM ()
drillUp obj path dimNo nbrSteps = drillUpAsync obj path dimNo nbrSteps >>= awaitResult

drillUpAsync :: GenericObject -> String -> Int -> Int -> SDKM (Task ())
drillUpAsync obj path dimNo nbrSteps =
  let args = [("qPath", toValue path), ("qDimNo", toValue dimNo), ("qNbrSteps", toValue nbrSteps)]
   in sendRequestM (getHandle obj) "DrillUp" args (onMultiValueResponse "DrillUp")


lock :: GenericObject -> String -> SDKM ()
lock obj path = lockAsync obj path >>= awaitResult

lock_ :: GenericObject -> String -> [Int] -> SDKM ()
lock_ obj path colIndices = lockAsync_ obj path colIndices >>= awaitResult

lockAsync :: GenericObject -> String -> SDKM (Task ())
lockAsync obj path =
  let args = [("qPath", toValue path)]
   in sendRequestM (getHandle obj) "Lock" args (onMultiValueResponse "Lock")

lockAsync_ :: GenericObject -> String -> [Int] -> SDKM (Task ())
lockAsync_ obj path colIndices =
  let args = [("qPath", toValue path), ("qColIndices", toValue colIndices)]
   in sendRequestM (getHandle obj) "Lock" args (onMultiValueResponse "Lock")


unlock :: GenericObject -> String -> SDKM ()
unlock obj path = unlockAsync obj path >>= awaitResult

unlock_ :: GenericObject -> String -> [Int] -> SDKM ()
unlock_ obj path colIndices = unlockAsync_ obj path colIndices >>= awaitResult

unlockAsync :: GenericObject -> String -> SDKM (Task ())
unlockAsync obj path =
  let args = [("qPath", toValue path)]
   in sendRequestM (getHandle obj) "Unlock" args (onMultiValueResponse "Unlock")

unlockAsync_ :: GenericObject -> String -> [Int] -> SDKM (Task ())
unlockAsync_ obj path colIndices =
  let args = [("qPath", toValue path), ("qColIndices", toValue colIndices)]
   in sendRequestM (getHandle obj) "Unlock" args (onMultiValueResponse "Unlock")


selectHyperCubeValues :: GenericObject -> String -> Int -> [Int] -> Bool -> SDKM Bool
selectHyperCubeValues obj path dimNo values toggleMode = selectHyperCubeValuesAsync obj path dimNo values toggleMode >>= awaitResult

selectHyperCubeValuesAsync :: GenericObject -> String -> Int -> [Int] -> Bool -> SDKM (Task Bool)
selectHyperCubeValuesAsync obj path dimNo values toggleMode =
  let args = [("qPath", toValue path), ("qDimNo", toValue dimNo), ("qValues", toValue values), ("qToggleMode", toValue toggleMode)]
   in sendRequestM (getHandle obj) "SelectHyperCubeValues" args (onMultiValueResponse "SelectHyperCubeValues")


selectHyperCubeCells :: GenericObject -> String -> [Int] -> [Int] -> SDKM Bool
selectHyperCubeCells obj path rowIndices colIndices = selectHyperCubeCellsAsync obj path rowIndices colIndices >>= awaitResult

selectHyperCubeCells_ :: GenericObject -> String -> [Int] -> [Int] -> Bool -> Bool -> SDKM Bool
selectHyperCubeCells_ obj path rowIndices colIndices softLock deselectOnlyOneSelected = selectHyperCubeCellsAsync_ obj path rowIndices colIndices softLock deselectOnlyOneSelected >>= awaitResult

selectHyperCubeCellsAsync :: GenericObject -> String -> [Int] -> [Int] -> SDKM (Task Bool)
selectHyperCubeCellsAsync obj path rowIndices colIndices =
  let args = [("qPath", toValue path), ("qRowIndices", toValue rowIndices), ("qColIndices", toValue colIndices)]
   in sendRequestM (getHandle obj) "SelectHyperCubeCells" args (onMultiValueResponse "SelectHyperCubeCells")

selectHyperCubeCellsAsync_ :: GenericObject -> String -> [Int] -> [Int] -> Bool -> Bool -> SDKM (Task Bool)
selectHyperCubeCellsAsync_ obj path rowIndices colIndices softLock deselectOnlyOneSelected =
  let args = [("qPath", toValue path), ("qRowIndices", toValue rowIndices), ("qColIndices", toValue colIndices), ("qSoftLock", toValue softLock), ("qDeselectOnlyOneSelected", toValue deselectOnlyOneSelected)]
   in sendRequestM (getHandle obj) "SelectHyperCubeCells" args (onMultiValueResponse "SelectHyperCubeCells")


selectPivotCells :: GenericObject -> String -> [NxSelectionCell] -> SDKM Bool
selectPivotCells obj path selections = selectPivotCellsAsync obj path selections >>= awaitResult

selectPivotCells_ :: GenericObject -> String -> [NxSelectionCell] -> Bool -> Bool -> SDKM Bool
selectPivotCells_ obj path selections softLock deselectOnlyOneSelected = selectPivotCellsAsync_ obj path selections softLock deselectOnlyOneSelected >>= awaitResult

selectPivotCellsAsync :: GenericObject -> String -> [NxSelectionCell] -> SDKM (Task Bool)
selectPivotCellsAsync obj path selections =
  let args = [("qPath", toValue path), ("qSelections", toValue selections)]
   in sendRequestM (getHandle obj) "SelectPivotCells" args (onMultiValueResponse "SelectPivotCells")

selectPivotCellsAsync_ :: GenericObject -> String -> [NxSelectionCell] -> Bool -> Bool -> SDKM (Task Bool)
selectPivotCellsAsync_ obj path selections softLock deselectOnlyOneSelected =
  let args = [("qPath", toValue path), ("qSelections", toValue selections), ("qSoftLock", toValue softLock), ("qDeselectOnlyOneSelected", toValue deselectOnlyOneSelected)]
   in sendRequestM (getHandle obj) "SelectPivotCells" args (onMultiValueResponse "SelectPivotCells")


rangeSelectHyperCubeValues :: GenericObject -> String -> [NxRangeSelectInfo] -> SDKM Bool
rangeSelectHyperCubeValues obj path ranges = rangeSelectHyperCubeValuesAsync obj path ranges >>= awaitResult

rangeSelectHyperCubeValues_ :: GenericObject -> String -> [NxRangeSelectInfo] -> [Int] -> Bool -> Bool -> SDKM Bool
rangeSelectHyperCubeValues_ obj path ranges columnsToSelect orMode deselectOnlyOneSelected = rangeSelectHyperCubeValuesAsync_ obj path ranges columnsToSelect orMode deselectOnlyOneSelected >>= awaitResult

rangeSelectHyperCubeValuesAsync :: GenericObject -> String -> [NxRangeSelectInfo] -> SDKM (Task Bool)
rangeSelectHyperCubeValuesAsync obj path ranges =
  let args = [("qPath", toValue path), ("qRanges", toValue ranges)]
   in sendRequestM (getHandle obj) "RangeSelectHyperCubeValues" args (onMultiValueResponse "RangeSelectHyperCubeValues")

rangeSelectHyperCubeValuesAsync_ :: GenericObject -> String -> [NxRangeSelectInfo] -> [Int] -> Bool -> Bool -> SDKM (Task Bool)
rangeSelectHyperCubeValuesAsync_ obj path ranges columnsToSelect orMode deselectOnlyOneSelected =
  let args = [("qPath", toValue path), ("qRanges", toValue ranges), ("qColumnsToSelect", toValue columnsToSelect), ("qOrMode", toValue orMode), ("qDeselectOnlyOneSelected", toValue deselectOnlyOneSelected)]
   in sendRequestM (getHandle obj) "RangeSelectHyperCubeValues" args (onMultiValueResponse "RangeSelectHyperCubeValues")


multiRangeSelectHyperCubeValues :: GenericObject -> String -> [NxMultiRangeSelectInfo] -> SDKM Bool
multiRangeSelectHyperCubeValues obj path ranges = multiRangeSelectHyperCubeValuesAsync obj path ranges >>= awaitResult

multiRangeSelectHyperCubeValues_ :: GenericObject -> String -> [NxMultiRangeSelectInfo] -> Bool -> Bool -> SDKM Bool
multiRangeSelectHyperCubeValues_ obj path ranges orMode deselectOnlyOneSelected = multiRangeSelectHyperCubeValuesAsync_ obj path ranges orMode deselectOnlyOneSelected >>= awaitResult

multiRangeSelectHyperCubeValuesAsync :: GenericObject -> String -> [NxMultiRangeSelectInfo] -> SDKM (Task Bool)
multiRangeSelectHyperCubeValuesAsync obj path ranges =
  let args = [("qPath", toValue path), ("qRanges", toValue ranges)]
   in sendRequestM (getHandle obj) "MultiRangeSelectHyperCubeValues" args (onMultiValueResponse "MultiRangeSelectHyperCubeValues")

multiRangeSelectHyperCubeValuesAsync_ :: GenericObject -> String -> [NxMultiRangeSelectInfo] -> Bool -> Bool -> SDKM (Task Bool)
multiRangeSelectHyperCubeValuesAsync_ obj path ranges orMode deselectOnlyOneSelected =
  let args = [("qPath", toValue path), ("qRanges", toValue ranges), ("qOrMode", toValue orMode), ("qDeselectOnlyOneSelected", toValue deselectOnlyOneSelected)]
   in sendRequestM (getHandle obj) "MultiRangeSelectHyperCubeValues" args (onMultiValueResponse "MultiRangeSelectHyperCubeValues")


multiRangeSelectTreeDataValues :: GenericObject -> String -> [NxTreeMultiRangeSelectInfo] -> SDKM Bool
multiRangeSelectTreeDataValues obj path ranges = multiRangeSelectTreeDataValuesAsync obj path ranges >>= awaitResult

multiRangeSelectTreeDataValues_ :: GenericObject -> String -> [NxTreeMultiRangeSelectInfo] -> Bool -> Bool -> SDKM Bool
multiRangeSelectTreeDataValues_ obj path ranges orMode deselectOnlyOneSelected = multiRangeSelectTreeDataValuesAsync_ obj path ranges orMode deselectOnlyOneSelected >>= awaitResult

multiRangeSelectTreeDataValuesAsync :: GenericObject -> String -> [NxTreeMultiRangeSelectInfo] -> SDKM (Task Bool)
multiRangeSelectTreeDataValuesAsync obj path ranges =
  let args = [("qPath", toValue path), ("qRanges", toValue ranges)]
   in sendRequestM (getHandle obj) "MultiRangeSelectTreeDataValues" args (onMultiValueResponse "MultiRangeSelectTreeDataValues")

multiRangeSelectTreeDataValuesAsync_ :: GenericObject -> String -> [NxTreeMultiRangeSelectInfo] -> Bool -> Bool -> SDKM (Task Bool)
multiRangeSelectTreeDataValuesAsync_ obj path ranges orMode deselectOnlyOneSelected =
  let args = [("qPath", toValue path), ("qRanges", toValue ranges), ("qOrMode", toValue orMode), ("qDeselectOnlyOneSelected", toValue deselectOnlyOneSelected)]
   in sendRequestM (getHandle obj) "MultiRangeSelectTreeDataValues" args (onMultiValueResponse "MultiRangeSelectTreeDataValues")


selectHyperCubeContinuousRange :: GenericObject -> String -> [NxContinuousRangeSelectInfo] -> SDKM Bool
selectHyperCubeContinuousRange obj path ranges = selectHyperCubeContinuousRangeAsync obj path ranges >>= awaitResult

selectHyperCubeContinuousRange_ :: GenericObject -> String -> [NxContinuousRangeSelectInfo] -> Bool -> SDKM Bool
selectHyperCubeContinuousRange_ obj path ranges softLock = selectHyperCubeContinuousRangeAsync_ obj path ranges softLock >>= awaitResult

selectHyperCubeContinuousRangeAsync :: GenericObject -> String -> [NxContinuousRangeSelectInfo] -> SDKM (Task Bool)
selectHyperCubeContinuousRangeAsync obj path ranges =
  let args = [("qPath", toValue path), ("qRanges", toValue ranges)]
   in sendRequestM (getHandle obj) "SelectHyperCubeContinuousRange" args (onMultiValueResponse "SelectHyperCubeContinuousRange")

selectHyperCubeContinuousRangeAsync_ :: GenericObject -> String -> [NxContinuousRangeSelectInfo] -> Bool -> SDKM (Task Bool)
selectHyperCubeContinuousRangeAsync_ obj path ranges softLock =
  let args = [("qPath", toValue path), ("qRanges", toValue ranges), ("qSoftLock", toValue softLock)]
   in sendRequestM (getHandle obj) "SelectHyperCubeContinuousRange" args (onMultiValueResponse "SelectHyperCubeContinuousRange")


getChild :: GenericObject -> String -> SDKM GenericObject
getChild obj id = getChildAsync obj id >>= awaitResult

getChildAsync :: GenericObject -> String -> SDKM (Task GenericObject)
getChildAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "GetChild" args (onReturnValueResponse "GetChild")


getParent :: GenericObject -> SDKM GenericObject
getParent obj = getParentAsync obj >>= awaitResult

getParentAsync :: GenericObject -> SDKM (Task GenericObject)
getParentAsync obj =
  sendRequestM (getHandle obj) "GetParent" [] (onReturnValueResponse "GetParent")


getChildInfos :: GenericObject -> SDKM [NxInfo]
getChildInfos obj = getChildInfosAsync obj >>= awaitResult

getChildInfosAsync :: GenericObject -> SDKM (Task [NxInfo])
getChildInfosAsync obj =
  sendRequestM (getHandle obj) "GetChildInfos" [] (onMultiValueResponse "GetChildInfos")


createChild :: GenericObject -> GenericObjectProperties -> SDKM CreateChildResult
createChild obj prop = createChildAsync obj prop >>= awaitResult

createChild_ :: GenericObject -> GenericObjectProperties -> GenericObjectProperties -> SDKM CreateChildResult
createChild_ obj prop propForThis = createChildAsync_ obj prop propForThis >>= awaitResult

newtype CreateChildResult = CreateChildResult AbstractStructure
instance Show CreateChildResult where show = show.toAs
instance ValueType CreateChildResult where
  toValue (CreateChildResult as) = toValue as
  fromValue as = CreateChildResult (fromValue as)

instance AbstractStructureContainer CreateChildResult where
  toAs (CreateChildResult as) = as
  fromAs as = CreateChildResult as
instance HasQReturn CreateChildResult GenericObject
instance HasQInfo CreateChildResult NxInfo

createChildAsync :: GenericObject -> GenericObjectProperties -> SDKM (Task CreateChildResult)
createChildAsync obj prop =
  let args = [("qProp", toValue prop)]
   in sendRequestM (getHandle obj) "CreateChild" args (onMultiValueResponse "CreateChild")

createChildAsync_ :: GenericObject -> GenericObjectProperties -> GenericObjectProperties -> SDKM (Task CreateChildResult)
createChildAsync_ obj prop propForThis =
  let args = [("qProp", toValue prop), ("qPropForThis", toValue propForThis)]
   in sendRequestM (getHandle obj) "CreateChild" args (onMultiValueResponse "CreateChild")


destroyChild :: GenericObject -> String -> SDKM Bool
destroyChild obj id = destroyChildAsync obj id >>= awaitResult

destroyChild_ :: GenericObject -> String -> GenericObjectProperties -> SDKM Bool
destroyChild_ obj id propForThis = destroyChildAsync_ obj id propForThis >>= awaitResult

destroyChildAsync :: GenericObject -> String -> SDKM (Task Bool)
destroyChildAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "DestroyChild" args (onMultiValueResponse "DestroyChild")

destroyChildAsync_ :: GenericObject -> String -> GenericObjectProperties -> SDKM (Task Bool)
destroyChildAsync_ obj id propForThis =
  let args = [("qId", toValue id), ("qPropForThis", toValue propForThis)]
   in sendRequestM (getHandle obj) "DestroyChild" args (onMultiValueResponse "DestroyChild")


destroyAllChildren :: GenericObject -> SDKM ()
destroyAllChildren obj = destroyAllChildrenAsync obj >>= awaitResult

destroyAllChildren_ :: GenericObject -> GenericObjectProperties -> SDKM ()
destroyAllChildren_ obj propForThis = destroyAllChildrenAsync_ obj propForThis >>= awaitResult

destroyAllChildrenAsync :: GenericObject -> SDKM (Task ())
destroyAllChildrenAsync obj =
  sendRequestM (getHandle obj) "DestroyAllChildren" [] (onMultiValueResponse "DestroyAllChildren")

destroyAllChildrenAsync_ :: GenericObject -> GenericObjectProperties -> SDKM (Task ())
destroyAllChildrenAsync_ obj propForThis =
  let args = [("qPropForThis", toValue propForThis)]
   in sendRequestM (getHandle obj) "DestroyAllChildren" args (onMultiValueResponse "DestroyAllChildren")


setChildArrayOrder :: GenericObject -> [String] -> SDKM ()
setChildArrayOrder obj ids = setChildArrayOrderAsync obj ids >>= awaitResult

setChildArrayOrderAsync :: GenericObject -> [String] -> SDKM (Task ())
setChildArrayOrderAsync obj ids =
  let args = [("qIds", toValue ids)]
   in sendRequestM (getHandle obj) "SetChildArrayOrder" args (onMultiValueResponse "SetChildArrayOrder")


getLinkedObjects :: GenericObject -> SDKM [NxLinkedObjectInfo]
getLinkedObjects obj = getLinkedObjectsAsync obj >>= awaitResult

getLinkedObjectsAsync :: GenericObject -> SDKM (Task [NxLinkedObjectInfo])
getLinkedObjectsAsync obj =
  sendRequestM (getHandle obj) "GetLinkedObjects" [] (onMultiValueResponse "GetLinkedObjects")


copyFrom :: GenericObject -> String -> SDKM ()
copyFrom obj fromId = copyFromAsync obj fromId >>= awaitResult

copyFromAsync :: GenericObject -> String -> SDKM (Task ())
copyFromAsync obj fromId =
  let args = [("qFromId", toValue fromId)]
   in sendRequestM (getHandle obj) "CopyFrom" args (onMultiValueResponse "CopyFrom")


beginSelections :: GenericObject -> [String] -> SDKM ()
beginSelections obj paths = beginSelectionsAsync obj paths >>= awaitResult

beginSelectionsAsync :: GenericObject -> [String] -> SDKM (Task ())
beginSelectionsAsync obj paths =
  let args = [("qPaths", toValue paths)]
   in sendRequestM (getHandle obj) "BeginSelections" args (onMultiValueResponse "BeginSelections")


endSelections :: GenericObject -> Bool -> SDKM ()
endSelections obj accept = endSelectionsAsync obj accept >>= awaitResult

endSelectionsAsync :: GenericObject -> Bool -> SDKM (Task ())
endSelectionsAsync obj accept =
  let args = [("qAccept", toValue accept)]
   in sendRequestM (getHandle obj) "EndSelections" args (onMultiValueResponse "EndSelections")


resetMadeSelections :: GenericObject -> SDKM ()
resetMadeSelections obj = resetMadeSelectionsAsync obj >>= awaitResult

resetMadeSelectionsAsync :: GenericObject -> SDKM (Task ())
resetMadeSelectionsAsync obj =
  sendRequestM (getHandle obj) "ResetMadeSelections" [] (onMultiValueResponse "ResetMadeSelections")


embedSnapshotObject :: GenericObject -> String -> SDKM ()
embedSnapshotObject obj id = embedSnapshotObjectAsync obj id >>= awaitResult

embedSnapshotObjectAsync :: GenericObject -> String -> SDKM (Task ())
embedSnapshotObjectAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "EmbedSnapshotObject" args (onMultiValueResponse "EmbedSnapshotObject")


getSnapshotObject :: GenericObject -> SDKM GenericBookmark
getSnapshotObject obj = getSnapshotObjectAsync obj >>= awaitResult

getSnapshotObjectAsync :: GenericObject -> SDKM (Task GenericBookmark)
getSnapshotObjectAsync obj =
  sendRequestM (getHandle obj) "GetSnapshotObject" [] (onReturnValueResponse "GetSnapshotObject")


publish :: GenericObject -> SDKM ()
publish obj = publishAsync obj >>= awaitResult

publishAsync :: GenericObject -> SDKM (Task ())
publishAsync obj =
  sendRequestM (getHandle obj) "Publish" [] (onMultiValueResponse "Publish")


unPublish :: GenericObject -> SDKM ()
unPublish obj = unPublishAsync obj >>= awaitResult

unPublishAsync :: GenericObject -> SDKM (Task ())
unPublishAsync obj =
  sendRequestM (getHandle obj) "UnPublish" [] (onMultiValueResponse "UnPublish")


approve :: GenericObject -> SDKM ()
approve obj = approveAsync obj >>= awaitResult

approveAsync :: GenericObject -> SDKM (Task ())
approveAsync obj =
  sendRequestM (getHandle obj) "Approve" [] (onMultiValueResponse "Approve")


unApprove :: GenericObject -> SDKM ()
unApprove obj = unApproveAsync obj >>= awaitResult

unApproveAsync :: GenericObject -> SDKM (Task ())
unApproveAsync obj =
  sendRequestM (getHandle obj) "UnApprove" [] (onMultiValueResponse "UnApprove")


