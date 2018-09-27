{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
module PropClasses where
import Control.Lens
import AbstractStructure
class HasQAccumulate a b | a -> b where
  qAccumulate :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAccumulate = cp_ "qAccumulate"

class HasQActions a b | a -> b where
  qActions :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qActions = cp_ "qActions"

class HasQActive a b | a -> b where
  qActive :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qActive = cp_ "qActive"

class HasQActiveExpression a b | a -> b where
  qActiveExpression :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qActiveExpression = cp_ "qActiveExpression"

class HasQActiveField a b | a -> b where
  qActiveField :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qActiveField = cp_ "qActiveField"

class HasQAggrFunc a b | a -> b where
  qAggrFunc :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAggrFunc = cp_ "qAggrFunc"

class HasQAllValues a b | a -> b where
  qAllValues :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAllValues = cp_ "qAllValues"

class HasQAlternative a b | a -> b where
  qAlternative :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAlternative = cp_ "qAlternative"

class HasQAlwaysFullyExpanded a b | a -> b where
  qAlwaysFullyExpanded :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAlwaysFullyExpanded = cp_ "qAlwaysFullyExpanded"

class HasQAlwaysOneSelected a b | a -> b where
  qAlwaysOneSelected :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAlwaysOneSelected = cp_ "qAlwaysOneSelected"

class HasQAndMode a b | a -> b where
  qAndMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAndMode = cp_ "qAndMode"

class HasQAppId a b | a -> b where
  qAppId :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAppId = cp_ "qAppId"

class HasQAppSpecific a b | a -> b where
  qAppSpecific :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAppSpecific = cp_ "qAppSpecific"

class HasQApplyEvenWhenPossiblyWrongResult a b | a -> b where
  qApplyEvenWhenPossiblyWrongResult :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qApplyEvenWhenPossiblyWrongResult = cp_ "qApplyEvenWhenPossiblyWrongResult"

class HasQApprMaxGlyphCount a b | a -> b where
  qApprMaxGlyphCount :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qApprMaxGlyphCount = cp_ "qApprMaxGlyphCount"

class HasQArea a b | a -> b where
  qArea :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qArea = cp_ "qArea"

class HasQAttrDimInfo a b | a -> b where
  qAttrDimInfo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAttrDimInfo = cp_ "qAttrDimInfo"

class HasQAttrDims a b | a -> b where
  qAttrDims :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAttrDims = cp_ "qAttrDims"

class HasQAttrExprInfo a b | a -> b where
  qAttrExprInfo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAttrExprInfo = cp_ "qAttrExprInfo"

class HasQAttrExps a b | a -> b where
  qAttrExps :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAttrExps = cp_ "qAttrExps"

class HasQAttribute a b | a -> b where
  qAttribute :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAttribute = cp_ "qAttribute"

class HasQAttributeDimensions a b | a -> b where
  qAttributeDimensions :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAttributeDimensions = cp_ "qAttributeDimensions"

class HasQAttributeExpressions a b | a -> b where
  qAttributeExpressions :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAttributeExpressions = cp_ "qAttributeExpressions"

class HasQAutoSave a b | a -> b where
  qAutoSave :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAutoSave = cp_ "qAutoSave"

class HasQAutoSortByState a b | a -> b where
  qAutoSortByState :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAutoSortByState = cp_ "qAutoSortByState"

class HasQAxis a b | a -> b where
  qAxis :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAxis = cp_ "qAxis"

class HasQAxisData a b | a -> b where
  qAxisData :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAxisData = cp_ "qAxisData"

class HasQBackCount a b | a -> b where
  qBackCount :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBackCount = cp_ "qBackCount"

class HasQBadFieldNames a b | a -> b where
  qBadFieldNames :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBadFieldNames = cp_ "qBadFieldNames"

class HasQBlob a b | a -> b where
  qBlob :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBlob = cp_ "qBlob"

class HasQBookmark a b | a -> b where
  qBookmark :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBookmark = cp_ "qBookmark"

class HasQBookmarkId a b | a -> b where
  qBookmarkId :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBookmarkId = cp_ "qBookmarkId"

class HasQBottom a b | a -> b where
  qBottom :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBottom = cp_ "qBottom"

class HasQBreakpointList a b | a -> b where
  qBreakpointList :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBreakpointList = cp_ "qBreakpointList"

class HasQBrokenWeeks a b | a -> b where
  qBrokenWeeks :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBrokenWeeks = cp_ "qBrokenWeeks"

class HasQBroomPoints a b | a -> b where
  qBroomPoints :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBroomPoints = cp_ "qBroomPoints"

class HasQBrutalSum a b | a -> b where
  qBrutalSum :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBrutalSum = cp_ "qBrutalSum"

class HasQBuf a b | a -> b where
  qBuf :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBuf = cp_ "qBuf"

class HasQButtons a b | a -> b where
  qButtons :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qButtons = cp_ "qButtons"

class HasQByteSize a b | a -> b where
  qByteSize :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qByteSize = cp_ "qByteSize"

class HasQCalcCond a b | a -> b where
  qCalcCond :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCalcCond = cp_ "qCalcCond"

class HasQCalcCondMsg a b | a -> b where
  qCalcCondMsg :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCalcCondMsg = cp_ "qCalcCondMsg"

class HasQCalcCondition a b | a -> b where
  qCalcCondition :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCalcCondition = cp_ "qCalcCondition"

class HasQCalendarStrings a b | a -> b where
  qCalendarStrings :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCalendarStrings = cp_ "qCalendarStrings"

class HasQCanCollapse a b | a -> b where
  qCanCollapse :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCanCollapse = cp_ "qCanCollapse"

class HasQCanExpand a b | a -> b where
  qCanExpand :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCanExpand = cp_ "qCanExpand"

class HasQCaption a b | a -> b where
  qCaption :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCaption = cp_ "qCaption"

class HasQCardinal a b | a -> b where
  qCardinal :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCardinal = cp_ "qCardinal"

class HasQCardinalRatio a b | a -> b where
  qCardinalRatio :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCardinalRatio = cp_ "qCardinalRatio"

class HasQCardinalities a b | a -> b where
  qCardinalities :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCardinalities = cp_ "qCardinalities"

class HasQCharCount a b | a -> b where
  qCharCount :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCharCount = cp_ "qCharCount"

class HasQCharPos a b | a -> b where
  qCharPos :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCharPos = cp_ "qCharPos"

class HasQChildren a b | a -> b where
  qChildren :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qChildren = cp_ "qChildren"

class HasQCol a b | a -> b where
  qCol :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCol = cp_ "qCol"

class HasQCollation a b | a -> b where
  qCollation :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCollation = cp_ "qCollation"

class HasQColorByDisable a b | a -> b where
  qColorByDisable :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qColorByDisable = cp_ "qColorByDisable"

class HasQColumnOrder a b | a -> b where
  qColumnOrder :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qColumnOrder = cp_ "qColumnOrder"

class HasQColumnsToSelect a b | a -> b where
  qColumnsToSelect :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qColumnsToSelect = cp_ "qColumnsToSelect"

class HasQComment a b | a -> b where
  qComment :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qComment = cp_ "qComment"

class HasQCompleted a b | a -> b where
  qCompleted :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCompleted = cp_ "qCompleted"

class HasQComponentVersion a b | a -> b where
  qComponentVersion :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qComponentVersion = cp_ "qComponentVersion"

class HasQCond a b | a -> b where
  qCond :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCond = cp_ "qCond"

class HasQConnectedUsers a b | a -> b where
  qConnectedUsers :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qConnectedUsers = cp_ "qConnectedUsers"

class HasQConnectionPoints a b | a -> b where
  qConnectionPoints :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qConnectionPoints = cp_ "qConnectionPoints"

class HasQContentHash a b | a -> b where
  qContentHash :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qContentHash = cp_ "qContentHash"

class HasQContext a b | a -> b where
  qContext :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qContext = cp_ "qContext"

class HasQContinuousAxes a b | a -> b where
  qContinuousAxes :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qContinuousAxes = cp_ "qContinuousAxes"

class HasQContinuousRangeInfo a b | a -> b where
  qContinuousRangeInfo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qContinuousRangeInfo = cp_ "qContinuousRangeInfo"

class HasQCount a b | a -> b where
  qCount :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCount = cp_ "qCount"

class HasQCtlInfo a b | a -> b where
  qCtlInfo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCtlInfo = cp_ "qCtlInfo"

class HasQCurrentYear a b | a -> b where
  qCurrentYear :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCurrentYear = cp_ "qCurrentYear"

class HasQDangerousFieldNames a b | a -> b where
  qDangerousFieldNames :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDangerousFieldNames = cp_ "qDangerousFieldNames"

class HasQData a b | a -> b where
  qData :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qData = cp_ "qData"

class HasQDataPages a b | a -> b where
  qDataPages :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDataPages = cp_ "qDataPages"

class HasQDateFmt a b | a -> b where
  qDateFmt :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDateFmt = cp_ "qDateFmt"

class HasQDayNames a b | a -> b where
  qDayNames :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDayNames = cp_ "qDayNames"

class HasQDebug a b | a -> b where
  qDebug :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDebug = cp_ "qDebug"

class HasQDec a b | a -> b where
  qDec :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDec = cp_ "qDec"

class HasQDecimalSep a b | a -> b where
  qDecimalSep :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDecimalSep = cp_ "qDecimalSep"

class HasQDef a b | a -> b where
  qDef :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDef = cp_ "qDef"

class HasQDefinition a b | a -> b where
  qDefinition :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDefinition = cp_ "qDefinition"

class HasQDefinitionName a b | a -> b where
  qDefinitionName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDefinitionName = cp_ "qDefinitionName"

class HasQDepth a b | a -> b where
  qDepth :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDepth = cp_ "qDepth"

class HasQDerivedDefinition a b | a -> b where
  qDerivedDefinition :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDerivedDefinition = cp_ "qDerivedDefinition"

class HasQDerivedDefinitionId a b | a -> b where
  qDerivedDefinitionId :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDerivedDefinitionId = cp_ "qDerivedDefinitionId"

class HasQDerivedDefinitionName a b | a -> b where
  qDerivedDefinitionName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDerivedDefinitionName = cp_ "qDerivedDefinitionName"

class HasQDerivedField a b | a -> b where
  qDerivedField :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDerivedField = cp_ "qDerivedField"

class HasQDerivedFieldData a b | a -> b where
  qDerivedFieldData :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDerivedFieldData = cp_ "qDerivedFieldData"

class HasQDerivedFieldLists a b | a -> b where
  qDerivedFieldLists :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDerivedFieldLists = cp_ "qDerivedFieldLists"

class HasQDerivedFields a b | a -> b where
  qDerivedFields :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDerivedFields = cp_ "qDerivedFields"

class HasQDescription a b | a -> b where
  qDescription :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDescription = cp_ "qDescription"

class HasQDeselected a b | a -> b where
  qDeselected :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDeselected = cp_ "qDeselected"

class HasQDim a b | a -> b where
  qDim :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDim = cp_ "qDim"

class HasQDimInfos a b | a -> b where
  qDimInfos :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDimInfos = cp_ "qDimInfos"

class HasQDimIx a b | a -> b where
  qDimIx :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDimIx = cp_ "qDimIx"

class HasQDimensionInfo a b | a -> b where
  qDimensionInfo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDimensionInfo = cp_ "qDimensionInfo"

class HasQDimensionIx a b | a -> b where
  qDimensionIx :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDimensionIx = cp_ "qDimensionIx"

class HasQDimensionType a b | a -> b where
  qDimensionType :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDimensionType = cp_ "qDimensionType"

class HasQDimensions a b | a -> b where
  qDimensions :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDimensions = cp_ "qDimensions"

class HasQDiscriminator a b | a -> b where
  qDiscriminator :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDiscriminator = cp_ "qDiscriminator"

class HasQDisplayNumberOfRows a b | a -> b where
  qDisplayNumberOfRows :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDisplayNumberOfRows = cp_ "qDisplayNumberOfRows"

class HasQDisplayString a b | a -> b where
  qDisplayString :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDisplayString = cp_ "qDisplayString"

class HasQDistinctOnly a b | a -> b where
  qDistinctOnly :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDistinctOnly = cp_ "qDistinctOnly"

class HasQDocId a b | a -> b where
  qDocId :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDocId = cp_ "qDocId"

class HasQDocName a b | a -> b where
  qDocName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDocName = cp_ "qDocName"

class HasQDown a b | a -> b where
  qDown :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDown = cp_ "qDown"

class HasQDstPath a b | a -> b where
  qDstPath :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDstPath = cp_ "qDstPath"

class HasQEffectiveInterColumnSortOrder a b | a -> b where
  qEffectiveInterColumnSortOrder :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qEffectiveInterColumnSortOrder = cp_ "qEffectiveInterColumnSortOrder"

class HasQElemNo a b | a -> b where
  qElemNo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qElemNo = cp_ "qElemNo"

class HasQElemNumber a b | a -> b where
  qElemNumber :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qElemNumber = cp_ "qElemNumber"

class HasQEmbeddedSnapshotRef a b | a -> b where
  qEmbeddedSnapshotRef :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qEmbeddedSnapshotRef = cp_ "qEmbeddedSnapshotRef"

class HasQEnabled a b | a -> b where
  qEnabled :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qEnabled = cp_ "qEnabled"

class HasQEnd a b | a -> b where
  qEnd :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qEnd = cp_ "qEnd"

class HasQEndIndex a b | a -> b where
  qEndIndex :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qEndIndex = cp_ "qEndIndex"

class HasQEntryList a b | a -> b where
  qEntryList :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qEntryList = cp_ "qEntryList"

class HasQError a b | a -> b where
  qError :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qError = cp_ "qError"

class HasQErrorCode a b | a -> b where
  qErrorCode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qErrorCode = cp_ "qErrorCode"

class HasQErrorData a b | a -> b where
  qErrorData :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qErrorData = cp_ "qErrorData"

class HasQErrorDataCode a b | a -> b where
  qErrorDataCode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qErrorDataCode = cp_ "qErrorDataCode"

class HasQErrorMsg a b | a -> b where
  qErrorMsg :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qErrorMsg = cp_ "qErrorMsg"

class HasQErrorString a b | a -> b where
  qErrorString :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qErrorString = cp_ "qErrorString"

class HasQExcluded a b | a -> b where
  qExcluded :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qExcluded = cp_ "qExcluded"

class HasQExcludedTypes a b | a -> b where
  qExcludedTypes :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qExcludedTypes = cp_ "qExcludedTypes"

class HasQExcludedValues a b | a -> b where
  qExcludedValues :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qExcludedValues = cp_ "qExcludedValues"

class HasQExcludedValuesCount a b | a -> b where
  qExcludedValuesCount :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qExcludedValuesCount = cp_ "qExcludedValuesCount"

class HasQExpires a b | a -> b where
  qExpires :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qExpires = cp_ "qExpires"

class HasQExpr a b | a -> b where
  qExpr :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qExpr = cp_ "qExpr"

class HasQExpression a b | a -> b where
  qExpression :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qExpression = cp_ "qExpression"

class HasQExpressions a b | a -> b where
  qExpressions :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qExpressions = cp_ "qExpressions"

class HasQExtendedMessage a b | a -> b where
  qExtendedMessage :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qExtendedMessage = cp_ "qExtendedMessage"

class HasQExtendsId a b | a -> b where
  qExtendsId :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qExtendsId = cp_ "qExtendsId"

class HasQFallbackTitle a b | a -> b where
  qFallbackTitle :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFallbackTitle = cp_ "qFallbackTitle"

class HasQFavoriteVariables a b | a -> b where
  qFavoriteVariables :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFavoriteVariables = cp_ "qFavoriteVariables"

class HasQFeatures a b | a -> b where
  qFeatures :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFeatures = cp_ "qFeatures"

class HasQField a b | a -> b where
  qField :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qField = cp_ "qField"

class HasQField1Scores a b | a -> b where
  qField1Scores :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qField1Scores = cp_ "qField1Scores"

class HasQField2Scores a b | a -> b where
  qField2Scores :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qField2Scores = cp_ "qField2Scores"

class HasQFieldDefs a b | a -> b where
  qFieldDefs :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFieldDefs = cp_ "qFieldDefs"

class HasQFieldDerivedDefinitionNames a b | a -> b where
  qFieldDerivedDefinitionNames :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFieldDerivedDefinitionNames = cp_ "qFieldDerivedDefinitionNames"

class HasQFieldInfos a b | a -> b where
  qFieldInfos :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFieldInfos = cp_ "qFieldInfos"

class HasQFieldItems a b | a -> b where
  qFieldItems :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFieldItems = cp_ "qFieldItems"

class HasQFieldLabels a b | a -> b where
  qFieldLabels :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFieldLabels = cp_ "qFieldLabels"

class HasQFieldName a b | a -> b where
  qFieldName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFieldName = cp_ "qFieldName"

class HasQFieldOrColumn a b | a -> b where
  qFieldOrColumn :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFieldOrColumn = cp_ "qFieldOrColumn"

class HasQFieldPairName a b | a -> b where
  qFieldPairName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFieldPairName = cp_ "qFieldPairName"

class HasQFieldSelectionMode a b | a -> b where
  qFieldSelectionMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFieldSelectionMode = cp_ "qFieldSelectionMode"

class HasQFields a b | a -> b where
  qFields :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFields = cp_ "qFields"

class HasQFileName a b | a -> b where
  qFileName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFileName = cp_ "qFileName"

class HasQFileSize a b | a -> b where
  qFileSize :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFileSize = cp_ "qFileSize"

class HasQFileTime a b | a -> b where
  qFileTime :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFileTime = cp_ "qFileTime"

class HasQFinished a b | a -> b where
  qFinished :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFinished = cp_ "qFinished"

class HasQFirstMonthOfYear a b | a -> b where
  qFirstMonthOfYear :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFirstMonthOfYear = cp_ "qFirstMonthOfYear"

class HasQFirstWeekDay a b | a -> b where
  qFirstWeekDay :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFirstWeekDay = cp_ "qFirstWeekDay"

class HasQFmt a b | a -> b where
  qFmt :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFmt = cp_ "qFmt"

class HasQForceBadValueKeeping a b | a -> b where
  qForceBadValueKeeping :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qForceBadValueKeeping = cp_ "qForceBadValueKeeping"

class HasQFormat a b | a -> b where
  qFormat :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFormat = cp_ "qFormat"

class HasQForwardCount a b | a -> b where
  qForwardCount :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qForwardCount = cp_ "qForwardCount"

class HasQFrequency a b | a -> b where
  qFrequency :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFrequency = cp_ "qFrequency"

class HasQFrequencyMode a b | a -> b where
  qFrequencyMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFrequencyMode = cp_ "qFrequencyMode"

class HasQFrom a b | a -> b where
  qFrom :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFrom = cp_ "qFrom"

class HasQGenericId a b | a -> b where
  qGenericId :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qGenericId = cp_ "qGenericId"

class HasQGenericType a b | a -> b where
  qGenericType :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qGenericType = cp_ "qGenericType"

class HasQGlobalOtherGrouping a b | a -> b where
  qGlobalOtherGrouping :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qGlobalOtherGrouping = cp_ "qGlobalOtherGrouping"

class HasQGrandTotalRow a b | a -> b where
  qGrandTotalRow :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qGrandTotalRow = cp_ "qGrandTotalRow"

class HasQGroupDefs a b | a -> b where
  qGroupDefs :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qGroupDefs = cp_ "qGroupDefs"

class HasQGroupFallbackTitles a b | a -> b where
  qGroupFallbackTitles :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qGroupFallbackTitles = cp_ "qGroupFallbackTitles"

class HasQGroupFieldDefs a b | a -> b where
  qGroupFieldDefs :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qGroupFieldDefs = cp_ "qGroupFieldDefs"

class HasQGroupPos a b | a -> b where
  qGroupPos :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qGroupPos = cp_ "qGroupPos"

class HasQGrouping a b | a -> b where
  qGrouping :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qGrouping = cp_ "qGrouping"

class HasQHandle a b | a -> b where
  qHandle :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHandle = cp_ "qHandle"

class HasQHasData a b | a -> b where
  qHasData :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHasData = cp_ "qHasData"

class HasQHasDuplicates a b | a -> b where
  qHasDuplicates :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHasDuplicates = cp_ "qHasDuplicates"

class HasQHasInfo_OBSOLETE a b | a -> b where
  qHasInfo_OBSOLETE :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHasInfo_OBSOLETE = cp_ "qHasInfo_OBSOLETE"

class HasQHasNull a b | a -> b where
  qHasNull :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHasNull = cp_ "qHasNull"

class HasQHasOtherValues a b | a -> b where
  qHasOtherValues :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHasOtherValues = cp_ "qHasOtherValues"

class HasQHasScript a b | a -> b where
  qHasScript :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHasScript = cp_ "qHasScript"

class HasQHasSoftPatches a b | a -> b where
  qHasSoftPatches :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHasSoftPatches = cp_ "qHasSoftPatches"

class HasQHasWild a b | a -> b where
  qHasWild :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHasWild = cp_ "qHasWild"

class HasQHeight a b | a -> b where
  qHeight :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHeight = cp_ "qHeight"

class HasQHidden a b | a -> b where
  qHidden :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHidden = cp_ "qHidden"

class HasQHighlightRanges a b | a -> b where
  qHighlightRanges :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHighlightRanges = cp_ "qHighlightRanges"

class HasQHypercubeCardinal a b | a -> b where
  qHypercubeCardinal :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHypercubeCardinal = cp_ "qHypercubeCardinal"

class HasQID a b | a -> b where
  qID :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qID = cp_ "qID"

class HasQId a b | a -> b where
  qId :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qId = cp_ "qId"

class HasQIf a b | a -> b where
  qIf :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIf = cp_ "qIf"

class HasQInSelections a b | a -> b where
  qInSelections :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qInSelections = cp_ "qInSelections"

class HasQIncludeElemValue a b | a -> b where
  qIncludeElemValue :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIncludeElemValue = cp_ "qIncludeElemValue"

class HasQIncludeInBookmark a b | a -> b where
  qIncludeInBookmark :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIncludeInBookmark = cp_ "qIncludeInBookmark"

class HasQIncludeSessionObjects a b | a -> b where
  qIncludeSessionObjects :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIncludeSessionObjects = cp_ "qIncludeSessionObjects"

class HasQIndentMode a b | a -> b where
  qIndentMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIndentMode = cp_ "qIndentMode"

class HasQInfo a b | a -> b where
  qInfo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qInfo = cp_ "qInfo"

class HasQInformationDensity a b | a -> b where
  qInformationDensity :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qInformationDensity = cp_ "qInformationDensity"

class HasQInitialDataFetch a b | a -> b where
  qInitialDataFetch :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qInitialDataFetch = cp_ "qInitialDataFetch"

class HasQInput a b | a -> b where
  qInput :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qInput = cp_ "qInput"

class HasQInterColumnSortOrder a b | a -> b where
  qInterColumnSortOrder :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qInterColumnSortOrder = cp_ "qInterColumnSortOrder"

class HasQInternalNumber a b | a -> b where
  qInternalNumber :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qInternalNumber = cp_ "qInternalNumber"

class HasQInternalView a b | a -> b where
  qInternalView :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qInternalView = cp_ "qInternalView"

class HasQIsAutoFormat a b | a -> b where
  qIsAutoFormat :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsAutoFormat = cp_ "qIsAutoFormat"

class HasQIsCalculated a b | a -> b where
  qIsCalculated :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsCalculated = cp_ "qIsCalculated"

class HasQIsConfig a b | a -> b where
  qIsConfig :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsConfig = cp_ "qIsConfig"

class HasQIsCyclic a b | a -> b where
  qIsCyclic :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsCyclic = cp_ "qIsCyclic"

class HasQIsDefinitionOnly a b | a -> b where
  qIsDefinitionOnly :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsDefinitionOnly = cp_ "qIsDefinitionOnly"

class HasQIsDesktop a b | a -> b where
  qIsDesktop :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsDesktop = cp_ "qIsDesktop"

class HasQIsDetail a b | a -> b where
  qIsDetail :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsDetail = cp_ "qIsDetail"

class HasQIsDirectDiscovery a b | a -> b where
  qIsDirectDiscovery :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsDirectDiscovery = cp_ "qIsDirectDiscovery"

class HasQIsEmpty a b | a -> b where
  qIsEmpty :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsEmpty = cp_ "qIsEmpty"

class HasQIsFieldOnTheFly a b | a -> b where
  qIsFieldOnTheFly :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsFieldOnTheFly = cp_ "qIsFieldOnTheFly"

class HasQIsHidden a b | a -> b where
  qIsHidden :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsHidden = cp_ "qIsHidden"

class HasQIsImplicit a b | a -> b where
  qIsImplicit :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsImplicit = cp_ "qIsImplicit"

class HasQIsLocked a b | a -> b where
  qIsLocked :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsLocked = cp_ "qIsLocked"

class HasQIsNull a b | a -> b where
  qIsNull :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsNull = cp_ "qIsNull"

class HasQIsNum a b | a -> b where
  qIsNum :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsNum = cp_ "qIsNum"

class HasQIsNumeric a b | a -> b where
  qIsNumeric :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsNumeric = cp_ "qIsNumeric"

class HasQIsOneAndOnlyOne a b | a -> b where
  qIsOneAndOnlyOne :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsOneAndOnlyOne = cp_ "qIsOneAndOnlyOne"

class HasQIsOpenedWithoutData a b | a -> b where
  qIsOpenedWithoutData :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsOpenedWithoutData = cp_ "qIsOpenedWithoutData"

class HasQIsOtherCell a b | a -> b where
  qIsOtherCell :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsOtherCell = cp_ "qIsOtherCell"

class HasQIsReduced a b | a -> b where
  qIsReduced :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsReduced = cp_ "qIsReduced"

class HasQIsReserved a b | a -> b where
  qIsReserved :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsReserved = cp_ "qIsReserved"

class HasQIsScriptCreated a b | a -> b where
  qIsScriptCreated :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsScriptCreated = cp_ "qIsScriptCreated"

class HasQIsSemantic a b | a -> b where
  qIsSemantic :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsSemantic = cp_ "qIsSemantic"

class HasQIsSynthetic a b | a -> b where
  qIsSynthetic :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsSynthetic = cp_ "qIsSynthetic"

class HasQIsSystem a b | a -> b where
  qIsSystem :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsSystem = cp_ "qIsSystem"

class HasQIsTotalCell a b | a -> b where
  qIsTotalCell :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsTotalCell = cp_ "qIsTotalCell"

class HasQItems a b | a -> b where
  qItems :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qItems = cp_ "qItems"

class HasQKB a b | a -> b where
  qKB :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qKB = cp_ "qKB"

class HasQKey a b | a -> b where
  qKey :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qKey = cp_ "qKey"

class HasQKeyFields a b | a -> b where
  qKeyFields :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qKeyFields = cp_ "qKeyFields"

class HasQKeyType a b | a -> b where
  qKeyType :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qKeyType = cp_ "qKeyType"

class HasQLabel a b | a -> b where
  qLabel :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLabel = cp_ "qLabel"

class HasQLabelExpression a b | a -> b where
  qLabelExpression :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLabelExpression = cp_ "qLabelExpression"

class HasQLastExpandedPos a b | a -> b where
  qLastExpandedPos :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLastExpandedPos = cp_ "qLastExpandedPos"

class HasQLastReloadTime a b | a -> b where
  qLastReloadTime :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLastReloadTime = cp_ "qLastReloadTime"

class HasQLat a b | a -> b where
  qLat :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLat = cp_ "qLat"

class HasQLeft a b | a -> b where
  qLeft :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLeft = cp_ "qLeft"

class HasQLibraryId a b | a -> b where
  qLibraryId :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLibraryId = cp_ "qLibraryId"

class HasQLine a b | a -> b where
  qLine :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLine = cp_ "qLine"

class HasQLineEnd a b | a -> b where
  qLineEnd :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLineEnd = cp_ "qLineEnd"

class HasQList a b | a -> b where
  qList :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qList = cp_ "qList"

class HasQListSep a b | a -> b where
  qListSep :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qListSep = cp_ "qListSep"

class HasQLocaleInfo a b | a -> b where
  qLocaleInfo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLocaleInfo = cp_ "qLocaleInfo"

class HasQLocation a b | a -> b where
  qLocation :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLocation = cp_ "qLocation"

class HasQLocked a b | a -> b where
  qLocked :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLocked = cp_ "qLocked"

class HasQLockedExcluded a b | a -> b where
  qLockedExcluded :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLockedExcluded = cp_ "qLockedExcluded"

class HasQLon a b | a -> b where
  qLon :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLon = cp_ "qLon"

class HasQLongDayNames a b | a -> b where
  qLongDayNames :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLongDayNames = cp_ "qLongDayNames"

class HasQLongMonthNames a b | a -> b where
  qLongMonthNames :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLongMonthNames = cp_ "qLongMonthNames"

class HasQLoose a b | a -> b where
  qLoose :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLoose = cp_ "qLoose"

class HasQMadeSelections a b | a -> b where
  qMadeSelections :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMadeSelections = cp_ "qMadeSelections"

class HasQMatrix a b | a -> b where
  qMatrix :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMatrix = cp_ "qMatrix"

class HasQMax a b | a -> b where
  qMax :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMax = cp_ "qMax"

class HasQMaxInclEq a b | a -> b where
  qMaxInclEq :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMaxInclEq = cp_ "qMaxInclEq"

class HasQMaxNbrOfNodes a b | a -> b where
  qMaxNbrOfNodes :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMaxNbrOfNodes = cp_ "qMaxNbrOfNodes"

class HasQMaxNbrTicks a b | a -> b where
  qMaxNbrTicks :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMaxNbrTicks = cp_ "qMaxNbrTicks"

class HasQMaxNumberLines a b | a -> b where
  qMaxNumberLines :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMaxNumberLines = cp_ "qMaxNumberLines"

class HasQMaxPos a b | a -> b where
  qMaxPos :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMaxPos = cp_ "qMaxPos"

class HasQMaxStackedCells a b | a -> b where
  qMaxStackedCells :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMaxStackedCells = cp_ "qMaxStackedCells"

class HasQMaxText a b | a -> b where
  qMaxText :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMaxText = cp_ "qMaxText"

class HasQMeasure a b | a -> b where
  qMeasure :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMeasure = cp_ "qMeasure"

class HasQMeasureInfo a b | a -> b where
  qMeasureInfo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMeasureInfo = cp_ "qMeasureInfo"

class HasQMeasureIx a b | a -> b where
  qMeasureIx :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMeasureIx = cp_ "qMeasureIx"

class HasQMeasures a b | a -> b where
  qMeasures :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMeasures = cp_ "qMeasures"

class HasQMessage a b | a -> b where
  qMessage :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMessage = cp_ "qMessage"

class HasQMessageCode a b | a -> b where
  qMessageCode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMessageCode = cp_ "qMessageCode"

class HasQMessageParameters a b | a -> b where
  qMessageParameters :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMessageParameters = cp_ "qMessageParameters"

class HasQMeta a b | a -> b where
  qMeta :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMeta = cp_ "qMeta"

class HasQMetaData a b | a -> b where
  qMetaData :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMetaData = cp_ "qMetaData"

class HasQMetaDef a b | a -> b where
  qMetaDef :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMetaDef = cp_ "qMetaDef"

class HasQMethod a b | a -> b where
  qMethod :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMethod = cp_ "qMethod"

class HasQMigrationHash a b | a -> b where
  qMigrationHash :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMigrationHash = cp_ "qMigrationHash"

class HasQMillisecs a b | a -> b where
  qMillisecs :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMillisecs = cp_ "qMillisecs"

class HasQMin a b | a -> b where
  qMin :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMin = cp_ "qMin"

class HasQMinInclEq a b | a -> b where
  qMinInclEq :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMinInclEq = cp_ "qMinInclEq"

class HasQMinNeg a b | a -> b where
  qMinNeg :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMinNeg = cp_ "qMinNeg"

class HasQMinText a b | a -> b where
  qMinText :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMinText = cp_ "qMinText"

class HasQMode a b | a -> b where
  qMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMode = cp_ "qMode"

class HasQModified a b | a -> b where
  qModified :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qModified = cp_ "qModified"

class HasQMoneyDecimalSep a b | a -> b where
  qMoneyDecimalSep :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMoneyDecimalSep = cp_ "qMoneyDecimalSep"

class HasQMoneyFmt a b | a -> b where
  qMoneyFmt :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMoneyFmt = cp_ "qMoneyFmt"

class HasQMoneyThousandSep a b | a -> b where
  qMoneyThousandSep :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMoneyThousandSep = cp_ "qMoneyThousandSep"

class HasQMonthNames a b | a -> b where
  qMonthNames :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMonthNames = cp_ "qMonthNames"

class HasQMsg a b | a -> b where
  qMsg :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMsg = cp_ "qMsg"

class HasQName a b | a -> b where
  qName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qName = cp_ "qName"

class HasQNbrFieldParameters a b | a -> b where
  qNbrFieldParameters :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNbrFieldParameters = cp_ "qNbrFieldParameters"

class HasQNbrPoints a b | a -> b where
  qNbrPoints :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNbrPoints = cp_ "qNbrPoints"

class HasQNewLineNr a b | a -> b where
  qNewLineNr :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNewLineNr = cp_ "qNewLineNr"

class HasQNoOfFieldParameters a b | a -> b where
  qNoOfFieldParameters :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNoOfFieldParameters = cp_ "qNoOfFieldParameters"

class HasQNoOfLeftDims a b | a -> b where
  qNoOfLeftDims :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNoOfLeftDims = cp_ "qNoOfLeftDims"

class HasQNoOfRows a b | a -> b where
  qNoOfRows :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNoOfRows = cp_ "qNoOfRows"

class HasQNodeNr a b | a -> b where
  qNodeNr :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNodeNr = cp_ "qNodeNr"

class HasQNodes a b | a -> b where
  qNodes :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNodes = cp_ "qNodes"

class HasQNodesOnDim a b | a -> b where
  qNodesOnDim :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNodesOnDim = cp_ "qNodesOnDim"

class HasQNotSelectedFieldSelectionInfo a b | a -> b where
  qNotSelectedFieldSelectionInfo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNotSelectedFieldSelectionInfo = cp_ "qNotSelectedFieldSelectionInfo"

class HasQNullSuppression a b | a -> b where
  qNullSuppression :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNullSuppression = cp_ "qNullSuppression"

class HasQNum a b | a -> b where
  qNum :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNum = cp_ "qNum"

class HasQNumFormat a b | a -> b where
  qNumFormat :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNumFormat = cp_ "qNumFormat"

class HasQNumber a b | a -> b where
  qNumber :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNumber = cp_ "qNumber"

class HasQNumberFormat a b | a -> b where
  qNumberFormat :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNumberFormat = cp_ "qNumberFormat"

class HasQNumberPresentation a b | a -> b where
  qNumberPresentation :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNumberPresentation = cp_ "qNumberPresentation"

class HasQNumberPresentations a b | a -> b where
  qNumberPresentations :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNumberPresentations = cp_ "qNumberPresentations"

class HasQNumericalAbbreviation a b | a -> b where
  qNumericalAbbreviation :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNumericalAbbreviation = cp_ "qNumericalAbbreviation"

class HasQObjectId a b | a -> b where
  qObjectId :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qObjectId = cp_ "qObjectId"

class HasQOldLineNr a b | a -> b where
  qOldLineNr :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOldLineNr = cp_ "qOldLineNr"

class HasQOneAndOnlyOne a b | a -> b where
  qOneAndOnlyOne :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOneAndOnlyOne = cp_ "qOneAndOnlyOne"

class HasQOp a b | a -> b where
  qOp :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOp = cp_ "qOp"

class HasQOpenFullyExpanded a b | a -> b where
  qOpenFullyExpanded :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOpenFullyExpanded = cp_ "qOpenFullyExpanded"

class HasQOption a b | a -> b where
  qOption :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOption = cp_ "qOption"

class HasQOriginalFields a b | a -> b where
  qOriginalFields :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOriginalFields = cp_ "qOriginalFields"

class HasQOtherCollapseInnerDimensions a b | a -> b where
  qOtherCollapseInnerDimensions :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOtherCollapseInnerDimensions = cp_ "qOtherCollapseInnerDimensions"

class HasQOtherCounted a b | a -> b where
  qOtherCounted :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOtherCounted = cp_ "qOtherCounted"

class HasQOtherLabel a b | a -> b where
  qOtherLabel :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOtherLabel = cp_ "qOtherLabel"

class HasQOtherLimit a b | a -> b where
  qOtherLimit :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOtherLimit = cp_ "qOtherLimit"

class HasQOtherLimitMode a b | a -> b where
  qOtherLimitMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOtherLimitMode = cp_ "qOtherLimitMode"

class HasQOtherMode a b | a -> b where
  qOtherMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOtherMode = cp_ "qOtherMode"

class HasQOtherSortMode a b | a -> b where
  qOtherSortMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOtherSortMode = cp_ "qOtherSortMode"

class HasQOtherTotalSpec a b | a -> b where
  qOtherTotalSpec :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOtherTotalSpec = cp_ "qOtherTotalSpec"

class HasQParameters a b | a -> b where
  qParameters :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qParameters = cp_ "qParameters"

class HasQParentId a b | a -> b where
  qParentId :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qParentId = cp_ "qParentId"

class HasQParentNode a b | a -> b where
  qParentNode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qParentNode = cp_ "qParentNode"

class HasQParentPath a b | a -> b where
  qParentPath :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qParentPath = cp_ "qParentPath"

class HasQPartial a b | a -> b where
  qPartial :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPartial = cp_ "qPartial"

class HasQPath a b | a -> b where
  qPath :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPath = cp_ "qPath"

class HasQPathSeparator a b | a -> b where
  qPathSeparator :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPathSeparator = cp_ "qPathSeparator"

class HasQPersistentProgress a b | a -> b where
  qPersistentProgress :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPersistentProgress = cp_ "qPersistentProgress"

class HasQPersistentProgressMessages a b | a -> b where
  qPersistentProgressMessages :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPersistentProgressMessages = cp_ "qPersistentProgressMessages"

class HasQPivotDataPages a b | a -> b where
  qPivotDataPages :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPivotDataPages = cp_ "qPivotDataPages"

class HasQPopulateMissing a b | a -> b where
  qPopulateMissing :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPopulateMissing = cp_ "qPopulateMissing"

class HasQPos a b | a -> b where
  qPos :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPos = cp_ "qPos"

class HasQPositions a b | a -> b where
  qPositions :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPositions = cp_ "qPositions"

class HasQPossibleCount_OBSOLETE a b | a -> b where
  qPossibleCount_OBSOLETE :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPossibleCount_OBSOLETE = cp_ "qPossibleCount_OBSOLETE"

class HasQPreDefinedList a b | a -> b where
  qPreDefinedList :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPreDefinedList = cp_ "qPreDefinedList"

class HasQPresent a b | a -> b where
  qPresent :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPresent = cp_ "qPresent"

class HasQProperties a b | a -> b where
  qProperties :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qProperties = cp_ "qProperties"

class HasQProperty a b | a -> b where
  qProperty :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qProperty = cp_ "qProperty"

class HasQPseudoDimPos a b | a -> b where
  qPseudoDimPos :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPseudoDimPos = cp_ "qPseudoDimPos"

class HasQPublishing a b | a -> b where
  qPublishing :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPublishing = cp_ "qPublishing"

class HasQQixType a b | a -> b where
  qQixType :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qQixType = cp_ "qQixType"

class HasQQuickDataLoad a b | a -> b where
  qQuickDataLoad :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qQuickDataLoad = cp_ "qQuickDataLoad"

class HasQRange a b | a -> b where
  qRange :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRange = cp_ "qRange"

class HasQRangeHi a b | a -> b where
  qRangeHi :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRangeHi = cp_ "qRangeHi"

class HasQRangeInfo a b | a -> b where
  qRangeInfo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRangeInfo = cp_ "qRangeInfo"

class HasQRangeLo a b | a -> b where
  qRangeLo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRangeLo = cp_ "qRangeLo"

class HasQRanges a b | a -> b where
  qRanges :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRanges = cp_ "qRanges"

class HasQReadOnly a b | a -> b where
  qReadOnly :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qReadOnly = cp_ "qReadOnly"

class HasQReadableName a b | a -> b where
  qReadableName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qReadableName = cp_ "qReadableName"

class HasQRedoCount a b | a -> b where
  qRedoCount :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRedoCount = cp_ "qRedoCount"

class HasQReductionMode a b | a -> b where
  qReductionMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qReductionMode = cp_ "qReductionMode"

class HasQRefSeqNo a b | a -> b where
  qRefSeqNo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRefSeqNo = cp_ "qRefSeqNo"

class HasQReferenceDay a b | a -> b where
  qReferenceDay :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qReferenceDay = cp_ "qReferenceDay"

class HasQReferencedExpression a b | a -> b where
  qReferencedExpression :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qReferencedExpression = cp_ "qReferencedExpression"

class HasQRelative a b | a -> b where
  qRelative :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRelative = cp_ "qRelative"

class HasQRelativeDstPath a b | a -> b where
  qRelativeDstPath :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRelativeDstPath = cp_ "qRelativeDstPath"

class HasQResult a b | a -> b where
  qResult :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qResult = cp_ "qResult"

class HasQReturn a b | a -> b where
  qReturn :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qReturn = cp_ "qReturn"

class HasQReverseSort a b | a -> b where
  qReverseSort :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qReverseSort = cp_ "qReverseSort"

class HasQRight a b | a -> b where
  qRight :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRight = cp_ "qRight"

class HasQRoot a b | a -> b where
  qRoot :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRoot = cp_ "qRoot"

class HasQRootId a b | a -> b where
  qRootId :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRootId = cp_ "qRootId"

class HasQRow a b | a -> b where
  qRow :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRow = cp_ "qRow"

class HasQRowScore a b | a -> b where
  qRowScore :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRowScore = cp_ "qRowScore"

class HasQSSOEnabled a b | a -> b where
  qSSOEnabled :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSSOEnabled = cp_ "qSSOEnabled"

class HasQSavedInProductVersion a b | a -> b where
  qSavedInProductVersion :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSavedInProductVersion = cp_ "qSavedInProductVersion"

class HasQScoreSummary a b | a -> b where
  qScoreSummary :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qScoreSummary = cp_ "qScoreSummary"

class HasQScript a b | a -> b where
  qScript :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qScript = cp_ "qScript"

class HasQScriptLogFile a b | a -> b where
  qScriptLogFile :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qScriptLogFile = cp_ "qScriptLogFile"

class HasQSearchableDimensions a b | a -> b where
  qSearchableDimensions :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSearchableDimensions = cp_ "qSearchableDimensions"

class HasQSearchableProperties a b | a -> b where
  qSearchableProperties :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSearchableProperties = cp_ "qSearchableProperties"

class HasQSecurityMetaAsBase64 a b | a -> b where
  qSecurityMetaAsBase64 :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSecurityMetaAsBase64 = cp_ "qSecurityMetaAsBase64"

class HasQSelectInfo a b | a -> b where
  qSelectInfo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSelectInfo = cp_ "qSelectInfo"

class HasQSelected a b | a -> b where
  qSelected :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSelected = cp_ "qSelected"

class HasQSelectedCount a b | a -> b where
  qSelectedCount :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSelectedCount = cp_ "qSelectedCount"

class HasQSelectedExcluded a b | a -> b where
  qSelectedExcluded :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSelectedExcluded = cp_ "qSelectedExcluded"

class HasQSelectedFieldSelectionInfo a b | a -> b where
  qSelectedFieldSelectionInfo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSelectedFieldSelectionInfo = cp_ "qSelectedFieldSelectionInfo"

class HasQSelectionInfo a b | a -> b where
  qSelectionInfo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSelectionInfo = cp_ "qSelectionInfo"

class HasQSelectionThreshold a b | a -> b where
  qSelectionThreshold :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSelectionThreshold = cp_ "qSelectionThreshold"

class HasQSelections a b | a -> b where
  qSelections :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSelections = cp_ "qSelections"

class HasQServices a b | a -> b where
  qServices :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qServices = cp_ "qServices"

class HasQSessionAppId a b | a -> b where
  qSessionAppId :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSessionAppId = cp_ "qSessionAppId"

class HasQSetSeqNo a b | a -> b where
  qSetSeqNo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSetSeqNo = cp_ "qSetSeqNo"

class HasQSharedStatus a b | a -> b where
  qSharedStatus :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSharedStatus = cp_ "qSharedStatus"

class HasQShowAll a b | a -> b where
  qShowAll :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qShowAll = cp_ "qShowAll"

class HasQShowAlternatives a b | a -> b where
  qShowAlternatives :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qShowAlternatives = cp_ "qShowAlternatives"

class HasQShowConfig a b | a -> b where
  qShowConfig :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qShowConfig = cp_ "qShowConfig"

class HasQShowDefinitionOnly a b | a -> b where
  qShowDefinitionOnly :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qShowDefinitionOnly = cp_ "qShowDefinitionOnly"

class HasQShowDerivedFields a b | a -> b where
  qShowDerivedFields :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qShowDerivedFields = cp_ "qShowDerivedFields"

class HasQShowHidden a b | a -> b where
  qShowHidden :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qShowHidden = cp_ "qShowHidden"

class HasQShowImplicit a b | a -> b where
  qShowImplicit :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qShowImplicit = cp_ "qShowImplicit"

class HasQShowReserved a b | a -> b where
  qShowReserved :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qShowReserved = cp_ "qShowReserved"

class HasQShowSemantic a b | a -> b where
  qShowSemantic :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qShowSemantic = cp_ "qShowSemantic"

class HasQShowSession a b | a -> b where
  qShowSession :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qShowSession = cp_ "qShowSession"

class HasQShowSrcTables a b | a -> b where
  qShowSrcTables :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qShowSrcTables = cp_ "qShowSrcTables"

class HasQShowSystem a b | a -> b where
  qShowSystem :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qShowSystem = cp_ "qShowSystem"

class HasQShowTotal a b | a -> b where
  qShowTotal :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qShowTotal = cp_ "qShowTotal"

class HasQShowTotalsAbove a b | a -> b where
  qShowTotalsAbove :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qShowTotalsAbove = cp_ "qShowTotalsAbove"

class HasQSize a b | a -> b where
  qSize :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSize = cp_ "qSize"

class HasQSoftLock a b | a -> b where
  qSoftLock :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSoftLock = cp_ "qSoftLock"

class HasQSortBy a b | a -> b where
  qSortBy :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSortBy = cp_ "qSortBy"

class HasQSortByAscii a b | a -> b where
  qSortByAscii :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSortByAscii = cp_ "qSortByAscii"

class HasQSortByExpression a b | a -> b where
  qSortByExpression :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSortByExpression = cp_ "qSortByExpression"

class HasQSortByFrequency a b | a -> b where
  qSortByFrequency :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSortByFrequency = cp_ "qSortByFrequency"

class HasQSortByGreyness a b | a -> b where
  qSortByGreyness :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSortByGreyness = cp_ "qSortByGreyness"

class HasQSortByLoadOrder a b | a -> b where
  qSortByLoadOrder :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSortByLoadOrder = cp_ "qSortByLoadOrder"

class HasQSortByNumeric a b | a -> b where
  qSortByNumeric :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSortByNumeric = cp_ "qSortByNumeric"

class HasQSortByState a b | a -> b where
  qSortByState :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSortByState = cp_ "qSortByState"

class HasQSortCriterias a b | a -> b where
  qSortCriterias :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSortCriterias = cp_ "qSortCriterias"

class HasQSortIndex a b | a -> b where
  qSortIndex :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSortIndex = cp_ "qSortIndex"

class HasQSortIndicator a b | a -> b where
  qSortIndicator :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSortIndicator = cp_ "qSortIndicator"

class HasQSortbyYValue a b | a -> b where
  qSortbyYValue :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSortbyYValue = cp_ "qSortbyYValue"

class HasQSourceView a b | a -> b where
  qSourceView :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSourceView = cp_ "qSourceView"

class HasQSrcTables a b | a -> b where
  qSrcTables :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSrcTables = cp_ "qSrcTables"

class HasQStackedDataPages a b | a -> b where
  qStackedDataPages :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qStackedDataPages = cp_ "qStackedDataPages"

class HasQStart a b | a -> b where
  qStart :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qStart = cp_ "qStart"

class HasQStartIndex a b | a -> b where
  qStartIndex :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qStartIndex = cp_ "qStartIndex"

class HasQStarted a b | a -> b where
  qStarted :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qStarted = cp_ "qStarted"

class HasQState a b | a -> b where
  qState :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qState = cp_ "qState"

class HasQStateCounts a b | a -> b where
  qStateCounts :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qStateCounts = cp_ "qStateCounts"

class HasQStateData a b | a -> b where
  qStateData :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qStateData = cp_ "qStateData"

class HasQStateName a b | a -> b where
  qStateName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qStateName = cp_ "qStateName"

class HasQStateNames a b | a -> b where
  qStateNames :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qStateNames = cp_ "qStateNames"

class HasQStatement a b | a -> b where
  qStatement :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qStatement = cp_ "qStatement"

class HasQString a b | a -> b where
  qString :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qString = cp_ "qString"

class HasQSubNodes a b | a -> b where
  qSubNodes :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSubNodes = cp_ "qSubNodes"

class HasQSubsetRatio a b | a -> b where
  qSubsetRatio :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSubsetRatio = cp_ "qSubsetRatio"

class HasQSuccess a b | a -> b where
  qSuccess :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSuccess = cp_ "qSuccess"

class HasQSuppressMissing a b | a -> b where
  qSuppressMissing :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSuppressMissing = cp_ "qSuppressMissing"

class HasQSuppressOther a b | a -> b where
  qSuppressOther :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSuppressOther = cp_ "qSuppressOther"

class HasQSuppressZero a b | a -> b where
  qSuppressZero :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSuppressZero = cp_ "qSuppressZero"

class HasQSymbolScore a b | a -> b where
  qSymbolScore :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSymbolScore = cp_ "qSymbolScore"

class HasQSystemProperties a b | a -> b where
  qSystemProperties :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSystemProperties = cp_ "qSystemProperties"

class HasQTable a b | a -> b where
  qTable :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTable = cp_ "qTable"

class HasQTableName a b | a -> b where
  qTableName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTableName = cp_ "qTableName"

class HasQTables a b | a -> b where
  qTables :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTables = cp_ "qTables"

class HasQTag a b | a -> b where
  qTag :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTag = cp_ "qTag"

class HasQTags a b | a -> b where
  qTags :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTags = cp_ "qTags"

class HasQTails a b | a -> b where
  qTails :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTails = cp_ "qTails"

class HasQText a b | a -> b where
  qText :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qText = cp_ "qText"

class HasQTextSearch a b | a -> b where
  qTextSearch :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTextSearch = cp_ "qTextSearch"

class HasQThou a b | a -> b where
  qThou :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qThou = cp_ "qThou"

class HasQThousandSep a b | a -> b where
  qThousandSep :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qThousandSep = cp_ "qThousandSep"

class HasQThumbnail a b | a -> b where
  qThumbnail :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qThumbnail = cp_ "qThumbnail"

class HasQTicks a b | a -> b where
  qTicks :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTicks = cp_ "qTicks"

class HasQTimeFmt a b | a -> b where
  qTimeFmt :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTimeFmt = cp_ "qTimeFmt"

class HasQTimestampFmt a b | a -> b where
  qTimestampFmt :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTimestampFmt = cp_ "qTimestampFmt"

class HasQTitle a b | a -> b where
  qTitle :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTitle = cp_ "qTitle"

class HasQTop a b | a -> b where
  qTop :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTop = cp_ "qTop"

class HasQTotal a b | a -> b where
  qTotal :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTotal = cp_ "qTotal"

class HasQTotalCount a b | a -> b where
  qTotalCount :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTotalCount = cp_ "qTotalCount"

class HasQTotalLabel a b | a -> b where
  qTotalLabel :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTotalLabel = cp_ "qTotalLabel"

class HasQTotalMode a b | a -> b where
  qTotalMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTotalMode = cp_ "qTotalMode"

class HasQTransientProgress a b | a -> b where
  qTransientProgress :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTransientProgress = cp_ "qTransientProgress"

class HasQTransientProgressMessage a b | a -> b where
  qTransientProgressMessage :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTransientProgressMessage = cp_ "qTransientProgressMessage"

class HasQTreeDataPages a b | a -> b where
  qTreeDataPages :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTreeDataPages = cp_ "qTreeDataPages"

class HasQTreeLevels a b | a -> b where
  qTreeLevels :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTreeLevels = cp_ "qTreeLevels"

class HasQTreeNodes a b | a -> b where
  qTreeNodes :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTreeNodes = cp_ "qTreeNodes"

class HasQTreeNodesOnDim a b | a -> b where
  qTreeNodesOnDim :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTreeNodesOnDim = cp_ "qTreeNodesOnDim"

class HasQType a b | a -> b where
  qType :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qType = cp_ "qType"

class HasQTypes a b | a -> b where
  qTypes :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTypes = cp_ "qTypes"

class HasQUndoCount a b | a -> b where
  qUndoCount :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qUndoCount = cp_ "qUndoCount"

class HasQUp a b | a -> b where
  qUp :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qUp = cp_ "qUp"

class HasQUploadToCloud a b | a -> b where
  qUploadToCloud :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qUploadToCloud = cp_ "qUploadToCloud"

class HasQUrl a b | a -> b where
  qUrl :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qUrl = cp_ "qUrl"

class HasQUrlDef a b | a -> b where
  qUrlDef :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qUrlDef = cp_ "qUrlDef"

class HasQUsePredefListedValues a b | a -> b where
  qUsePredefListedValues :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qUsePredefListedValues = cp_ "qUsePredefListedValues"

class HasQUseThou a b | a -> b where
  qUseThou :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qUseThou = cp_ "qUseThou"

class HasQUserInteractionWanted a b | a -> b where
  qUserInteractionWanted :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qUserInteractionWanted = cp_ "qUserInteractionWanted"

class HasQUtcModifyTime a b | a -> b where
  qUtcModifyTime :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qUtcModifyTime = cp_ "qUtcModifyTime"

class HasQValue a b | a -> b where
  qValue :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qValue = cp_ "qValue"

class HasQValueExprs a b | a -> b where
  qValueExprs :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qValueExprs = cp_ "qValueExprs"

class HasQValues a b | a -> b where
  qValues :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qValues = cp_ "qValues"

class HasQValuesCount a b | a -> b where
  qValuesCount :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qValuesCount = cp_ "qValuesCount"

class HasQVariableItems a b | a -> b where
  qVariableItems :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qVariableItems = cp_ "qVariableItems"

class HasQWarnings a b | a -> b where
  qWarnings :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qWarnings = cp_ "qWarnings"

class HasQWidth a b | a -> b where
  qWidth :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qWidth = cp_ "qWidth"

class HasQZoomFactor a b | a -> b where
  qZoomFactor :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qZoomFactor = cp_ "qZoomFactor"

class HasQZoomLevel a b | a -> b where
  qZoomLevel :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qZoomLevel = cp_ "qZoomLevel"

class HasQalg a b | a -> b where
  qalg :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qalg = cp_ "qalg"

class HasQbufferName a b | a -> b where
  qbufferName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qbufferName = cp_ "qbufferName"

class HasQcx a b | a -> b where
  qcx :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qcx = cp_ "qcx"

class HasQcy a b | a -> b where
  qcy :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qcy = cp_ "qcy"

class HasQk a b | a -> b where
  qk :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qk = cp_ "qk"

class HasQkid a b | a -> b where
  qkid :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qkid = cp_ "qkid"

class HasQlineIx a b | a -> b where
  qlineIx :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qlineIx = cp_ "qlineIx"

class HasQnDec a b | a -> b where
  qnDec :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qnDec = cp_ "qnDec"

class HasQnNonNulls a b | a -> b where
  qnNonNulls :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qnNonNulls = cp_ "qnNonNulls"

class HasQnPresentDistinctValues a b | a -> b where
  qnPresentDistinctValues :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qnPresentDistinctValues = cp_ "qnPresentDistinctValues"

class HasQnRows a b | a -> b where
  qnRows :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qnRows = cp_ "qnRows"

class HasQnTotalDistinctValues a b | a -> b where
  qnTotalDistinctValues :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qnTotalDistinctValues = cp_ "qnTotalDistinctValues"

class HasQtr a b | a -> b where
  qtr :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qtr = cp_ "qtr"

class HasQtyp a b | a -> b where
  qtyp :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qtyp = cp_ "qtyp"

class HasQx a b | a -> b where
  qx :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qx = cp_ "qx"

class HasQy a b | a -> b where
  qy :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qy = cp_ "qy"

