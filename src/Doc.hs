{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE TypeSynonymInstances   #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
module Doc where

import Text.JSON
import Control.Lens
import AbstractStructure
import HardCoded
import SDKMonad
import SDKBase
import PropClasses
import ModelEngine
instance QixClass Doc where
  getHandle (Doc (QixObject h _)) = h

getAppLayout :: Doc -> SDKM NxAppLayout
getAppLayout obj = getAppLayoutAsync obj >>= awaitResult

getAppLayoutAsync :: Doc -> SDKM (Task NxAppLayout)
getAppLayoutAsync obj =
  sendRequestM (getHandle obj) "GetAppLayout" [] (onMultiValueResponse "GetAppLayout")


setAppProperties :: Doc -> NxAppProperties -> SDKM ()
setAppProperties obj prop = setAppPropertiesAsync obj prop >>= awaitResult

setAppPropertiesAsync :: Doc -> NxAppProperties -> SDKM (Task ())
setAppPropertiesAsync obj prop =
  let args = [("qProp", toValue prop)]
   in sendRequestM (getHandle obj) "SetAppProperties" args (onMultiValueResponse "SetAppProperties")


getAppProperties :: Doc -> SDKM NxAppProperties
getAppProperties obj = getAppPropertiesAsync obj >>= awaitResult

getAppPropertiesAsync :: Doc -> SDKM (Task NxAppProperties)
getAppPropertiesAsync obj =
  sendRequestM (getHandle obj) "GetAppProperties" [] (onMultiValueResponse "GetAppProperties")


getLineage :: Doc -> SDKM [LineageInfo]
getLineage obj = getLineageAsync obj >>= awaitResult

getLineageAsync :: Doc -> SDKM (Task [LineageInfo])
getLineageAsync obj =
  sendRequestM (getHandle obj) "GetLineage" [] (onMultiValueResponse "GetLineage")


createSessionObject :: Doc -> GenericObjectProperties -> SDKM GenericObject
createSessionObject obj prop = createSessionObjectAsync obj prop >>= awaitResult

createSessionObjectAsync :: Doc -> GenericObjectProperties -> SDKM (Task GenericObject)
createSessionObjectAsync obj prop =
  let args = [("qProp", toValue prop)]
   in sendRequestM (getHandle obj) "CreateSessionObject" args (onReturnValueResponse "CreateSessionObject")


destroySessionObject :: Doc -> String -> SDKM Bool
destroySessionObject obj id = destroySessionObjectAsync obj id >>= awaitResult

destroySessionObjectAsync :: Doc -> String -> SDKM (Task Bool)
destroySessionObjectAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "DestroySessionObject" args (onMultiValueResponse "DestroySessionObject")


createObject :: Doc -> GenericObjectProperties -> SDKM CreateObjectResult
createObject obj prop = createObjectAsync obj prop >>= awaitResult

newtype CreateObjectResult = CreateObjectResult AbstractStructure
instance Show CreateObjectResult where show = show.toAs
instance ValueType CreateObjectResult where
  toValue (CreateObjectResult as) = toValue as
  fromValue as = CreateObjectResult (fromValue as)

instance AbstractStructureContainer CreateObjectResult where
  toAs (CreateObjectResult as) = as
  fromAs as = CreateObjectResult as
instance HasQReturn CreateObjectResult GenericObject
instance HasQInfo CreateObjectResult NxInfo

createObjectAsync :: Doc -> GenericObjectProperties -> SDKM (Task CreateObjectResult)
createObjectAsync obj prop =
  let args = [("qProp", toValue prop)]
   in sendRequestM (getHandle obj) "CreateObject" args (onMultiValueResponse "CreateObject")


destroyObject :: Doc -> String -> SDKM Bool
destroyObject obj id = destroyObjectAsync obj id >>= awaitResult

destroyObjectAsync :: Doc -> String -> SDKM (Task Bool)
destroyObjectAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "DestroyObject" args (onMultiValueResponse "DestroyObject")


getObject :: Doc -> String -> SDKM GenericObject
getObject obj id = getObjectAsync obj id >>= awaitResult

getObjectAsync :: Doc -> String -> SDKM (Task GenericObject)
getObjectAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "GetObject" args (onReturnValueResponse "GetObject")


getObjects :: Doc -> NxGetObjectOptions -> SDKM [NxContainerEntry]
getObjects obj options = getObjectsAsync obj options >>= awaitResult

getObjectsAsync :: Doc -> NxGetObjectOptions -> SDKM (Task [NxContainerEntry])
getObjectsAsync obj options =
  let args = [("qOptions", toValue options)]
   in sendRequestM (getHandle obj) "GetObjects" args (onMultiValueResponse "GetObjects")


getBookmarks :: Doc -> NxGetBookmarkOptions -> SDKM [NxContainerEntry]
getBookmarks obj options = getBookmarksAsync obj options >>= awaitResult

getBookmarksAsync :: Doc -> NxGetBookmarkOptions -> SDKM (Task [NxContainerEntry])
getBookmarksAsync obj options =
  let args = [("qOptions", toValue options)]
   in sendRequestM (getHandle obj) "GetBookmarks" args (onMultiValueResponse "GetBookmarks")


cloneObject :: Doc -> String -> SDKM String
cloneObject obj id = cloneObjectAsync obj id >>= awaitResult

cloneObjectAsync :: Doc -> String -> SDKM (Task String)
cloneObjectAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "CloneObject" args (onMultiValueResponse "CloneObject")


createDraft :: Doc -> String -> SDKM String
createDraft obj id = createDraftAsync obj id >>= awaitResult

createDraftAsync :: Doc -> String -> SDKM (Task String)
createDraftAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "CreateDraft" args (onMultiValueResponse "CreateDraft")


commitDraft :: Doc -> String -> SDKM ()
commitDraft obj id = commitDraftAsync obj id >>= awaitResult

commitDraftAsync :: Doc -> String -> SDKM (Task ())
commitDraftAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "CommitDraft" args (onMultiValueResponse "CommitDraft")


destroyDraft :: Doc -> String -> String -> SDKM Bool
destroyDraft obj id sourceId = destroyDraftAsync obj id sourceId >>= awaitResult

destroyDraftAsync :: Doc -> String -> String -> SDKM (Task Bool)
destroyDraftAsync obj id sourceId =
  let args = [("qId", toValue id), ("qSourceId", toValue sourceId)]
   in sendRequestM (getHandle obj) "DestroyDraft" args (onMultiValueResponse "DestroyDraft")


undo :: Doc -> SDKM Bool
undo obj = undoAsync obj >>= awaitResult

undoAsync :: Doc -> SDKM (Task Bool)
undoAsync obj =
  sendRequestM (getHandle obj) "Undo" [] (onMultiValueResponse "Undo")


redo :: Doc -> SDKM Bool
redo obj = redoAsync obj >>= awaitResult

redoAsync :: Doc -> SDKM (Task Bool)
redoAsync obj =
  sendRequestM (getHandle obj) "Redo" [] (onMultiValueResponse "Redo")


clearUndoBuffer :: Doc -> SDKM ()
clearUndoBuffer obj = clearUndoBufferAsync obj >>= awaitResult

clearUndoBufferAsync :: Doc -> SDKM (Task ())
clearUndoBufferAsync obj =
  sendRequestM (getHandle obj) "ClearUndoBuffer" [] (onMultiValueResponse "ClearUndoBuffer")


createDimension :: Doc -> GenericDimensionProperties -> SDKM CreateDimensionResult
createDimension obj prop = createDimensionAsync obj prop >>= awaitResult

newtype CreateDimensionResult = CreateDimensionResult AbstractStructure
instance Show CreateDimensionResult where show = show.toAs
instance ValueType CreateDimensionResult where
  toValue (CreateDimensionResult as) = toValue as
  fromValue as = CreateDimensionResult (fromValue as)

instance AbstractStructureContainer CreateDimensionResult where
  toAs (CreateDimensionResult as) = as
  fromAs as = CreateDimensionResult as
instance HasQReturn CreateDimensionResult GenericDimension
instance HasQInfo CreateDimensionResult NxInfo

createDimensionAsync :: Doc -> GenericDimensionProperties -> SDKM (Task CreateDimensionResult)
createDimensionAsync obj prop =
  let args = [("qProp", toValue prop)]
   in sendRequestM (getHandle obj) "CreateDimension" args (onMultiValueResponse "CreateDimension")


destroyDimension :: Doc -> String -> SDKM Bool
destroyDimension obj id = destroyDimensionAsync obj id >>= awaitResult

destroyDimensionAsync :: Doc -> String -> SDKM (Task Bool)
destroyDimensionAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "DestroyDimension" args (onMultiValueResponse "DestroyDimension")


getDimension :: Doc -> String -> SDKM GenericDimension
getDimension obj id = getDimensionAsync obj id >>= awaitResult

getDimensionAsync :: Doc -> String -> SDKM (Task GenericDimension)
getDimensionAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "GetDimension" args (onReturnValueResponse "GetDimension")


cloneDimension :: Doc -> String -> SDKM String
cloneDimension obj id = cloneDimensionAsync obj id >>= awaitResult

cloneDimensionAsync :: Doc -> String -> SDKM (Task String)
cloneDimensionAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "CloneDimension" args (onMultiValueResponse "CloneDimension")


createMeasure :: Doc -> GenericMeasureProperties -> SDKM CreateMeasureResult
createMeasure obj prop = createMeasureAsync obj prop >>= awaitResult

newtype CreateMeasureResult = CreateMeasureResult AbstractStructure
instance Show CreateMeasureResult where show = show.toAs
instance ValueType CreateMeasureResult where
  toValue (CreateMeasureResult as) = toValue as
  fromValue as = CreateMeasureResult (fromValue as)

instance AbstractStructureContainer CreateMeasureResult where
  toAs (CreateMeasureResult as) = as
  fromAs as = CreateMeasureResult as
instance HasQReturn CreateMeasureResult GenericMeasure
instance HasQInfo CreateMeasureResult NxInfo

createMeasureAsync :: Doc -> GenericMeasureProperties -> SDKM (Task CreateMeasureResult)
createMeasureAsync obj prop =
  let args = [("qProp", toValue prop)]
   in sendRequestM (getHandle obj) "CreateMeasure" args (onMultiValueResponse "CreateMeasure")


destroyMeasure :: Doc -> String -> SDKM Bool
destroyMeasure obj id = destroyMeasureAsync obj id >>= awaitResult

destroyMeasureAsync :: Doc -> String -> SDKM (Task Bool)
destroyMeasureAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "DestroyMeasure" args (onMultiValueResponse "DestroyMeasure")


getMeasure :: Doc -> String -> SDKM GenericMeasure
getMeasure obj id = getMeasureAsync obj id >>= awaitResult

getMeasureAsync :: Doc -> String -> SDKM (Task GenericMeasure)
getMeasureAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "GetMeasure" args (onReturnValueResponse "GetMeasure")


cloneMeasure :: Doc -> String -> SDKM String
cloneMeasure obj id = cloneMeasureAsync obj id >>= awaitResult

cloneMeasureAsync :: Doc -> String -> SDKM (Task String)
cloneMeasureAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "CloneMeasure" args (onMultiValueResponse "CloneMeasure")


createSessionVariable :: Doc -> GenericVariableProperties -> SDKM GenericVariable
createSessionVariable obj prop = createSessionVariableAsync obj prop >>= awaitResult

createSessionVariableAsync :: Doc -> GenericVariableProperties -> SDKM (Task GenericVariable)
createSessionVariableAsync obj prop =
  let args = [("qProp", toValue prop)]
   in sendRequestM (getHandle obj) "CreateSessionVariable" args (onReturnValueResponse "CreateSessionVariable")


destroySessionVariable :: Doc -> String -> SDKM Bool
destroySessionVariable obj id = destroySessionVariableAsync obj id >>= awaitResult

destroySessionVariableAsync :: Doc -> String -> SDKM (Task Bool)
destroySessionVariableAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "DestroySessionVariable" args (onMultiValueResponse "DestroySessionVariable")


createVariableEx :: Doc -> GenericVariableProperties -> SDKM CreateVariableExResult
createVariableEx obj prop = createVariableExAsync obj prop >>= awaitResult

newtype CreateVariableExResult = CreateVariableExResult AbstractStructure
instance Show CreateVariableExResult where show = show.toAs
instance ValueType CreateVariableExResult where
  toValue (CreateVariableExResult as) = toValue as
  fromValue as = CreateVariableExResult (fromValue as)

instance AbstractStructureContainer CreateVariableExResult where
  toAs (CreateVariableExResult as) = as
  fromAs as = CreateVariableExResult as
instance HasQReturn CreateVariableExResult GenericVariable
instance HasQInfo CreateVariableExResult NxInfo

createVariableExAsync :: Doc -> GenericVariableProperties -> SDKM (Task CreateVariableExResult)
createVariableExAsync obj prop =
  let args = [("qProp", toValue prop)]
   in sendRequestM (getHandle obj) "CreateVariableEx" args (onMultiValueResponse "CreateVariableEx")


destroyVariableById :: Doc -> String -> SDKM Bool
destroyVariableById obj id = destroyVariableByIdAsync obj id >>= awaitResult

destroyVariableByIdAsync :: Doc -> String -> SDKM (Task Bool)
destroyVariableByIdAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "DestroyVariableById" args (onMultiValueResponse "DestroyVariableById")


destroyVariableByName :: Doc -> String -> SDKM Bool
destroyVariableByName obj name = destroyVariableByNameAsync obj name >>= awaitResult

destroyVariableByNameAsync :: Doc -> String -> SDKM (Task Bool)
destroyVariableByNameAsync obj name =
  let args = [("qName", toValue name)]
   in sendRequestM (getHandle obj) "DestroyVariableByName" args (onMultiValueResponse "DestroyVariableByName")


getVariableById :: Doc -> String -> SDKM GenericVariable
getVariableById obj id = getVariableByIdAsync obj id >>= awaitResult

getVariableByIdAsync :: Doc -> String -> SDKM (Task GenericVariable)
getVariableByIdAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "GetVariableById" args (onReturnValueResponse "GetVariableById")


getVariableByName :: Doc -> String -> SDKM GenericVariable
getVariableByName obj name = getVariableByNameAsync obj name >>= awaitResult

getVariableByNameAsync :: Doc -> String -> SDKM (Task GenericVariable)
getVariableByNameAsync obj name =
  let args = [("qName", toValue name)]
   in sendRequestM (getHandle obj) "GetVariableByName" args (onReturnValueResponse "GetVariableByName")


checkExpression :: Doc -> String -> SDKM CheckExpressionResult
checkExpression obj expr = checkExpressionAsync obj expr >>= awaitResult

checkExpression_ :: Doc -> String -> [String] -> SDKM CheckExpressionResult
checkExpression_ obj expr labels = checkExpressionAsync_ obj expr labels >>= awaitResult

newtype CheckExpressionResult = CheckExpressionResult AbstractStructure
instance Show CheckExpressionResult where show = show.toAs
instance ValueType CheckExpressionResult where
  toValue (CheckExpressionResult as) = toValue as
  fromValue as = CheckExpressionResult (fromValue as)

instance AbstractStructureContainer CheckExpressionResult where
  toAs (CheckExpressionResult as) = as
  fromAs as = CheckExpressionResult as
instance HasQErrorMsg CheckExpressionResult String
instance HasQBadFieldNames CheckExpressionResult [NxRange]
instance HasQDangerousFieldNames CheckExpressionResult [NxRange]

checkExpressionAsync :: Doc -> String -> SDKM (Task CheckExpressionResult)
checkExpressionAsync obj expr =
  let args = [("qExpr", toValue expr)]
   in sendRequestM (getHandle obj) "CheckExpression" args (onMultiValueResponse "CheckExpression")

checkExpressionAsync_ :: Doc -> String -> [String] -> SDKM (Task CheckExpressionResult)
checkExpressionAsync_ obj expr labels =
  let args = [("qExpr", toValue expr), ("qLabels", toValue labels)]
   in sendRequestM (getHandle obj) "CheckExpression" args (onMultiValueResponse "CheckExpression")


checkNumberOrExpression :: Doc -> String -> SDKM CheckNumberOrExpressionResult
checkNumberOrExpression obj expr = checkNumberOrExpressionAsync obj expr >>= awaitResult

newtype CheckNumberOrExpressionResult = CheckNumberOrExpressionResult AbstractStructure
instance Show CheckNumberOrExpressionResult where show = show.toAs
instance ValueType CheckNumberOrExpressionResult where
  toValue (CheckNumberOrExpressionResult as) = toValue as
  fromValue as = CheckNumberOrExpressionResult (fromValue as)

instance AbstractStructureContainer CheckNumberOrExpressionResult where
  toAs (CheckNumberOrExpressionResult as) = as
  fromAs as = CheckNumberOrExpressionResult as
instance HasQErrorMsg CheckNumberOrExpressionResult String
instance HasQBadFieldNames CheckNumberOrExpressionResult [NxRange]

checkNumberOrExpressionAsync :: Doc -> String -> SDKM (Task CheckNumberOrExpressionResult)
checkNumberOrExpressionAsync obj expr =
  let args = [("qExpr", toValue expr)]
   in sendRequestM (getHandle obj) "CheckNumberOrExpression" args (onMultiValueResponse "CheckNumberOrExpression")


addAlternateState :: Doc -> String -> SDKM ()
addAlternateState obj stateName = addAlternateStateAsync obj stateName >>= awaitResult

addAlternateStateAsync :: Doc -> String -> SDKM (Task ())
addAlternateStateAsync obj stateName =
  let args = [("qStateName", toValue stateName)]
   in sendRequestM (getHandle obj) "AddAlternateState" args (onMultiValueResponse "AddAlternateState")


removeAlternateState :: Doc -> String -> SDKM ()
removeAlternateState obj stateName = removeAlternateStateAsync obj stateName >>= awaitResult

removeAlternateStateAsync :: Doc -> String -> SDKM (Task ())
removeAlternateStateAsync obj stateName =
  let args = [("qStateName", toValue stateName)]
   in sendRequestM (getHandle obj) "RemoveAlternateState" args (onMultiValueResponse "RemoveAlternateState")


createBookmark :: Doc -> GenericBookmarkProperties -> SDKM CreateBookmarkResult
createBookmark obj prop = createBookmarkAsync obj prop >>= awaitResult

newtype CreateBookmarkResult = CreateBookmarkResult AbstractStructure
instance Show CreateBookmarkResult where show = show.toAs
instance ValueType CreateBookmarkResult where
  toValue (CreateBookmarkResult as) = toValue as
  fromValue as = CreateBookmarkResult (fromValue as)

instance AbstractStructureContainer CreateBookmarkResult where
  toAs (CreateBookmarkResult as) = as
  fromAs as = CreateBookmarkResult as
instance HasQReturn CreateBookmarkResult GenericBookmark
instance HasQInfo CreateBookmarkResult NxInfo

createBookmarkAsync :: Doc -> GenericBookmarkProperties -> SDKM (Task CreateBookmarkResult)
createBookmarkAsync obj prop =
  let args = [("qProp", toValue prop)]
   in sendRequestM (getHandle obj) "CreateBookmark" args (onMultiValueResponse "CreateBookmark")


destroyBookmark :: Doc -> String -> SDKM Bool
destroyBookmark obj id = destroyBookmarkAsync obj id >>= awaitResult

destroyBookmarkAsync :: Doc -> String -> SDKM (Task Bool)
destroyBookmarkAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "DestroyBookmark" args (onMultiValueResponse "DestroyBookmark")


getBookmark_qs :: Doc -> String -> SDKM GenericBookmark
getBookmark_qs obj id = getBookmark_qsAsync obj id >>= awaitResult

getBookmark_qsAsync :: Doc -> String -> SDKM (Task GenericBookmark)
getBookmark_qsAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "GetBookmark_qs" args (onReturnValueResponse "GetBookmark_qs")


applyBookmark_qs :: Doc -> String -> SDKM Bool
applyBookmark_qs obj id = applyBookmark_qsAsync obj id >>= awaitResult

applyBookmark_qsAsync :: Doc -> String -> SDKM (Task Bool)
applyBookmark_qsAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "ApplyBookmark_qs" args (onMultiValueResponse "ApplyBookmark_qs")


cloneBookmark :: Doc -> String -> SDKM String
cloneBookmark obj id = cloneBookmarkAsync obj id >>= awaitResult

cloneBookmarkAsync :: Doc -> String -> SDKM (Task String)
cloneBookmarkAsync obj id =
  let args = [("qId", toValue id)]
   in sendRequestM (getHandle obj) "CloneBookmark" args (onMultiValueResponse "CloneBookmark")


addFieldFromExpression :: Doc -> String -> String -> SDKM Bool
addFieldFromExpression obj name expr = addFieldFromExpressionAsync obj name expr >>= awaitResult

addFieldFromExpressionAsync :: Doc -> String -> String -> SDKM (Task Bool)
addFieldFromExpressionAsync obj name expr =
  let args = [("qName", toValue name), ("qExpr", toValue expr)]
   in sendRequestM (getHandle obj) "AddFieldFromExpression" args (onMultiValueResponse "AddFieldFromExpression")


getFieldOnTheFlyByName :: Doc -> String -> SDKM String
getFieldOnTheFlyByName obj readableName = getFieldOnTheFlyByNameAsync obj readableName >>= awaitResult

getFieldOnTheFlyByNameAsync :: Doc -> String -> SDKM (Task String)
getFieldOnTheFlyByNameAsync obj readableName =
  let args = [("qReadableName", toValue readableName)]
   in sendRequestM (getHandle obj) "GetFieldOnTheFlyByName" args (onMultiValueResponse "GetFieldOnTheFlyByName")


getAllInfos_qs :: Doc -> SDKM [NxInfo]
getAllInfos_qs obj = getAllInfos_qsAsync obj >>= awaitResult

getAllInfos_qsAsync :: Doc -> SDKM (Task [NxInfo])
getAllInfos_qsAsync obj =
  sendRequestM (getHandle obj) "GetAllInfos_qs" [] (onMultiValueResponse "GetAllInfos_qs")


resume :: Doc -> SDKM ()
resume obj = resumeAsync obj >>= awaitResult

resumeAsync :: Doc -> SDKM (Task ())
resumeAsync obj =
  sendRequestM (getHandle obj) "Resume" [] (onMultiValueResponse "Resume")


abortModal :: Doc -> Bool -> SDKM ()
abortModal obj accept = abortModalAsync obj accept >>= awaitResult

abortModalAsync :: Doc -> Bool -> SDKM (Task ())
abortModalAsync obj accept =
  let args = [("qAccept", toValue accept)]
   in sendRequestM (getHandle obj) "AbortModal" args (onMultiValueResponse "AbortModal")


publish :: Doc -> String -> SDKM ()
publish obj streamId = publishAsync obj streamId >>= awaitResult

publish_ :: Doc -> String -> String -> SDKM ()
publish_ obj streamId name = publishAsync_ obj streamId name >>= awaitResult

publishAsync :: Doc -> String -> SDKM (Task ())
publishAsync obj streamId =
  let args = [("qStreamId", toValue streamId)]
   in sendRequestM (getHandle obj) "Publish" args (onMultiValueResponse "Publish")

publishAsync_ :: Doc -> String -> String -> SDKM (Task ())
publishAsync_ obj streamId name =
  let args = [("qStreamId", toValue streamId), ("qName", toValue name)]
   in sendRequestM (getHandle obj) "Publish" args (onMultiValueResponse "Publish")


getMatchingFields :: Doc -> [String] -> SDKM [NxMatchingFieldInfo]
getMatchingFields obj tags = getMatchingFieldsAsync obj tags >>= awaitResult

getMatchingFields_ :: Doc -> [String] -> NxMatchingFieldMode -> SDKM [NxMatchingFieldInfo]
getMatchingFields_ obj tags matchingFieldMode = getMatchingFieldsAsync_ obj tags matchingFieldMode >>= awaitResult

getMatchingFieldsAsync :: Doc -> [String] -> SDKM (Task [NxMatchingFieldInfo])
getMatchingFieldsAsync obj tags =
  let args = [("qTags", toValue tags)]
   in sendRequestM (getHandle obj) "GetMatchingFields" args (onMultiValueResponse "GetMatchingFields")

getMatchingFieldsAsync_ :: Doc -> [String] -> NxMatchingFieldMode -> SDKM (Task [NxMatchingFieldInfo])
getMatchingFieldsAsync_ obj tags matchingFieldMode =
  let args = [("qTags", toValue tags), ("qMatchingFieldMode", toValue matchingFieldMode)]
   in sendRequestM (getHandle obj) "GetMatchingFields" args (onMultiValueResponse "GetMatchingFields")


findMatchingFields :: Doc -> String -> [String] -> SDKM [NxMatchingFieldInfo]
findMatchingFields obj fieldName tags = findMatchingFieldsAsync obj fieldName tags >>= awaitResult

findMatchingFieldsAsync :: Doc -> String -> [String] -> SDKM (Task [NxMatchingFieldInfo])
findMatchingFieldsAsync obj fieldName tags =
  let args = [("qFieldName", toValue fieldName), ("qTags", toValue tags)]
   in sendRequestM (getHandle obj) "FindMatchingFields" args (onMultiValueResponse "FindMatchingFields")


scramble :: Doc -> String -> SDKM ()
scramble obj fieldName = scrambleAsync obj fieldName >>= awaitResult

scrambleAsync :: Doc -> String -> SDKM (Task ())
scrambleAsync obj fieldName =
  let args = [("qFieldName", toValue fieldName)]
   in sendRequestM (getHandle obj) "Scramble" args (onMultiValueResponse "Scramble")


saveObjects :: Doc -> SDKM ()
saveObjects obj = saveObjectsAsync obj >>= awaitResult

saveObjectsAsync :: Doc -> SDKM (Task ())
saveObjectsAsync obj =
  sendRequestM (getHandle obj) "SaveObjects" [] (onMultiValueResponse "SaveObjects")


getAssociationScores :: Doc -> String -> String -> SDKM [AssociationScore]
getAssociationScores obj table1 table2 = getAssociationScoresAsync obj table1 table2 >>= awaitResult

getAssociationScoresAsync :: Doc -> String -> String -> SDKM (Task [AssociationScore])
getAssociationScoresAsync obj table1 table2 =
  let args = [("qTable1", toValue table1), ("qTable2", toValue table2)]
   in sendRequestM (getHandle obj) "GetAssociationScores" args (onMultiValueResponse "GetAssociationScores")


getMediaList :: Doc -> SDKM GetMediaListResult
getMediaList obj = getMediaListAsync obj >>= awaitResult

newtype GetMediaListResult = GetMediaListResult AbstractStructure
instance Show GetMediaListResult where show = show.toAs
instance ValueType GetMediaListResult where
  toValue (GetMediaListResult as) = toValue as
  fromValue as = GetMediaListResult (fromValue as)

instance AbstractStructureContainer GetMediaListResult where
  toAs (GetMediaListResult as) = as
  fromAs as = GetMediaListResult as
instance HasQReturn GetMediaListResult Bool
instance HasQList GetMediaListResult MediaList

getMediaListAsync :: Doc -> SDKM (Task GetMediaListResult)
getMediaListAsync obj =
  sendRequestM (getHandle obj) "GetMediaList" [] (onMultiValueResponse "GetMediaList")


getContentLibraries :: Doc -> SDKM ContentLibraryList
getContentLibraries obj = getContentLibrariesAsync obj >>= awaitResult

getContentLibrariesAsync :: Doc -> SDKM (Task ContentLibraryList)
getContentLibrariesAsync obj =
  sendRequestM (getHandle obj) "GetContentLibraries" [] (onMultiValueResponse "GetContentLibraries")


getLibraryContent :: Doc -> String -> SDKM StaticContentList
getLibraryContent obj name = getLibraryContentAsync obj name >>= awaitResult

getLibraryContentAsync :: Doc -> String -> SDKM (Task StaticContentList)
getLibraryContentAsync obj name =
  let args = [("qName", toValue name)]
   in sendRequestM (getHandle obj) "GetLibraryContent" args (onMultiValueResponse "GetLibraryContent")


doReloadEx :: Doc -> SDKM DoReloadExResult
doReloadEx obj = doReloadExAsync obj >>= awaitResult

doReloadEx_ :: Doc -> DoReloadExParams -> SDKM DoReloadExResult
doReloadEx_ obj params = doReloadExAsync_ obj params >>= awaitResult

doReloadExAsync :: Doc -> SDKM (Task DoReloadExResult)
doReloadExAsync obj =
  sendRequestM (getHandle obj) "DoReloadEx" [] (onMultiValueResponse "DoReloadEx")

doReloadExAsync_ :: Doc -> DoReloadExParams -> SDKM (Task DoReloadExResult)
doReloadExAsync_ obj params =
  let args = [("qParams", toValue params)]
   in sendRequestM (getHandle obj) "DoReloadEx" args (onMultiValueResponse "DoReloadEx")


backCount_qs :: Doc -> SDKM Int
backCount_qs obj = backCount_qsAsync obj >>= awaitResult

backCount_qsAsync :: Doc -> SDKM (Task Int)
backCount_qsAsync obj =
  sendRequestM (getHandle obj) "BackCount_qs" [] (onReturnValueResponse "BackCount_qs")


forwardCount_qs :: Doc -> SDKM Int
forwardCount_qs obj = forwardCount_qsAsync obj >>= awaitResult

forwardCount_qsAsync :: Doc -> SDKM (Task Int)
forwardCount_qsAsync obj =
  sendRequestM (getHandle obj) "ForwardCount_qs" [] (onReturnValueResponse "ForwardCount_qs")


getSetAnalysis :: Doc -> SDKM String
getSetAnalysis obj = getSetAnalysisAsync obj >>= awaitResult

getSetAnalysis_ :: Doc -> String -> String -> SDKM String
getSetAnalysis_ obj stateName bookmarkId = getSetAnalysisAsync_ obj stateName bookmarkId >>= awaitResult

getSetAnalysisAsync :: Doc -> SDKM (Task String)
getSetAnalysisAsync obj =
  sendRequestM (getHandle obj) "GetSetAnalysis" [] (onMultiValueResponse "GetSetAnalysis")

getSetAnalysisAsync_ :: Doc -> String -> String -> SDKM (Task String)
getSetAnalysisAsync_ obj stateName bookmarkId =
  let args = [("qStateName", toValue stateName), ("qBookmarkId", toValue bookmarkId)]
   in sendRequestM (getHandle obj) "GetSetAnalysis" args (onMultiValueResponse "GetSetAnalysis")


getScriptEx :: Doc -> SDKM AppScript
getScriptEx obj = getScriptExAsync obj >>= awaitResult

getScriptExAsync :: Doc -> SDKM (Task AppScript)
getScriptExAsync obj =
  sendRequestM (getHandle obj) "GetScriptEx" [] (onMultiValueResponse "GetScriptEx")


getVariables :: Doc -> VariableListDef -> SDKM [NxVariableListItem]
getVariables obj listDef = getVariablesAsync obj listDef >>= awaitResult

getVariablesAsync :: Doc -> VariableListDef -> SDKM (Task [NxVariableListItem])
getVariablesAsync obj listDef =
  let args = [("qListDef", toValue listDef)]
   in sendRequestM (getHandle obj) "GetVariables" args (onMultiValueResponse "GetVariables")


expandExpression :: Doc -> String -> SDKM String
expandExpression obj expression = expandExpressionAsync obj expression >>= awaitResult

expandExpressionAsync :: Doc -> String -> SDKM (Task String)
expandExpressionAsync obj expression =
  let args = [("qExpression", toValue expression)]
   in sendRequestM (getHandle obj) "ExpandExpression" args (onMultiValueResponse "ExpandExpression")


getField :: Doc -> String -> SDKM Field
getField obj fieldName = getFieldAsync obj fieldName >>= awaitResult

getField_ :: Doc -> String -> String -> SDKM Field
getField_ obj fieldName stateName = getFieldAsync_ obj fieldName stateName >>= awaitResult

getFieldAsync :: Doc -> String -> SDKM (Task Field)
getFieldAsync obj fieldName =
  let args = [("qFieldName", toValue fieldName)]
   in sendRequestM (getHandle obj) "GetField" args (onReturnValueResponse "GetField")

getFieldAsync_ :: Doc -> String -> String -> SDKM (Task Field)
getFieldAsync_ obj fieldName stateName =
  let args = [("qFieldName", toValue fieldName), ("qStateName", toValue stateName)]
   in sendRequestM (getHandle obj) "GetField" args (onReturnValueResponse "GetField")


getFieldDescription :: Doc -> String -> SDKM FieldDescription
getFieldDescription obj fieldName = getFieldDescriptionAsync obj fieldName >>= awaitResult

getFieldDescriptionAsync :: Doc -> String -> SDKM (Task FieldDescription)
getFieldDescriptionAsync obj fieldName =
  let args = [("qFieldName", toValue fieldName)]
   in sendRequestM (getHandle obj) "GetFieldDescription" args (onReturnValueResponse "GetFieldDescription")


getVariable :: Doc -> String -> SDKM Variable
getVariable obj name = getVariableAsync obj name >>= awaitResult

getVariableAsync :: Doc -> String -> SDKM (Task Variable)
getVariableAsync obj name =
  let args = [("qName", toValue name)]
   in sendRequestM (getHandle obj) "GetVariable" args (onReturnValueResponse "GetVariable")


getLooselyCoupledVector :: Doc -> SDKM [Int]
getLooselyCoupledVector obj = getLooselyCoupledVectorAsync obj >>= awaitResult

getLooselyCoupledVectorAsync :: Doc -> SDKM (Task [Int])
getLooselyCoupledVectorAsync obj =
  sendRequestM (getHandle obj) "GetLooselyCoupledVector" [] (onMultiValueResponse "GetLooselyCoupledVector")


setLooselyCoupledVector :: Doc -> [Int] -> SDKM Bool
setLooselyCoupledVector obj v = setLooselyCoupledVectorAsync obj v >>= awaitResult

setLooselyCoupledVectorAsync :: Doc -> [Int] -> SDKM (Task Bool)
setLooselyCoupledVectorAsync obj v =
  let args = [("qv", toValue v)]
   in sendRequestM (getHandle obj) "SetLooselyCoupledVector" args (onReturnValueResponse "SetLooselyCoupledVector")


evaluate :: Doc -> String -> SDKM String
evaluate obj expression = evaluateAsync obj expression >>= awaitResult

evaluateAsync :: Doc -> String -> SDKM (Task String)
evaluateAsync obj expression =
  let args = [("qExpression", toValue expression)]
   in sendRequestM (getHandle obj) "Evaluate" args (onReturnValueResponse "Evaluate")


evaluateEx :: Doc -> String -> SDKM FieldValue
evaluateEx obj expression = evaluateExAsync obj expression >>= awaitResult

evaluateExAsync :: Doc -> String -> SDKM (Task FieldValue)
evaluateExAsync obj expression =
  let args = [("qExpression", toValue expression)]
   in sendRequestM (getHandle obj) "EvaluateEx" args (onMultiValueResponse "EvaluateEx")


clearAll :: Doc -> SDKM ()
clearAll obj = clearAllAsync obj >>= awaitResult

clearAll_ :: Doc -> Bool -> String -> SDKM ()
clearAll_ obj lockedAlso stateName = clearAllAsync_ obj lockedAlso stateName >>= awaitResult

clearAllAsync :: Doc -> SDKM (Task ())
clearAllAsync obj =
  sendRequestM (getHandle obj) "ClearAll" [] (onMultiValueResponse "ClearAll")

clearAllAsync_ :: Doc -> Bool -> String -> SDKM (Task ())
clearAllAsync_ obj lockedAlso stateName =
  let args = [("qLockedAlso", toValue lockedAlso), ("qStateName", toValue stateName)]
   in sendRequestM (getHandle obj) "ClearAll" args (onMultiValueResponse "ClearAll")


lockAll :: Doc -> SDKM ()
lockAll obj = lockAllAsync obj >>= awaitResult

lockAll_ :: Doc -> String -> SDKM ()
lockAll_ obj stateName = lockAllAsync_ obj stateName >>= awaitResult

lockAllAsync :: Doc -> SDKM (Task ())
lockAllAsync obj =
  sendRequestM (getHandle obj) "LockAll" [] (onMultiValueResponse "LockAll")

lockAllAsync_ :: Doc -> String -> SDKM (Task ())
lockAllAsync_ obj stateName =
  let args = [("qStateName", toValue stateName)]
   in sendRequestM (getHandle obj) "LockAll" args (onMultiValueResponse "LockAll")


unlockAll :: Doc -> SDKM ()
unlockAll obj = unlockAllAsync obj >>= awaitResult

unlockAll_ :: Doc -> String -> SDKM ()
unlockAll_ obj stateName = unlockAllAsync_ obj stateName >>= awaitResult

unlockAllAsync :: Doc -> SDKM (Task ())
unlockAllAsync obj =
  sendRequestM (getHandle obj) "UnlockAll" [] (onMultiValueResponse "UnlockAll")

unlockAllAsync_ :: Doc -> String -> SDKM (Task ())
unlockAllAsync_ obj stateName =
  let args = [("qStateName", toValue stateName)]
   in sendRequestM (getHandle obj) "UnlockAll" args (onMultiValueResponse "UnlockAll")


back :: Doc -> SDKM ()
back obj = backAsync obj >>= awaitResult

backAsync :: Doc -> SDKM (Task ())
backAsync obj =
  sendRequestM (getHandle obj) "Back" [] (onMultiValueResponse "Back")


forward :: Doc -> SDKM ()
forward obj = forwardAsync obj >>= awaitResult

forwardAsync :: Doc -> SDKM (Task ())
forwardAsync obj =
  sendRequestM (getHandle obj) "Forward" [] (onMultiValueResponse "Forward")


createVariable :: Doc -> String -> SDKM Bool
createVariable obj name = createVariableAsync obj name >>= awaitResult

createVariableAsync :: Doc -> String -> SDKM (Task Bool)
createVariableAsync obj name =
  let args = [("qName", toValue name)]
   in sendRequestM (getHandle obj) "CreateVariable" args (onReturnValueResponse "CreateVariable")


removeVariable :: Doc -> String -> SDKM Bool
removeVariable obj name = removeVariableAsync obj name >>= awaitResult

removeVariableAsync :: Doc -> String -> SDKM (Task Bool)
removeVariableAsync obj name =
  let args = [("qName", toValue name)]
   in sendRequestM (getHandle obj) "RemoveVariable" args (onReturnValueResponse "RemoveVariable")


getLocaleInfo :: Doc -> SDKM LocaleInfo
getLocaleInfo obj = getLocaleInfoAsync obj >>= awaitResult

getLocaleInfoAsync :: Doc -> SDKM (Task LocaleInfo)
getLocaleInfoAsync obj =
  sendRequestM (getHandle obj) "GetLocaleInfo" [] (onReturnValueResponse "GetLocaleInfo")


getTablesAndKeys :: Doc -> Size -> Size -> Int -> Bool -> Bool -> SDKM GetTablesAndKeysResult
getTablesAndKeys obj windowSize nullSize cellHeight syntheticMode includeSysVars = getTablesAndKeysAsync obj windowSize nullSize cellHeight syntheticMode includeSysVars >>= awaitResult

newtype GetTablesAndKeysResult = GetTablesAndKeysResult AbstractStructure
instance Show GetTablesAndKeysResult where show = show.toAs
instance ValueType GetTablesAndKeysResult where
  toValue (GetTablesAndKeysResult as) = toValue as
  fromValue as = GetTablesAndKeysResult (fromValue as)

instance AbstractStructureContainer GetTablesAndKeysResult where
  toAs (GetTablesAndKeysResult as) = as
  fromAs as = GetTablesAndKeysResult as
instance HasQtr GetTablesAndKeysResult [TableRecord]
instance HasQk GetTablesAndKeysResult [SourceKeyRecord]

getTablesAndKeysAsync :: Doc -> Size -> Size -> Int -> Bool -> Bool -> SDKM (Task GetTablesAndKeysResult)
getTablesAndKeysAsync obj windowSize nullSize cellHeight syntheticMode includeSysVars =
  let args = [("qWindowSize", toValue windowSize), ("qNullSize", toValue nullSize), ("qCellHeight", toValue cellHeight), ("qSyntheticMode", toValue syntheticMode), ("qIncludeSysVars", toValue includeSysVars)]
   in sendRequestM (getHandle obj) "GetTablesAndKeys" args (onMultiValueResponse "GetTablesAndKeys")


getViewDlgSaveInfo :: Doc -> SDKM TableViewDlgSaveInfo
getViewDlgSaveInfo obj = getViewDlgSaveInfoAsync obj >>= awaitResult

getViewDlgSaveInfoAsync :: Doc -> SDKM (Task TableViewDlgSaveInfo)
getViewDlgSaveInfoAsync obj =
  sendRequestM (getHandle obj) "GetViewDlgSaveInfo" [] (onReturnValueResponse "GetViewDlgSaveInfo")


setViewDlgSaveInfo :: Doc -> TableViewDlgSaveInfo -> SDKM ()
setViewDlgSaveInfo obj info = setViewDlgSaveInfoAsync obj info >>= awaitResult

setViewDlgSaveInfoAsync :: Doc -> TableViewDlgSaveInfo -> SDKM (Task ())
setViewDlgSaveInfoAsync obj info =
  let args = [("qInfo", toValue info)]
   in sendRequestM (getHandle obj) "SetViewDlgSaveInfo" args (onMultiValueResponse "SetViewDlgSaveInfo")


getEmptyScript :: Doc -> SDKM String
getEmptyScript obj = getEmptyScriptAsync obj >>= awaitResult

getEmptyScript_ :: Doc -> String -> SDKM String
getEmptyScript_ obj localizedMainSection = getEmptyScriptAsync_ obj localizedMainSection >>= awaitResult

getEmptyScriptAsync :: Doc -> SDKM (Task String)
getEmptyScriptAsync obj =
  sendRequestM (getHandle obj) "GetEmptyScript" [] (onReturnValueResponse "GetEmptyScript")

getEmptyScriptAsync_ :: Doc -> String -> SDKM (Task String)
getEmptyScriptAsync_ obj localizedMainSection =
  let args = [("qLocalizedMainSection", toValue localizedMainSection)]
   in sendRequestM (getHandle obj) "GetEmptyScript" args (onReturnValueResponse "GetEmptyScript")


doReload :: Doc -> SDKM Bool
doReload obj = doReloadAsync obj >>= awaitResult

doReload_ :: Doc -> Int -> Bool -> Bool -> SDKM Bool
doReload_ obj mode partial debug = doReloadAsync_ obj mode partial debug >>= awaitResult

doReloadAsync :: Doc -> SDKM (Task Bool)
doReloadAsync obj =
  sendRequestM (getHandle obj) "DoReload" [] (onReturnValueResponse "DoReload")

doReloadAsync_ :: Doc -> Int -> Bool -> Bool -> SDKM (Task Bool)
doReloadAsync_ obj mode partial debug =
  let args = [("qMode", toValue mode), ("qPartial", toValue partial), ("qDebug", toValue debug)]
   in sendRequestM (getHandle obj) "DoReload" args (onReturnValueResponse "DoReload")


getScriptBreakpoints :: Doc -> SDKM [EditorBreakpoint]
getScriptBreakpoints obj = getScriptBreakpointsAsync obj >>= awaitResult

getScriptBreakpointsAsync :: Doc -> SDKM (Task [EditorBreakpoint])
getScriptBreakpointsAsync obj =
  sendRequestM (getHandle obj) "GetScriptBreakpoints" [] (onMultiValueResponse "GetScriptBreakpoints")


setScriptBreakpoints :: Doc -> [EditorBreakpoint] -> SDKM ()
setScriptBreakpoints obj breakpoints = setScriptBreakpointsAsync obj breakpoints >>= awaitResult

setScriptBreakpointsAsync :: Doc -> [EditorBreakpoint] -> SDKM (Task ())
setScriptBreakpointsAsync obj breakpoints =
  let args = [("qBreakpoints", toValue breakpoints)]
   in sendRequestM (getHandle obj) "SetScriptBreakpoints" args (onMultiValueResponse "SetScriptBreakpoints")


getScript :: Doc -> SDKM String
getScript obj = getScriptAsync obj >>= awaitResult

getScriptAsync :: Doc -> SDKM (Task String)
getScriptAsync obj =
  sendRequestM (getHandle obj) "GetScript" [] (onMultiValueResponse "GetScript")


getTextMacros :: Doc -> SDKM [TextMacro]
getTextMacros obj = getTextMacrosAsync obj >>= awaitResult

getTextMacrosAsync :: Doc -> SDKM (Task [TextMacro])
getTextMacrosAsync obj =
  sendRequestM (getHandle obj) "GetTextMacros" [] (onMultiValueResponse "GetTextMacros")


setFetchLimit :: Doc -> Int -> SDKM ()
setFetchLimit obj limit = setFetchLimitAsync obj limit >>= awaitResult

setFetchLimitAsync :: Doc -> Int -> SDKM (Task ())
setFetchLimitAsync obj limit =
  let args = [("qLimit", toValue limit)]
   in sendRequestM (getHandle obj) "SetFetchLimit" args (onMultiValueResponse "SetFetchLimit")


doSave :: Doc -> SDKM ()
doSave obj = doSaveAsync obj >>= awaitResult

doSave_ :: Doc -> String -> SDKM ()
doSave_ obj fileName = doSaveAsync_ obj fileName >>= awaitResult

doSaveAsync :: Doc -> SDKM (Task ())
doSaveAsync obj =
  sendRequestM (getHandle obj) "DoSave" [] (onMultiValueResponse "DoSave")

doSaveAsync_ :: Doc -> String -> SDKM (Task ())
doSaveAsync_ obj fileName =
  let args = [("qFileName", toValue fileName)]
   in sendRequestM (getHandle obj) "DoSave" args (onMultiValueResponse "DoSave")


getTableData :: Doc -> Int -> Int -> Bool -> String -> SDKM [TableRow]
getTableData obj offset rows syntheticMode tableName = getTableDataAsync obj offset rows syntheticMode tableName >>= awaitResult

getTableDataAsync :: Doc -> Int -> Int -> Bool -> String -> SDKM (Task [TableRow])
getTableDataAsync obj offset rows syntheticMode tableName =
  let args = [("qOffset", toValue offset), ("qRows", toValue rows), ("qSyntheticMode", toValue syntheticMode), ("qTableName", toValue tableName)]
   in sendRequestM (getHandle obj) "GetTableData" args (onMultiValueResponse "GetTableData")


getFieldAndColumnSamples :: Doc -> [FieldOrColumn] -> Int -> SDKM [SampleResult]
getFieldAndColumnSamples obj fieldsOrColumnsWithWildcards maxNumberOfValues = getFieldAndColumnSamplesAsync obj fieldsOrColumnsWithWildcards maxNumberOfValues >>= awaitResult

getFieldAndColumnSamples_ :: Doc -> [FieldOrColumn] -> Int -> Int -> SDKM [SampleResult]
getFieldAndColumnSamples_ obj fieldsOrColumnsWithWildcards maxNumberOfValues randSeed = getFieldAndColumnSamplesAsync_ obj fieldsOrColumnsWithWildcards maxNumberOfValues randSeed >>= awaitResult

getFieldAndColumnSamplesAsync :: Doc -> [FieldOrColumn] -> Int -> SDKM (Task [SampleResult])
getFieldAndColumnSamplesAsync obj fieldsOrColumnsWithWildcards maxNumberOfValues =
  let args = [("qFieldsOrColumnsWithWildcards", toValue fieldsOrColumnsWithWildcards), ("qMaxNumberOfValues", toValue maxNumberOfValues)]
   in sendRequestM (getHandle obj) "GetFieldAndColumnSamples" args (onMultiValueResponse "GetFieldAndColumnSamples")

getFieldAndColumnSamplesAsync_ :: Doc -> [FieldOrColumn] -> Int -> Int -> SDKM (Task [SampleResult])
getFieldAndColumnSamplesAsync_ obj fieldsOrColumnsWithWildcards maxNumberOfValues randSeed =
  let args = [("qFieldsOrColumnsWithWildcards", toValue fieldsOrColumnsWithWildcards), ("qMaxNumberOfValues", toValue maxNumberOfValues), ("qRandSeed", toValue randSeed)]
   in sendRequestM (getHandle obj) "GetFieldAndColumnSamples" args (onMultiValueResponse "GetFieldAndColumnSamples")


