{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE TypeSynonymInstances   #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
module ModelEngine where
import Control.Lens
import AbstractStructure
import HardCoded
import SDKMonad
import SDKBase
import PropClasses
newtype TableViewTableWinSaveInfo = TableViewTableWinSaveInfo AbstractStructure
newtype TableViewConnectionPointSaveInfo = TableViewConnectionPointSaveInfo AbstractStructure
newtype TableViewBroomPointSaveInfo = TableViewBroomPointSaveInfo AbstractStructure
newtype TableViewSaveInfo = TableViewSaveInfo AbstractStructure
newtype SelectInfo = SelectInfo AbstractStructure
newtype FieldDefEx = FieldDefEx AbstractStructure
newtype DerivedFieldsInTableData = DerivedFieldsInTableData AbstractStructure
newtype TableViewCtlSaveInfo = TableViewCtlSaveInfo AbstractStructure
newtype ProgressMessage = ProgressMessage AbstractStructure
newtype Point = Point AbstractStructure
newtype FieldInTableData = FieldInTableData AbstractStructure
newtype ErrorData = ErrorData AbstractStructure
newtype CalendarStrings = CalendarStrings AbstractStructure
newtype BookmarkFieldItem = BookmarkFieldItem AbstractStructure
newtype TextMacro = TextMacro AbstractStructure
newtype TableViewDlgSaveInfo = TableViewDlgSaveInfo AbstractStructure
newtype TableRow = TableRow AbstractStructure
newtype TableRecord = TableRecord AbstractStructure
newtype SourceKeyRecord = SourceKeyRecord AbstractStructure
newtype SortCriteria = SortCriteria AbstractStructure
newtype Size = Size AbstractStructure
newtype SampleResult = SampleResult AbstractStructure
newtype Rect = Rect AbstractStructure
newtype RangeSelectInfo = RangeSelectInfo AbstractStructure
newtype Range = Range AbstractStructure
newtype ProgressData = ProgressData AbstractStructure
newtype OtherTotalSpecProp = OtherTotalSpecProp AbstractStructure
newtype LocaleInfo = LocaleInfo AbstractStructure
newtype LineageInfo = LineageInfo AbstractStructure
newtype InteractDef = InteractDef AbstractStructure
newtype FieldValue = FieldValue AbstractStructure
newtype FieldOrColumn = FieldOrColumn AbstractStructure
newtype FieldDescription = FieldDescription AbstractStructure
newtype FieldAttributes = FieldAttributes AbstractStructure
newtype EditorBreakpoint = EditorBreakpoint AbstractStructure
newtype DocListEntry = DocListEntry AbstractStructure
newtype CharRange = CharRange AbstractStructure
newtype BookmarkVariableItem = BookmarkVariableItem AbstractStructure
newtype AlternateStateData = AlternateStateData AbstractStructure
newtype AlfaNumString = AlfaNumString AbstractStructure
newtype NxLayoutErrors = NxLayoutErrors AbstractStructure
newtype NxInfo = NxInfo AbstractStructure
newtype NxMeta = NxMeta AbstractStructure
newtype NxMetaDef = NxMetaDef AbstractStructure
newtype NxValidationError = NxValidationError AbstractStructure
newtype NxStateCounts = NxStateCounts AbstractStructure
newtype NxPage = NxPage AbstractStructure
newtype NxRange = NxRange AbstractStructure
newtype NxDerivedFieldDescriptionList = NxDerivedFieldDescriptionList AbstractStructure
newtype NxFieldDescription = NxFieldDescription AbstractStructure
newtype NxFieldDescriptor = NxFieldDescriptor AbstractStructure
newtype StaticContentUrlDef = StaticContentUrlDef AbstractStructure
newtype StaticContentUrl = StaticContentUrl AbstractStructure
newtype NxAppProperties = NxAppProperties AbstractStructure
newtype NxAppLayout = NxAppLayout AbstractStructure
newtype NxLibraryDimensionDef = NxLibraryDimensionDef AbstractStructure
newtype NxLibraryDimension = NxLibraryDimension AbstractStructure
newtype NxInlineDimensionDef = NxInlineDimensionDef AbstractStructure
newtype NxCalcCond = NxCalcCond AbstractStructure
newtype NxDimension = NxDimension AbstractStructure
newtype NxTreeDimensionDef = NxTreeDimensionDef AbstractStructure
newtype NxLibraryMeasureDef = NxLibraryMeasureDef AbstractStructure
newtype NxLibraryMeasure = NxLibraryMeasure AbstractStructure
newtype NxInlineMeasureDef = NxInlineMeasureDef AbstractStructure
newtype NxAttrExprDef = NxAttrExprDef AbstractStructure
newtype NxAttrExprInfo = NxAttrExprInfo AbstractStructure
newtype NxAttrDimDef = NxAttrDimDef AbstractStructure
newtype NxAttrDimInfo = NxAttrDimInfo AbstractStructure
newtype NxMeasure = NxMeasure AbstractStructure
newtype NxHighlightRanges = NxHighlightRanges AbstractStructure
newtype NxSimpleValue = NxSimpleValue AbstractStructure
newtype NxSimpleDimValue = NxSimpleDimValue AbstractStructure
newtype NxAttributeExpressionValues = NxAttributeExpressionValues AbstractStructure
newtype NxAttributeDimValues = NxAttributeDimValues AbstractStructure
newtype NxCell = NxCell AbstractStructure
newtype NxGroupTail = NxGroupTail AbstractStructure
newtype NxDataPage = NxDataPage AbstractStructure
newtype NxPivotDimensionCell = NxPivotDimensionCell AbstractStructure
newtype NxStackedPivotCell = NxStackedPivotCell AbstractStructure
newtype NxPivotValuePoint = NxPivotValuePoint AbstractStructure
newtype NxPivotPage = NxPivotPage AbstractStructure
newtype NxStackPage = NxStackPage AbstractStructure
newtype JsonObject = JsonObject AbstractStructure
newtype JsonArray = JsonArray AbstractStructure
newtype JsonProperty = JsonProperty AbstractStructure
newtype NxContainerEntry = NxContainerEntry AbstractStructure
newtype NxCardinalities = NxCardinalities AbstractStructure
newtype NxDimensionInfo = NxDimensionInfo AbstractStructure
newtype NxTreeDimensionInfo = NxTreeDimensionInfo AbstractStructure
newtype NxMeasureInfo = NxMeasureInfo AbstractStructure
newtype AppScriptObject = AppScriptObject AbstractStructure
newtype AppScript = AppScript AbstractStructure
newtype NxFieldSelectionInfo = NxFieldSelectionInfo AbstractStructure
newtype NxCurrentSelectionItem = NxCurrentSelectionItem AbstractStructure
newtype NxRangeSelectInfo = NxRangeSelectInfo AbstractStructure
newtype NxMultiRangeSelectInfo = NxMultiRangeSelectInfo AbstractStructure
newtype NxTreeRangeSelectInfo = NxTreeRangeSelectInfo AbstractStructure
newtype NxTreeMultiRangeSelectInfo = NxTreeMultiRangeSelectInfo AbstractStructure
newtype NxContinuousRangeSelectInfo = NxContinuousRangeSelectInfo AbstractStructure
newtype NxAutoSortByStateDef = NxAutoSortByStateDef AbstractStructure
newtype NxLocatedExpression = NxLocatedExpression AbstractStructure
newtype NxListObjectExpressionDef = NxListObjectExpressionDef AbstractStructure
newtype NxListObjectExpression = NxListObjectExpression AbstractStructure
newtype StringExpression = StringExpression AbstractStructure
newtype ValueExpression = ValueExpression AbstractStructure
newtype ListObjectDef = ListObjectDef AbstractStructure
newtype ListObject = ListObject AbstractStructure
newtype NxGeoCoordinate = NxGeoCoordinate AbstractStructure
newtype NxGeoBoundingBox = NxGeoBoundingBox AbstractStructure
newtype NxCellPosition = NxCellPosition AbstractStructure
newtype NxCellMark = NxCellMark AbstractStructure
newtype NxExpansionPath = NxExpansionPath AbstractStructure
newtype NxExpressionCubeExpr = NxExpressionCubeExpr AbstractStructure
newtype NxExpressionCubeDef = NxExpressionCubeDef AbstractStructure
newtype HyperCubeDef = HyperCubeDef AbstractStructure
newtype HyperCube = HyperCube AbstractStructure
newtype TreeDataDef = TreeDataDef AbstractStructure
newtype TreeData = TreeData AbstractStructure
newtype ChildListDef = ChildListDef AbstractStructure
newtype ChildList = ChildList AbstractStructure
newtype AppObjectListDef = AppObjectListDef AbstractStructure
newtype AppObjectList = AppObjectList AbstractStructure
newtype ExtensionListDef = ExtensionListDef AbstractStructure
newtype ExtensionList = ExtensionList AbstractStructure
newtype MediaListDef = MediaListDef AbstractStructure
newtype MediaListItem = MediaListItem AbstractStructure
newtype MediaList = MediaList AbstractStructure
newtype ContentLibraryListItem = ContentLibraryListItem AbstractStructure
newtype ContentLibraryList = ContentLibraryList AbstractStructure
newtype StaticContentListItem = StaticContentListItem AbstractStructure
newtype StaticContentList = StaticContentList AbstractStructure
newtype VariableListDef = VariableListDef AbstractStructure
newtype NxVariableListItem = NxVariableListItem AbstractStructure
newtype VariableList = VariableList AbstractStructure
newtype EmbeddedSnapshotDef = EmbeddedSnapshotDef AbstractStructure
newtype EmbeddedSnapshot = EmbeddedSnapshot AbstractStructure
newtype DimensionListDef = DimensionListDef AbstractStructure
newtype DimensionList = DimensionList AbstractStructure
newtype BookmarkListDef = BookmarkListDef AbstractStructure
newtype BookmarkList = BookmarkList AbstractStructure
newtype MeasureListDef = MeasureListDef AbstractStructure
newtype MeasureList = MeasureList AbstractStructure
newtype UndoInfoDef = UndoInfoDef AbstractStructure
newtype UndoInfo = UndoInfo AbstractStructure
newtype FieldListDef = FieldListDef AbstractStructure
newtype FieldList = FieldList AbstractStructure
newtype If = If AbstractStructure
newtype Then = Then AbstractStructure
newtype Else = Else AbstractStructure
newtype SelectionObjectDef = SelectionObjectDef AbstractStructure
newtype SelectionObject = SelectionObject AbstractStructure
newtype NxSelectionInfo = NxSelectionInfo AbstractStructure
newtype GenericObjectProperties = GenericObjectProperties AbstractStructure
newtype GenericObjectLayout = GenericObjectLayout AbstractStructure
newtype GenericAppObjectMetaData = GenericAppObjectMetaData AbstractStructure
newtype GenericObjectEntry = GenericObjectEntry AbstractStructure
newtype GenericAppObjectEntry = GenericAppObjectEntry AbstractStructure
newtype NxQvfBundledItem = NxQvfBundledItem AbstractStructure
newtype NxPatch = NxPatch AbstractStructure
newtype NxSelectionCell = NxSelectionCell AbstractStructure
newtype NxLinkedObjectInfo = NxLinkedObjectInfo AbstractStructure
newtype LayoutExclude = LayoutExclude AbstractStructure
newtype UndoExclude = UndoExclude AbstractStructure
newtype NxDataAreaPage = NxDataAreaPage AbstractStructure
newtype NxViewPort = NxViewPort AbstractStructure
newtype SearchAttribute = SearchAttribute AbstractStructure
newtype SearchableObject = SearchableObject AbstractStructure
newtype SearchObjectInternalOptions = SearchObjectInternalOptions AbstractStructure
newtype NxContinuousDataOptions = NxContinuousDataOptions AbstractStructure
newtype NxTickCell = NxTickCell AbstractStructure
newtype NxAxisTicks = NxAxisTicks AbstractStructure
newtype NxAxisData = NxAxisData AbstractStructure
newtype NxGetBookmarkOptions = NxGetBookmarkOptions AbstractStructure
newtype NxTreeValue = NxTreeValue AbstractStructure
newtype NxTreeNode = NxTreeNode AbstractStructure
newtype NxPageTreeLevel = NxPageTreeLevel AbstractStructure
newtype NxPageTreeNode = NxPageTreeNode AbstractStructure
newtype NxTreeDataOption = NxTreeDataOption AbstractStructure
newtype GenericDimensionProperties = GenericDimensionProperties AbstractStructure
newtype GenericDimensionInfo = GenericDimensionInfo AbstractStructure
newtype GenericDimensionLayout = GenericDimensionLayout AbstractStructure
newtype NxBookmark = NxBookmark AbstractStructure
newtype GenericBookmarkProperties = GenericBookmarkProperties AbstractStructure
newtype GenericBookmarkEntry = GenericBookmarkEntry AbstractStructure
newtype GenericUserState = GenericUserState AbstractStructure
newtype LayoutFieldInfo = LayoutFieldInfo AbstractStructure
newtype GenericBookmarkLayout = GenericBookmarkLayout AbstractStructure
newtype BookmarkFieldPage = BookmarkFieldPage AbstractStructure
newtype GenericVariableProperties = GenericVariableProperties AbstractStructure
newtype GenericVariableLayout = GenericVariableLayout AbstractStructure
newtype GenericVariableEntry = GenericVariableEntry AbstractStructure
newtype GenericVariableEntryList = GenericVariableEntryList AbstractStructure
newtype GenericMeasureProperties = GenericMeasureProperties AbstractStructure
newtype GenericMeasureLayout = GenericMeasureLayout AbstractStructure
newtype NxFieldDerivedDefinition = NxFieldDerivedDefinition AbstractStructure
newtype NxGroupDerivedDefinition = NxGroupDerivedDefinition AbstractStructure
newtype NxDerivedDefinitionParameterDesc = NxDerivedDefinitionParameterDesc AbstractStructure
newtype NxDerivedDefinition = NxDerivedDefinition AbstractStructure
newtype NxDerivedDefinitionParameter = NxDerivedDefinitionParameter AbstractStructure
newtype NxDerivedDefinitionData = NxDerivedDefinitionData AbstractStructure
newtype GenericDerivedDefinitionProperties = GenericDerivedDefinitionProperties AbstractStructure
newtype GenericDerivedDefinitionEntry = GenericDerivedDefinitionEntry AbstractStructure
newtype GenericDerivedDefinitionEntryList = GenericDerivedDefinitionEntryList AbstractStructure
newtype GenericDerivedFieldsProperties = GenericDerivedFieldsProperties AbstractStructure
newtype GenericDerivedFieldEntry = GenericDerivedFieldEntry AbstractStructure
newtype GenericDerivedFieldEntryList = GenericDerivedFieldEntryList AbstractStructure
newtype NxDerivedField = NxDerivedField AbstractStructure
newtype NxDerivedGroup = NxDerivedGroup AbstractStructure
newtype NxDerivedFieldsData = NxDerivedFieldsData AbstractStructure
newtype NxDerivedDefinitionInfo = NxDerivedDefinitionInfo AbstractStructure
newtype NxMatchingFieldInfo = NxMatchingFieldInfo AbstractStructure
newtype FieldScores = FieldScores AbstractStructure
newtype AssociationScore = AssociationScore AbstractStructure
newtype DoReloadExParams = DoReloadExParams AbstractStructure
newtype DoReloadExResult = DoReloadExResult AbstractStructure
newtype NxNotification = NxNotification AbstractStructure
newtype NxGetObjectOptions = NxGetObjectOptions AbstractStructure
newtype NxDownloadInfo = NxDownloadInfo AbstractStructure
newtype NxDownloadOptions = NxDownloadOptions AbstractStructure
newtype NxFieldProperties = NxFieldProperties AbstractStructure
newtype NxVariableProperties = NxVariableProperties AbstractStructure
newtype AppEntry = AppEntry AbstractStructure
newtype NxFeatureConfiguration = NxFeatureConfiguration AbstractStructure
newtype NxServiceConfiguration = NxServiceConfiguration AbstractStructure
newtype NxSystemProperties = NxSystemProperties AbstractStructure
newtype NxConfigurationInfo = NxConfigurationInfo AbstractStructure
newtype NxEngineVersion = NxEngineVersion AbstractStructure
newtype JSONWebTokenHeader = JSONWebTokenHeader AbstractStructure
newtype PersistedObjectMeta = PersistedObjectMeta AbstractStructure
newtype ObjectInterface = ObjectInterface AbstractStructure
instance Show TableViewTableWinSaveInfo where show = show.toAs
instance Show TableViewConnectionPointSaveInfo where show = show.toAs
instance Show TableViewBroomPointSaveInfo where show = show.toAs
instance Show TableViewSaveInfo where show = show.toAs
instance Show SelectInfo where show = show.toAs
instance Show FieldDefEx where show = show.toAs
instance Show DerivedFieldsInTableData where show = show.toAs
instance Show TableViewCtlSaveInfo where show = show.toAs
instance Show ProgressMessage where show = show.toAs
instance Show Point where show = show.toAs
instance Show FieldInTableData where show = show.toAs
instance Show ErrorData where show = show.toAs
instance Show CalendarStrings where show = show.toAs
instance Show BookmarkFieldItem where show = show.toAs
instance Show TextMacro where show = show.toAs
instance Show TableViewDlgSaveInfo where show = show.toAs
instance Show TableRow where show = show.toAs
instance Show TableRecord where show = show.toAs
instance Show SourceKeyRecord where show = show.toAs
instance Show SortCriteria where show = show.toAs
instance Show Size where show = show.toAs
instance Show SampleResult where show = show.toAs
instance Show Rect where show = show.toAs
instance Show RangeSelectInfo where show = show.toAs
instance Show Range where show = show.toAs
instance Show ProgressData where show = show.toAs
instance Show OtherTotalSpecProp where show = show.toAs
instance Show LocaleInfo where show = show.toAs
instance Show LineageInfo where show = show.toAs
instance Show InteractDef where show = show.toAs
instance Show FieldValue where show = show.toAs
instance Show FieldOrColumn where show = show.toAs
instance Show FieldDescription where show = show.toAs
instance Show FieldAttributes where show = show.toAs
instance Show EditorBreakpoint where show = show.toAs
instance Show DocListEntry where show = show.toAs
instance Show CharRange where show = show.toAs
instance Show BookmarkVariableItem where show = show.toAs
instance Show AlternateStateData where show = show.toAs
instance Show AlfaNumString where show = show.toAs
instance Show NxLayoutErrors where show = show.toAs
instance Show NxInfo where show = show.toAs
instance Show NxMeta where show = show.toAs
instance Show NxMetaDef where show = show.toAs
instance Show NxValidationError where show = show.toAs
instance Show NxStateCounts where show = show.toAs
instance Show NxPage where show = show.toAs
instance Show NxRange where show = show.toAs
instance Show NxDerivedFieldDescriptionList where show = show.toAs
instance Show NxFieldDescription where show = show.toAs
instance Show NxFieldDescriptor where show = show.toAs
instance Show StaticContentUrlDef where show = show.toAs
instance Show StaticContentUrl where show = show.toAs
instance Show NxAppProperties where show = show.toAs
instance Show NxAppLayout where show = show.toAs
instance Show NxLibraryDimensionDef where show = show.toAs
instance Show NxLibraryDimension where show = show.toAs
instance Show NxInlineDimensionDef where show = show.toAs
instance Show NxCalcCond where show = show.toAs
instance Show NxDimension where show = show.toAs
instance Show NxTreeDimensionDef where show = show.toAs
instance Show NxLibraryMeasureDef where show = show.toAs
instance Show NxLibraryMeasure where show = show.toAs
instance Show NxInlineMeasureDef where show = show.toAs
instance Show NxAttrExprDef where show = show.toAs
instance Show NxAttrExprInfo where show = show.toAs
instance Show NxAttrDimDef where show = show.toAs
instance Show NxAttrDimInfo where show = show.toAs
instance Show NxMeasure where show = show.toAs
instance Show NxHighlightRanges where show = show.toAs
instance Show NxSimpleValue where show = show.toAs
instance Show NxSimpleDimValue where show = show.toAs
instance Show NxAttributeExpressionValues where show = show.toAs
instance Show NxAttributeDimValues where show = show.toAs
instance Show NxCell where show = show.toAs
instance Show NxGroupTail where show = show.toAs
instance Show NxDataPage where show = show.toAs
instance Show NxPivotDimensionCell where show = show.toAs
instance Show NxStackedPivotCell where show = show.toAs
instance Show NxPivotValuePoint where show = show.toAs
instance Show NxPivotPage where show = show.toAs
instance Show NxStackPage where show = show.toAs
instance Show JsonObject where show = show.toAs
instance Show JsonArray where show = show.toAs
instance Show JsonProperty where show = show.toAs
instance Show NxContainerEntry where show = show.toAs
instance Show NxCardinalities where show = show.toAs
instance Show NxDimensionInfo where show = show.toAs
instance Show NxTreeDimensionInfo where show = show.toAs
instance Show NxMeasureInfo where show = show.toAs
instance Show AppScriptObject where show = show.toAs
instance Show AppScript where show = show.toAs
instance Show NxFieldSelectionInfo where show = show.toAs
instance Show NxCurrentSelectionItem where show = show.toAs
instance Show NxRangeSelectInfo where show = show.toAs
instance Show NxMultiRangeSelectInfo where show = show.toAs
instance Show NxTreeRangeSelectInfo where show = show.toAs
instance Show NxTreeMultiRangeSelectInfo where show = show.toAs
instance Show NxContinuousRangeSelectInfo where show = show.toAs
instance Show NxAutoSortByStateDef where show = show.toAs
instance Show NxLocatedExpression where show = show.toAs
instance Show NxListObjectExpressionDef where show = show.toAs
instance Show NxListObjectExpression where show = show.toAs
instance Show StringExpression where show = show.toAs
instance Show ValueExpression where show = show.toAs
instance Show ListObjectDef where show = show.toAs
instance Show ListObject where show = show.toAs
instance Show NxGeoCoordinate where show = show.toAs
instance Show NxGeoBoundingBox where show = show.toAs
instance Show NxCellPosition where show = show.toAs
instance Show NxCellMark where show = show.toAs
instance Show NxExpansionPath where show = show.toAs
instance Show NxExpressionCubeExpr where show = show.toAs
instance Show NxExpressionCubeDef where show = show.toAs
instance Show HyperCubeDef where show = show.toAs
instance Show HyperCube where show = show.toAs
instance Show TreeDataDef where show = show.toAs
instance Show TreeData where show = show.toAs
instance Show ChildListDef where show = show.toAs
instance Show ChildList where show = show.toAs
instance Show AppObjectListDef where show = show.toAs
instance Show AppObjectList where show = show.toAs
instance Show ExtensionListDef where show = show.toAs
instance Show ExtensionList where show = show.toAs
instance Show MediaListDef where show = show.toAs
instance Show MediaListItem where show = show.toAs
instance Show MediaList where show = show.toAs
instance Show ContentLibraryListItem where show = show.toAs
instance Show ContentLibraryList where show = show.toAs
instance Show StaticContentListItem where show = show.toAs
instance Show StaticContentList where show = show.toAs
instance Show VariableListDef where show = show.toAs
instance Show NxVariableListItem where show = show.toAs
instance Show VariableList where show = show.toAs
instance Show EmbeddedSnapshotDef where show = show.toAs
instance Show EmbeddedSnapshot where show = show.toAs
instance Show DimensionListDef where show = show.toAs
instance Show DimensionList where show = show.toAs
instance Show BookmarkListDef where show = show.toAs
instance Show BookmarkList where show = show.toAs
instance Show MeasureListDef where show = show.toAs
instance Show MeasureList where show = show.toAs
instance Show UndoInfoDef where show = show.toAs
instance Show UndoInfo where show = show.toAs
instance Show FieldListDef where show = show.toAs
instance Show FieldList where show = show.toAs
instance Show If where show = show.toAs
instance Show Then where show = show.toAs
instance Show Else where show = show.toAs
instance Show SelectionObjectDef where show = show.toAs
instance Show SelectionObject where show = show.toAs
instance Show NxSelectionInfo where show = show.toAs
instance Show GenericObjectProperties where show = show.toAs
instance Show GenericObjectLayout where show = show.toAs
instance Show GenericAppObjectMetaData where show = show.toAs
instance Show GenericObjectEntry where show = show.toAs
instance Show GenericAppObjectEntry where show = show.toAs
instance Show NxQvfBundledItem where show = show.toAs
instance Show NxPatch where show = show.toAs
instance Show NxSelectionCell where show = show.toAs
instance Show NxLinkedObjectInfo where show = show.toAs
instance Show LayoutExclude where show = show.toAs
instance Show UndoExclude where show = show.toAs
instance Show NxDataAreaPage where show = show.toAs
instance Show NxViewPort where show = show.toAs
instance Show SearchAttribute where show = show.toAs
instance Show SearchableObject where show = show.toAs
instance Show SearchObjectInternalOptions where show = show.toAs
instance Show NxContinuousDataOptions where show = show.toAs
instance Show NxTickCell where show = show.toAs
instance Show NxAxisTicks where show = show.toAs
instance Show NxAxisData where show = show.toAs
instance Show NxGetBookmarkOptions where show = show.toAs
instance Show NxTreeValue where show = show.toAs
instance Show NxTreeNode where show = show.toAs
instance Show NxPageTreeLevel where show = show.toAs
instance Show NxPageTreeNode where show = show.toAs
instance Show NxTreeDataOption where show = show.toAs
instance Show GenericDimensionProperties where show = show.toAs
instance Show GenericDimensionInfo where show = show.toAs
instance Show GenericDimensionLayout where show = show.toAs
instance Show NxBookmark where show = show.toAs
instance Show GenericBookmarkProperties where show = show.toAs
instance Show GenericBookmarkEntry where show = show.toAs
instance Show GenericUserState where show = show.toAs
instance Show LayoutFieldInfo where show = show.toAs
instance Show GenericBookmarkLayout where show = show.toAs
instance Show BookmarkFieldPage where show = show.toAs
instance Show GenericVariableProperties where show = show.toAs
instance Show GenericVariableLayout where show = show.toAs
instance Show GenericVariableEntry where show = show.toAs
instance Show GenericVariableEntryList where show = show.toAs
instance Show GenericMeasureProperties where show = show.toAs
instance Show GenericMeasureLayout where show = show.toAs
instance Show NxFieldDerivedDefinition where show = show.toAs
instance Show NxGroupDerivedDefinition where show = show.toAs
instance Show NxDerivedDefinitionParameterDesc where show = show.toAs
instance Show NxDerivedDefinition where show = show.toAs
instance Show NxDerivedDefinitionParameter where show = show.toAs
instance Show NxDerivedDefinitionData where show = show.toAs
instance Show GenericDerivedDefinitionProperties where show = show.toAs
instance Show GenericDerivedDefinitionEntry where show = show.toAs
instance Show GenericDerivedDefinitionEntryList where show = show.toAs
instance Show GenericDerivedFieldsProperties where show = show.toAs
instance Show GenericDerivedFieldEntry where show = show.toAs
instance Show GenericDerivedFieldEntryList where show = show.toAs
instance Show NxDerivedField where show = show.toAs
instance Show NxDerivedGroup where show = show.toAs
instance Show NxDerivedFieldsData where show = show.toAs
instance Show NxDerivedDefinitionInfo where show = show.toAs
instance Show NxMatchingFieldInfo where show = show.toAs
instance Show FieldScores where show = show.toAs
instance Show AssociationScore where show = show.toAs
instance Show DoReloadExParams where show = show.toAs
instance Show DoReloadExResult where show = show.toAs
instance Show NxNotification where show = show.toAs
instance Show NxGetObjectOptions where show = show.toAs
instance Show NxDownloadInfo where show = show.toAs
instance Show NxDownloadOptions where show = show.toAs
instance Show NxFieldProperties where show = show.toAs
instance Show NxVariableProperties where show = show.toAs
instance Show AppEntry where show = show.toAs
instance Show NxFeatureConfiguration where show = show.toAs
instance Show NxServiceConfiguration where show = show.toAs
instance Show NxSystemProperties where show = show.toAs
instance Show NxConfigurationInfo where show = show.toAs
instance Show NxEngineVersion where show = show.toAs
instance Show JSONWebTokenHeader where show = show.toAs
instance Show PersistedObjectMeta where show = show.toAs
instance Show ObjectInterface where show = show.toAs
instance AbstractStructureContainer TableViewTableWinSaveInfo where
  toAs (TableViewTableWinSaveInfo as) = as
  fromAs as = TableViewTableWinSaveInfo as
instance AbstractStructureContainer TableViewConnectionPointSaveInfo where
  toAs (TableViewConnectionPointSaveInfo as) = as
  fromAs as = TableViewConnectionPointSaveInfo as
instance AbstractStructureContainer TableViewBroomPointSaveInfo where
  toAs (TableViewBroomPointSaveInfo as) = as
  fromAs as = TableViewBroomPointSaveInfo as
instance AbstractStructureContainer TableViewSaveInfo where
  toAs (TableViewSaveInfo as) = as
  fromAs as = TableViewSaveInfo as
instance AbstractStructureContainer SelectInfo where
  toAs (SelectInfo as) = as
  fromAs as = SelectInfo as
instance AbstractStructureContainer FieldDefEx where
  toAs (FieldDefEx as) = as
  fromAs as = FieldDefEx as
instance AbstractStructureContainer DerivedFieldsInTableData where
  toAs (DerivedFieldsInTableData as) = as
  fromAs as = DerivedFieldsInTableData as
instance AbstractStructureContainer TableViewCtlSaveInfo where
  toAs (TableViewCtlSaveInfo as) = as
  fromAs as = TableViewCtlSaveInfo as
instance AbstractStructureContainer ProgressMessage where
  toAs (ProgressMessage as) = as
  fromAs as = ProgressMessage as
instance AbstractStructureContainer Point where
  toAs (Point as) = as
  fromAs as = Point as
instance AbstractStructureContainer FieldInTableData where
  toAs (FieldInTableData as) = as
  fromAs as = FieldInTableData as
instance AbstractStructureContainer ErrorData where
  toAs (ErrorData as) = as
  fromAs as = ErrorData as
instance AbstractStructureContainer CalendarStrings where
  toAs (CalendarStrings as) = as
  fromAs as = CalendarStrings as
instance AbstractStructureContainer BookmarkFieldItem where
  toAs (BookmarkFieldItem as) = as
  fromAs as = BookmarkFieldItem as
instance AbstractStructureContainer TextMacro where
  toAs (TextMacro as) = as
  fromAs as = TextMacro as
instance AbstractStructureContainer TableViewDlgSaveInfo where
  toAs (TableViewDlgSaveInfo as) = as
  fromAs as = TableViewDlgSaveInfo as
instance AbstractStructureContainer TableRow where
  toAs (TableRow as) = as
  fromAs as = TableRow as
instance AbstractStructureContainer TableRecord where
  toAs (TableRecord as) = as
  fromAs as = TableRecord as
instance AbstractStructureContainer SourceKeyRecord where
  toAs (SourceKeyRecord as) = as
  fromAs as = SourceKeyRecord as
instance AbstractStructureContainer SortCriteria where
  toAs (SortCriteria as) = as
  fromAs as = SortCriteria as
instance AbstractStructureContainer Size where
  toAs (Size as) = as
  fromAs as = Size as
instance AbstractStructureContainer SampleResult where
  toAs (SampleResult as) = as
  fromAs as = SampleResult as
instance AbstractStructureContainer Rect where
  toAs (Rect as) = as
  fromAs as = Rect as
instance AbstractStructureContainer RangeSelectInfo where
  toAs (RangeSelectInfo as) = as
  fromAs as = RangeSelectInfo as
instance AbstractStructureContainer Range where
  toAs (Range as) = as
  fromAs as = Range as
instance AbstractStructureContainer ProgressData where
  toAs (ProgressData as) = as
  fromAs as = ProgressData as
instance AbstractStructureContainer OtherTotalSpecProp where
  toAs (OtherTotalSpecProp as) = as
  fromAs as = OtherTotalSpecProp as
instance AbstractStructureContainer LocaleInfo where
  toAs (LocaleInfo as) = as
  fromAs as = LocaleInfo as
instance AbstractStructureContainer LineageInfo where
  toAs (LineageInfo as) = as
  fromAs as = LineageInfo as
instance AbstractStructureContainer InteractDef where
  toAs (InteractDef as) = as
  fromAs as = InteractDef as
instance AbstractStructureContainer FieldValue where
  toAs (FieldValue as) = as
  fromAs as = FieldValue as
instance AbstractStructureContainer FieldOrColumn where
  toAs (FieldOrColumn as) = as
  fromAs as = FieldOrColumn as
instance AbstractStructureContainer FieldDescription where
  toAs (FieldDescription as) = as
  fromAs as = FieldDescription as
instance AbstractStructureContainer FieldAttributes where
  toAs (FieldAttributes as) = as
  fromAs as = FieldAttributes as
instance AbstractStructureContainer EditorBreakpoint where
  toAs (EditorBreakpoint as) = as
  fromAs as = EditorBreakpoint as
instance AbstractStructureContainer DocListEntry where
  toAs (DocListEntry as) = as
  fromAs as = DocListEntry as
instance AbstractStructureContainer CharRange where
  toAs (CharRange as) = as
  fromAs as = CharRange as
instance AbstractStructureContainer BookmarkVariableItem where
  toAs (BookmarkVariableItem as) = as
  fromAs as = BookmarkVariableItem as
instance AbstractStructureContainer AlternateStateData where
  toAs (AlternateStateData as) = as
  fromAs as = AlternateStateData as
instance AbstractStructureContainer AlfaNumString where
  toAs (AlfaNumString as) = as
  fromAs as = AlfaNumString as
instance AbstractStructureContainer NxLayoutErrors where
  toAs (NxLayoutErrors as) = as
  fromAs as = NxLayoutErrors as
instance AbstractStructureContainer NxInfo where
  toAs (NxInfo as) = as
  fromAs as = NxInfo as
instance AbstractStructureContainer NxMeta where
  toAs (NxMeta as) = as
  fromAs as = NxMeta as
instance AbstractStructureContainer NxMetaDef where
  toAs (NxMetaDef as) = as
  fromAs as = NxMetaDef as
instance AbstractStructureContainer NxValidationError where
  toAs (NxValidationError as) = as
  fromAs as = NxValidationError as
instance AbstractStructureContainer NxStateCounts where
  toAs (NxStateCounts as) = as
  fromAs as = NxStateCounts as
instance AbstractStructureContainer NxPage where
  toAs (NxPage as) = as
  fromAs as = NxPage as
instance AbstractStructureContainer NxRange where
  toAs (NxRange as) = as
  fromAs as = NxRange as
instance AbstractStructureContainer NxDerivedFieldDescriptionList where
  toAs (NxDerivedFieldDescriptionList as) = as
  fromAs as = NxDerivedFieldDescriptionList as
instance AbstractStructureContainer NxFieldDescription where
  toAs (NxFieldDescription as) = as
  fromAs as = NxFieldDescription as
instance AbstractStructureContainer NxFieldDescriptor where
  toAs (NxFieldDescriptor as) = as
  fromAs as = NxFieldDescriptor as
instance AbstractStructureContainer StaticContentUrlDef where
  toAs (StaticContentUrlDef as) = as
  fromAs as = StaticContentUrlDef as
instance AbstractStructureContainer StaticContentUrl where
  toAs (StaticContentUrl as) = as
  fromAs as = StaticContentUrl as
instance AbstractStructureContainer NxAppProperties where
  toAs (NxAppProperties as) = as
  fromAs as = NxAppProperties as
instance AbstractStructureContainer NxAppLayout where
  toAs (NxAppLayout as) = as
  fromAs as = NxAppLayout as
instance AbstractStructureContainer NxLibraryDimensionDef where
  toAs (NxLibraryDimensionDef as) = as
  fromAs as = NxLibraryDimensionDef as
instance AbstractStructureContainer NxLibraryDimension where
  toAs (NxLibraryDimension as) = as
  fromAs as = NxLibraryDimension as
instance AbstractStructureContainer NxInlineDimensionDef where
  toAs (NxInlineDimensionDef as) = as
  fromAs as = NxInlineDimensionDef as
instance AbstractStructureContainer NxCalcCond where
  toAs (NxCalcCond as) = as
  fromAs as = NxCalcCond as
instance AbstractStructureContainer NxDimension where
  toAs (NxDimension as) = as
  fromAs as = NxDimension as
instance AbstractStructureContainer NxTreeDimensionDef where
  toAs (NxTreeDimensionDef as) = as
  fromAs as = NxTreeDimensionDef as
instance AbstractStructureContainer NxLibraryMeasureDef where
  toAs (NxLibraryMeasureDef as) = as
  fromAs as = NxLibraryMeasureDef as
instance AbstractStructureContainer NxLibraryMeasure where
  toAs (NxLibraryMeasure as) = as
  fromAs as = NxLibraryMeasure as
instance AbstractStructureContainer NxInlineMeasureDef where
  toAs (NxInlineMeasureDef as) = as
  fromAs as = NxInlineMeasureDef as
instance AbstractStructureContainer NxAttrExprDef where
  toAs (NxAttrExprDef as) = as
  fromAs as = NxAttrExprDef as
instance AbstractStructureContainer NxAttrExprInfo where
  toAs (NxAttrExprInfo as) = as
  fromAs as = NxAttrExprInfo as
instance AbstractStructureContainer NxAttrDimDef where
  toAs (NxAttrDimDef as) = as
  fromAs as = NxAttrDimDef as
instance AbstractStructureContainer NxAttrDimInfo where
  toAs (NxAttrDimInfo as) = as
  fromAs as = NxAttrDimInfo as
instance AbstractStructureContainer NxMeasure where
  toAs (NxMeasure as) = as
  fromAs as = NxMeasure as
instance AbstractStructureContainer NxHighlightRanges where
  toAs (NxHighlightRanges as) = as
  fromAs as = NxHighlightRanges as
instance AbstractStructureContainer NxSimpleValue where
  toAs (NxSimpleValue as) = as
  fromAs as = NxSimpleValue as
instance AbstractStructureContainer NxSimpleDimValue where
  toAs (NxSimpleDimValue as) = as
  fromAs as = NxSimpleDimValue as
instance AbstractStructureContainer NxAttributeExpressionValues where
  toAs (NxAttributeExpressionValues as) = as
  fromAs as = NxAttributeExpressionValues as
instance AbstractStructureContainer NxAttributeDimValues where
  toAs (NxAttributeDimValues as) = as
  fromAs as = NxAttributeDimValues as
instance AbstractStructureContainer NxCell where
  toAs (NxCell as) = as
  fromAs as = NxCell as
instance AbstractStructureContainer NxGroupTail where
  toAs (NxGroupTail as) = as
  fromAs as = NxGroupTail as
instance AbstractStructureContainer NxDataPage where
  toAs (NxDataPage as) = as
  fromAs as = NxDataPage as
instance AbstractStructureContainer NxPivotDimensionCell where
  toAs (NxPivotDimensionCell as) = as
  fromAs as = NxPivotDimensionCell as
instance AbstractStructureContainer NxStackedPivotCell where
  toAs (NxStackedPivotCell as) = as
  fromAs as = NxStackedPivotCell as
instance AbstractStructureContainer NxPivotValuePoint where
  toAs (NxPivotValuePoint as) = as
  fromAs as = NxPivotValuePoint as
instance AbstractStructureContainer NxPivotPage where
  toAs (NxPivotPage as) = as
  fromAs as = NxPivotPage as
instance AbstractStructureContainer NxStackPage where
  toAs (NxStackPage as) = as
  fromAs as = NxStackPage as
instance AbstractStructureContainer JsonObject where
  toAs (JsonObject as) = as
  fromAs as = JsonObject as
instance AbstractStructureContainer JsonArray where
  toAs (JsonArray as) = as
  fromAs as = JsonArray as
instance AbstractStructureContainer JsonProperty where
  toAs (JsonProperty as) = as
  fromAs as = JsonProperty as
instance AbstractStructureContainer NxContainerEntry where
  toAs (NxContainerEntry as) = as
  fromAs as = NxContainerEntry as
instance AbstractStructureContainer NxCardinalities where
  toAs (NxCardinalities as) = as
  fromAs as = NxCardinalities as
instance AbstractStructureContainer NxDimensionInfo where
  toAs (NxDimensionInfo as) = as
  fromAs as = NxDimensionInfo as
instance AbstractStructureContainer NxTreeDimensionInfo where
  toAs (NxTreeDimensionInfo as) = as
  fromAs as = NxTreeDimensionInfo as
instance AbstractStructureContainer NxMeasureInfo where
  toAs (NxMeasureInfo as) = as
  fromAs as = NxMeasureInfo as
instance AbstractStructureContainer AppScriptObject where
  toAs (AppScriptObject as) = as
  fromAs as = AppScriptObject as
instance AbstractStructureContainer AppScript where
  toAs (AppScript as) = as
  fromAs as = AppScript as
instance AbstractStructureContainer NxFieldSelectionInfo where
  toAs (NxFieldSelectionInfo as) = as
  fromAs as = NxFieldSelectionInfo as
instance AbstractStructureContainer NxCurrentSelectionItem where
  toAs (NxCurrentSelectionItem as) = as
  fromAs as = NxCurrentSelectionItem as
instance AbstractStructureContainer NxRangeSelectInfo where
  toAs (NxRangeSelectInfo as) = as
  fromAs as = NxRangeSelectInfo as
instance AbstractStructureContainer NxMultiRangeSelectInfo where
  toAs (NxMultiRangeSelectInfo as) = as
  fromAs as = NxMultiRangeSelectInfo as
instance AbstractStructureContainer NxTreeRangeSelectInfo where
  toAs (NxTreeRangeSelectInfo as) = as
  fromAs as = NxTreeRangeSelectInfo as
instance AbstractStructureContainer NxTreeMultiRangeSelectInfo where
  toAs (NxTreeMultiRangeSelectInfo as) = as
  fromAs as = NxTreeMultiRangeSelectInfo as
instance AbstractStructureContainer NxContinuousRangeSelectInfo where
  toAs (NxContinuousRangeSelectInfo as) = as
  fromAs as = NxContinuousRangeSelectInfo as
instance AbstractStructureContainer NxAutoSortByStateDef where
  toAs (NxAutoSortByStateDef as) = as
  fromAs as = NxAutoSortByStateDef as
instance AbstractStructureContainer NxLocatedExpression where
  toAs (NxLocatedExpression as) = as
  fromAs as = NxLocatedExpression as
instance AbstractStructureContainer NxListObjectExpressionDef where
  toAs (NxListObjectExpressionDef as) = as
  fromAs as = NxListObjectExpressionDef as
instance AbstractStructureContainer NxListObjectExpression where
  toAs (NxListObjectExpression as) = as
  fromAs as = NxListObjectExpression as
instance AbstractStructureContainer StringExpression where
  toAs (StringExpression as) = as
  fromAs as = StringExpression as
instance AbstractStructureContainer ValueExpression where
  toAs (ValueExpression as) = as
  fromAs as = ValueExpression as
instance AbstractStructureContainer ListObjectDef where
  toAs (ListObjectDef as) = as
  fromAs as = ListObjectDef as
instance AbstractStructureContainer ListObject where
  toAs (ListObject as) = as
  fromAs as = ListObject as
instance AbstractStructureContainer NxGeoCoordinate where
  toAs (NxGeoCoordinate as) = as
  fromAs as = NxGeoCoordinate as
instance AbstractStructureContainer NxGeoBoundingBox where
  toAs (NxGeoBoundingBox as) = as
  fromAs as = NxGeoBoundingBox as
instance AbstractStructureContainer NxCellPosition where
  toAs (NxCellPosition as) = as
  fromAs as = NxCellPosition as
instance AbstractStructureContainer NxCellMark where
  toAs (NxCellMark as) = as
  fromAs as = NxCellMark as
instance AbstractStructureContainer NxExpansionPath where
  toAs (NxExpansionPath as) = as
  fromAs as = NxExpansionPath as
instance AbstractStructureContainer NxExpressionCubeExpr where
  toAs (NxExpressionCubeExpr as) = as
  fromAs as = NxExpressionCubeExpr as
instance AbstractStructureContainer NxExpressionCubeDef where
  toAs (NxExpressionCubeDef as) = as
  fromAs as = NxExpressionCubeDef as
instance AbstractStructureContainer HyperCubeDef where
  toAs (HyperCubeDef as) = as
  fromAs as = HyperCubeDef as
instance AbstractStructureContainer HyperCube where
  toAs (HyperCube as) = as
  fromAs as = HyperCube as
instance AbstractStructureContainer TreeDataDef where
  toAs (TreeDataDef as) = as
  fromAs as = TreeDataDef as
instance AbstractStructureContainer TreeData where
  toAs (TreeData as) = as
  fromAs as = TreeData as
instance AbstractStructureContainer ChildListDef where
  toAs (ChildListDef as) = as
  fromAs as = ChildListDef as
instance AbstractStructureContainer ChildList where
  toAs (ChildList as) = as
  fromAs as = ChildList as
instance AbstractStructureContainer AppObjectListDef where
  toAs (AppObjectListDef as) = as
  fromAs as = AppObjectListDef as
instance AbstractStructureContainer AppObjectList where
  toAs (AppObjectList as) = as
  fromAs as = AppObjectList as
instance AbstractStructureContainer ExtensionListDef where
  toAs (ExtensionListDef as) = as
  fromAs as = ExtensionListDef as
instance AbstractStructureContainer ExtensionList where
  toAs (ExtensionList as) = as
  fromAs as = ExtensionList as
instance AbstractStructureContainer MediaListDef where
  toAs (MediaListDef as) = as
  fromAs as = MediaListDef as
instance AbstractStructureContainer MediaListItem where
  toAs (MediaListItem as) = as
  fromAs as = MediaListItem as
instance AbstractStructureContainer MediaList where
  toAs (MediaList as) = as
  fromAs as = MediaList as
instance AbstractStructureContainer ContentLibraryListItem where
  toAs (ContentLibraryListItem as) = as
  fromAs as = ContentLibraryListItem as
instance AbstractStructureContainer ContentLibraryList where
  toAs (ContentLibraryList as) = as
  fromAs as = ContentLibraryList as
instance AbstractStructureContainer StaticContentListItem where
  toAs (StaticContentListItem as) = as
  fromAs as = StaticContentListItem as
instance AbstractStructureContainer StaticContentList where
  toAs (StaticContentList as) = as
  fromAs as = StaticContentList as
instance AbstractStructureContainer VariableListDef where
  toAs (VariableListDef as) = as
  fromAs as = VariableListDef as
instance AbstractStructureContainer NxVariableListItem where
  toAs (NxVariableListItem as) = as
  fromAs as = NxVariableListItem as
instance AbstractStructureContainer VariableList where
  toAs (VariableList as) = as
  fromAs as = VariableList as
instance AbstractStructureContainer EmbeddedSnapshotDef where
  toAs (EmbeddedSnapshotDef as) = as
  fromAs as = EmbeddedSnapshotDef as
instance AbstractStructureContainer EmbeddedSnapshot where
  toAs (EmbeddedSnapshot as) = as
  fromAs as = EmbeddedSnapshot as
instance AbstractStructureContainer DimensionListDef where
  toAs (DimensionListDef as) = as
  fromAs as = DimensionListDef as
instance AbstractStructureContainer DimensionList where
  toAs (DimensionList as) = as
  fromAs as = DimensionList as
instance AbstractStructureContainer BookmarkListDef where
  toAs (BookmarkListDef as) = as
  fromAs as = BookmarkListDef as
instance AbstractStructureContainer BookmarkList where
  toAs (BookmarkList as) = as
  fromAs as = BookmarkList as
instance AbstractStructureContainer MeasureListDef where
  toAs (MeasureListDef as) = as
  fromAs as = MeasureListDef as
instance AbstractStructureContainer MeasureList where
  toAs (MeasureList as) = as
  fromAs as = MeasureList as
instance AbstractStructureContainer UndoInfoDef where
  toAs (UndoInfoDef as) = as
  fromAs as = UndoInfoDef as
instance AbstractStructureContainer UndoInfo where
  toAs (UndoInfo as) = as
  fromAs as = UndoInfo as
instance AbstractStructureContainer FieldListDef where
  toAs (FieldListDef as) = as
  fromAs as = FieldListDef as
instance AbstractStructureContainer FieldList where
  toAs (FieldList as) = as
  fromAs as = FieldList as
instance AbstractStructureContainer If where
  toAs (If as) = as
  fromAs as = If as
instance AbstractStructureContainer Then where
  toAs (Then as) = as
  fromAs as = Then as
instance AbstractStructureContainer Else where
  toAs (Else as) = as
  fromAs as = Else as
instance AbstractStructureContainer SelectionObjectDef where
  toAs (SelectionObjectDef as) = as
  fromAs as = SelectionObjectDef as
instance AbstractStructureContainer SelectionObject where
  toAs (SelectionObject as) = as
  fromAs as = SelectionObject as
instance AbstractStructureContainer NxSelectionInfo where
  toAs (NxSelectionInfo as) = as
  fromAs as = NxSelectionInfo as
instance AbstractStructureContainer GenericObjectProperties where
  toAs (GenericObjectProperties as) = as
  fromAs as = GenericObjectProperties as
instance AbstractStructureContainer GenericObjectLayout where
  toAs (GenericObjectLayout as) = as
  fromAs as = GenericObjectLayout as
instance AbstractStructureContainer GenericAppObjectMetaData where
  toAs (GenericAppObjectMetaData as) = as
  fromAs as = GenericAppObjectMetaData as
instance AbstractStructureContainer GenericObjectEntry where
  toAs (GenericObjectEntry as) = as
  fromAs as = GenericObjectEntry as
instance AbstractStructureContainer GenericAppObjectEntry where
  toAs (GenericAppObjectEntry as) = as
  fromAs as = GenericAppObjectEntry as
instance AbstractStructureContainer NxQvfBundledItem where
  toAs (NxQvfBundledItem as) = as
  fromAs as = NxQvfBundledItem as
instance AbstractStructureContainer NxPatch where
  toAs (NxPatch as) = as
  fromAs as = NxPatch as
instance AbstractStructureContainer NxSelectionCell where
  toAs (NxSelectionCell as) = as
  fromAs as = NxSelectionCell as
instance AbstractStructureContainer NxLinkedObjectInfo where
  toAs (NxLinkedObjectInfo as) = as
  fromAs as = NxLinkedObjectInfo as
instance AbstractStructureContainer LayoutExclude where
  toAs (LayoutExclude as) = as
  fromAs as = LayoutExclude as
instance AbstractStructureContainer UndoExclude where
  toAs (UndoExclude as) = as
  fromAs as = UndoExclude as
instance AbstractStructureContainer NxDataAreaPage where
  toAs (NxDataAreaPage as) = as
  fromAs as = NxDataAreaPage as
instance AbstractStructureContainer NxViewPort where
  toAs (NxViewPort as) = as
  fromAs as = NxViewPort as
instance AbstractStructureContainer SearchAttribute where
  toAs (SearchAttribute as) = as
  fromAs as = SearchAttribute as
instance AbstractStructureContainer SearchableObject where
  toAs (SearchableObject as) = as
  fromAs as = SearchableObject as
instance AbstractStructureContainer SearchObjectInternalOptions where
  toAs (SearchObjectInternalOptions as) = as
  fromAs as = SearchObjectInternalOptions as
instance AbstractStructureContainer NxContinuousDataOptions where
  toAs (NxContinuousDataOptions as) = as
  fromAs as = NxContinuousDataOptions as
instance AbstractStructureContainer NxTickCell where
  toAs (NxTickCell as) = as
  fromAs as = NxTickCell as
instance AbstractStructureContainer NxAxisTicks where
  toAs (NxAxisTicks as) = as
  fromAs as = NxAxisTicks as
instance AbstractStructureContainer NxAxisData where
  toAs (NxAxisData as) = as
  fromAs as = NxAxisData as
instance AbstractStructureContainer NxGetBookmarkOptions where
  toAs (NxGetBookmarkOptions as) = as
  fromAs as = NxGetBookmarkOptions as
instance AbstractStructureContainer NxTreeValue where
  toAs (NxTreeValue as) = as
  fromAs as = NxTreeValue as
instance AbstractStructureContainer NxTreeNode where
  toAs (NxTreeNode as) = as
  fromAs as = NxTreeNode as
instance AbstractStructureContainer NxPageTreeLevel where
  toAs (NxPageTreeLevel as) = as
  fromAs as = NxPageTreeLevel as
instance AbstractStructureContainer NxPageTreeNode where
  toAs (NxPageTreeNode as) = as
  fromAs as = NxPageTreeNode as
instance AbstractStructureContainer NxTreeDataOption where
  toAs (NxTreeDataOption as) = as
  fromAs as = NxTreeDataOption as
instance AbstractStructureContainer GenericDimensionProperties where
  toAs (GenericDimensionProperties as) = as
  fromAs as = GenericDimensionProperties as
instance AbstractStructureContainer GenericDimensionInfo where
  toAs (GenericDimensionInfo as) = as
  fromAs as = GenericDimensionInfo as
instance AbstractStructureContainer GenericDimensionLayout where
  toAs (GenericDimensionLayout as) = as
  fromAs as = GenericDimensionLayout as
instance AbstractStructureContainer NxBookmark where
  toAs (NxBookmark as) = as
  fromAs as = NxBookmark as
instance AbstractStructureContainer GenericBookmarkProperties where
  toAs (GenericBookmarkProperties as) = as
  fromAs as = GenericBookmarkProperties as
instance AbstractStructureContainer GenericBookmarkEntry where
  toAs (GenericBookmarkEntry as) = as
  fromAs as = GenericBookmarkEntry as
instance AbstractStructureContainer GenericUserState where
  toAs (GenericUserState as) = as
  fromAs as = GenericUserState as
instance AbstractStructureContainer LayoutFieldInfo where
  toAs (LayoutFieldInfo as) = as
  fromAs as = LayoutFieldInfo as
instance AbstractStructureContainer GenericBookmarkLayout where
  toAs (GenericBookmarkLayout as) = as
  fromAs as = GenericBookmarkLayout as
instance AbstractStructureContainer BookmarkFieldPage where
  toAs (BookmarkFieldPage as) = as
  fromAs as = BookmarkFieldPage as
instance AbstractStructureContainer GenericVariableProperties where
  toAs (GenericVariableProperties as) = as
  fromAs as = GenericVariableProperties as
instance AbstractStructureContainer GenericVariableLayout where
  toAs (GenericVariableLayout as) = as
  fromAs as = GenericVariableLayout as
instance AbstractStructureContainer GenericVariableEntry where
  toAs (GenericVariableEntry as) = as
  fromAs as = GenericVariableEntry as
instance AbstractStructureContainer GenericVariableEntryList where
  toAs (GenericVariableEntryList as) = as
  fromAs as = GenericVariableEntryList as
instance AbstractStructureContainer GenericMeasureProperties where
  toAs (GenericMeasureProperties as) = as
  fromAs as = GenericMeasureProperties as
instance AbstractStructureContainer GenericMeasureLayout where
  toAs (GenericMeasureLayout as) = as
  fromAs as = GenericMeasureLayout as
instance AbstractStructureContainer NxFieldDerivedDefinition where
  toAs (NxFieldDerivedDefinition as) = as
  fromAs as = NxFieldDerivedDefinition as
instance AbstractStructureContainer NxGroupDerivedDefinition where
  toAs (NxGroupDerivedDefinition as) = as
  fromAs as = NxGroupDerivedDefinition as
instance AbstractStructureContainer NxDerivedDefinitionParameterDesc where
  toAs (NxDerivedDefinitionParameterDesc as) = as
  fromAs as = NxDerivedDefinitionParameterDesc as
instance AbstractStructureContainer NxDerivedDefinition where
  toAs (NxDerivedDefinition as) = as
  fromAs as = NxDerivedDefinition as
instance AbstractStructureContainer NxDerivedDefinitionParameter where
  toAs (NxDerivedDefinitionParameter as) = as
  fromAs as = NxDerivedDefinitionParameter as
instance AbstractStructureContainer NxDerivedDefinitionData where
  toAs (NxDerivedDefinitionData as) = as
  fromAs as = NxDerivedDefinitionData as
instance AbstractStructureContainer GenericDerivedDefinitionProperties where
  toAs (GenericDerivedDefinitionProperties as) = as
  fromAs as = GenericDerivedDefinitionProperties as
instance AbstractStructureContainer GenericDerivedDefinitionEntry where
  toAs (GenericDerivedDefinitionEntry as) = as
  fromAs as = GenericDerivedDefinitionEntry as
instance AbstractStructureContainer GenericDerivedDefinitionEntryList where
  toAs (GenericDerivedDefinitionEntryList as) = as
  fromAs as = GenericDerivedDefinitionEntryList as
instance AbstractStructureContainer GenericDerivedFieldsProperties where
  toAs (GenericDerivedFieldsProperties as) = as
  fromAs as = GenericDerivedFieldsProperties as
instance AbstractStructureContainer GenericDerivedFieldEntry where
  toAs (GenericDerivedFieldEntry as) = as
  fromAs as = GenericDerivedFieldEntry as
instance AbstractStructureContainer GenericDerivedFieldEntryList where
  toAs (GenericDerivedFieldEntryList as) = as
  fromAs as = GenericDerivedFieldEntryList as
instance AbstractStructureContainer NxDerivedField where
  toAs (NxDerivedField as) = as
  fromAs as = NxDerivedField as
instance AbstractStructureContainer NxDerivedGroup where
  toAs (NxDerivedGroup as) = as
  fromAs as = NxDerivedGroup as
instance AbstractStructureContainer NxDerivedFieldsData where
  toAs (NxDerivedFieldsData as) = as
  fromAs as = NxDerivedFieldsData as
instance AbstractStructureContainer NxDerivedDefinitionInfo where
  toAs (NxDerivedDefinitionInfo as) = as
  fromAs as = NxDerivedDefinitionInfo as
instance AbstractStructureContainer NxMatchingFieldInfo where
  toAs (NxMatchingFieldInfo as) = as
  fromAs as = NxMatchingFieldInfo as
instance AbstractStructureContainer FieldScores where
  toAs (FieldScores as) = as
  fromAs as = FieldScores as
instance AbstractStructureContainer AssociationScore where
  toAs (AssociationScore as) = as
  fromAs as = AssociationScore as
instance AbstractStructureContainer DoReloadExParams where
  toAs (DoReloadExParams as) = as
  fromAs as = DoReloadExParams as
instance AbstractStructureContainer DoReloadExResult where
  toAs (DoReloadExResult as) = as
  fromAs as = DoReloadExResult as
instance AbstractStructureContainer NxNotification where
  toAs (NxNotification as) = as
  fromAs as = NxNotification as
instance AbstractStructureContainer NxGetObjectOptions where
  toAs (NxGetObjectOptions as) = as
  fromAs as = NxGetObjectOptions as
instance AbstractStructureContainer NxDownloadInfo where
  toAs (NxDownloadInfo as) = as
  fromAs as = NxDownloadInfo as
instance AbstractStructureContainer NxDownloadOptions where
  toAs (NxDownloadOptions as) = as
  fromAs as = NxDownloadOptions as
instance AbstractStructureContainer NxFieldProperties where
  toAs (NxFieldProperties as) = as
  fromAs as = NxFieldProperties as
instance AbstractStructureContainer NxVariableProperties where
  toAs (NxVariableProperties as) = as
  fromAs as = NxVariableProperties as
instance AbstractStructureContainer AppEntry where
  toAs (AppEntry as) = as
  fromAs as = AppEntry as
instance AbstractStructureContainer NxFeatureConfiguration where
  toAs (NxFeatureConfiguration as) = as
  fromAs as = NxFeatureConfiguration as
instance AbstractStructureContainer NxServiceConfiguration where
  toAs (NxServiceConfiguration as) = as
  fromAs as = NxServiceConfiguration as
instance AbstractStructureContainer NxSystemProperties where
  toAs (NxSystemProperties as) = as
  fromAs as = NxSystemProperties as
instance AbstractStructureContainer NxConfigurationInfo where
  toAs (NxConfigurationInfo as) = as
  fromAs as = NxConfigurationInfo as
instance AbstractStructureContainer NxEngineVersion where
  toAs (NxEngineVersion as) = as
  fromAs as = NxEngineVersion as
instance AbstractStructureContainer JSONWebTokenHeader where
  toAs (JSONWebTokenHeader as) = as
  fromAs as = JSONWebTokenHeader as
instance AbstractStructureContainer PersistedObjectMeta where
  toAs (PersistedObjectMeta as) = as
  fromAs as = PersistedObjectMeta as
instance AbstractStructureContainer ObjectInterface where
  toAs (ObjectInterface as) = as
  fromAs as = ObjectInterface as
instance ValueType TableViewTableWinSaveInfo where
  toValue (TableViewTableWinSaveInfo as) = toValue as
  fromValue as = TableViewTableWinSaveInfo (fromValue as)

instance ValueType TableViewConnectionPointSaveInfo where
  toValue (TableViewConnectionPointSaveInfo as) = toValue as
  fromValue as = TableViewConnectionPointSaveInfo (fromValue as)

instance ValueType TableViewBroomPointSaveInfo where
  toValue (TableViewBroomPointSaveInfo as) = toValue as
  fromValue as = TableViewBroomPointSaveInfo (fromValue as)

instance ValueType TableViewSaveInfo where
  toValue (TableViewSaveInfo as) = toValue as
  fromValue as = TableViewSaveInfo (fromValue as)

instance ValueType SelectInfo where
  toValue (SelectInfo as) = toValue as
  fromValue as = SelectInfo (fromValue as)

instance ValueType FieldDefEx where
  toValue (FieldDefEx as) = toValue as
  fromValue as = FieldDefEx (fromValue as)

instance ValueType DerivedFieldsInTableData where
  toValue (DerivedFieldsInTableData as) = toValue as
  fromValue as = DerivedFieldsInTableData (fromValue as)

instance ValueType TableViewCtlSaveInfo where
  toValue (TableViewCtlSaveInfo as) = toValue as
  fromValue as = TableViewCtlSaveInfo (fromValue as)

instance ValueType ProgressMessage where
  toValue (ProgressMessage as) = toValue as
  fromValue as = ProgressMessage (fromValue as)

instance ValueType Point where
  toValue (Point as) = toValue as
  fromValue as = Point (fromValue as)

instance ValueType FieldInTableData where
  toValue (FieldInTableData as) = toValue as
  fromValue as = FieldInTableData (fromValue as)

instance ValueType ErrorData where
  toValue (ErrorData as) = toValue as
  fromValue as = ErrorData (fromValue as)

instance ValueType CalendarStrings where
  toValue (CalendarStrings as) = toValue as
  fromValue as = CalendarStrings (fromValue as)

instance ValueType BookmarkFieldItem where
  toValue (BookmarkFieldItem as) = toValue as
  fromValue as = BookmarkFieldItem (fromValue as)

instance ValueType TextMacro where
  toValue (TextMacro as) = toValue as
  fromValue as = TextMacro (fromValue as)

instance ValueType TableViewDlgSaveInfo where
  toValue (TableViewDlgSaveInfo as) = toValue as
  fromValue as = TableViewDlgSaveInfo (fromValue as)

instance ValueType TableRow where
  toValue (TableRow as) = toValue as
  fromValue as = TableRow (fromValue as)

instance ValueType TableRecord where
  toValue (TableRecord as) = toValue as
  fromValue as = TableRecord (fromValue as)

instance ValueType SourceKeyRecord where
  toValue (SourceKeyRecord as) = toValue as
  fromValue as = SourceKeyRecord (fromValue as)

instance ValueType SortCriteria where
  toValue (SortCriteria as) = toValue as
  fromValue as = SortCriteria (fromValue as)

instance ValueType Size where
  toValue (Size as) = toValue as
  fromValue as = Size (fromValue as)

instance ValueType SampleResult where
  toValue (SampleResult as) = toValue as
  fromValue as = SampleResult (fromValue as)

instance ValueType Rect where
  toValue (Rect as) = toValue as
  fromValue as = Rect (fromValue as)

instance ValueType RangeSelectInfo where
  toValue (RangeSelectInfo as) = toValue as
  fromValue as = RangeSelectInfo (fromValue as)

instance ValueType Range where
  toValue (Range as) = toValue as
  fromValue as = Range (fromValue as)

instance ValueType ProgressData where
  toValue (ProgressData as) = toValue as
  fromValue as = ProgressData (fromValue as)

instance ValueType OtherTotalSpecProp where
  toValue (OtherTotalSpecProp as) = toValue as
  fromValue as = OtherTotalSpecProp (fromValue as)

instance ValueType LocaleInfo where
  toValue (LocaleInfo as) = toValue as
  fromValue as = LocaleInfo (fromValue as)

instance ValueType LineageInfo where
  toValue (LineageInfo as) = toValue as
  fromValue as = LineageInfo (fromValue as)

instance ValueType InteractDef where
  toValue (InteractDef as) = toValue as
  fromValue as = InteractDef (fromValue as)

instance ValueType FieldValue where
  toValue (FieldValue as) = toValue as
  fromValue as = FieldValue (fromValue as)

instance ValueType FieldOrColumn where
  toValue (FieldOrColumn as) = toValue as
  fromValue as = FieldOrColumn (fromValue as)

instance ValueType FieldDescription where
  toValue (FieldDescription as) = toValue as
  fromValue as = FieldDescription (fromValue as)

instance ValueType FieldAttributes where
  toValue (FieldAttributes as) = toValue as
  fromValue as = FieldAttributes (fromValue as)

instance ValueType EditorBreakpoint where
  toValue (EditorBreakpoint as) = toValue as
  fromValue as = EditorBreakpoint (fromValue as)

instance ValueType DocListEntry where
  toValue (DocListEntry as) = toValue as
  fromValue as = DocListEntry (fromValue as)

instance ValueType CharRange where
  toValue (CharRange as) = toValue as
  fromValue as = CharRange (fromValue as)

instance ValueType BookmarkVariableItem where
  toValue (BookmarkVariableItem as) = toValue as
  fromValue as = BookmarkVariableItem (fromValue as)

instance ValueType AlternateStateData where
  toValue (AlternateStateData as) = toValue as
  fromValue as = AlternateStateData (fromValue as)

instance ValueType AlfaNumString where
  toValue (AlfaNumString as) = toValue as
  fromValue as = AlfaNumString (fromValue as)

instance ValueType NxLayoutErrors where
  toValue (NxLayoutErrors as) = toValue as
  fromValue as = NxLayoutErrors (fromValue as)

instance ValueType NxInfo where
  toValue (NxInfo as) = toValue as
  fromValue as = NxInfo (fromValue as)

instance ValueType NxMeta where
  toValue (NxMeta as) = toValue as
  fromValue as = NxMeta (fromValue as)

instance ValueType NxMetaDef where
  toValue (NxMetaDef as) = toValue as
  fromValue as = NxMetaDef (fromValue as)

instance ValueType NxValidationError where
  toValue (NxValidationError as) = toValue as
  fromValue as = NxValidationError (fromValue as)

instance ValueType NxStateCounts where
  toValue (NxStateCounts as) = toValue as
  fromValue as = NxStateCounts (fromValue as)

instance ValueType NxPage where
  toValue (NxPage as) = toValue as
  fromValue as = NxPage (fromValue as)

instance ValueType NxRange where
  toValue (NxRange as) = toValue as
  fromValue as = NxRange (fromValue as)

instance ValueType NxDerivedFieldDescriptionList where
  toValue (NxDerivedFieldDescriptionList as) = toValue as
  fromValue as = NxDerivedFieldDescriptionList (fromValue as)

instance ValueType NxFieldDescription where
  toValue (NxFieldDescription as) = toValue as
  fromValue as = NxFieldDescription (fromValue as)

instance ValueType NxFieldDescriptor where
  toValue (NxFieldDescriptor as) = toValue as
  fromValue as = NxFieldDescriptor (fromValue as)

instance ValueType StaticContentUrlDef where
  toValue (StaticContentUrlDef as) = toValue as
  fromValue as = StaticContentUrlDef (fromValue as)

instance ValueType StaticContentUrl where
  toValue (StaticContentUrl as) = toValue as
  fromValue as = StaticContentUrl (fromValue as)

instance ValueType NxAppProperties where
  toValue (NxAppProperties as) = toValue as
  fromValue as = NxAppProperties (fromValue as)

instance ValueType NxAppLayout where
  toValue (NxAppLayout as) = toValue as
  fromValue as = NxAppLayout (fromValue as)

instance ValueType NxLibraryDimensionDef where
  toValue (NxLibraryDimensionDef as) = toValue as
  fromValue as = NxLibraryDimensionDef (fromValue as)

instance ValueType NxLibraryDimension where
  toValue (NxLibraryDimension as) = toValue as
  fromValue as = NxLibraryDimension (fromValue as)

instance ValueType NxInlineDimensionDef where
  toValue (NxInlineDimensionDef as) = toValue as
  fromValue as = NxInlineDimensionDef (fromValue as)

instance ValueType NxCalcCond where
  toValue (NxCalcCond as) = toValue as
  fromValue as = NxCalcCond (fromValue as)

instance ValueType NxDimension where
  toValue (NxDimension as) = toValue as
  fromValue as = NxDimension (fromValue as)

instance ValueType NxTreeDimensionDef where
  toValue (NxTreeDimensionDef as) = toValue as
  fromValue as = NxTreeDimensionDef (fromValue as)

instance ValueType NxLibraryMeasureDef where
  toValue (NxLibraryMeasureDef as) = toValue as
  fromValue as = NxLibraryMeasureDef (fromValue as)

instance ValueType NxLibraryMeasure where
  toValue (NxLibraryMeasure as) = toValue as
  fromValue as = NxLibraryMeasure (fromValue as)

instance ValueType NxInlineMeasureDef where
  toValue (NxInlineMeasureDef as) = toValue as
  fromValue as = NxInlineMeasureDef (fromValue as)

instance ValueType NxAttrExprDef where
  toValue (NxAttrExprDef as) = toValue as
  fromValue as = NxAttrExprDef (fromValue as)

instance ValueType NxAttrExprInfo where
  toValue (NxAttrExprInfo as) = toValue as
  fromValue as = NxAttrExprInfo (fromValue as)

instance ValueType NxAttrDimDef where
  toValue (NxAttrDimDef as) = toValue as
  fromValue as = NxAttrDimDef (fromValue as)

instance ValueType NxAttrDimInfo where
  toValue (NxAttrDimInfo as) = toValue as
  fromValue as = NxAttrDimInfo (fromValue as)

instance ValueType NxMeasure where
  toValue (NxMeasure as) = toValue as
  fromValue as = NxMeasure (fromValue as)

instance ValueType NxHighlightRanges where
  toValue (NxHighlightRanges as) = toValue as
  fromValue as = NxHighlightRanges (fromValue as)

instance ValueType NxSimpleValue where
  toValue (NxSimpleValue as) = toValue as
  fromValue as = NxSimpleValue (fromValue as)

instance ValueType NxSimpleDimValue where
  toValue (NxSimpleDimValue as) = toValue as
  fromValue as = NxSimpleDimValue (fromValue as)

instance ValueType NxAttributeExpressionValues where
  toValue (NxAttributeExpressionValues as) = toValue as
  fromValue as = NxAttributeExpressionValues (fromValue as)

instance ValueType NxAttributeDimValues where
  toValue (NxAttributeDimValues as) = toValue as
  fromValue as = NxAttributeDimValues (fromValue as)

instance ValueType NxCell where
  toValue (NxCell as) = toValue as
  fromValue as = NxCell (fromValue as)

instance ValueType NxGroupTail where
  toValue (NxGroupTail as) = toValue as
  fromValue as = NxGroupTail (fromValue as)

instance ValueType NxDataPage where
  toValue (NxDataPage as) = toValue as
  fromValue as = NxDataPage (fromValue as)

instance ValueType NxPivotDimensionCell where
  toValue (NxPivotDimensionCell as) = toValue as
  fromValue as = NxPivotDimensionCell (fromValue as)

instance ValueType NxStackedPivotCell where
  toValue (NxStackedPivotCell as) = toValue as
  fromValue as = NxStackedPivotCell (fromValue as)

instance ValueType NxPivotValuePoint where
  toValue (NxPivotValuePoint as) = toValue as
  fromValue as = NxPivotValuePoint (fromValue as)

instance ValueType NxPivotPage where
  toValue (NxPivotPage as) = toValue as
  fromValue as = NxPivotPage (fromValue as)

instance ValueType NxStackPage where
  toValue (NxStackPage as) = toValue as
  fromValue as = NxStackPage (fromValue as)

instance ValueType JsonObject where
  toValue (JsonObject as) = toValue as
  fromValue as = JsonObject (fromValue as)

instance ValueType JsonArray where
  toValue (JsonArray as) = toValue as
  fromValue as = JsonArray (fromValue as)

instance ValueType JsonProperty where
  toValue (JsonProperty as) = toValue as
  fromValue as = JsonProperty (fromValue as)

instance ValueType NxContainerEntry where
  toValue (NxContainerEntry as) = toValue as
  fromValue as = NxContainerEntry (fromValue as)

instance ValueType NxCardinalities where
  toValue (NxCardinalities as) = toValue as
  fromValue as = NxCardinalities (fromValue as)

instance ValueType NxDimensionInfo where
  toValue (NxDimensionInfo as) = toValue as
  fromValue as = NxDimensionInfo (fromValue as)

instance ValueType NxTreeDimensionInfo where
  toValue (NxTreeDimensionInfo as) = toValue as
  fromValue as = NxTreeDimensionInfo (fromValue as)

instance ValueType NxMeasureInfo where
  toValue (NxMeasureInfo as) = toValue as
  fromValue as = NxMeasureInfo (fromValue as)

instance ValueType AppScriptObject where
  toValue (AppScriptObject as) = toValue as
  fromValue as = AppScriptObject (fromValue as)

instance ValueType AppScript where
  toValue (AppScript as) = toValue as
  fromValue as = AppScript (fromValue as)

instance ValueType NxFieldSelectionInfo where
  toValue (NxFieldSelectionInfo as) = toValue as
  fromValue as = NxFieldSelectionInfo (fromValue as)

instance ValueType NxCurrentSelectionItem where
  toValue (NxCurrentSelectionItem as) = toValue as
  fromValue as = NxCurrentSelectionItem (fromValue as)

instance ValueType NxRangeSelectInfo where
  toValue (NxRangeSelectInfo as) = toValue as
  fromValue as = NxRangeSelectInfo (fromValue as)

instance ValueType NxMultiRangeSelectInfo where
  toValue (NxMultiRangeSelectInfo as) = toValue as
  fromValue as = NxMultiRangeSelectInfo (fromValue as)

instance ValueType NxTreeRangeSelectInfo where
  toValue (NxTreeRangeSelectInfo as) = toValue as
  fromValue as = NxTreeRangeSelectInfo (fromValue as)

instance ValueType NxTreeMultiRangeSelectInfo where
  toValue (NxTreeMultiRangeSelectInfo as) = toValue as
  fromValue as = NxTreeMultiRangeSelectInfo (fromValue as)

instance ValueType NxContinuousRangeSelectInfo where
  toValue (NxContinuousRangeSelectInfo as) = toValue as
  fromValue as = NxContinuousRangeSelectInfo (fromValue as)

instance ValueType NxAutoSortByStateDef where
  toValue (NxAutoSortByStateDef as) = toValue as
  fromValue as = NxAutoSortByStateDef (fromValue as)

instance ValueType NxLocatedExpression where
  toValue (NxLocatedExpression as) = toValue as
  fromValue as = NxLocatedExpression (fromValue as)

instance ValueType NxListObjectExpressionDef where
  toValue (NxListObjectExpressionDef as) = toValue as
  fromValue as = NxListObjectExpressionDef (fromValue as)

instance ValueType NxListObjectExpression where
  toValue (NxListObjectExpression as) = toValue as
  fromValue as = NxListObjectExpression (fromValue as)

instance ValueType StringExpression where
  toValue (StringExpression as) = toValue as
  fromValue as = StringExpression (fromValue as)

instance ValueType ValueExpression where
  toValue (ValueExpression as) = toValue as
  fromValue as = ValueExpression (fromValue as)

instance ValueType ListObjectDef where
  toValue (ListObjectDef as) = toValue as
  fromValue as = ListObjectDef (fromValue as)

instance ValueType ListObject where
  toValue (ListObject as) = toValue as
  fromValue as = ListObject (fromValue as)

instance ValueType NxGeoCoordinate where
  toValue (NxGeoCoordinate as) = toValue as
  fromValue as = NxGeoCoordinate (fromValue as)

instance ValueType NxGeoBoundingBox where
  toValue (NxGeoBoundingBox as) = toValue as
  fromValue as = NxGeoBoundingBox (fromValue as)

instance ValueType NxCellPosition where
  toValue (NxCellPosition as) = toValue as
  fromValue as = NxCellPosition (fromValue as)

instance ValueType NxCellMark where
  toValue (NxCellMark as) = toValue as
  fromValue as = NxCellMark (fromValue as)

instance ValueType NxExpansionPath where
  toValue (NxExpansionPath as) = toValue as
  fromValue as = NxExpansionPath (fromValue as)

instance ValueType NxExpressionCubeExpr where
  toValue (NxExpressionCubeExpr as) = toValue as
  fromValue as = NxExpressionCubeExpr (fromValue as)

instance ValueType NxExpressionCubeDef where
  toValue (NxExpressionCubeDef as) = toValue as
  fromValue as = NxExpressionCubeDef (fromValue as)

instance ValueType HyperCubeDef where
  toValue (HyperCubeDef as) = toValue as
  fromValue as = HyperCubeDef (fromValue as)

instance ValueType HyperCube where
  toValue (HyperCube as) = toValue as
  fromValue as = HyperCube (fromValue as)

instance ValueType TreeDataDef where
  toValue (TreeDataDef as) = toValue as
  fromValue as = TreeDataDef (fromValue as)

instance ValueType TreeData where
  toValue (TreeData as) = toValue as
  fromValue as = TreeData (fromValue as)

instance ValueType ChildListDef where
  toValue (ChildListDef as) = toValue as
  fromValue as = ChildListDef (fromValue as)

instance ValueType ChildList where
  toValue (ChildList as) = toValue as
  fromValue as = ChildList (fromValue as)

instance ValueType AppObjectListDef where
  toValue (AppObjectListDef as) = toValue as
  fromValue as = AppObjectListDef (fromValue as)

instance ValueType AppObjectList where
  toValue (AppObjectList as) = toValue as
  fromValue as = AppObjectList (fromValue as)

instance ValueType ExtensionListDef where
  toValue (ExtensionListDef as) = toValue as
  fromValue as = ExtensionListDef (fromValue as)

instance ValueType ExtensionList where
  toValue (ExtensionList as) = toValue as
  fromValue as = ExtensionList (fromValue as)

instance ValueType MediaListDef where
  toValue (MediaListDef as) = toValue as
  fromValue as = MediaListDef (fromValue as)

instance ValueType MediaListItem where
  toValue (MediaListItem as) = toValue as
  fromValue as = MediaListItem (fromValue as)

instance ValueType MediaList where
  toValue (MediaList as) = toValue as
  fromValue as = MediaList (fromValue as)

instance ValueType ContentLibraryListItem where
  toValue (ContentLibraryListItem as) = toValue as
  fromValue as = ContentLibraryListItem (fromValue as)

instance ValueType ContentLibraryList where
  toValue (ContentLibraryList as) = toValue as
  fromValue as = ContentLibraryList (fromValue as)

instance ValueType StaticContentListItem where
  toValue (StaticContentListItem as) = toValue as
  fromValue as = StaticContentListItem (fromValue as)

instance ValueType StaticContentList where
  toValue (StaticContentList as) = toValue as
  fromValue as = StaticContentList (fromValue as)

instance ValueType VariableListDef where
  toValue (VariableListDef as) = toValue as
  fromValue as = VariableListDef (fromValue as)

instance ValueType NxVariableListItem where
  toValue (NxVariableListItem as) = toValue as
  fromValue as = NxVariableListItem (fromValue as)

instance ValueType VariableList where
  toValue (VariableList as) = toValue as
  fromValue as = VariableList (fromValue as)

instance ValueType EmbeddedSnapshotDef where
  toValue (EmbeddedSnapshotDef as) = toValue as
  fromValue as = EmbeddedSnapshotDef (fromValue as)

instance ValueType EmbeddedSnapshot where
  toValue (EmbeddedSnapshot as) = toValue as
  fromValue as = EmbeddedSnapshot (fromValue as)

instance ValueType DimensionListDef where
  toValue (DimensionListDef as) = toValue as
  fromValue as = DimensionListDef (fromValue as)

instance ValueType DimensionList where
  toValue (DimensionList as) = toValue as
  fromValue as = DimensionList (fromValue as)

instance ValueType BookmarkListDef where
  toValue (BookmarkListDef as) = toValue as
  fromValue as = BookmarkListDef (fromValue as)

instance ValueType BookmarkList where
  toValue (BookmarkList as) = toValue as
  fromValue as = BookmarkList (fromValue as)

instance ValueType MeasureListDef where
  toValue (MeasureListDef as) = toValue as
  fromValue as = MeasureListDef (fromValue as)

instance ValueType MeasureList where
  toValue (MeasureList as) = toValue as
  fromValue as = MeasureList (fromValue as)

instance ValueType UndoInfoDef where
  toValue (UndoInfoDef as) = toValue as
  fromValue as = UndoInfoDef (fromValue as)

instance ValueType UndoInfo where
  toValue (UndoInfo as) = toValue as
  fromValue as = UndoInfo (fromValue as)

instance ValueType FieldListDef where
  toValue (FieldListDef as) = toValue as
  fromValue as = FieldListDef (fromValue as)

instance ValueType FieldList where
  toValue (FieldList as) = toValue as
  fromValue as = FieldList (fromValue as)

instance ValueType If where
  toValue (If as) = toValue as
  fromValue as = If (fromValue as)

instance ValueType Then where
  toValue (Then as) = toValue as
  fromValue as = Then (fromValue as)

instance ValueType Else where
  toValue (Else as) = toValue as
  fromValue as = Else (fromValue as)

instance ValueType SelectionObjectDef where
  toValue (SelectionObjectDef as) = toValue as
  fromValue as = SelectionObjectDef (fromValue as)

instance ValueType SelectionObject where
  toValue (SelectionObject as) = toValue as
  fromValue as = SelectionObject (fromValue as)

instance ValueType NxSelectionInfo where
  toValue (NxSelectionInfo as) = toValue as
  fromValue as = NxSelectionInfo (fromValue as)

instance ValueType GenericObjectProperties where
  toValue (GenericObjectProperties as) = toValue as
  fromValue as = GenericObjectProperties (fromValue as)

instance ValueType GenericObjectLayout where
  toValue (GenericObjectLayout as) = toValue as
  fromValue as = GenericObjectLayout (fromValue as)

instance ValueType GenericAppObjectMetaData where
  toValue (GenericAppObjectMetaData as) = toValue as
  fromValue as = GenericAppObjectMetaData (fromValue as)

instance ValueType GenericObjectEntry where
  toValue (GenericObjectEntry as) = toValue as
  fromValue as = GenericObjectEntry (fromValue as)

instance ValueType GenericAppObjectEntry where
  toValue (GenericAppObjectEntry as) = toValue as
  fromValue as = GenericAppObjectEntry (fromValue as)

instance ValueType NxQvfBundledItem where
  toValue (NxQvfBundledItem as) = toValue as
  fromValue as = NxQvfBundledItem (fromValue as)

instance ValueType NxPatch where
  toValue (NxPatch as) = toValue as
  fromValue as = NxPatch (fromValue as)

instance ValueType NxSelectionCell where
  toValue (NxSelectionCell as) = toValue as
  fromValue as = NxSelectionCell (fromValue as)

instance ValueType NxLinkedObjectInfo where
  toValue (NxLinkedObjectInfo as) = toValue as
  fromValue as = NxLinkedObjectInfo (fromValue as)

instance ValueType LayoutExclude where
  toValue (LayoutExclude as) = toValue as
  fromValue as = LayoutExclude (fromValue as)

instance ValueType UndoExclude where
  toValue (UndoExclude as) = toValue as
  fromValue as = UndoExclude (fromValue as)

instance ValueType NxDataAreaPage where
  toValue (NxDataAreaPage as) = toValue as
  fromValue as = NxDataAreaPage (fromValue as)

instance ValueType NxViewPort where
  toValue (NxViewPort as) = toValue as
  fromValue as = NxViewPort (fromValue as)

instance ValueType SearchAttribute where
  toValue (SearchAttribute as) = toValue as
  fromValue as = SearchAttribute (fromValue as)

instance ValueType SearchableObject where
  toValue (SearchableObject as) = toValue as
  fromValue as = SearchableObject (fromValue as)

instance ValueType SearchObjectInternalOptions where
  toValue (SearchObjectInternalOptions as) = toValue as
  fromValue as = SearchObjectInternalOptions (fromValue as)

instance ValueType NxContinuousDataOptions where
  toValue (NxContinuousDataOptions as) = toValue as
  fromValue as = NxContinuousDataOptions (fromValue as)

instance ValueType NxTickCell where
  toValue (NxTickCell as) = toValue as
  fromValue as = NxTickCell (fromValue as)

instance ValueType NxAxisTicks where
  toValue (NxAxisTicks as) = toValue as
  fromValue as = NxAxisTicks (fromValue as)

instance ValueType NxAxisData where
  toValue (NxAxisData as) = toValue as
  fromValue as = NxAxisData (fromValue as)

instance ValueType NxGetBookmarkOptions where
  toValue (NxGetBookmarkOptions as) = toValue as
  fromValue as = NxGetBookmarkOptions (fromValue as)

instance ValueType NxTreeValue where
  toValue (NxTreeValue as) = toValue as
  fromValue as = NxTreeValue (fromValue as)

instance ValueType NxTreeNode where
  toValue (NxTreeNode as) = toValue as
  fromValue as = NxTreeNode (fromValue as)

instance ValueType NxPageTreeLevel where
  toValue (NxPageTreeLevel as) = toValue as
  fromValue as = NxPageTreeLevel (fromValue as)

instance ValueType NxPageTreeNode where
  toValue (NxPageTreeNode as) = toValue as
  fromValue as = NxPageTreeNode (fromValue as)

instance ValueType NxTreeDataOption where
  toValue (NxTreeDataOption as) = toValue as
  fromValue as = NxTreeDataOption (fromValue as)

instance ValueType GenericDimensionProperties where
  toValue (GenericDimensionProperties as) = toValue as
  fromValue as = GenericDimensionProperties (fromValue as)

instance ValueType GenericDimensionInfo where
  toValue (GenericDimensionInfo as) = toValue as
  fromValue as = GenericDimensionInfo (fromValue as)

instance ValueType GenericDimensionLayout where
  toValue (GenericDimensionLayout as) = toValue as
  fromValue as = GenericDimensionLayout (fromValue as)

instance ValueType NxBookmark where
  toValue (NxBookmark as) = toValue as
  fromValue as = NxBookmark (fromValue as)

instance ValueType GenericBookmarkProperties where
  toValue (GenericBookmarkProperties as) = toValue as
  fromValue as = GenericBookmarkProperties (fromValue as)

instance ValueType GenericBookmarkEntry where
  toValue (GenericBookmarkEntry as) = toValue as
  fromValue as = GenericBookmarkEntry (fromValue as)

instance ValueType GenericUserState where
  toValue (GenericUserState as) = toValue as
  fromValue as = GenericUserState (fromValue as)

instance ValueType LayoutFieldInfo where
  toValue (LayoutFieldInfo as) = toValue as
  fromValue as = LayoutFieldInfo (fromValue as)

instance ValueType GenericBookmarkLayout where
  toValue (GenericBookmarkLayout as) = toValue as
  fromValue as = GenericBookmarkLayout (fromValue as)

instance ValueType BookmarkFieldPage where
  toValue (BookmarkFieldPage as) = toValue as
  fromValue as = BookmarkFieldPage (fromValue as)

instance ValueType GenericVariableProperties where
  toValue (GenericVariableProperties as) = toValue as
  fromValue as = GenericVariableProperties (fromValue as)

instance ValueType GenericVariableLayout where
  toValue (GenericVariableLayout as) = toValue as
  fromValue as = GenericVariableLayout (fromValue as)

instance ValueType GenericVariableEntry where
  toValue (GenericVariableEntry as) = toValue as
  fromValue as = GenericVariableEntry (fromValue as)

instance ValueType GenericVariableEntryList where
  toValue (GenericVariableEntryList as) = toValue as
  fromValue as = GenericVariableEntryList (fromValue as)

instance ValueType GenericMeasureProperties where
  toValue (GenericMeasureProperties as) = toValue as
  fromValue as = GenericMeasureProperties (fromValue as)

instance ValueType GenericMeasureLayout where
  toValue (GenericMeasureLayout as) = toValue as
  fromValue as = GenericMeasureLayout (fromValue as)

instance ValueType NxFieldDerivedDefinition where
  toValue (NxFieldDerivedDefinition as) = toValue as
  fromValue as = NxFieldDerivedDefinition (fromValue as)

instance ValueType NxGroupDerivedDefinition where
  toValue (NxGroupDerivedDefinition as) = toValue as
  fromValue as = NxGroupDerivedDefinition (fromValue as)

instance ValueType NxDerivedDefinitionParameterDesc where
  toValue (NxDerivedDefinitionParameterDesc as) = toValue as
  fromValue as = NxDerivedDefinitionParameterDesc (fromValue as)

instance ValueType NxDerivedDefinition where
  toValue (NxDerivedDefinition as) = toValue as
  fromValue as = NxDerivedDefinition (fromValue as)

instance ValueType NxDerivedDefinitionParameter where
  toValue (NxDerivedDefinitionParameter as) = toValue as
  fromValue as = NxDerivedDefinitionParameter (fromValue as)

instance ValueType NxDerivedDefinitionData where
  toValue (NxDerivedDefinitionData as) = toValue as
  fromValue as = NxDerivedDefinitionData (fromValue as)

instance ValueType GenericDerivedDefinitionProperties where
  toValue (GenericDerivedDefinitionProperties as) = toValue as
  fromValue as = GenericDerivedDefinitionProperties (fromValue as)

instance ValueType GenericDerivedDefinitionEntry where
  toValue (GenericDerivedDefinitionEntry as) = toValue as
  fromValue as = GenericDerivedDefinitionEntry (fromValue as)

instance ValueType GenericDerivedDefinitionEntryList where
  toValue (GenericDerivedDefinitionEntryList as) = toValue as
  fromValue as = GenericDerivedDefinitionEntryList (fromValue as)

instance ValueType GenericDerivedFieldsProperties where
  toValue (GenericDerivedFieldsProperties as) = toValue as
  fromValue as = GenericDerivedFieldsProperties (fromValue as)

instance ValueType GenericDerivedFieldEntry where
  toValue (GenericDerivedFieldEntry as) = toValue as
  fromValue as = GenericDerivedFieldEntry (fromValue as)

instance ValueType GenericDerivedFieldEntryList where
  toValue (GenericDerivedFieldEntryList as) = toValue as
  fromValue as = GenericDerivedFieldEntryList (fromValue as)

instance ValueType NxDerivedField where
  toValue (NxDerivedField as) = toValue as
  fromValue as = NxDerivedField (fromValue as)

instance ValueType NxDerivedGroup where
  toValue (NxDerivedGroup as) = toValue as
  fromValue as = NxDerivedGroup (fromValue as)

instance ValueType NxDerivedFieldsData where
  toValue (NxDerivedFieldsData as) = toValue as
  fromValue as = NxDerivedFieldsData (fromValue as)

instance ValueType NxDerivedDefinitionInfo where
  toValue (NxDerivedDefinitionInfo as) = toValue as
  fromValue as = NxDerivedDefinitionInfo (fromValue as)

instance ValueType NxMatchingFieldInfo where
  toValue (NxMatchingFieldInfo as) = toValue as
  fromValue as = NxMatchingFieldInfo (fromValue as)

instance ValueType FieldScores where
  toValue (FieldScores as) = toValue as
  fromValue as = FieldScores (fromValue as)

instance ValueType AssociationScore where
  toValue (AssociationScore as) = toValue as
  fromValue as = AssociationScore (fromValue as)

instance ValueType DoReloadExParams where
  toValue (DoReloadExParams as) = toValue as
  fromValue as = DoReloadExParams (fromValue as)

instance ValueType DoReloadExResult where
  toValue (DoReloadExResult as) = toValue as
  fromValue as = DoReloadExResult (fromValue as)

instance ValueType NxNotification where
  toValue (NxNotification as) = toValue as
  fromValue as = NxNotification (fromValue as)

instance ValueType NxGetObjectOptions where
  toValue (NxGetObjectOptions as) = toValue as
  fromValue as = NxGetObjectOptions (fromValue as)

instance ValueType NxDownloadInfo where
  toValue (NxDownloadInfo as) = toValue as
  fromValue as = NxDownloadInfo (fromValue as)

instance ValueType NxDownloadOptions where
  toValue (NxDownloadOptions as) = toValue as
  fromValue as = NxDownloadOptions (fromValue as)

instance ValueType NxFieldProperties where
  toValue (NxFieldProperties as) = toValue as
  fromValue as = NxFieldProperties (fromValue as)

instance ValueType NxVariableProperties where
  toValue (NxVariableProperties as) = toValue as
  fromValue as = NxVariableProperties (fromValue as)

instance ValueType AppEntry where
  toValue (AppEntry as) = toValue as
  fromValue as = AppEntry (fromValue as)

instance ValueType NxFeatureConfiguration where
  toValue (NxFeatureConfiguration as) = toValue as
  fromValue as = NxFeatureConfiguration (fromValue as)

instance ValueType NxServiceConfiguration where
  toValue (NxServiceConfiguration as) = toValue as
  fromValue as = NxServiceConfiguration (fromValue as)

instance ValueType NxSystemProperties where
  toValue (NxSystemProperties as) = toValue as
  fromValue as = NxSystemProperties (fromValue as)

instance ValueType NxConfigurationInfo where
  toValue (NxConfigurationInfo as) = toValue as
  fromValue as = NxConfigurationInfo (fromValue as)

instance ValueType NxEngineVersion where
  toValue (NxEngineVersion as) = toValue as
  fromValue as = NxEngineVersion (fromValue as)

instance ValueType JSONWebTokenHeader where
  toValue (JSONWebTokenHeader as) = toValue as
  fromValue as = JSONWebTokenHeader (fromValue as)

instance ValueType PersistedObjectMeta where
  toValue (PersistedObjectMeta as) = toValue as
  fromValue as = PersistedObjectMeta (fromValue as)

instance ValueType ObjectInterface where
  toValue (ObjectInterface as) = toValue as
  fromValue as = ObjectInterface (fromValue as)

instance HasQPos TableViewTableWinSaveInfo Rect
instance HasQCaption TableViewTableWinSaveInfo String
instance HasQPos TableViewConnectionPointSaveInfo Point
instance HasQFields TableViewConnectionPointSaveInfo [String]
instance HasQPos TableViewBroomPointSaveInfo Point
instance HasQTable TableViewBroomPointSaveInfo String
instance HasQFields TableViewBroomPointSaveInfo [String]
instance HasQTables TableViewSaveInfo [TableViewTableWinSaveInfo]
instance HasQBroomPoints TableViewSaveInfo [TableViewBroomPointSaveInfo]
instance HasQConnectionPoints TableViewSaveInfo [TableViewConnectionPointSaveInfo]
instance HasQZoomFactor TableViewSaveInfo Float
instance HasQTextSearch SelectInfo String
instance HasQRangeLo SelectInfo Float
instance HasQRangeHi SelectInfo Float
instance HasQNumberFormat SelectInfo FieldAttributes
instance HasQRangeInfo SelectInfo [RangeSelectInfo]
instance HasQSoftLock SelectInfo Bool
instance HasQContinuousRangeInfo SelectInfo [Range]
instance HasQName FieldDefEx String
instance HasQType FieldDefEx FieldType
instance HasQDefinitionName DerivedFieldsInTableData String
instance HasQTags DerivedFieldsInTableData [String]
instance HasQActive DerivedFieldsInTableData Bool
instance HasQInternalView TableViewCtlSaveInfo TableViewSaveInfo
instance HasQSourceView TableViewCtlSaveInfo TableViewSaveInfo
instance HasQMessageCode ProgressMessage Int
instance HasQMessageParameters ProgressMessage [String]
instance HasQx Point Int
instance HasQy Point Int
instance HasQName FieldInTableData String
instance HasQOriginalFields FieldInTableData [String]
instance HasQPresent FieldInTableData Bool
instance HasQHasNull FieldInTableData Bool
instance HasQHasWild FieldInTableData Bool
instance HasQHasDuplicates FieldInTableData Bool
instance HasQIsSynthetic FieldInTableData Bool
instance HasQInformationDensity FieldInTableData Float
instance HasQnNonNulls FieldInTableData Integer
instance HasQnRows FieldInTableData Integer
instance HasQSubsetRatio FieldInTableData Float
instance HasQnTotalDistinctValues FieldInTableData Int
instance HasQnPresentDistinctValues FieldInTableData Int
instance HasQKeyType FieldInTableData KeyType
instance HasQComment FieldInTableData String
instance HasQTags FieldInTableData [String]
instance HasQDerivedFields FieldInTableData [DerivedFieldsInTableData]
instance HasQIsFieldOnTheFly FieldInTableData Bool
instance HasQReadableName FieldInTableData String
instance HasQErrorString ErrorData String
instance HasQLineEnd ErrorData String
instance HasQLine ErrorData String
instance HasQErrorDataCode ErrorData ErrorDataCode
instance HasQMessage ErrorData ProgressMessage
instance HasQDayNames CalendarStrings [String]
instance HasQMonthNames CalendarStrings [String]
instance HasQLongDayNames CalendarStrings [String]
instance HasQLongMonthNames CalendarStrings [String]
instance HasQDef BookmarkFieldItem FieldDefEx
instance HasQLocked BookmarkFieldItem Bool
instance HasQSelectInfo BookmarkFieldItem SelectInfo
instance HasQValues BookmarkFieldItem [FieldValue]
instance HasQExcludedValues BookmarkFieldItem [FieldValue]
instance HasQAndMode BookmarkFieldItem Bool
instance HasQOneAndOnlyOne BookmarkFieldItem Bool
instance HasQTag TextMacro String
instance HasQRefSeqNo TextMacro Int
instance HasQSetSeqNo TextMacro Int
instance HasQDisplayString TextMacro String
instance HasQIsSystem TextMacro Bool
instance HasQIsReserved TextMacro Bool
instance HasQPos TableViewDlgSaveInfo Rect
instance HasQCtlInfo TableViewDlgSaveInfo TableViewCtlSaveInfo
instance HasQMode TableViewDlgSaveInfo Int
instance HasQValue TableRow [FieldValue]
instance HasQName TableRecord String
instance HasQLoose TableRecord Bool
instance HasQNoOfRows TableRecord Integer
instance HasQFields TableRecord [FieldInTableData]
instance HasQPos TableRecord Point
instance HasQComment TableRecord String
instance HasQIsDirectDiscovery TableRecord Bool
instance HasQIsSynthetic TableRecord Bool
instance HasQKeyFields SourceKeyRecord [String]
instance HasQTables SourceKeyRecord [String]
instance HasQSortByState SortCriteria Char
instance HasQSortByFrequency SortCriteria Char
instance HasQSortByNumeric SortCriteria Char
instance HasQSortByAscii SortCriteria Char
instance HasQSortByLoadOrder SortCriteria Char
instance HasQSortByExpression SortCriteria Char
instance HasQExpression SortCriteria ValueExpr
instance HasQSortByGreyness SortCriteria Char
instance HasQcx Size Int
instance HasQcy Size Int
instance HasQFieldOrColumn SampleResult FieldOrColumn
instance HasQValues SampleResult [FieldValue]
instance HasQLeft Rect Int
instance HasQTop Rect Int
instance HasQWidth Rect Int
instance HasQHeight Rect Int
instance HasQRangeLo RangeSelectInfo Float
instance HasQRangeHi RangeSelectInfo Float
instance HasQMeasure RangeSelectInfo String
instance HasQMin Range Float
instance HasQMax Range Float
instance HasQMinInclEq Range Bool
instance HasQMaxInclEq Range Bool
instance HasQStarted ProgressData Bool
instance HasQFinished ProgressData Bool
instance HasQCompleted ProgressData Integer
instance HasQTotal ProgressData Integer
instance HasQKB ProgressData Int
instance HasQMillisecs ProgressData Int
instance HasQUserInteractionWanted ProgressData Bool
instance HasQPersistentProgress ProgressData String
instance HasQTransientProgress ProgressData String
instance HasQErrorData ProgressData [ErrorData]
instance HasQPersistentProgressMessages ProgressData [ProgressMessage]
instance HasQTransientProgressMessage ProgressData ProgressMessage
instance HasQOtherMode OtherTotalSpecProp OtherMode
instance HasQOtherCounted OtherTotalSpecProp ValueExpr
instance HasQOtherLimit OtherTotalSpecProp ValueExpr
instance HasQOtherLimitMode OtherTotalSpecProp OtherLimitMode
instance HasQSuppressOther OtherTotalSpecProp Bool
instance HasQForceBadValueKeeping OtherTotalSpecProp Bool
instance HasQApplyEvenWhenPossiblyWrongResult OtherTotalSpecProp Bool
instance HasQGlobalOtherGrouping OtherTotalSpecProp Bool
instance HasQOtherCollapseInnerDimensions OtherTotalSpecProp Bool
instance HasQOtherSortMode OtherTotalSpecProp OtherSortMode
instance HasQTotalMode OtherTotalSpecProp TotalMode
instance HasQReferencedExpression OtherTotalSpecProp StringExpr
instance HasQDecimalSep LocaleInfo String
instance HasQThousandSep LocaleInfo String
instance HasQListSep LocaleInfo String
instance HasQMoneyDecimalSep LocaleInfo String
instance HasQMoneyThousandSep LocaleInfo String
instance HasQCurrentYear LocaleInfo Int
instance HasQMoneyFmt LocaleInfo String
instance HasQTimeFmt LocaleInfo String
instance HasQDateFmt LocaleInfo String
instance HasQTimestampFmt LocaleInfo String
instance HasQCalendarStrings LocaleInfo CalendarStrings
instance HasQFirstWeekDay LocaleInfo Int
instance HasQBrokenWeeks LocaleInfo Bool
instance HasQReferenceDay LocaleInfo Int
instance HasQFirstMonthOfYear LocaleInfo Int
instance HasQCollation LocaleInfo String
instance HasQNumericalAbbreviation LocaleInfo String
instance HasQDiscriminator LineageInfo String
instance HasQStatement LineageInfo String
instance HasQType InteractDef InteractType
instance HasQTitle InteractDef String
instance HasQMsg InteractDef String
instance HasQButtons InteractDef Int
instance HasQLine InteractDef String
instance HasQOldLineNr InteractDef Int
instance HasQNewLineNr InteractDef Int
instance HasQPath InteractDef String
instance HasQHidden InteractDef Bool
instance HasQResult InteractDef Int
instance HasQInput InteractDef String
instance HasQText FieldValue String
instance HasQIsNumeric FieldValue Bool
instance HasQNumber FieldValue Float
instance HasQFieldName FieldOrColumn String
instance HasQTableName FieldOrColumn String
instance HasQInternalNumber FieldDescription Int
instance HasQName FieldDescription String
instance HasQSrcTables FieldDescription [String]
instance HasQIsSystem FieldDescription Bool
instance HasQIsHidden FieldDescription Bool
instance HasQIsSemantic FieldDescription Bool
instance HasQDistinctOnly FieldDescription Bool
instance HasQCardinal FieldDescription Int
instance HasQTotalCount FieldDescription Integer
instance HasQPossibleCount_OBSOLETE FieldDescription Int
instance HasQHasInfo_OBSOLETE FieldDescription Bool
instance HasQIsLocked FieldDescription Bool
instance HasQAlwaysOneSelected FieldDescription Bool
instance HasQAndMode FieldDescription Bool
instance HasQIsNumeric FieldDescription Bool
instance HasQComment FieldDescription String
instance HasQTags FieldDescription [String]
instance HasQIsDefinitionOnly FieldDescription Bool
instance HasQByteSize FieldDescription Integer
instance HasQType FieldAttributes FieldAttrType
instance HasQnDec FieldAttributes Int
instance HasQUseThou FieldAttributes Int
instance HasQFmt FieldAttributes String
instance HasQDec FieldAttributes String
instance HasQThou FieldAttributes String
instance HasQbufferName EditorBreakpoint String
instance HasQlineIx EditorBreakpoint Int
instance HasQEnabled EditorBreakpoint Bool
instance HasQDocName DocListEntry String
instance HasQConnectedUsers DocListEntry Int
instance HasQFileTime DocListEntry Float
instance HasQFileSize DocListEntry Float
instance HasQDocId DocListEntry String
instance HasQMeta DocListEntry NxMeta
instance HasQLastReloadTime DocListEntry String
instance HasQReadOnly DocListEntry Bool
instance HasQTitle DocListEntry String
instance HasQThumbnail DocListEntry StaticContentUrl
instance HasQCharPos CharRange Int
instance HasQCharCount CharRange Int
instance HasQName BookmarkVariableItem String
instance HasQValue BookmarkVariableItem FieldValue
instance HasQStateName AlternateStateData String
instance HasQFieldItems AlternateStateData [BookmarkFieldItem]
instance HasQString AlfaNumString String
instance HasQIsNum AlfaNumString Bool
instance HasQErrorCode NxLayoutErrors Int
instance HasQId NxInfo String
instance HasQType NxInfo String
instance HasQName NxMeta String
instance HasQErrorCode NxValidationError Int
instance HasQContext NxValidationError String
instance HasQExtendedMessage NxValidationError String
instance HasQLocked NxStateCounts Int
instance HasQSelected NxStateCounts Int
instance HasQOption NxStateCounts Int
instance HasQDeselected NxStateCounts Int
instance HasQAlternative NxStateCounts Int
instance HasQExcluded NxStateCounts Int
instance HasQSelectedExcluded NxStateCounts Int
instance HasQLockedExcluded NxStateCounts Int
instance HasQLeft NxPage Int
instance HasQTop NxPage Int
instance HasQWidth NxPage Int
instance HasQHeight NxPage Int
instance HasQFrom NxRange Int
instance HasQCount NxRange Int
instance HasQDerivedFieldLists NxDerivedFieldDescriptionList [NxDerivedFieldsData]
instance HasQIsSemantic NxFieldDescription Bool
instance HasQIsHidden NxFieldDescription Bool
instance HasQIsSystem NxFieldDescription Bool
instance HasQAndMode NxFieldDescription Bool
instance HasQName NxFieldDescription String
instance HasQCardinal NxFieldDescription Int
instance HasQTags NxFieldDescription [String]
instance HasQIsDefinitionOnly NxFieldDescription Bool
-- instance HasQDerivedFieldData NxFieldDescription ?
instance HasQIsDetail NxFieldDescription Bool
instance HasQIsImplicit NxFieldDescription Bool
instance HasQReadableName NxFieldDescription String
instance HasQName NxFieldDescriptor String
instance HasQExpr NxFieldDescriptor String
instance HasQUrl StaticContentUrlDef String
instance HasQUrl StaticContentUrl String
instance HasQTitle NxAppProperties String
instance HasQLastReloadTime NxAppProperties String
instance HasQMigrationHash NxAppProperties String
instance HasQSavedInProductVersion NxAppProperties String
instance HasQThumbnail NxAppProperties StaticContentUrlDef
instance HasQTitle NxAppLayout String
instance HasQFileName NxAppLayout String
instance HasQLastReloadTime NxAppLayout String
instance HasQModified NxAppLayout Bool
instance HasQHasScript NxAppLayout Bool
instance HasQStateNames NxAppLayout [String]
instance HasQMeta NxAppLayout NxMeta
instance HasQLocaleInfo NxAppLayout LocaleInfo
instance HasQHasData NxAppLayout Bool
instance HasQReadOnly NxAppLayout Bool
instance HasQIsOpenedWithoutData NxAppLayout Bool
instance HasQThumbnail NxAppLayout StaticContentUrl
instance HasQGrouping NxLibraryDimensionDef NxGrpType
instance HasQFieldDefs NxLibraryDimensionDef [String]
instance HasQFieldLabels NxLibraryDimensionDef [String]
instance HasQLabelExpression NxLibraryDimensionDef String
instance HasQGrouping NxLibraryDimension NxGrpType
instance HasQFieldDefs NxLibraryDimension [String]
instance HasQFieldLabels NxLibraryDimension [String]
instance HasQLabelExpression NxLibraryDimension String
instance HasQGrouping NxInlineDimensionDef NxGrpType
instance HasQFieldDefs NxInlineDimensionDef [String]
instance HasQFieldLabels NxInlineDimensionDef [String]
instance HasQSortCriterias NxInlineDimensionDef [SortCriteria]
instance HasQNumberPresentations NxInlineDimensionDef [FieldAttributes]
instance HasQReverseSort NxInlineDimensionDef Bool
instance HasQActiveField NxInlineDimensionDef Int
instance HasQLabelExpression NxInlineDimensionDef String
instance HasQCond NxCalcCond ValueExpr
instance HasQMsg NxCalcCond StringExpr
instance HasQLibraryId NxDimension String
instance HasQDef NxDimension NxInlineDimensionDef
instance HasQNullSuppression NxDimension Bool
instance HasQIncludeElemValue NxDimension Bool
instance HasQOtherTotalSpec NxDimension OtherTotalSpecProp
instance HasQShowTotal NxDimension Bool
instance HasQShowAll NxDimension Bool
instance HasQOtherLabel NxDimension StringExpr
instance HasQTotalLabel NxDimension StringExpr
instance HasQCalcCond NxDimension ValueExpr
instance HasQAttributeExpressions NxDimension [NxAttrExprDef]
instance HasQAttributeDimensions NxDimension [NxAttrDimDef]
instance HasQCalcCondition NxDimension NxCalcCond
instance HasQLibraryId NxTreeDimensionDef String
instance HasQDef NxTreeDimensionDef NxInlineDimensionDef
instance HasQValueExprs NxTreeDimensionDef [NxMeasure]
instance HasQNullSuppression NxTreeDimensionDef Bool
instance HasQOtherTotalSpec NxTreeDimensionDef OtherTotalSpecProp
instance HasQShowAll NxTreeDimensionDef Bool
instance HasQOtherLabel NxTreeDimensionDef StringExpr
instance HasQTotalLabel NxTreeDimensionDef StringExpr
instance HasQCalcCondition NxTreeDimensionDef NxCalcCond
instance HasQAttributeExpressions NxTreeDimensionDef [NxAttrExprDef]
instance HasQAttributeDimensions NxTreeDimensionDef [NxAttrDimDef]
instance HasQLabel NxLibraryMeasureDef String
instance HasQDef NxLibraryMeasureDef String
instance HasQGrouping NxLibraryMeasureDef NxGrpType
instance HasQExpressions NxLibraryMeasureDef [String]
instance HasQActiveExpression NxLibraryMeasureDef Int
instance HasQLabelExpression NxLibraryMeasureDef String
instance HasQLabel NxLibraryMeasure String
instance HasQDef NxLibraryMeasure String
instance HasQGrouping NxLibraryMeasure NxGrpType
instance HasQExpressions NxLibraryMeasure [String]
instance HasQActiveExpression NxLibraryMeasure Int
instance HasQLabelExpression NxLibraryMeasure String
instance HasQLabel NxInlineMeasureDef String
instance HasQDescription NxInlineMeasureDef String
instance HasQTags NxInlineMeasureDef [String]
instance HasQGrouping NxInlineMeasureDef NxGrpType
instance HasQDef NxInlineMeasureDef String
instance HasQNumFormat NxInlineMeasureDef FieldAttributes
instance HasQRelative NxInlineMeasureDef Bool
instance HasQBrutalSum NxInlineMeasureDef Bool
instance HasQAggrFunc NxInlineMeasureDef String
instance HasQAccumulate NxInlineMeasureDef Int
instance HasQReverseSort NxInlineMeasureDef Bool
instance HasQActiveExpression NxInlineMeasureDef Int
instance HasQExpressions NxInlineMeasureDef [String]
instance HasQLabelExpression NxInlineMeasureDef String
instance HasQExpression NxAttrExprDef String
instance HasQLibraryId NxAttrExprDef String
instance HasQAttribute NxAttrExprDef Bool
instance HasQMin NxAttrExprInfo Float
instance HasQMax NxAttrExprInfo Float
instance HasQFallbackTitle NxAttrExprInfo String
instance HasQMinText NxAttrExprInfo String
instance HasQMaxText NxAttrExprInfo String
instance HasQDef NxAttrDimDef String
instance HasQLibraryId NxAttrDimDef String
instance HasQSortBy NxAttrDimDef SortCriteria
instance HasQAttribute NxAttrDimDef Bool
instance HasQCardinal NxAttrDimInfo Int
instance HasQSize NxAttrDimInfo Size
instance HasQFallbackTitle NxAttrDimInfo String
instance HasQLocked NxAttrDimInfo Bool
-- instance HasQError NxAttrDimInfo ?
instance HasQIsCalculated NxAttrDimInfo Bool
instance HasQLibraryId NxMeasure String
instance HasQDef NxMeasure NxInlineMeasureDef
instance HasQSortBy NxMeasure SortCriteria
instance HasQAttributeExpressions NxMeasure [NxAttrExprDef]
instance HasQAttributeDimensions NxMeasure [NxAttrDimDef]
instance HasQCalcCond NxMeasure ValueExpr
instance HasQCalcCondition NxMeasure NxCalcCond
instance HasQRanges NxHighlightRanges [CharRange]
instance HasQText NxSimpleValue String
instance HasQNum NxSimpleValue Float
instance HasQText NxSimpleDimValue String
instance HasQElemNo NxSimpleDimValue Int
instance HasQValues NxAttributeExpressionValues [NxSimpleValue]
instance HasQValues NxAttributeDimValues [NxSimpleDimValue]
instance HasQText NxCell String
instance HasQNum NxCell Float
instance HasQElemNumber NxCell Int
instance HasQState NxCell StateEnumType
instance HasQIsEmpty NxCell Bool
instance HasQIsTotalCell NxCell Bool
instance HasQIsOtherCell NxCell Bool
instance HasQFrequency NxCell String
-- instance HasQHighlightRanges NxCell ?
-- instance HasQAttrExps NxCell ?
-- instance HasQAttrDims NxCell ?
instance HasQIsNull NxCell Bool
instance HasQUp NxGroupTail Int
instance HasQDown NxGroupTail Int
instance HasQMatrix NxDataPage [NxCellRows]
instance HasQTails NxDataPage [NxGroupTail]
instance HasQArea NxDataPage Rect
instance HasQIsReduced NxDataPage Bool
instance HasQText NxPivotDimensionCell String
instance HasQElemNo NxPivotDimensionCell Int
instance HasQValue NxPivotDimensionCell Float
instance HasQCanExpand NxPivotDimensionCell Bool
instance HasQCanCollapse NxPivotDimensionCell Bool
instance HasQType NxPivotDimensionCell NxDimCellType
instance HasQUp NxPivotDimensionCell Int
instance HasQDown NxPivotDimensionCell Int
instance HasQSubNodes NxPivotDimensionCell [NxPivotDimensionCell]
-- instance HasQAttrExps NxPivotDimensionCell ?
-- instance HasQAttrDims NxPivotDimensionCell ?
instance HasQText NxStackedPivotCell String
instance HasQElemNo NxStackedPivotCell Int
instance HasQValue NxStackedPivotCell Float
instance HasQCanExpand NxStackedPivotCell Bool
instance HasQCanCollapse NxStackedPivotCell Bool
instance HasQType NxStackedPivotCell NxDimCellType
instance HasQMaxPos NxStackedPivotCell Float
instance HasQMinNeg NxStackedPivotCell Float
instance HasQUp NxStackedPivotCell Int
instance HasQDown NxStackedPivotCell Int
instance HasQRow NxStackedPivotCell Int
instance HasQSubNodes NxStackedPivotCell [NxStackedPivotCell]
-- instance HasQAttrExps NxStackedPivotCell ?
-- instance HasQAttrDims NxStackedPivotCell ?
instance HasQLabel NxPivotValuePoint String
instance HasQText NxPivotValuePoint String
instance HasQNum NxPivotValuePoint Float
instance HasQType NxPivotValuePoint NxDimCellType
-- instance HasQAttrExps NxPivotValuePoint ?
-- instance HasQAttrDims NxPivotValuePoint ?
instance HasQLeft NxPivotPage [NxPivotDimensionCell]
instance HasQTop NxPivotPage [NxPivotDimensionCell]
instance HasQData NxPivotPage [ArrayOfNxValuePoint]
instance HasQArea NxPivotPage Rect
instance HasQData NxStackPage [NxStackedPivotCell]
instance HasQArea NxStackPage Rect
instance HasQValue JsonProperty String
instance HasQInfo NxContainerEntry NxInfo
-- instance HasQMeta NxContainerEntry ?
instance HasQData NxContainerEntry JsonObject
instance HasQCardinal NxCardinalities Int
instance HasQHypercubeCardinal NxCardinalities Int
instance HasQFallbackTitle NxDimensionInfo String
instance HasQApprMaxGlyphCount NxDimensionInfo Int
instance HasQCardinal NxDimensionInfo Int
instance HasQLocked NxDimensionInfo Bool
instance HasQSortIndicator NxDimensionInfo NxSortIndicatorType
instance HasQGroupFallbackTitles NxDimensionInfo [String]
instance HasQGroupPos NxDimensionInfo Int
instance HasQStateCounts NxDimensionInfo NxStateCounts
instance HasQTags NxDimensionInfo [String]
-- instance HasQError NxDimensionInfo ?
instance HasQDimensionType NxDimensionInfo NxDimensionType
instance HasQReverseSort NxDimensionInfo Bool
instance HasQGrouping NxDimensionInfo NxGrpType
instance HasQIsSemantic NxDimensionInfo Bool
instance HasQNumFormat NxDimensionInfo FieldAttributes
instance HasQIsAutoFormat NxDimensionInfo Bool
instance HasQGroupFieldDefs NxDimensionInfo [String]
instance HasQMin NxDimensionInfo Float
instance HasQMax NxDimensionInfo Float
instance HasQContinuousAxes NxDimensionInfo Bool
instance HasQIsCyclic NxDimensionInfo Bool
instance HasQDerivedField NxDimensionInfo Bool
instance HasQAttrExprInfo NxDimensionInfo [NxAttrExprInfo]
instance HasQAttrDimInfo NxDimensionInfo [NxAttrDimInfo]
instance HasQCalcCondMsg NxDimensionInfo String
instance HasQIsCalculated NxDimensionInfo Bool
instance HasQIsOneAndOnlyOne NxDimensionInfo Bool
instance HasQCardinalities NxDimensionInfo NxCardinalities
instance HasQFallbackTitle NxTreeDimensionInfo String
instance HasQApprMaxGlyphCount NxTreeDimensionInfo Int
instance HasQCardinal NxTreeDimensionInfo Int
instance HasQLocked NxTreeDimensionInfo Bool
instance HasQSortIndicator NxTreeDimensionInfo NxSortIndicatorType
instance HasQGroupFallbackTitles NxTreeDimensionInfo [String]
instance HasQGroupPos NxTreeDimensionInfo Int
instance HasQStateCounts NxTreeDimensionInfo NxStateCounts
instance HasQTags NxTreeDimensionInfo [String]
-- instance HasQError NxTreeDimensionInfo ?
instance HasQDimensionType NxTreeDimensionInfo NxDimensionType
instance HasQReverseSort NxTreeDimensionInfo Bool
instance HasQGrouping NxTreeDimensionInfo NxGrpType
instance HasQIsSemantic NxTreeDimensionInfo Bool
instance HasQNumFormat NxTreeDimensionInfo FieldAttributes
instance HasQIsAutoFormat NxTreeDimensionInfo Bool
instance HasQGroupFieldDefs NxTreeDimensionInfo [String]
instance HasQMin NxTreeDimensionInfo Float
instance HasQMax NxTreeDimensionInfo Float
instance HasQContinuousAxes NxTreeDimensionInfo Bool
instance HasQIsCyclic NxTreeDimensionInfo Bool
instance HasQDerivedField NxTreeDimensionInfo Bool
instance HasQMeasureInfo NxTreeDimensionInfo [NxMeasureInfo]
instance HasQAttrExprInfo NxTreeDimensionInfo [NxAttrExprInfo]
instance HasQAttrDimInfo NxTreeDimensionInfo [NxAttrDimInfo]
instance HasQCalcCondMsg NxTreeDimensionInfo String
instance HasQIsCalculated NxTreeDimensionInfo Bool
instance HasQIsOneAndOnlyOne NxTreeDimensionInfo Bool
instance HasQCardinalities NxTreeDimensionInfo NxCardinalities
instance HasQFallbackTitle NxMeasureInfo String
instance HasQApprMaxGlyphCount NxMeasureInfo Int
instance HasQCardinal NxMeasureInfo Int
instance HasQSortIndicator NxMeasureInfo NxSortIndicatorType
instance HasQNumFormat NxMeasureInfo FieldAttributes
instance HasQMin NxMeasureInfo Float
instance HasQMax NxMeasureInfo Float
-- instance HasQError NxMeasureInfo ?
instance HasQReverseSort NxMeasureInfo Bool
instance HasQIsAutoFormat NxMeasureInfo Bool
instance HasQAttrExprInfo NxMeasureInfo [NxAttrExprInfo]
instance HasQAttrDimInfo NxMeasureInfo [NxAttrDimInfo]
instance HasQCalcCondMsg NxMeasureInfo String
instance HasQScript AppScriptObject String
instance HasQBreakpointList AppScriptObject [EditorBreakpoint]
instance HasQFavoriteVariables AppScriptObject [String]
instance HasQScript AppScript String
-- instance HasQMeta AppScript ?
instance HasQName NxFieldSelectionInfo String
instance HasQFieldSelectionMode NxFieldSelectionInfo NxFieldSelectionMode
instance HasQTotal NxCurrentSelectionItem Int
instance HasQIsNum NxCurrentSelectionItem Bool
instance HasQField NxCurrentSelectionItem String
instance HasQLocked NxCurrentSelectionItem Bool
instance HasQOneAndOnlyOne NxCurrentSelectionItem Bool
instance HasQTextSearch NxCurrentSelectionItem String
instance HasQSelectedCount NxCurrentSelectionItem Int
instance HasQSelected NxCurrentSelectionItem String
instance HasQRangeInfo NxCurrentSelectionItem [RangeSelectInfo]
instance HasQSortIndex NxCurrentSelectionItem Int
instance HasQStateCounts NxCurrentSelectionItem NxStateCounts
instance HasQSelectedFieldSelectionInfo NxCurrentSelectionItem [NxFieldSelectionInfo]
instance HasQNotSelectedFieldSelectionInfo NxCurrentSelectionItem [NxFieldSelectionInfo]
instance HasQSelectionThreshold NxCurrentSelectionItem Int
instance HasQReadableName NxCurrentSelectionItem String
instance HasQIsHidden NxCurrentSelectionItem Bool
instance HasQRange NxRangeSelectInfo Range
instance HasQMeasureIx NxRangeSelectInfo Int
instance HasQRanges NxMultiRangeSelectInfo [NxRangeSelectInfo]
instance HasQColumnsToSelect NxMultiRangeSelectInfo [Int]
instance HasQRange NxTreeRangeSelectInfo Range
instance HasQMeasureIx NxTreeRangeSelectInfo Int
instance HasQDimensionIx NxTreeRangeSelectInfo Int
instance HasQRanges NxTreeMultiRangeSelectInfo [NxTreeRangeSelectInfo]
instance HasQRange NxContinuousRangeSelectInfo Range
instance HasQDimIx NxContinuousRangeSelectInfo Int
instance HasQDisplayNumberOfRows NxAutoSortByStateDef Int
instance HasQInfo NxLocatedExpression NxInfo
instance HasQTags NxLocatedExpression [String]
instance HasQLocation NxLocatedExpression String
instance HasQExpression NxLocatedExpression String
instance HasQParentPath NxLocatedExpression String
instance HasQExpr NxListObjectExpressionDef String
instance HasQLibraryId NxListObjectExpressionDef String
instance HasQExpr NxListObjectExpression String
-- instance HasQError NxListObjectExpression ?
instance HasQExpr StringExpression String
instance HasQExpr ValueExpression String
instance HasQStateName ListObjectDef String
instance HasQLibraryId ListObjectDef String
instance HasQDef ListObjectDef NxInlineDimensionDef
-- instance HasQAutoSortByState ListObjectDef ?
instance HasQFrequencyMode ListObjectDef NxFrequencyMode
instance HasQShowAlternatives ListObjectDef Bool
instance HasQInitialDataFetch ListObjectDef [NxPage]
instance HasQExpressions ListObjectDef [NxListObjectExpressionDef]
instance HasQStateName ListObject String
instance HasQSize ListObject Size
-- instance HasQError ListObject ?
instance HasQDimensionInfo ListObject NxDimensionInfo
instance HasQExpressions ListObject [NxListObjectExpression]
instance HasQDataPages ListObject [NxDataPage]
instance HasQLat NxGeoCoordinate Float
instance HasQLon NxGeoCoordinate Float
instance HasQTop NxGeoBoundingBox Float
instance HasQLeft NxGeoBoundingBox Float
instance HasQBottom NxGeoBoundingBox Float
instance HasQRight NxGeoBoundingBox Float
instance HasQx NxCellPosition Int
instance HasQy NxCellPosition Int
instance HasQDimIx NxCellMark Int
instance HasQElemNo NxCellMark Int
instance HasQLeft NxExpansionPath Bool
instance HasQPositions NxExpansionPath [NxCellMark]
instance HasQDef NxExpressionCubeExpr String
instance HasQNumFormat NxExpressionCubeExpr FieldAttributes
instance HasQIf NxExpressionCubeDef ValueExpr
instance HasQExpression NxExpressionCubeDef [NxExpressionCubeExpr]
instance HasQStateName HyperCubeDef String
instance HasQDimensions HyperCubeDef [NxDimension]
instance HasQMeasures HyperCubeDef [NxMeasure]
instance HasQInterColumnSortOrder HyperCubeDef [Int]
instance HasQSuppressZero HyperCubeDef Bool
instance HasQSuppressMissing HyperCubeDef Bool
instance HasQInitialDataFetch HyperCubeDef [NxPage]
instance HasQReductionMode HyperCubeDef NxDataReductionMode
instance HasQMode HyperCubeDef NxHypercubeMode
instance HasQPseudoDimPos HyperCubeDef Int
instance HasQNoOfLeftDims HyperCubeDef Int
instance HasQAlwaysFullyExpanded HyperCubeDef Bool
instance HasQMaxStackedCells HyperCubeDef Int
instance HasQPopulateMissing HyperCubeDef Bool
instance HasQShowTotalsAbove HyperCubeDef Bool
instance HasQIndentMode HyperCubeDef Bool
instance HasQCalcCond HyperCubeDef ValueExpr
instance HasQSortbyYValue HyperCubeDef Char
instance HasQTitle HyperCubeDef StringExpr
instance HasQCalcCondition HyperCubeDef NxCalcCond
instance HasQColumnOrder HyperCubeDef [Int]
instance HasQStateName HyperCube String
instance HasQSize HyperCube Size
-- instance HasQError HyperCube ?
instance HasQDimensionInfo HyperCube [NxDimensionInfo]
instance HasQMeasureInfo HyperCube [NxMeasureInfo]
instance HasQEffectiveInterColumnSortOrder HyperCube [Int]
instance HasQGrandTotalRow HyperCube [NxCell]
instance HasQDataPages HyperCube [NxDataPage]
instance HasQPivotDataPages HyperCube [NxPivotPage]
instance HasQStackedDataPages HyperCube [NxStackPage]
instance HasQMode HyperCube NxHypercubeMode
instance HasQNoOfLeftDims HyperCube Int
instance HasQIndentMode HyperCube Bool
-- instance HasQLastExpandedPos HyperCube ?
instance HasQHasOtherValues HyperCube Bool
instance HasQTitle HyperCube String
instance HasQTreeNodesOnDim HyperCube [Int]
instance HasQCalcCondMsg HyperCube String
instance HasQColumnOrder HyperCube [Int]
instance HasQStateName TreeDataDef String
instance HasQDimensions TreeDataDef [NxTreeDimensionDef]
instance HasQInterColumnSortOrder TreeDataDef [Int]
instance HasQSuppressZero TreeDataDef Bool
instance HasQSuppressMissing TreeDataDef Bool
instance HasQOpenFullyExpanded TreeDataDef Bool
instance HasQPopulateMissing TreeDataDef Bool
instance HasQCalcCondition TreeDataDef NxCalcCond
instance HasQTitle TreeDataDef StringExpr
instance HasQInitialDataFetch TreeDataDef [NxTreeDataOption]
instance HasQStateName TreeData String
instance HasQNodesOnDim TreeData [Int]
-- instance HasQError TreeData ?
instance HasQDimensionInfo TreeData [NxTreeDimensionInfo]
instance HasQEffectiveInterColumnSortOrder TreeData [Int]
instance HasQHasOtherValues TreeData Bool
instance HasQTitle TreeData String
-- instance HasQLastExpandedPos TreeData ?
instance HasQCalcCondMsg TreeData String
instance HasQTreeDataPages TreeData [NxTreeNode]
instance HasQData ChildListDef JsonObject
instance HasQItems ChildList [NxContainerEntry]
instance HasQType AppObjectListDef String
instance HasQData AppObjectListDef JsonObject
instance HasQItems AppObjectList [NxContainerEntry]
instance HasQItems ExtensionList [String]
instance HasQUrlDef MediaListItem String
instance HasQUrl MediaListItem String
instance HasQItems MediaList [MediaListItem]
instance HasQName ContentLibraryListItem String
instance HasQAppSpecific ContentLibraryListItem Bool
-- instance HasQMeta ContentLibraryListItem ?
instance HasQItems ContentLibraryList [ContentLibraryListItem]
instance HasQUrlDef StaticContentListItem String
instance HasQUrl StaticContentListItem String
instance HasQItems StaticContentList [StaticContentListItem]
instance HasQType VariableListDef String
instance HasQShowReserved VariableListDef Bool
instance HasQShowConfig VariableListDef Bool
instance HasQData VariableListDef JsonObject
instance HasQShowSession VariableListDef Bool
instance HasQName NxVariableListItem String
instance HasQDescription NxVariableListItem String
instance HasQDefinition NxVariableListItem String
instance HasQIsConfig NxVariableListItem Bool
instance HasQIsReserved NxVariableListItem Bool
-- instance HasQMeta NxVariableListItem ?
instance HasQInfo NxVariableListItem NxInfo
instance HasQData NxVariableListItem JsonObject
instance HasQIsScriptCreated NxVariableListItem Bool
instance HasQItems VariableList [NxVariableListItem]
instance HasQType DimensionListDef String
instance HasQData DimensionListDef JsonObject
instance HasQItems DimensionList [NxContainerEntry]
instance HasQType BookmarkListDef String
instance HasQData BookmarkListDef JsonObject
instance HasQItems BookmarkList [NxContainerEntry]
instance HasQType MeasureListDef String
instance HasQData MeasureListDef JsonObject
instance HasQItems MeasureList [NxContainerEntry]
instance HasQUndoCount UndoInfo Int
instance HasQRedoCount UndoInfo Int
instance HasQShowSystem FieldListDef Bool
instance HasQShowHidden FieldListDef Bool
instance HasQShowSemantic FieldListDef Bool
instance HasQShowSrcTables FieldListDef Bool
instance HasQShowDefinitionOnly FieldListDef Bool
instance HasQShowDerivedFields FieldListDef Bool
instance HasQShowImplicit FieldListDef Bool
instance HasQItems FieldList [NxFieldDescription]
instance HasQExpr If String
instance HasQStateName SelectionObjectDef String
instance HasQBackCount SelectionObject Int
instance HasQForwardCount SelectionObject Int
instance HasQSelections SelectionObject [NxCurrentSelectionItem]
instance HasQStateName SelectionObject String
instance HasQInSelections NxSelectionInfo Bool
instance HasQMadeSelections NxSelectionInfo Bool
instance HasQInfo GenericObjectProperties NxInfo
instance HasQExtendsId GenericObjectProperties String
instance HasQMetaDef GenericObjectProperties NxMetaDef
instance HasQStateName GenericObjectProperties String
instance HasQInfo GenericObjectLayout NxInfo
-- instance HasQMeta GenericObjectLayout ?
instance HasQExtendsId GenericObjectLayout String
instance HasQHasSoftPatches GenericObjectLayout Bool
-- instance HasQError GenericObjectLayout ?
instance HasQSelectionInfo GenericObjectLayout NxSelectionInfo
instance HasQStateName GenericObjectLayout String
instance HasQType GenericAppObjectMetaData String
instance HasQId GenericAppObjectMetaData String
instance HasQProperty GenericObjectEntry GenericObjectProperties
instance HasQChildren GenericObjectEntry [GenericObjectEntry]
-- instance HasQEmbeddedSnapshotRef GenericObjectEntry ?
instance HasQMetaData GenericAppObjectEntry GenericAppObjectMetaData
instance HasQRoot GenericAppObjectEntry GenericObjectEntry
instance HasQType NxQvfBundledItem String
instance HasQBlob NxQvfBundledItem [Int]
instance HasQOp NxPatch NxPatchOperationType
instance HasQPath NxPatch String
instance HasQValue NxPatch String
instance HasQType NxSelectionCell NxSelectionCellType
instance HasQCol NxSelectionCell Int
instance HasQRow NxSelectionCell Int
instance HasQRootId NxLinkedObjectInfo String
instance HasQInfo NxLinkedObjectInfo NxInfo
instance HasQLeft NxDataAreaPage Float
instance HasQTop NxDataAreaPage Float
instance HasQWidth NxDataAreaPage Float
instance HasQHeight NxDataAreaPage Float
instance HasQWidth NxViewPort Int
instance HasQHeight NxViewPort Int
instance HasQZoomLevel NxViewPort Int
instance HasQKey SearchAttribute String
instance HasQValue SearchAttribute String
instance HasQId SearchableObject String
instance HasQType SearchableObject String
instance HasQSearchableProperties SearchableObject SearchAttributeArray
instance HasQSearchableDimensions SearchableObject SearchAttributeArray
instance HasQExcludedTypes SearchObjectInternalOptions [String]
instance HasQStart NxContinuousDataOptions Float
instance HasQEnd NxContinuousDataOptions Float
instance HasQNbrPoints NxContinuousDataOptions Int
instance HasQMaxNbrTicks NxContinuousDataOptions Int
instance HasQMaxNumberLines NxContinuousDataOptions Int
instance HasQText NxTickCell String
instance HasQStart NxTickCell Float
instance HasQEnd NxTickCell Float
instance HasQName NxAxisTicks String
instance HasQTags NxAxisTicks [String]
instance HasQTicks NxAxisTicks [NxTickCell]
instance HasQAxis NxAxisData [NxAxisTicks]
instance HasQTypes NxGetBookmarkOptions [String]
instance HasQData NxGetBookmarkOptions JsonObject
instance HasQText NxTreeValue String
instance HasQValue NxTreeValue Float
-- instance HasQAttrExps NxTreeValue ?
-- instance HasQAttrDims NxTreeValue ?
instance HasQText NxTreeNode String
instance HasQElemNo NxTreeNode Int
instance HasQNodeNr NxTreeNode Int
instance HasQParentNode NxTreeNode Int
instance HasQRow NxTreeNode Int
instance HasQType NxTreeNode NxDimCellType
instance HasQValues NxTreeNode [NxTreeValue]
instance HasQNodes NxTreeNode [NxTreeNode]
-- instance HasQAttrExps NxTreeNode ?
-- instance HasQAttrDims NxTreeNode ?
instance HasQLeft NxPageTreeLevel Int
instance HasQDepth NxPageTreeLevel Int
instance HasQArea NxPageTreeNode Rect
instance HasQAllValues NxPageTreeNode Bool
instance HasQMaxNbrOfNodes NxTreeDataOption Int
instance HasQTreeNodes NxTreeDataOption [NxPageTreeNode]
instance HasQTreeLevels NxTreeDataOption NxPageTreeLevel
instance HasQInfo GenericDimensionProperties NxInfo
instance HasQDim GenericDimensionProperties NxLibraryDimensionDef
instance HasQMetaDef GenericDimensionProperties NxMetaDef
instance HasQApprMaxGlyphCount GenericDimensionInfo Int
instance HasQCardinal GenericDimensionInfo Int
instance HasQTags GenericDimensionInfo [String]
instance HasQIsSemantic GenericDimensionInfo Bool
instance HasQAndMode GenericDimensionInfo Bool
instance HasQInfo GenericDimensionLayout NxInfo
-- instance HasQMeta GenericDimensionLayout ?
instance HasQDim GenericDimensionLayout NxLibraryDimension
instance HasQDimInfos GenericDimensionLayout [GenericDimensionInfo]
instance HasQStateData NxBookmark [AlternateStateData]
instance HasQUtcModifyTime NxBookmark Float
instance HasQVariableItems NxBookmark [BookmarkVariableItem]
instance HasQInfo GenericBookmarkProperties NxInfo
instance HasQMetaDef GenericBookmarkProperties NxMetaDef
instance HasQProperties GenericBookmarkEntry GenericBookmarkProperties
instance HasQBookmark GenericBookmarkEntry NxBookmark
instance HasQBookmark GenericUserState NxBookmark
instance HasQId GenericUserState String
instance HasQFieldName LayoutFieldInfo String
instance HasQValuesCount LayoutFieldInfo Int
instance HasQExcludedValuesCount LayoutFieldInfo Int
instance HasQInfo GenericBookmarkLayout NxInfo
-- instance HasQMeta GenericBookmarkLayout ?
instance HasQBookmark GenericBookmarkLayout NxBookmark
instance HasQFieldInfos GenericBookmarkLayout [LayoutFieldInfo]
instance HasQStartIndex BookmarkFieldPage Int
instance HasQEndIndex BookmarkFieldPage Int
instance HasQInfo GenericVariableProperties NxInfo
instance HasQMetaDef GenericVariableProperties NxMetaDef
instance HasQName GenericVariableProperties String
instance HasQComment GenericVariableProperties String
instance HasQNumberPresentation GenericVariableProperties FieldAttributes
instance HasQIncludeInBookmark GenericVariableProperties Bool
instance HasQDefinition GenericVariableProperties String
instance HasQInfo GenericVariableLayout NxInfo
-- instance HasQMeta GenericVariableLayout ?
instance HasQText GenericVariableLayout String
instance HasQNum GenericVariableLayout Float
instance HasQIsScriptCreated GenericVariableLayout Bool
instance HasQValue GenericVariableEntry Float
instance HasQIsScriptCreated GenericVariableEntry Bool
instance HasQProperties GenericVariableEntry GenericVariableProperties
instance HasQId GenericVariableEntryList String
instance HasQEntryList GenericVariableEntryList [GenericVariableEntry]
instance HasQInfo GenericMeasureProperties NxInfo
instance HasQMeasure GenericMeasureProperties NxLibraryMeasureDef
instance HasQMetaDef GenericMeasureProperties NxMetaDef
instance HasQInfo GenericMeasureLayout NxInfo
instance HasQMeasure GenericMeasureLayout NxLibraryMeasure
-- instance HasQMeta GenericMeasureLayout ?
instance HasQName NxFieldDerivedDefinition String
instance HasQExpression NxFieldDerivedDefinition String
instance HasQTags NxFieldDerivedDefinition [String]
instance HasQName NxGroupDerivedDefinition String
instance HasQGrouping NxGroupDerivedDefinition NxGrpType
instance HasQFieldDerivedDefinitionNames NxGroupDerivedDefinition [String]
instance HasQName NxDerivedDefinitionParameterDesc String
instance HasQValue NxDerivedDefinitionParameterDesc String
instance HasQName NxDerivedDefinition String
instance HasQTags NxDerivedDefinition [String]
instance HasQParameters NxDerivedDefinition [NxDerivedDefinitionParameterDesc]
instance HasQFieldDefs NxDerivedDefinition [NxFieldDerivedDefinition]
instance HasQGroupDefs NxDerivedDefinition [NxGroupDerivedDefinition]
instance HasQName NxDerivedDefinitionParameter String
instance HasQValue NxDerivedDefinitionParameter String
instance HasQName NxDerivedDefinitionData String
instance HasQNoOfFieldParameters NxDerivedDefinitionData Int
instance HasQTags NxDerivedDefinitionData [String]
instance HasQFieldDefs NxDerivedDefinitionData [NxFieldDerivedDefinition]
instance HasQGroupDefs NxDerivedDefinitionData [NxGroupDerivedDefinition]
instance HasQInfo GenericDerivedDefinitionProperties NxInfo
instance HasQDerivedDefinition GenericDerivedDefinitionProperties NxDerivedDefinition
instance HasQMetaDef GenericDerivedDefinitionProperties NxMetaDef
instance HasQProperties GenericDerivedDefinitionEntry GenericDerivedDefinitionProperties
instance HasQEntryList GenericDerivedDefinitionEntryList [GenericDerivedDefinitionEntry]
instance HasQInfo GenericDerivedFieldsProperties NxInfo
instance HasQDerivedDefinitionId GenericDerivedFieldsProperties String
instance HasQFieldName GenericDerivedFieldsProperties [String]
instance HasQMetaDef GenericDerivedFieldsProperties NxMetaDef
instance HasQProperties GenericDerivedFieldEntry GenericDerivedFieldsProperties
instance HasQEntryList GenericDerivedFieldEntryList [GenericDerivedFieldEntry]
instance HasQId NxDerivedField String
instance HasQName NxDerivedField String
instance HasQMethod NxDerivedField String
instance HasQExpr NxDerivedField String
instance HasQTags NxDerivedField [String]
instance HasQId NxDerivedGroup String
instance HasQName NxDerivedGroup String
instance HasQGrouping NxDerivedGroup NxGrpType
instance HasQFieldDefs NxDerivedGroup [String]
instance HasQDerivedDefinitionName NxDerivedFieldsData String
instance HasQFieldDefs NxDerivedFieldsData [NxDerivedField]
instance HasQGroupDefs NxDerivedFieldsData [NxDerivedGroup]
instance HasQTags NxDerivedFieldsData [String]
instance HasQId NxDerivedDefinitionInfo String
instance HasQName NxDerivedDefinitionInfo String
instance HasQTags NxDerivedDefinitionInfo [String]
instance HasQNbrFieldParameters NxDerivedDefinitionInfo Int
instance HasQName NxMatchingFieldInfo String
instance HasQTags NxMatchingFieldInfo [String]
instance HasQFieldName FieldScores String
instance HasQReadableName FieldScores String
instance HasQCardinalRatio FieldScores Float
instance HasQSymbolScore FieldScores Float
instance HasQRowScore FieldScores Float
instance HasQFieldPairName AssociationScore String
instance HasQScoreSummary AssociationScore Int
instance HasQField1Scores AssociationScore FieldScores
instance HasQField2Scores AssociationScore FieldScores
instance HasQMode DoReloadExParams Int
instance HasQPartial DoReloadExParams Bool
instance HasQDebug DoReloadExParams Bool
instance HasQSuccess DoReloadExResult Bool
instance HasQScriptLogFile DoReloadExResult String
instance HasQObjectId NxNotification String
instance HasQQixType NxNotification String
instance HasQBuf NxNotification [Char]
instance HasQMeta NxNotification NxMeta
instance HasQActions NxNotification Integer
instance HasQTypes NxGetObjectOptions [String]
instance HasQIncludeSessionObjects NxGetObjectOptions Bool
instance HasQData NxGetObjectOptions JsonObject
instance HasQUrl NxDownloadInfo String
instance HasQFileSize NxDownloadInfo Int
instance HasQBookmarkId NxDownloadOptions String
instance HasQExpires NxDownloadOptions Int
instance HasQOneAndOnlyOne NxFieldProperties Bool
instance HasQName NxVariableProperties String
instance HasQNumberPresentation NxVariableProperties FieldAttributes
instance HasQIncludeInBookmark NxVariableProperties Bool
instance HasQUsePredefListedValues NxVariableProperties Bool
instance HasQPreDefinedList NxVariableProperties [String]
instance HasQID AppEntry String
instance HasQTitle AppEntry String
instance HasQPath AppEntry String
instance HasQLastReloadTime AppEntry String
instance HasQReadOnly AppEntry Bool
instance HasQMeta AppEntry NxMeta
instance HasQThumbnail AppEntry StaticContentUrl
instance HasQFileSize AppEntry Integer
instance HasQIsDesktop NxFeatureConfiguration Bool
instance HasQAutoSave NxFeatureConfiguration Bool
instance HasQPublishing NxFeatureConfiguration Bool
instance HasQQuickDataLoad NxFeatureConfiguration Bool
instance HasQUploadToCloud NxFeatureConfiguration Bool
instance HasQSSOEnabled NxFeatureConfiguration Bool
instance HasQColorByDisable NxFeatureConfiguration Bool
instance HasQName NxServiceConfiguration String
instance HasQUrl NxServiceConfiguration String
instance HasQPathSeparator NxSystemProperties String
instance HasQFeatures NxConfigurationInfo NxFeatureConfiguration
instance HasQServices NxConfigurationInfo [NxServiceConfiguration]
instance HasQSystemProperties NxConfigurationInfo NxSystemProperties
instance HasQComponentVersion NxEngineVersion String
instance HasQtyp JSONWebTokenHeader String
instance HasQalg JSONWebTokenHeader String
instance HasQkid JSONWebTokenHeader String
instance HasQContentHash PersistedObjectMeta String
instance HasQFormat PersistedObjectMeta String
instance HasQParentId PersistedObjectMeta String
instance HasQTitle PersistedObjectMeta String
instance HasQType PersistedObjectMeta String
instance HasQSharedStatus PersistedObjectMeta String
instance HasQDstPath PersistedObjectMeta String
instance HasQRelativeDstPath PersistedObjectMeta String
instance HasQUrl PersistedObjectMeta String
instance HasQSecurityMetaAsBase64 PersistedObjectMeta String
instance HasQType ObjectInterface String
instance HasQHandle ObjectInterface Int
instance HasQGenericType ObjectInterface String
instance HasQGenericId ObjectInterface String
type NxCellRows = [ NxCell ]
type ArrayOfNxValuePoint = [ NxPivotValuePoint ]
type SearchAttributeArray = [ SearchAttribute ]
data FieldType = NOT_PRESENT | PRESENT | IS_CYCLIC_GROUP | IS_DRILL_GROUP | IS_VAR | IS_EXPR | IS_IMPLICIT | IS_DETAIL deriving (Show, Read, Eq, Ord, Enum)
data KeyType = NOT_KEY | ANY_KEY | PRIMARY_KEY | PERFECT_KEY deriving (Show, Read, Eq, Ord, Enum)
data ErrorDataCode = EDC_ERROR | EDC_WARNING | EDC_CIRCULAR_REFERENCE deriving (Show, Read, Eq, Ord, Enum)
data TotalMode = TOTAL_OFF | TOTAL_EXPR deriving (Show, Read, Eq, Ord, Enum)
data OtherSortMode = OTHER_SORT_DEFAULT | OTHER_SORT_DESCENDING | OTHER_SORT_ASCENDING deriving (Show, Read, Eq, Ord, Enum)
data OtherMode = OTHER_OFF | OTHER_COUNTED | OTHER_ABS_LIMITED | OTHER_ABS_ACC_TARGET | OTHER_REL_LIMITED | OTHER_REL_ACC_TARGET deriving (Show, Read, Eq, Ord, Enum)
data OtherLimitMode = OTHER_GE_LIMIT | OTHER_LE_LIMIT | OTHER_GT_LIMIT | OTHER_LT_LIMIT deriving (Show, Read, Eq, Ord, Enum)
data InteractType = IT_MSGBOX | IT_SCRIPTLINE | IT_BREAK | IT_INPUT | IT_END | IT_PASSWD | IT_USERNAME deriving (Show, Read, Eq, Ord, Enum)
data FieldAttrType = UNKNOWN | ASCII | INTEGER | REAL | FIX | MONEY | DATE | TIME | TIMESTAMP | INTERVAL deriving (Show, Read, Eq, Ord, Enum)
data StateEnumType = LOCKED | SELECTED | OPTION | DESELECTED | ALTERNATIVE | EXCLUDED | EXCL_SELECTED | EXCL_LOCKED | NSTATES deriving (Show, Read, Eq, Ord, Enum)
data NxLocalizedErrorCode = LOCERR_INTERNAL_ERROR | LOCERR_GENERIC_UNKNOWN | LOCERR_GENERIC_OK | LOCERR_GENERIC_NOT_SET | LOCERR_GENERIC_NOT_FOUND | LOCERR_GENERIC_ALREADY_EXISTS | LOCERR_GENERIC_INVALID_PATH | LOCERR_GENERIC_ACCESS_DENIED | LOCERR_GENERIC_OUT_OF_MEMORY | LOCERR_GENERIC_NOT_INITIALIZED | LOCERR_GENERIC_INVALID_PARAMETERS | LOCERR_GENERIC_EMPTY_PARAMETERS | LOCERR_GENERIC_INTERNAL_ERROR | LOCERR_GENERIC_CORRUPT_DATA | LOCERR_GENERIC_MEMORY_INCONSISTENCY | LOCERR_GENERIC_INVISIBLE_OWNER_ABORT | LOCERR_GENERIC_PROHIBIT_VALIDATE | LOCERR_GENERIC_ABORTED | LOCERR_GENERIC_CONNECTION_LOST | LOCERR_GENERIC_UNSUPPORTED_IN_PRODUCT_VERSION | LOCERR_GENERIC_REST_CONNECTION_FAILURE | LOCERR_GENERIC_MEMORY_LIMIT_REACHED | LOCERR_HTTP_400 | LOCERR_HTTP_401 | LOCERR_HTTP_402 | LOCERR_HTTP_403 | LOCERR_HTTP_404 | LOCERR_HTTP_405 | LOCERR_HTTP_406 | LOCERR_HTTP_407 | LOCERR_HTTP_408 | LOCERR_HTTP_409 | LOCERR_HTTP_410 | LOCERR_HTTP_411 | LOCERR_HTTP_412 | LOCERR_HTTP_413 | LOCERR_HTTP_414 | LOCERR_HTTP_415 | LOCERR_HTTP_416 | LOCERR_HTTP_417 | LOCERR_HTTP_422 | LOCERR_HTTP_429 | LOCERR_HTTP_500 | LOCERR_HTTP_501 | LOCERR_HTTP_502 | LOCERR_HTTP_503 | LOCERR_HTTP_504 | LOCERR_HTTP_505 | LOCERR_HTTP_509 | LOCERR_HTTP_COULD_NOT_RESOLVE_HOST | LOCERR_APP_ALREADY_EXISTS | LOCERR_APP_INVALID_NAME | LOCERR_APP_ALREADY_OPEN | LOCERR_APP_NOT_FOUND | LOCERR_APP_IMPORT_FAILED | LOCERR_APP_SAVE_FAILED | LOCERR_APP_CREATE_FAILED | LOCERR_APP_INVALID | LOCERR_APP_CONNECT_FAILED | LOCERR_APP_ALREADY_OPEN_IN_DIFFERENT_MODE | LOCERR_APP_MIGRATION_COULD_NOT_CONTACT_MIGRATION_SERVICE | LOCERR_APP_MIGRATION_COULD_NOT_START_MIGRATION | LOCERR_APP_MIGRATION_FAILURE | LOCERR_APP_SCRIPT_MISSING | LOCERR_APP_EXPORT_FAILED | LOCERR_CONNECTION_ALREADY_EXISTS | LOCERR_CONNECTION_NOT_FOUND | LOCERR_CONNECTION_FAILED_TO_LOAD | LOCERR_CONNECTION_FAILED_TO_IMPORT | LOCERR_CONNECTION_NAME_IS_INVALID | LOCERR_CONNECTOR_NO_FILE_STREAMING_SUPPORT | LOCERR_CONNECTOR_FILESIZE_EXCEEDED_BUFFER_SIZE | LOCERR_FILE_ACCESS_DENIED | LOCERR_FILE_NAME_INVALID | LOCERR_FILE_CORRUPT | LOCERR_FILE_NOT_FOUND | LOCERR_FILE_FORMAT_UNSUPPORTED | LOCERR_FILE_OPENED_IN_UNSUPPORTED_MODE | LOCERR_FILE_TABLE_NOT_FOUND | LOCERR_USER_ACCESS_DENIED | LOCERR_USER_IMPERSONATION_FAILED | LOCERR_SERVER_OUT_OF_SESSION_AND_USER_CALS | LOCERR_SERVER_OUT_OF_SESSION_CALS | LOCERR_SERVER_OUT_OF_USAGE_CALS | LOCERR_SERVER_OUT_OF_CALS | LOCERR_SERVER_OUT_OF_NAMED_CALS | LOCERR_SERVER_OFF_DUTY | LOCERR_SERVER_BUSY | LOCERR_SERVER_LICENSE_EXPIRED | LOCERR_SERVER_AJAX_DISABLED | LOCERR_HC_INVALID_OBJECT | LOCERR_HC_RESULT_TOO_LARGE | LOCERR_HC_INVALID_OBJECT_STATE | LOCERR_HC_MODAL_OBJECT_ERROR | LOCERR_CALC_INVALID_DEF | LOCERR_CALC_NOT_IN_LIB | LOCERR_CALC_HEAP_ERROR | LOCERR_CALC_TOO_LARGE | LOCERR_CALC_TIMEOUT | LOCERR_CALC_EVAL_CONDITION_FAILED | LOCERR_CALC_MIXED_LINKED_AGGREGATION | LOCERR_CALC_MISSING_LINKED | LOCERR_CALC_INVALID_COL_SORT | LOCERR_CALC_PAGES_TOO_LARGE | LOCERR_CALC_SEMANTIC_FIELD_NOT_ALLOWED | LOCERR_CALC_VALIDATION_STATE_INVALID | LOCERR_CALC_PIVOT_DIMENSIONS_ALREADY_EXISTS | LOCERR_CALC_MISSING_LINKED_FIELD | LOCERR_CALC_NOT_CALCULATED | LOCERR_LAYOUT_EXTENDS_INVALID_ID | LOCERR_LAYOUT_LINKED_OBJECT_NOT_FOUND | LOCERR_LAYOUT_LINKED_OBJECT_INVALID | LOCERR_PERSISTENCE_WRITE_FAILED | LOCERR_PERSISTENCE_READ_FAILED | LOCERR_PERSISTENCE_DELETE_FAILED | LOCERR_PERSISTENCE_NOT_FOUND | LOCERR_PERSISTENCE_UNSUPPORTED_VERSION | LOCERR_PERSISTENCE_MIGRATION_FAILED_READ_ONLY | LOCERR_PERSISTENCE_MIGRATION_CANCELLED | LOCERR_PERSISTENCE_MIGRATION_BACKUP_FAILED | LOCERR_PERSISTENCE_DISK_FULL | LOCERR_PERSISTENCE_NOT_SUPPORTED_FOR_SESSION_APP | LOCERR_PERSISTENCE_SYNC_SET_CHUNK_INVALID_PARAMETERS | LOCERR_PERSISTENCE_SYNC_GET_CHUNK_INVALID_PARAMETERS | LOCERR_SCRIPT_DATASOURCE_ACCESS_DENIED | LOCERR_RELOAD_IN_PROGRESS | LOCERR_RELOAD_TABLE_X_NOT_FOUND | LOCERR_RELOAD_UNKNOWN_STATEMENT | LOCERR_RELOAD_EXPECTED_SOMETHING_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_NOTHING_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_1_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_2_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_3_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_4_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_5_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_6_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_7_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_8_OR_MORE_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_FIELD_X_NOT_FOUND | LOCERR_RELOAD_MAPPING_TABLE_X_NOT_FOUND | LOCERR_RELOAD_LIB_CONNECTION_X_NOT_FOUND | LOCERR_RELOAD_NAME_ALREADY_TAKEN | LOCERR_RELOAD_WRONG_FILE_FORMAT_DIF | LOCERR_RELOAD_WRONG_FILE_FORMAT_BIFF | LOCERR_RELOAD_WRONG_FILE_FORMAT_ENCRYPTED | LOCERR_RELOAD_OPEN_FILE_ERROR | LOCERR_RELOAD_AUTO_GENERATE_COUNT | LOCERR_RELOAD_PE_ILLEGAL_PREFIX_COMB | LOCERR_RELOAD_MATCHING_CONTROL_STATEMENT_ERROR | LOCERR_RELOAD_MATCHING_LIBPATH_X_NOT_FOUND | LOCERR_RELOAD_MATCHING_LIBPATH_X_INVALID | LOCERR_RELOAD_MATCHING_LIBPATH_X_OUTSIDE | LOCERR_RELOAD_NO_QUALIFIED_PATH_FOR_FILE | LOCERR_RELOAD_MODE_STATEMENT_ONLY_FOR_LIB_PATHS | LOCERR_RELOAD_INCONSISTENT_USE_OF_SEMANTIC_FIELDS | LOCERR_RELOAD_NO_OPEN_DATABASE | LOCERR_RELOAD_AGGREGATION_REQUIRED_BY_GROUP_BY | LOCERR_RELOAD_CONNECT_MUST_USE_LIB_PREFIX_IN_THIS_MODE | LOCERR_RELOAD_ODBC_CONNECT_FAILED | LOCERR_RELOAD_OLEDB_CONNECT_FAILED | LOCERR_RELOAD_CUSTOM_CONNECT_FAILED | LOCERR_RELOAD_ODBC_READ_FAILED | LOCERR_RELOAD_OLEDB_READ_FAILED | LOCERR_RELOAD_CUSTOM_READ_FAILED | LOCERR_RELOAD_BINARY_LOAD_PROHIBITED | LOCERR_RELOAD_CONNECTOR_START_FAILED | LOCERR_RELOAD_CONNECTOR_NOT_RESPONDING | LOCERR_RELOAD_CONNECTOR_REPLY_ERROR | LOCERR_RELOAD_CONNECTOR_CONNECT_ERROR | LOCERR_RELOAD_CONNECTOR_NOT_FOUND_ERROR | LOCERR_RELOAD_INPUT_FIELD_WITH_DUPLICATE_KEYS | LOCERR_RELOAD_CONCATENATE_LOAD_NO_PREVIOUS_TABLE | LOCERR_PERSONAL_NEW_VERSION_AVAILABLE | LOCERR_PERSONAL_VERSION_EXPIRED | LOCERR_PERSONAL_SECTION_ACCESS_DETECTED | LOCERR_PERSONAL_APP_DELETION_FAILED | LOCERR_USER_AUTHENTICATION_FAILURE | LOCERR_EXPORT_OUT_OF_MEMORY | LOCERR_EXPORT_NO_DATA | LOCERR_SYNC_INVALID_OFFSET | LOCERR_SEARCH_TIMEOUT | LOCERR_DIRECT_DISCOVERY_LINKED_EXPRESSION_FAIL | LOCERR_DIRECT_DISCOVERY_ROWCOUNT_OVERFLOW | LOCERR_DIRECT_DISCOVERY_EMPTY_RESULT | LOCERR_DIRECT_DISCOVERY_DB_CONNECTION_FAILED | LOCERR_DIRECT_DISCOVERY_MEASURE_NOT_ALLOWED | LOCERR_DIRECT_DISCOVERY_DETAIL_NOT_ALLOWED | LOCERR_DIRECT_DISCOVERY_NOT_SYNTH_CIRCULAR_ALLOWED | LOCERR_DIRECT_DISCOVERY_ONLY_ONE_DD_TABLE_ALLOWED | LOCERR_DIRECT_DISCOVERY_DB_AUTHORIZATION_FAILED | LOCERR_SMART_LOAD_TABLE_NOT_FOUND | LOCERR_SMART_LOAD_TABLE_DUPLICATED | LOCERR_VARIABLE_NO_NAME | LOCERR_VARIABLE_DUPLICATE_NAME | LOCERR_VARIABLE_INCONSISTENCY | LOCERR_MEDIA_LIBRARY_LIST_FAILED | LOCERR_MEDIA_LIBRARY_CONTENT_FAILED | LOCERR_MEDIA_BUNDLING_FAILED | LOCERR_MEDIA_UNBUNDLING_FAILED | LOCERR_MEDIA_LIBRARY_NOT_FOUND | LOCERR_FEATURE_DISABLED | LOCERR_JSON_RPC_INVALID_REQUEST | LOCERR_JSON_RPC_METHOD_NOT_FOUND | LOCERR_JSON_RPC_INVALID_PARAMETERS | LOCERR_JSON_RPC_INTERNAL_ERROR | LOCERR_JSON_RPC_PARSE_ERROR | LOCERR_MQ_SOCKET_CONNECT_FAILURE | LOCERR_MQ_SOCKET_OPEN_FAILURE | LOCERR_MQ_PROTOCOL_NO_RESPONE | LOCERR_MQ_PROTOCOL_LIBRARY_EXCEPTION | LOCERR_MQ_PROTOCOL_CONNECTION_CLOSED | LOCERR_MQ_PROTOCOL_CHANNEL_CLOSED | LOCERR_MQ_PROTOCOL_UNKNOWN_ERROR | LOCERR_MQ_PROTOCOL_INVALID_STATUS | LOCERR_EXTENGINE_GRPC_STATUS_OK | LOCERR_EXTENGINE_GRPC_STATUS_CANCELLED | LOCERR_EXTENGINE_GRPC_STATUS_UNKNOWN | LOCERR_EXTENGINE_GRPC_STATUS_INVALID_ARGUMENT | LOCERR_EXTENGINE_GRPC_STATUS_DEADLINE_EXCEEDED | LOCERR_EXTENGINE_GRPC_STATUS_NOT_FOUND | LOCERR_EXTENGINE_GRPC_STATUS_ALREADY_EXISTS | LOCERR_EXTENGINE_GRPC_STATUS_PERMISSION_DENIED | LOCERR_EXTENGINE_GRPC_STATUS_RESOURCE_EXHAUSTED | LOCERR_EXTENGINE_GRPC_STATUS_FAILED_PRECONDITION | LOCERR_EXTENGINE_GRPC_STATUS_ABORTED | LOCERR_EXTENGINE_GRPC_STATUS_OUT_OF_RANGE | LOCERR_EXTENGINE_GRPC_STATUS_UNIMPLEMENTED | LOCERR_EXTENGINE_GRPC_STATUS_INTERNAL | LOCERR_EXTENGINE_GRPC_STATUS_UNAVAILABLE | LOCERR_EXTENGINE_GRPC_STATUS_DATA_LOSS | LOCERR_EXTENGINE_GRPC_STATUS_UNAUTHENTICATED | LOCERR_LXW_INVALID_OBJ | LOCERR_LXW_INVALID_FILE | LOCERR_LXW_INVALID_SHEET | LOCERR_LXW_INVALID_EXPORT_RANGE | LOCERR_LXW_ERROR | LOCERR_LXW_ERROR_MEMORY_MALLOC_FAILED | LOCERR_LXW_ERROR_CREATING_XLSX_FILE | LOCERR_LXW_ERROR_CREATING_TMPFILE | LOCERR_LXW_ERROR_ZIP_FILE_OPERATION | LOCERR_LXW_ERROR_ZIP_FILE_ADD | LOCERR_LXW_ERROR_ZIP_CLOSE | LOCERR_LXW_ERROR_NULL_PARAMETER_IGNORED | LOCERR_LXW_ERROR_MAX_STRING_LENGTH_EXCEEDED | LOCERR_LXW_ERROR_255_STRING_LENGTH_EXCEEDED | LOCERR_LXW_ERROR_SHARED_STRING_INDEX_NOT_FOUND | LOCERR_LXW_ERROR_WORKSHEET_INDEX_OUT_OF_RANGE | LOCERR_LXW_ERROR_WORKSHEET_MAX_NUMBER_URLS_EXCEEDED | LOCERR_CURL_UNSUPPORTED_PROTOCOL | LOCERR_CURL_COULDNT_RESOLVE_PROXY | LOCERR_CURL_COULDNT_CONNECT | LOCERR_CURL_REMOTE_ACCESS_DENIED | LOCERR_CURL_FTP_ACCEPT_FAILED | LOCERR_CURL_FTP_ACCEPT_TIMEOUT | LOCERR_CURL_FTP_CANT_GET_HOST | LOCERR_CURL_PARTIAL_FILE | LOCERR_CURL_QUOTE_ERROR | LOCERR_CURL_WRITE_ERROR | LOCERR_CURL_UPLOAD_FAILED | LOCERR_CURL_OUT_OF_MEMORY | LOCERR_CURL_OPERATION_TIMEDOUT | LOCERR_CURL_FTP_COULDNT_USE_REST | LOCERR_CURL_HTTP_POST_ERROR | LOCERR_CURL_SSL_CONNECT_ERROR | LOCERR_CURL_FILE_COULDNT_READ_FILE | LOCERR_CURL_LDAP_CANNOT_BIND | LOCERR_CURL_LDAP_SEARCH_FAILED | LOCERR_CURL_TOO_MANY_REDIRECTS | LOCERR_CURL_PEER_FAILED_VERIFICATION | LOCERR_CURL_GOT_NOTHING | LOCERR_CURL_SSL_ENGINE_NOTFOUND | LOCERR_CURL_SSL_ENGINE_SETFAILED | LOCERR_CURL_SSL_CERTPROBLEM | LOCERR_CURL_SSL_CIPHER | LOCERR_CURL_SSL_CACERT | LOCERR_CURL_BAD_CONTENT_ENCODING | LOCERR_CURL_LDAP_INVALID_URL | LOCERR_CURL_USE_SSL_FAILED | LOCERR_CURL_SSL_ENGINE_INITFAILED | LOCERR_CURL_LOGIN_DENIED | LOCERR_CURL_TFTP_NOTFOUND | LOCERR_CURL_TFTP_ILLEGAL | LOCERR_CURL_SSH | LOCERR_SETEXPRESSION_TOO_LARGE deriving (Show, Read, Eq, Ord, Enum)
data NxLocalizedWarningCode = LOCWARN_PERSONAL_RELOAD_REQUIRED | LOCWARN_PERSONAL_VERSION_EXPIRES_SOON | LOCWARN_EXPORT_DATA_TRUNCATED | LOCWARN_COULD_NOT_OPEN_ALL_OBJECTS deriving (Show, Read, Eq, Ord, Enum)
data NxGrpType = GRP_NX_NONE | GRP_NX_HIEARCHY | GRP_NX_COLLECTION deriving (Show, Read, Eq, Ord, Enum)
data NxExportFileType = EXPORT_CSV_C | EXPORT_CSV_T | EXPORT_OOXML deriving (Show, Read, Eq, Ord, Enum)
data NxExportState = EXPORT_POSSIBLE | EXPORT_ALL deriving (Show, Read, Eq, Ord, Enum)
data NxDimCellType = NX_DIM_CELL_VALUE | NX_DIM_CELL_EMPTY | NX_DIM_CELL_NORMAL | NX_DIM_CELL_TOTAL | NX_DIM_CELL_OTHER | NX_DIM_CELL_AGGR | NX_DIM_CELL_PSEUDO | NX_DIM_CELL_ROOT | NX_DIM_CELL_NULL | NX_DIM_CELL_GENERATED deriving (Show, Read, Eq, Ord, Enum)
data NxStackElemType = NX_STACK_CELL_NORMAL | NX_STACK_CELL_TOTAL | NX_STACK_CELL_OTHER | NX_STACK_CELL_SUM | NX_STACK_CELL_VALUE | NX_STACK_CELL_PSEUDO deriving (Show, Read, Eq, Ord, Enum)
data NxSortIndicatorType = NX_SORT_INDICATE_NONE | NX_SORT_INDICATE_ASC | NX_SORT_INDICATE_DESC deriving (Show, Read, Eq, Ord, Enum)
data NxDimensionType = NX_DIMENSION_TYPE_DISCRETE | NX_DIMENSION_TYPE_NUMERIC | NX_DIMENSION_TYPE_TIME deriving (Show, Read, Eq, Ord, Enum)
data NxFieldSelectionMode = SELECTION_MODE_NORMAL | SELECTION_MODE_AND | SELECTION_MODE_NOT deriving (Show, Read, Eq, Ord, Enum)
data NxFrequencyMode = NX_FREQUENCY_NONE | NX_FREQUENCY_VALUE | NX_FREQUENCY_PERCENT | NX_FREQUENCY_RELATIVE deriving (Show, Read, Eq, Ord, Enum)
data NxDataReductionMode = DATA_REDUCTION_NONE | DATA_REDUCTION_ONEDIM | DATA_REDUCTION_SCATTERED | DATA_REDUCTION_CLUSTERED | DATA_REDUCTION_STACKED deriving (Show, Read, Eq, Ord, Enum)
data NxHypercubeMode = DATA_MODE_STRAIGHT | DATA_MODE_PIVOT | DATA_MODE_PIVOT_STACK | DATA_MODE_TREE deriving (Show, Read, Eq, Ord, Enum)
data NxPatchOperationType = Add | Remove | Replace deriving (Show, Read, Eq, Ord, Enum)
data NxSelectionCellType = NX_CELL_DATA | NX_CELL_TOP | NX_CELL_LEFT deriving (Show, Read, Eq, Ord, Enum)
data CharEncodingType = CHAR_ENCODING_UTF8 | CHAR_ENCODING_UTF16 deriving (Show, Read, Eq, Ord, Enum)
data NxMatchingFieldMode = MATCHINGFIELDMODE_MATCH_ALL | MATCHINGFIELDMODE_MATCH_ONE deriving (Show, Read, Eq, Ord, Enum)
instance ValueType FieldType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue FieldType"

instance ValueType KeyType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue KeyType"

instance ValueType ErrorDataCode where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue ErrorDataCode"

instance ValueType TotalMode where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue TotalMode"

instance ValueType OtherSortMode where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue OtherSortMode"

instance ValueType OtherMode where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue OtherMode"

instance ValueType OtherLimitMode where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue OtherLimitMode"

instance ValueType InteractType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue InteractType"

instance ValueType FieldAttrType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue FieldAttrType"

instance ValueType StateEnumType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue StateEnumType"

instance ValueType NxLocalizedErrorCode where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxLocalizedErrorCode"

instance ValueType NxLocalizedWarningCode where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxLocalizedWarningCode"

instance ValueType NxGrpType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxGrpType"

instance ValueType NxExportFileType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxExportFileType"

instance ValueType NxExportState where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxExportState"

instance ValueType NxDimCellType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxDimCellType"

instance ValueType NxStackElemType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxStackElemType"

instance ValueType NxSortIndicatorType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxSortIndicatorType"

instance ValueType NxDimensionType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxDimensionType"

instance ValueType NxFieldSelectionMode where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxFieldSelectionMode"

instance ValueType NxFrequencyMode where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxFrequencyMode"

instance ValueType NxDataReductionMode where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxDataReductionMode"

instance ValueType NxHypercubeMode where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxHypercubeMode"

instance ValueType NxPatchOperationType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxPatchOperationType"

instance ValueType NxSelectionCellType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxSelectionCellType"

instance ValueType CharEncodingType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue CharEncodingType"

instance ValueType NxMatchingFieldMode where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxMatchingFieldMode"

newtype Global = Global QixObject
instance ValueType Global where
  toValue (Global as) = toValue as
  fromValue as = Global (fromValue as)

newtype Variable = Variable QixObject
instance ValueType Variable where
  toValue (Variable as) = toValue as
  fromValue as = Variable (fromValue as)

newtype Field = Field QixObject
instance ValueType Field where
  toValue (Field as) = toValue as
  fromValue as = Field (fromValue as)

newtype Doc = Doc QixObject
instance ValueType Doc where
  toValue (Doc as) = toValue as
  fromValue as = Doc (fromValue as)

newtype GenericObject = GenericObject QixObject
instance ValueType GenericObject where
  toValue (GenericObject as) = toValue as
  fromValue as = GenericObject (fromValue as)

newtype GenericDimension = GenericDimension QixObject
instance ValueType GenericDimension where
  toValue (GenericDimension as) = toValue as
  fromValue as = GenericDimension (fromValue as)

newtype GenericBookmark = GenericBookmark QixObject
instance ValueType GenericBookmark where
  toValue (GenericBookmark as) = toValue as
  fromValue as = GenericBookmark (fromValue as)

newtype GenericVariable = GenericVariable QixObject
instance ValueType GenericVariable where
  toValue (GenericVariable as) = toValue as
  fromValue as = GenericVariable (fromValue as)

newtype GenericMeasure = GenericMeasure QixObject
instance ValueType GenericMeasure where
  toValue (GenericMeasure as) = toValue as
  fromValue as = GenericMeasure (fromValue as)

newtype GenericDerivedDefinition = GenericDerivedDefinition QixObject
instance ValueType GenericDerivedDefinition where
  toValue (GenericDerivedDefinition as) = toValue as
  fromValue as = GenericDerivedDefinition (fromValue as)

newtype GenericDerivedFields = GenericDerivedFields QixObject
instance ValueType GenericDerivedFields where
  toValue (GenericDerivedFields as) = toValue as
  fromValue as = GenericDerivedFields (fromValue as)

