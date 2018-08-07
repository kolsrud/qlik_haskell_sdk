{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE TypeSynonymInstances   #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
module ModelEngine where
import Control.Lens
import AbstractStructure
import HardCoded
newtype SelectInfo = SelectInfo AbstractStructure
newtype FieldDefEx = FieldDefEx AbstractStructure
newtype CalendarStrings = CalendarStrings AbstractStructure
newtype BookmarkFieldItem = BookmarkFieldItem AbstractStructure
newtype SortCriteria = SortCriteria AbstractStructure
newtype Size = Size AbstractStructure
newtype Rect = Rect AbstractStructure
newtype RangeSelectInfo = RangeSelectInfo AbstractStructure
newtype Range = Range AbstractStructure
newtype OtherTotalSpecProp = OtherTotalSpecProp AbstractStructure
newtype LocaleInfo = LocaleInfo AbstractStructure
newtype FieldValue = FieldValue AbstractStructure
newtype FieldAttributes = FieldAttributes AbstractStructure
newtype EditorBreakpoint = EditorBreakpoint AbstractStructure
newtype CharRange = CharRange AbstractStructure
newtype BookmarkVariableItem = BookmarkVariableItem AbstractStructure
newtype AlternateStateData = AlternateStateData AbstractStructure
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
newtype NxInlineDimensionDef = NxInlineDimensionDef AbstractStructure
newtype NxDimension = NxDimension AbstractStructure
newtype NxLibraryMeasureDef = NxLibraryMeasureDef AbstractStructure
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
newtype NxDimensionInfo = NxDimensionInfo AbstractStructure
newtype NxMeasureInfo = NxMeasureInfo AbstractStructure
newtype AppScriptObject = AppScriptObject AbstractStructure
newtype NxFieldSelectionInfo = NxFieldSelectionInfo AbstractStructure
newtype NxCurrentSelectionItem = NxCurrentSelectionItem AbstractStructure
newtype NxRangeSelectInfo = NxRangeSelectInfo AbstractStructure
newtype NxMultiRangeSelectInfo = NxMultiRangeSelectInfo AbstractStructure
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
newtype NxListObjectSelect = NxListObjectSelect AbstractStructure
newtype NxSelectionCell = NxSelectionCell AbstractStructure
newtype NxLinkedObjectInfo = NxLinkedObjectInfo AbstractStructure
newtype LayoutExclude = LayoutExclude AbstractStructure
newtype NxDataAreaPage = NxDataAreaPage AbstractStructure
newtype NxViewPort = NxViewPort AbstractStructure
newtype SearchAttribute = SearchAttribute AbstractStructure
newtype SearchableObject = SearchableObject AbstractStructure
newtype SearchObjectInternalOptions = SearchObjectInternalOptions AbstractStructure
newtype NxContinuousDataOptions = NxContinuousDataOptions AbstractStructure
newtype NxTickCell = NxTickCell AbstractStructure
newtype NxAxisTicks = NxAxisTicks AbstractStructure
newtype NxAxisData = NxAxisData AbstractStructure
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
newtype NxFieldProperties = NxFieldProperties AbstractStructure
newtype NxVariableProperties = NxVariableProperties AbstractStructure
newtype NxGetQixCounterResult = NxGetQixCounterResult AbstractStructure
newtype AppEntry = AppEntry AbstractStructure
newtype NxFeatureConfiguration = NxFeatureConfiguration AbstractStructure
newtype NxServiceConfiguration = NxServiceConfiguration AbstractStructure
newtype NxSystemProperties = NxSystemProperties AbstractStructure
newtype NxConfigurationInfo = NxConfigurationInfo AbstractStructure
newtype NxEngineVersion = NxEngineVersion AbstractStructure
newtype MemoryUsage = MemoryUsage AbstractStructure
newtype CPUUsage = CPUUsage AbstractStructure
newtype SessionUsage = SessionUsage AbstractStructure
newtype AppUsage = AppUsage AbstractStructure
newtype UserUsage = UserUsage AbstractStructure
newtype CacheUsage = CacheUsage AbstractStructure
newtype HealthcheckStatus = HealthcheckStatus AbstractStructure
instance Show SelectInfo where show = show.toAs
instance Show FieldDefEx where show = show.toAs
instance Show CalendarStrings where show = show.toAs
instance Show BookmarkFieldItem where show = show.toAs
instance Show SortCriteria where show = show.toAs
instance Show Size where show = show.toAs
instance Show Rect where show = show.toAs
instance Show RangeSelectInfo where show = show.toAs
instance Show Range where show = show.toAs
instance Show OtherTotalSpecProp where show = show.toAs
instance Show LocaleInfo where show = show.toAs
instance Show FieldValue where show = show.toAs
instance Show FieldAttributes where show = show.toAs
instance Show EditorBreakpoint where show = show.toAs
instance Show CharRange where show = show.toAs
instance Show BookmarkVariableItem where show = show.toAs
instance Show AlternateStateData where show = show.toAs
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
instance Show NxInlineDimensionDef where show = show.toAs
instance Show NxDimension where show = show.toAs
instance Show NxLibraryMeasureDef where show = show.toAs
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
instance Show NxDimensionInfo where show = show.toAs
instance Show NxMeasureInfo where show = show.toAs
instance Show AppScriptObject where show = show.toAs
instance Show NxFieldSelectionInfo where show = show.toAs
instance Show NxCurrentSelectionItem where show = show.toAs
instance Show NxRangeSelectInfo where show = show.toAs
instance Show NxMultiRangeSelectInfo where show = show.toAs
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
instance Show NxListObjectSelect where show = show.toAs
instance Show NxSelectionCell where show = show.toAs
instance Show NxLinkedObjectInfo where show = show.toAs
instance Show LayoutExclude where show = show.toAs
instance Show NxDataAreaPage where show = show.toAs
instance Show NxViewPort where show = show.toAs
instance Show SearchAttribute where show = show.toAs
instance Show SearchableObject where show = show.toAs
instance Show SearchObjectInternalOptions where show = show.toAs
instance Show NxContinuousDataOptions where show = show.toAs
instance Show NxTickCell where show = show.toAs
instance Show NxAxisTicks where show = show.toAs
instance Show NxAxisData where show = show.toAs
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
instance Show NxFieldProperties where show = show.toAs
instance Show NxVariableProperties where show = show.toAs
instance Show NxGetQixCounterResult where show = show.toAs
instance Show AppEntry where show = show.toAs
instance Show NxFeatureConfiguration where show = show.toAs
instance Show NxServiceConfiguration where show = show.toAs
instance Show NxSystemProperties where show = show.toAs
instance Show NxConfigurationInfo where show = show.toAs
instance Show NxEngineVersion where show = show.toAs
instance Show MemoryUsage where show = show.toAs
instance Show CPUUsage where show = show.toAs
instance Show SessionUsage where show = show.toAs
instance Show AppUsage where show = show.toAs
instance Show UserUsage where show = show.toAs
instance Show CacheUsage where show = show.toAs
instance Show HealthcheckStatus where show = show.toAs
instance AbstractStructureContainer SelectInfo where
  toAs (SelectInfo as) = as
  fromAs as = SelectInfo as

instance AbstractStructureContainer FieldDefEx where
  toAs (FieldDefEx as) = as
  fromAs as = FieldDefEx as

instance AbstractStructureContainer CalendarStrings where
  toAs (CalendarStrings as) = as
  fromAs as = CalendarStrings as

instance AbstractStructureContainer BookmarkFieldItem where
  toAs (BookmarkFieldItem as) = as
  fromAs as = BookmarkFieldItem as

instance AbstractStructureContainer SortCriteria where
  toAs (SortCriteria as) = as
  fromAs as = SortCriteria as

instance AbstractStructureContainer Size where
  toAs (Size as) = as
  fromAs as = Size as

instance AbstractStructureContainer Rect where
  toAs (Rect as) = as
  fromAs as = Rect as

instance AbstractStructureContainer RangeSelectInfo where
  toAs (RangeSelectInfo as) = as
  fromAs as = RangeSelectInfo as

instance AbstractStructureContainer Range where
  toAs (Range as) = as
  fromAs as = Range as

instance AbstractStructureContainer OtherTotalSpecProp where
  toAs (OtherTotalSpecProp as) = as
  fromAs as = OtherTotalSpecProp as

instance AbstractStructureContainer LocaleInfo where
  toAs (LocaleInfo as) = as
  fromAs as = LocaleInfo as

instance AbstractStructureContainer FieldValue where
  toAs (FieldValue as) = as
  fromAs as = FieldValue as

instance AbstractStructureContainer FieldAttributes where
  toAs (FieldAttributes as) = as
  fromAs as = FieldAttributes as

instance AbstractStructureContainer EditorBreakpoint where
  toAs (EditorBreakpoint as) = as
  fromAs as = EditorBreakpoint as

instance AbstractStructureContainer CharRange where
  toAs (CharRange as) = as
  fromAs as = CharRange as

instance AbstractStructureContainer BookmarkVariableItem where
  toAs (BookmarkVariableItem as) = as
  fromAs as = BookmarkVariableItem as

instance AbstractStructureContainer AlternateStateData where
  toAs (AlternateStateData as) = as
  fromAs as = AlternateStateData as

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

instance AbstractStructureContainer NxInlineDimensionDef where
  toAs (NxInlineDimensionDef as) = as
  fromAs as = NxInlineDimensionDef as

instance AbstractStructureContainer NxDimension where
  toAs (NxDimension as) = as
  fromAs as = NxDimension as

instance AbstractStructureContainer NxLibraryMeasureDef where
  toAs (NxLibraryMeasureDef as) = as
  fromAs as = NxLibraryMeasureDef as

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

instance AbstractStructureContainer NxDimensionInfo where
  toAs (NxDimensionInfo as) = as
  fromAs as = NxDimensionInfo as

instance AbstractStructureContainer NxMeasureInfo where
  toAs (NxMeasureInfo as) = as
  fromAs as = NxMeasureInfo as

instance AbstractStructureContainer AppScriptObject where
  toAs (AppScriptObject as) = as
  fromAs as = AppScriptObject as

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

instance AbstractStructureContainer NxListObjectSelect where
  toAs (NxListObjectSelect as) = as
  fromAs as = NxListObjectSelect as

instance AbstractStructureContainer NxSelectionCell where
  toAs (NxSelectionCell as) = as
  fromAs as = NxSelectionCell as

instance AbstractStructureContainer NxLinkedObjectInfo where
  toAs (NxLinkedObjectInfo as) = as
  fromAs as = NxLinkedObjectInfo as

instance AbstractStructureContainer LayoutExclude where
  toAs (LayoutExclude as) = as
  fromAs as = LayoutExclude as

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

instance AbstractStructureContainer NxFieldProperties where
  toAs (NxFieldProperties as) = as
  fromAs as = NxFieldProperties as

instance AbstractStructureContainer NxVariableProperties where
  toAs (NxVariableProperties as) = as
  fromAs as = NxVariableProperties as

instance AbstractStructureContainer NxGetQixCounterResult where
  toAs (NxGetQixCounterResult as) = as
  fromAs as = NxGetQixCounterResult as

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

instance AbstractStructureContainer MemoryUsage where
  toAs (MemoryUsage as) = as
  fromAs as = MemoryUsage as

instance AbstractStructureContainer CPUUsage where
  toAs (CPUUsage as) = as
  fromAs as = CPUUsage as

instance AbstractStructureContainer SessionUsage where
  toAs (SessionUsage as) = as
  fromAs as = SessionUsage as

instance AbstractStructureContainer AppUsage where
  toAs (AppUsage as) = as
  fromAs as = AppUsage as

instance AbstractStructureContainer UserUsage where
  toAs (UserUsage as) = as
  fromAs as = UserUsage as

instance AbstractStructureContainer CacheUsage where
  toAs (CacheUsage as) = as
  fromAs as = CacheUsage as

instance AbstractStructureContainer HealthcheckStatus where
  toAs (HealthcheckStatus as) = as
  fromAs as = HealthcheckStatus as

instance ValueType SelectInfo where
  toValue (SelectInfo as) = toValue as
  fromValue as = SelectInfo (fromValue as)

instance ValueType FieldDefEx where
  toValue (FieldDefEx as) = toValue as
  fromValue as = FieldDefEx (fromValue as)

instance ValueType CalendarStrings where
  toValue (CalendarStrings as) = toValue as
  fromValue as = CalendarStrings (fromValue as)

instance ValueType BookmarkFieldItem where
  toValue (BookmarkFieldItem as) = toValue as
  fromValue as = BookmarkFieldItem (fromValue as)

instance ValueType SortCriteria where
  toValue (SortCriteria as) = toValue as
  fromValue as = SortCriteria (fromValue as)

instance ValueType Size where
  toValue (Size as) = toValue as
  fromValue as = Size (fromValue as)

instance ValueType Rect where
  toValue (Rect as) = toValue as
  fromValue as = Rect (fromValue as)

instance ValueType RangeSelectInfo where
  toValue (RangeSelectInfo as) = toValue as
  fromValue as = RangeSelectInfo (fromValue as)

instance ValueType Range where
  toValue (Range as) = toValue as
  fromValue as = Range (fromValue as)

instance ValueType OtherTotalSpecProp where
  toValue (OtherTotalSpecProp as) = toValue as
  fromValue as = OtherTotalSpecProp (fromValue as)

instance ValueType LocaleInfo where
  toValue (LocaleInfo as) = toValue as
  fromValue as = LocaleInfo (fromValue as)

instance ValueType FieldValue where
  toValue (FieldValue as) = toValue as
  fromValue as = FieldValue (fromValue as)

instance ValueType FieldAttributes where
  toValue (FieldAttributes as) = toValue as
  fromValue as = FieldAttributes (fromValue as)

instance ValueType EditorBreakpoint where
  toValue (EditorBreakpoint as) = toValue as
  fromValue as = EditorBreakpoint (fromValue as)

instance ValueType CharRange where
  toValue (CharRange as) = toValue as
  fromValue as = CharRange (fromValue as)

instance ValueType BookmarkVariableItem where
  toValue (BookmarkVariableItem as) = toValue as
  fromValue as = BookmarkVariableItem (fromValue as)

instance ValueType AlternateStateData where
  toValue (AlternateStateData as) = toValue as
  fromValue as = AlternateStateData (fromValue as)

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

instance ValueType NxInlineDimensionDef where
  toValue (NxInlineDimensionDef as) = toValue as
  fromValue as = NxInlineDimensionDef (fromValue as)

instance ValueType NxDimension where
  toValue (NxDimension as) = toValue as
  fromValue as = NxDimension (fromValue as)

instance ValueType NxLibraryMeasureDef where
  toValue (NxLibraryMeasureDef as) = toValue as
  fromValue as = NxLibraryMeasureDef (fromValue as)

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

instance ValueType NxDimensionInfo where
  toValue (NxDimensionInfo as) = toValue as
  fromValue as = NxDimensionInfo (fromValue as)

instance ValueType NxMeasureInfo where
  toValue (NxMeasureInfo as) = toValue as
  fromValue as = NxMeasureInfo (fromValue as)

instance ValueType AppScriptObject where
  toValue (AppScriptObject as) = toValue as
  fromValue as = AppScriptObject (fromValue as)

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

instance ValueType NxListObjectSelect where
  toValue (NxListObjectSelect as) = toValue as
  fromValue as = NxListObjectSelect (fromValue as)

instance ValueType NxSelectionCell where
  toValue (NxSelectionCell as) = toValue as
  fromValue as = NxSelectionCell (fromValue as)

instance ValueType NxLinkedObjectInfo where
  toValue (NxLinkedObjectInfo as) = toValue as
  fromValue as = NxLinkedObjectInfo (fromValue as)

instance ValueType LayoutExclude where
  toValue (LayoutExclude as) = toValue as
  fromValue as = LayoutExclude (fromValue as)

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

instance ValueType NxFieldProperties where
  toValue (NxFieldProperties as) = toValue as
  fromValue as = NxFieldProperties (fromValue as)

instance ValueType NxVariableProperties where
  toValue (NxVariableProperties as) = toValue as
  fromValue as = NxVariableProperties (fromValue as)

instance ValueType NxGetQixCounterResult where
  toValue (NxGetQixCounterResult as) = toValue as
  fromValue as = NxGetQixCounterResult (fromValue as)

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

instance ValueType MemoryUsage where
  toValue (MemoryUsage as) = toValue as
  fromValue as = MemoryUsage (fromValue as)

instance ValueType CPUUsage where
  toValue (CPUUsage as) = toValue as
  fromValue as = CPUUsage (fromValue as)

instance ValueType SessionUsage where
  toValue (SessionUsage as) = toValue as
  fromValue as = SessionUsage (fromValue as)

instance ValueType AppUsage where
  toValue (AppUsage as) = toValue as
  fromValue as = AppUsage (fromValue as)

instance ValueType UserUsage where
  toValue (UserUsage as) = toValue as
  fromValue as = UserUsage (fromValue as)

instance ValueType CacheUsage where
  toValue (CacheUsage as) = toValue as
  fromValue as = CacheUsage (fromValue as)

instance ValueType HealthcheckStatus where
  toValue (HealthcheckStatus as) = toValue as
  fromValue as = HealthcheckStatus (fromValue as)

class HasQAccumulate a b | a -> b where
  qAccumulate :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAccumulate = cp_ "qAccumulate"

class HasQActiveExpression a b | a -> b where
  qActiveExpression :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qActiveExpression = cp_ "qActiveExpression"

class HasQActiveField a b | a -> b where
  qActiveField :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qActiveField = cp_ "qActiveField"

class HasQAggrFunc a b | a -> b where
  qAggrFunc :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAggrFunc = cp_ "qAggrFunc"

class HasQAlternative a b | a -> b where
  qAlternative :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAlternative = cp_ "qAlternative"

class HasQAlwaysFullyExpanded a b | a -> b where
  qAlwaysFullyExpanded :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAlwaysFullyExpanded = cp_ "qAlwaysFullyExpanded"

class HasQAndMode a b | a -> b where
  qAndMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qAndMode = cp_ "qAndMode"

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

class HasQBackCount a b | a -> b where
  qBackCount :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBackCount = cp_ "qBackCount"

class HasQBlob a b | a -> b where
  qBlob :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBlob = cp_ "qBlob"

class HasQBookmark a b | a -> b where
  qBookmark :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBookmark = cp_ "qBookmark"

class HasQBottom a b | a -> b where
  qBottom :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBottom = cp_ "qBottom"

class HasQBreakpointList a b | a -> b where
  qBreakpointList :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBreakpointList = cp_ "qBreakpointList"

class HasQBrokenWeeks a b | a -> b where
  qBrokenWeeks :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBrokenWeeks = cp_ "qBrokenWeeks"

class HasQBrutalSum a b | a -> b where
  qBrutalSum :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBrutalSum = cp_ "qBrutalSum"

class HasQBuf a b | a -> b where
  qBuf :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qBuf = cp_ "qBuf"

class HasQCalcCond a b | a -> b where
  qCalcCond :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCalcCond = cp_ "qCalcCond"

class HasQCalendarStrings a b | a -> b where
  qCalendarStrings :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCalendarStrings = cp_ "qCalendarStrings"

class HasQCanCollapse a b | a -> b where
  qCanCollapse :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCanCollapse = cp_ "qCanCollapse"

class HasQCanExpand a b | a -> b where
  qCanExpand :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCanExpand = cp_ "qCanExpand"

class HasQCardinal a b | a -> b where
  qCardinal :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCardinal = cp_ "qCardinal"

class HasQCardinalRatio a b | a -> b where
  qCardinalRatio :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCardinalRatio = cp_ "qCardinalRatio"

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

class HasQColumnsToSelect a b | a -> b where
  qColumnsToSelect :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qColumnsToSelect = cp_ "qColumnsToSelect"

class HasQComment a b | a -> b where
  qComment :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qComment = cp_ "qComment"

class HasQComponentVersion a b | a -> b where
  qComponentVersion :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qComponentVersion = cp_ "qComponentVersion"

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

class HasQCurrentYear a b | a -> b where
  qCurrentYear :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qCurrentYear = cp_ "qCurrentYear"

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

class HasQDimensionType a b | a -> b where
  qDimensionType :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDimensionType = cp_ "qDimensionType"

class HasQDimensions a b | a -> b where
  qDimensions :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDimensions = cp_ "qDimensions"

class HasQDisplayNumberOfRows a b | a -> b where
  qDisplayNumberOfRows :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDisplayNumberOfRows = cp_ "qDisplayNumberOfRows"

class HasQDown a b | a -> b where
  qDown :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qDown = cp_ "qDown"

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

class HasQFieldPairName a b | a -> b where
  qFieldPairName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFieldPairName = cp_ "qFieldPairName"

class HasQFieldSelectionMode a b | a -> b where
  qFieldSelectionMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFieldSelectionMode = cp_ "qFieldSelectionMode"

class HasQFileName a b | a -> b where
  qFileName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qFileName = cp_ "qFileName"

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

class HasQHasData a b | a -> b where
  qHasData :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHasData = cp_ "qHasData"

class HasQHasOtherValues a b | a -> b where
  qHasOtherValues :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHasOtherValues = cp_ "qHasOtherValues"

class HasQHasScript a b | a -> b where
  qHasScript :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHasScript = cp_ "qHasScript"

class HasQHasSoftPatches a b | a -> b where
  qHasSoftPatches :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHasSoftPatches = cp_ "qHasSoftPatches"

class HasQHeight a b | a -> b where
  qHeight :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHeight = cp_ "qHeight"

class HasQHighlightRanges a b | a -> b where
  qHighlightRanges :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qHighlightRanges = cp_ "qHighlightRanges"

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

class HasQIndentMode a b | a -> b where
  qIndentMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIndentMode = cp_ "qIndentMode"

class HasQInfo a b | a -> b where
  qInfo :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qInfo = cp_ "qInfo"

class HasQInitialDataFetch a b | a -> b where
  qInitialDataFetch :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qInitialDataFetch = cp_ "qInitialDataFetch"

class HasQInterColumnSortOrder a b | a -> b where
  qInterColumnSortOrder :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qInterColumnSortOrder = cp_ "qInterColumnSortOrder"

class HasQIsAutoFormat a b | a -> b where
  qIsAutoFormat :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsAutoFormat = cp_ "qIsAutoFormat"

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

class HasQIsEmpty a b | a -> b where
  qIsEmpty :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsEmpty = cp_ "qIsEmpty"

class HasQIsHidden a b | a -> b where
  qIsHidden :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsHidden = cp_ "qIsHidden"

class HasQIsImplicit a b | a -> b where
  qIsImplicit :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsImplicit = cp_ "qIsImplicit"

class HasQIsNull a b | a -> b where
  qIsNull :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsNull = cp_ "qIsNull"

class HasQIsNum a b | a -> b where
  qIsNum :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsNum = cp_ "qIsNum"

class HasQIsNumeric a b | a -> b where
  qIsNumeric :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsNumeric = cp_ "qIsNumeric"

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

class HasQIsSystem a b | a -> b where
  qIsSystem :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsSystem = cp_ "qIsSystem"

class HasQIsTotalCell a b | a -> b where
  qIsTotalCell :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qIsTotalCell = cp_ "qIsTotalCell"

class HasQItems a b | a -> b where
  qItems :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qItems = cp_ "qItems"

class HasQKey a b | a -> b where
  qKey :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qKey = cp_ "qKey"

class HasQLabel a b | a -> b where
  qLabel :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qLabel = cp_ "qLabel"

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

class HasQMin a b | a -> b where
  qMin :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMin = cp_ "qMin"

class HasQMinInclEq a b | a -> b where
  qMinInclEq :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMinInclEq = cp_ "qMinInclEq"

class HasQMinNeg a b | a -> b where
  qMinNeg :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qMinNeg = cp_ "qMinNeg"

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

class HasQName a b | a -> b where
  qName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qName = cp_ "qName"

class HasQNbrFieldParameters a b | a -> b where
  qNbrFieldParameters :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNbrFieldParameters = cp_ "qNbrFieldParameters"

class HasQNbrPoints a b | a -> b where
  qNbrPoints :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNbrPoints = cp_ "qNbrPoints"

class HasQNoOfFieldParameters a b | a -> b where
  qNoOfFieldParameters :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNoOfFieldParameters = cp_ "qNoOfFieldParameters"

class HasQNoOfLeftDims a b | a -> b where
  qNoOfLeftDims :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qNoOfLeftDims = cp_ "qNoOfLeftDims"

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

class HasQObjectId a b | a -> b where
  qObjectId :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qObjectId = cp_ "qObjectId"

class HasQOneAndOnlyOne a b | a -> b where
  qOneAndOnlyOne :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOneAndOnlyOne = cp_ "qOneAndOnlyOne"

class HasQOp a b | a -> b where
  qOp :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOp = cp_ "qOp"

class HasQOption a b | a -> b where
  qOption :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qOption = cp_ "qOption"

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

class HasQPivotDataPages a b | a -> b where
  qPivotDataPages :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPivotDataPages = cp_ "qPivotDataPages"

class HasQPopulateMissing a b | a -> b where
  qPopulateMissing :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPopulateMissing = cp_ "qPopulateMissing"

class HasQPositions a b | a -> b where
  qPositions :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPositions = cp_ "qPositions"

class HasQPreDefinedList a b | a -> b where
  qPreDefinedList :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qPreDefinedList = cp_ "qPreDefinedList"

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

class HasQReferenceDay a b | a -> b where
  qReferenceDay :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qReferenceDay = cp_ "qReferenceDay"

class HasQReferencedExpression a b | a -> b where
  qReferencedExpression :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qReferencedExpression = cp_ "qReferencedExpression"

class HasQRelative a b | a -> b where
  qRelative :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qRelative = cp_ "qRelative"

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

class HasQStackedDataPages a b | a -> b where
  qStackedDataPages :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qStackedDataPages = cp_ "qStackedDataPages"

class HasQStart a b | a -> b where
  qStart :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qStart = cp_ "qStart"

class HasQStartIndex a b | a -> b where
  qStartIndex :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qStartIndex = cp_ "qStartIndex"

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

class HasQSubNodes a b | a -> b where
  qSubNodes :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qSubNodes = cp_ "qSubNodes"

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

class HasQToggleMode a b | a -> b where
  qToggleMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qToggleMode = cp_ "qToggleMode"

class HasQTop a b | a -> b where
  qTop :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTop = cp_ "qTop"

class HasQTotal a b | a -> b where
  qTotal :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTotal = cp_ "qTotal"

class HasQTotalLabel a b | a -> b where
  qTotalLabel :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTotalLabel = cp_ "qTotalLabel"

class HasQTotalMode a b | a -> b where
  qTotalMode :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qTotalMode = cp_ "qTotalMode"

class HasQType a b | a -> b where
  qType :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qType = cp_ "qType"

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

class HasQUtcModifyTime a b | a -> b where
  qUtcModifyTime :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qUtcModifyTime = cp_ "qUtcModifyTime"

class HasQValue a b | a -> b where
  qValue :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qValue = cp_ "qValue"

class HasQValues a b | a -> b where
  qValues :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qValues = cp_ "qValues"

class HasQValuesCount a b | a -> b where
  qValuesCount :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qValuesCount = cp_ "qValuesCount"

class HasQVariableItems a b | a -> b where
  qVariableItems :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qVariableItems = cp_ "qVariableItems"

class HasQWidth a b | a -> b where
  qWidth :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qWidth = cp_ "qWidth"

class HasQZoomLevel a b | a -> b where
  qZoomLevel :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qZoomLevel = cp_ "qZoomLevel"

class HasQactive a b | a -> b where
  qactive :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qactive = cp_ "qactive"

class HasQactive_docs a b | a -> b where
  qactive_docs :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qactive_docs = cp_ "qactive_docs"

class HasQadded a b | a -> b where
  qadded :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qadded = cp_ "qadded"

class HasQallocated a b | a -> b where
  qallocated :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qallocated = cp_ "qallocated"

class HasQapps a b | a -> b where
  qapps :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qapps = cp_ "qapps"

class HasQbufferName a b | a -> b where
  qbufferName :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qbufferName = cp_ "qbufferName"

class HasQbytes_added a b | a -> b where
  qbytes_added :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qbytes_added = cp_ "qbytes_added"

class HasQcache a b | a -> b where
  qcache :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qcache = cp_ "qcache"

class HasQcalls a b | a -> b where
  qcalls :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qcalls = cp_ "qcalls"

class HasQcomitted a b | a -> b where
  qcomitted :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qcomitted = cp_ "qcomitted"

class HasQcpu a b | a -> b where
  qcpu :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qcpu = cp_ "qcpu"

class HasQcx a b | a -> b where
  qcx :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qcx = cp_ "qcx"

class HasQcy a b | a -> b where
  qcy :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qcy = cp_ "qcy"

class HasQfree a b | a -> b where
  qfree :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qfree = cp_ "qfree"

class HasQhits a b | a -> b where
  qhits :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qhits = cp_ "qhits"

class HasQlineIx a b | a -> b where
  qlineIx :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qlineIx = cp_ "qlineIx"

class HasQloaded_docs a b | a -> b where
  qloaded_docs :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qloaded_docs = cp_ "qloaded_docs"

class HasQlookups a b | a -> b where
  qlookups :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qlookups = cp_ "qlookups"

class HasQmem a b | a -> b where
  qmem :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qmem = cp_ "qmem"

class HasQnDec a b | a -> b where
  qnDec :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qnDec = cp_ "qnDec"

class HasQreplaced a b | a -> b where
  qreplaced :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qreplaced = cp_ "qreplaced"

class HasQselections a b | a -> b where
  qselections :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qselections = cp_ "qselections"

class HasQsession a b | a -> b where
  qsession :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qsession = cp_ "qsession"

class HasQstarted a b | a -> b where
  qstarted :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qstarted = cp_ "qstarted"

class HasQtotal a b | a -> b where
  qtotal :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qtotal = cp_ "qtotal"

class HasQusers a b | a -> b where
  qusers :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qusers = cp_ "qusers"

class HasQversion a b | a -> b where
  qversion :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qversion = cp_ "qversion"

class HasQx a b | a -> b where
  qx :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qx = cp_ "qx"

class HasQy a b | a -> b where
  qy :: (AbstractStructureContainer a, ValueType b) => Lens' a b
  qy = cp_ "qy"

instance HasQTextSearch SelectInfo String
-- instance HasQRangeLo SelectInfo ?
-- instance HasQRangeHi SelectInfo ?
instance HasQNumberFormat SelectInfo FieldAttributes
instance HasQRangeInfo SelectInfo [RangeSelectInfo]
instance HasQSoftLock SelectInfo Bool
instance HasQContinuousRangeInfo SelectInfo [Range]
instance HasQName FieldDefEx String
instance HasQType FieldDefEx FieldType
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
-- instance HasQSortByState SortCriteria ?
-- instance HasQSortByFrequency SortCriteria ?
-- instance HasQSortByNumeric SortCriteria ?
-- instance HasQSortByAscii SortCriteria ?
-- instance HasQSortByLoadOrder SortCriteria ?
-- instance HasQSortByExpression SortCriteria ?
instance HasQExpression SortCriteria ValueExpr
-- instance HasQSortByGreyness SortCriteria ?
instance HasQcx Size Int
instance HasQcy Size Int
instance HasQLeft Rect Int
instance HasQTop Rect Int
instance HasQWidth Rect Int
instance HasQHeight Rect Int
-- instance HasQRangeLo RangeSelectInfo ?
-- instance HasQRangeHi RangeSelectInfo ?
instance HasQMeasure RangeSelectInfo String
-- instance HasQMin Range ?
-- instance HasQMax Range ?
instance HasQMinInclEq Range Bool
instance HasQMaxInclEq Range Bool
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
instance HasQText FieldValue String
instance HasQIsNumeric FieldValue Bool
-- instance HasQNumber FieldValue ?
instance HasQType FieldAttributes FieldAttrType
instance HasQnDec FieldAttributes Int
instance HasQUseThou FieldAttributes Int
instance HasQFmt FieldAttributes String
instance HasQDec FieldAttributes String
instance HasQThou FieldAttributes String
instance HasQbufferName EditorBreakpoint String
instance HasQlineIx EditorBreakpoint Int
instance HasQEnabled EditorBreakpoint Bool
instance HasQCharPos CharRange Int
instance HasQCharCount CharRange Int
instance HasQName BookmarkVariableItem String
instance HasQValue BookmarkVariableItem FieldValue
instance HasQStateName AlternateStateData String
instance HasQFieldItems AlternateStateData [BookmarkFieldItem]
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
instance HasQGrouping NxInlineDimensionDef NxGrpType
instance HasQFieldDefs NxInlineDimensionDef [String]
instance HasQFieldLabels NxInlineDimensionDef [String]
instance HasQSortCriterias NxInlineDimensionDef [SortCriteria]
instance HasQNumberPresentations NxInlineDimensionDef [FieldAttributes]
instance HasQReverseSort NxInlineDimensionDef Bool
instance HasQActiveField NxInlineDimensionDef Int
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
instance HasQLabel NxLibraryMeasureDef String
instance HasQDef NxLibraryMeasureDef String
instance HasQGrouping NxLibraryMeasureDef NxGrpType
instance HasQExpressions NxLibraryMeasureDef [String]
instance HasQActiveExpression NxLibraryMeasureDef Int
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
instance HasQExpression NxAttrExprDef String
instance HasQLibraryId NxAttrExprDef String
-- instance HasQMin NxAttrExprInfo ?
-- instance HasQMax NxAttrExprInfo ?
instance HasQFallbackTitle NxAttrExprInfo String
instance HasQDef NxAttrDimDef String
instance HasQLibraryId NxAttrDimDef String
instance HasQSortBy NxAttrDimDef SortCriteria
instance HasQCardinal NxAttrDimInfo Int
instance HasQSize NxAttrDimInfo Size
instance HasQFallbackTitle NxAttrDimInfo String
instance HasQLocked NxAttrDimInfo Bool
-- instance HasQError NxAttrDimInfo ?
instance HasQLibraryId NxMeasure String
instance HasQDef NxMeasure NxInlineMeasureDef
instance HasQSortBy NxMeasure SortCriteria
instance HasQAttributeExpressions NxMeasure [NxAttrExprDef]
instance HasQAttributeDimensions NxMeasure [NxAttrDimDef]
instance HasQCalcCond NxMeasure ValueExpr
instance HasQRanges NxHighlightRanges [CharRange]
instance HasQText NxSimpleValue String
-- instance HasQNum NxSimpleValue ?
instance HasQText NxSimpleDimValue String
instance HasQElemNo NxSimpleDimValue Int
instance HasQValues NxAttributeExpressionValues [NxSimpleValue]
instance HasQValues NxAttributeDimValues [NxSimpleDimValue]
instance HasQText NxCell String
-- instance HasQNum NxCell ?
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
-- instance HasQValue NxPivotDimensionCell ?
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
-- instance HasQValue NxStackedPivotCell ?
instance HasQCanExpand NxStackedPivotCell Bool
instance HasQCanCollapse NxStackedPivotCell Bool
instance HasQType NxStackedPivotCell NxDimCellType
-- instance HasQMaxPos NxStackedPivotCell ?
-- instance HasQMinNeg NxStackedPivotCell ?
instance HasQUp NxStackedPivotCell Int
instance HasQDown NxStackedPivotCell Int
instance HasQRow NxStackedPivotCell Int
instance HasQSubNodes NxStackedPivotCell [NxStackedPivotCell]
-- instance HasQAttrExps NxStackedPivotCell ?
-- instance HasQAttrDims NxStackedPivotCell ?
instance HasQLabel NxPivotValuePoint String
instance HasQText NxPivotValuePoint String
-- instance HasQNum NxPivotValuePoint ?
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
-- instance HasQMin NxDimensionInfo ?
-- instance HasQMax NxDimensionInfo ?
instance HasQContinuousAxes NxDimensionInfo Bool
instance HasQIsCyclic NxDimensionInfo Bool
instance HasQDerivedField NxDimensionInfo Bool
instance HasQAttrExprInfo NxDimensionInfo [NxAttrExprInfo]
instance HasQAttrDimInfo NxDimensionInfo [NxAttrDimInfo]
instance HasQFallbackTitle NxMeasureInfo String
instance HasQApprMaxGlyphCount NxMeasureInfo Int
instance HasQCardinal NxMeasureInfo Int
instance HasQSortIndicator NxMeasureInfo NxSortIndicatorType
instance HasQNumFormat NxMeasureInfo FieldAttributes
-- instance HasQMin NxMeasureInfo ?
-- instance HasQMax NxMeasureInfo ?
-- instance HasQError NxMeasureInfo ?
instance HasQReverseSort NxMeasureInfo Bool
instance HasQIsAutoFormat NxMeasureInfo Bool
instance HasQAttrExprInfo NxMeasureInfo [NxAttrExprInfo]
instance HasQAttrDimInfo NxMeasureInfo [NxAttrDimInfo]
instance HasQScript AppScriptObject String
instance HasQBreakpointList AppScriptObject [EditorBreakpoint]
instance HasQFavoriteVariables AppScriptObject [String]
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
-- instance HasQLat NxGeoCoordinate ?
-- instance HasQLon NxGeoCoordinate ?
-- instance HasQTop NxGeoBoundingBox ?
-- instance HasQLeft NxGeoBoundingBox ?
-- instance HasQBottom NxGeoBoundingBox ?
-- instance HasQRight NxGeoBoundingBox ?
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
-- instance HasQSortbyYValue HyperCubeDef ?
instance HasQTitle HyperCubeDef StringExpr
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
instance HasQInSelections NxSelectionInfo Bool
instance HasQMadeSelections NxSelectionInfo Bool
instance HasQInfo GenericObjectProperties NxInfo
instance HasQExtendsId GenericObjectProperties String
instance HasQMetaDef GenericObjectProperties NxMetaDef
instance HasQInfo GenericObjectLayout NxInfo
-- instance HasQMeta GenericObjectLayout ?
instance HasQExtendsId GenericObjectLayout String
instance HasQHasSoftPatches GenericObjectLayout Bool
-- instance HasQError GenericObjectLayout ?
instance HasQSelectionInfo GenericObjectLayout NxSelectionInfo
instance HasQType GenericAppObjectMetaData String
instance HasQId GenericAppObjectMetaData String
instance HasQProperty GenericObjectEntry GenericObjectProperties
instance HasQChildren GenericObjectEntry [GenericObjectEntry]
-- instance HasQEmbeddedSnapshotRef GenericObjectEntry ?
instance HasQMetaData GenericAppObjectEntry GenericAppObjectMetaData
instance HasQRoot GenericAppObjectEntry GenericObjectEntry
instance HasQType NxQvfBundledItem String
-- instance HasQBlob NxQvfBundledItem [?]
instance HasQOp NxPatch NxPatchOperationType
instance HasQPath NxPatch String
instance HasQValue NxPatch String
instance HasQPath NxListObjectSelect String
instance HasQToggleMode NxListObjectSelect Bool
instance HasQSoftLock NxListObjectSelect Bool
instance HasQValues NxListObjectSelect [Int]
instance HasQType NxSelectionCell NxSelectionCellType
instance HasQCol NxSelectionCell Int
instance HasQRow NxSelectionCell Int
instance HasQRootId NxLinkedObjectInfo String
instance HasQInfo NxLinkedObjectInfo NxInfo
-- instance HasQLeft NxDataAreaPage ?
-- instance HasQTop NxDataAreaPage ?
-- instance HasQWidth NxDataAreaPage ?
-- instance HasQHeight NxDataAreaPage ?
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
-- instance HasQStart NxContinuousDataOptions ?
-- instance HasQEnd NxContinuousDataOptions ?
instance HasQNbrPoints NxContinuousDataOptions Int
instance HasQMaxNbrTicks NxContinuousDataOptions Int
instance HasQMaxNumberLines NxContinuousDataOptions Int
instance HasQText NxTickCell String
-- instance HasQStart NxTickCell ?
-- instance HasQEnd NxTickCell ?
instance HasQName NxAxisTicks String
instance HasQTags NxAxisTicks [String]
instance HasQTicks NxAxisTicks [NxTickCell]
instance HasQAxis NxAxisData [NxAxisTicks]
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
instance HasQDim GenericDimensionLayout NxLibraryDimensionDef
instance HasQDimInfos GenericDimensionLayout [GenericDimensionInfo]
instance HasQStateData NxBookmark [AlternateStateData]
-- instance HasQUtcModifyTime NxBookmark ?
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
-- instance HasQNum GenericVariableLayout ?
instance HasQIsScriptCreated GenericVariableLayout Bool
-- instance HasQValue GenericVariableEntry ?
instance HasQIsScriptCreated GenericVariableEntry Bool
instance HasQProperties GenericVariableEntry GenericVariableProperties
instance HasQId GenericVariableEntryList String
instance HasQEntryList GenericVariableEntryList [GenericVariableEntry]
instance HasQInfo GenericMeasureProperties NxInfo
instance HasQMeasure GenericMeasureProperties NxLibraryMeasureDef
instance HasQMetaDef GenericMeasureProperties NxMetaDef
instance HasQInfo GenericMeasureLayout NxInfo
instance HasQMeasure GenericMeasureLayout NxLibraryMeasureDef
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
-- instance HasQCardinalRatio FieldScores ?
-- instance HasQSymbolScore FieldScores ?
-- instance HasQRowScore FieldScores ?
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
-- instance HasQBuf NxNotification [?]
instance HasQMeta NxNotification NxMeta
instance HasQOneAndOnlyOne NxFieldProperties Bool
instance HasQName NxVariableProperties String
instance HasQNumberPresentation NxVariableProperties FieldAttributes
instance HasQIncludeInBookmark NxVariableProperties Bool
instance HasQUsePredefListedValues NxVariableProperties Bool
instance HasQPreDefinedList NxVariableProperties [String]
instance HasQName NxGetQixCounterResult String
instance HasQValue NxGetQixCounterResult Int
instance HasQID AppEntry String
instance HasQTitle AppEntry String
instance HasQPath AppEntry String
instance HasQLastReloadTime AppEntry String
instance HasQReadOnly AppEntry Bool
instance HasQMeta AppEntry NxMeta
instance HasQThumbnail AppEntry StaticContentUrl
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
-- instance HasQcomitted MemoryUsage ?
-- instance HasQallocated MemoryUsage ?
-- instance HasQfree MemoryUsage ?
-- instance HasQtotal CPUUsage ?
instance HasQactive SessionUsage Int
instance HasQtotal SessionUsage Int
instance HasQactive_docs AppUsage [String]
instance HasQloaded_docs AppUsage [String]
instance HasQcalls AppUsage Int
instance HasQselections AppUsage Int
instance HasQactive UserUsage Int
instance HasQtotal UserUsage Int
instance HasQhits CacheUsage Int
instance HasQlookups CacheUsage Int
instance HasQadded CacheUsage Int
instance HasQreplaced CacheUsage Int
instance HasQbytes_added CacheUsage Int
instance HasQversion HealthcheckStatus String
instance HasQstarted HealthcheckStatus String
instance HasQmem HealthcheckStatus MemoryUsage
instance HasQcpu HealthcheckStatus CPUUsage
instance HasQsession HealthcheckStatus SessionUsage
instance HasQapps HealthcheckStatus AppUsage
instance HasQusers HealthcheckStatus UserUsage
instance HasQcache HealthcheckStatus CacheUsage
type NxCellRows = [ NxCell ]
type ArrayOfNxValuePoint = [ NxPivotValuePoint ]
type SearchAttributeArray = [ SearchAttribute ]
data FieldType = NOT_PRESENT | PRESENT | IS_CYCLIC_GROUP | IS_DRILL_GROUP | IS_VAR | IS_EXPR | IS_IMPLICIT | IS_DETAIL deriving (Show, Read, Eq, Ord, Enum)
data TotalMode = TOTAL_OFF | TOTAL_EXPR deriving (Show, Read, Eq, Ord, Enum)
data OtherSortMode = OTHER_SORT_DEFAULT | OTHER_SORT_DESCENDING | OTHER_SORT_ASCENDING deriving (Show, Read, Eq, Ord, Enum)
data OtherMode = OTHER_OFF | OTHER_COUNTED | OTHER_ABS_LIMITED | OTHER_ABS_ACC_TARGET | OTHER_REL_LIMITED | OTHER_REL_ACC_TARGET deriving (Show, Read, Eq, Ord, Enum)
data OtherLimitMode = OTHER_GE_LIMIT | OTHER_LE_LIMIT | OTHER_GT_LIMIT | OTHER_LT_LIMIT deriving (Show, Read, Eq, Ord, Enum)
data FieldAttrType = UNKNOWN | ASCII | INTEGER | REAL | FIX | MONEY | DATE | TIME | TIMESTAMP | INTERVAL deriving (Show, Read, Eq, Ord, Enum)
data StateEnumType = LOCKED | SELECTED | OPTION | DESELECTED | ALTERNATIVE | EXCLUDED | EXCL_SELECTED | EXCL_LOCKED | NSTATES deriving (Show, Read, Eq, Ord, Enum)
data NxLocalizedErrorCode = LOCERR_INTERNAL_ERROR | LOCERR_GENERIC_UNKNOWN | LOCERR_GENERIC_OK | LOCERR_GENERIC_NOT_SET | LOCERR_GENERIC_NOT_FOUND | LOCERR_GENERIC_ALREADY_EXISTS | LOCERR_GENERIC_INVALID_PATH | LOCERR_GENERIC_ACCESS_DENIED | LOCERR_GENERIC_OUT_OF_MEMORY | LOCERR_GENERIC_NOT_INITIALIZED | LOCERR_GENERIC_INVALID_PARAMETERS | LOCERR_GENERIC_EMPTY_PARAMETERS | LOCERR_GENERIC_INTERNAL_ERROR | LOCERR_GENERIC_CORRUPT_DATA | LOCERR_GENERIC_MEMORY_INCONSISTENCY | LOCERR_GENERIC_INVISIBLE_OWNER_ABORT | LOCERR_GENERIC_PROHIBIT_VALIDATE | LOCERR_GENERIC_ABORTED | LOCERR_GENERIC_CONNECTION_LOST | LOCERR_GENERIC_UNSUPPORTED_IN_PRODUCT_VERSION | LOCERR_GENERIC_REST_CONNECTION_FAILURE | LOCERR_HTTP_400 | LOCERR_HTTP_401 | LOCERR_HTTP_402 | LOCERR_HTTP_403 | LOCERR_HTTP_404 | LOCERR_HTTP_405 | LOCERR_HTTP_406 | LOCERR_HTTP_407 | LOCERR_HTTP_408 | LOCERR_HTTP_409 | LOCERR_HTTP_410 | LOCERR_HTTP_411 | LOCERR_HTTP_412 | LOCERR_HTTP_413 | LOCERR_HTTP_414 | LOCERR_HTTP_415 | LOCERR_HTTP_416 | LOCERR_HTTP_417 | LOCERR_HTTP_500 | LOCERR_HTTP_501 | LOCERR_HTTP_502 | LOCERR_HTTP_503 | LOCERR_HTTP_504 | LOCERR_HTTP_505 | LOCERR_HTTP_509 | LOCERR_HTTP_COULDNT_RESOLVE_HOST | LOCERR_APP_ALREADY_EXISTS | LOCERR_APP_INVALID_NAME | LOCERR_APP_ALREADY_OPEN | LOCERR_APP_NOT_FOUND | LOCERR_APP_IMPORT_FAILED | LOCERR_APP_SAVE_FAILED | LOCERR_APP_CREATE_FAILED | LOCERR_APP_INVALID | LOCERR_APP_CONNECT_FAILED | LOCERR_APP_ALREADY_OPEN_IN_DIFFERENT_MODE | LOCERR_APP_MIGRATION_COULD_NOT_CONTACT_MIGRATION_SERVICE | LOCERR_APP_MIGRATION_COULD_NOT_START_MIGRATION | LOCERR_APP_MIGRATION_FAILURE | LOCERR_APP_SCRIPT_MISSING | LOCERR_CONNECTION_ALREADY_EXISTS | LOCERR_CONNECTION_NOT_FOUND | LOCERR_CONNECTION_FAILED_TO_LOAD | LOCERR_CONNECTION_FAILED_TO_IMPORT | LOCERR_CONNECTION_NAME_IS_INVALID | LOCERR_FILE_ACCESS_DENIED | LOCERR_FILE_NAME_INVALID | LOCERR_FILE_CORRUPT | LOCERR_FILE_NOT_FOUND | LOCERR_FILE_FORMAT_UNSUPPORTED | LOCERR_FILE_OPENED_IN_UNSUPPORTED_MODE | LOCERR_FILE_TABLE_NOT_FOUND | LOCERR_USER_ACCESS_DENIED | LOCERR_USER_IMPERSONATION_FAILED | LOCERR_SERVER_OUT_OF_SESSION_AND_USER_CALS | LOCERR_SERVER_OUT_OF_SESSION_CALS | LOCERR_SERVER_OUT_OF_USAGE_CALS | LOCERR_SERVER_OUT_OF_CALS | LOCERR_SERVER_OUT_OF_NAMED_CALS | LOCERR_SERVER_OFF_DUTY | LOCERR_SERVER_BUSY | LOCERR_SERVER_LICENSE_EXPIRED | LOCERR_SERVER_AJAX_DISABLED | LOCERR_HC_INVALID_OBJECT | LOCERR_HC_RESULT_TOO_LARGE | LOCERR_HC_INVALID_OBJECT_STATE | LOCERR_HC_MODAL_OBJECT_ERROR | LOCERR_CALC_INVALID_DEF | LOCERR_CALC_NOT_IN_LIB | LOCERR_CALC_HEAP_ERROR | LOCERR_CALC_TOO_LARGE | LOCERR_CALC_TIMEOUT | LOCERR_CALC_EVAL_CONDITION_FAILED | LOCERR_CALC_MIXED_LINKED_AGGREGATION | LOCERR_CALC_MISSING_LINKED | LOCERR_CALC_INVALID_COL_SORT | LOCERR_CALC_PAGES_TOO_LARGE | LOCERR_CALC_SEMANTIC_FIELD_NOT_ALLOWED | LOCERR_CALC_VALIDATION_STATE_INVALID | LOCERR_CALC_PIVOT_DIMENSIONS_ALREADY_EXISTS | LOCERR_CALC_MISSING_LINKED_FIELD | LOCERR_CALC_NOT_CALCULATED | LOCERR_LAYOUT_EXTENDS_INVALID_ID | LOCERR_LAYOUT_LINKED_OBJECT_NOT_FOUND | LOCERR_LAYOUT_LINKED_OBJECT_INVALID | LOCERR_PERSISTENCE_WRITE_FAILED | LOCERR_PERSISTENCE_READ_FAILED | LOCERR_PERSISTENCE_DELETE_FAILED | LOCERR_PERSISTENCE_NOT_FOUND | LOCERR_PERSISTENCE_UNSUPPORTED_VERSION | LOCERR_PERSISTENCE_MIGRATION_FAILED_READ_ONLY | LOCERR_PERSISTENCE_MIGRATION_CANCELLED | LOCERR_PERSISTENCE_MIGRATION_BACKUP_FAILED | LOCERR_PERSISTENCE_DISK_FULL | LOCERR_PERSISTENCE_NOT_SUPPORTED_FOR_SESSION_APP | LOCERR_PERSISTENCE_SYNC_SET_CHUNK_INVALID_PARAMETERS | LOCERR_PERSISTENCE_SYNC_GET_CHUNK_INVALID_PARAMETERS | LOCERR_SCRIPT_DATASOURCE_ACCESS_DENIED | LOCERR_RELOAD_IN_PROGRESS | LOCERR_RELOAD_TABLE_X_NOT_FOUND | LOCERR_RELOAD_UNKNOWN_STATEMENT | LOCERR_RELOAD_EXPECTED_SOMETHING_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_NOTHING_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_1_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_2_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_3_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_4_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_5_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_6_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_7_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_EXPECTED_ONE_OF_8_OR_MORE_TOKENS_FOUND_UNKNOWN | LOCERR_RELOAD_FIELD_X_NOT_FOUND | LOCERR_RELOAD_MAPPING_TABLE_X_NOT_FOUND | LOCERR_RELOAD_LIB_CONNECTION_X_NOT_FOUND | LOCERR_RELOAD_NAME_ALREADY_TAKEN | LOCERR_RELOAD_WRONG_FILE_FORMAT_DIF | LOCERR_RELOAD_WRONG_FILE_FORMAT_BIFF | LOCERR_RELOAD_WRONG_FILE_FORMAT_ENCRYPTED | LOCERR_RELOAD_OPEN_FILE_ERROR | LOCERR_RELOAD_AUTO_GENERATE_COUNT | LOCERR_RELOAD_PE_ILLEGAL_PREFIX_COMB | LOCERR_RELOAD_MATCHING_CONTROL_STATEMENT_ERROR | LOCERR_RELOAD_MATCHING_LIBPATH_X_NOT_FOUND | LOCERR_RELOAD_MATCHING_LIBPATH_X_INVALID | LOCERR_RELOAD_MATCHING_LIBPATH_X_OUTSIDE | LOCERR_RELOAD_NO_QUALIFIED_PATH_FOR_FILE | LOCERR_RELOAD_MODE_STATEMENT_ONLY_FOR_LIB_PATHS | LOCERR_RELOAD_INCONSISTENT_USE_OF_SEMANTIC_FIELDS | LOCERR_RELOAD_NO_OPEN_DATABASE | LOCERR_RELOAD_AGGREGATION_REQUIRED_BY_GROUP_BY | LOCERR_RELOAD_CONNECT_MUST_USE_LIB_PREFIX_IN_THIS_MODE | LOCERR_RELOAD_ODBC_CONNECT_FAILED | LOCERR_RELOAD_OLEDB_CONNECT_FAILED | LOCERR_RELOAD_CUSTOM_CONNECT_FAILED | LOCERR_RELOAD_ODBC_READ_FAILED | LOCERR_RELOAD_OLEDB_READ_FAILED | LOCERR_RELOAD_CUSTOM_READ_FAILED | LOCERR_RELOAD_BINARY_LOAD_PROHIBITED | LOCERR_RELOAD_CONNECTOR_START_FAILED | LOCERR_RELOAD_CONNECTOR_NOT_RESPONDING | LOCERR_RELOAD_CONNECTOR_REPLY_ERROR | LOCERR_RELOAD_CONNECTOR_CONNECT_ERROR | LOCERR_PERSONAL_NEW_VERSION_AVAILABLE | LOCERR_PERSONAL_VERSION_EXPIRED | LOCERR_PERSONAL_SECTION_ACCESS_DETECTED | LOCERR_PERSONAL_APP_DELETION_FAILED | LOCERR_USER_AUTHENTICATION_FAILURE | LOCERR_EXPORT_OUT_OF_MEMORY | LOCERR_EXPORT_NO_DATA | LOCERR_SYNC_INVALID_OFFSET | LOCERR_SEARCH_TIMEOUT | LOCERR_DIRECT_DISCOVERY_LINKED_EXPRESSION_FAIL | LOCERR_DIRECT_DISCOVERY_ROWCOUNT_OVERFLOW | LOCERR_DIRECT_DISCOVERY_EMPTY_RESULT | LOCERR_DIRECT_DISCOVERY_DB_CONNECTION_FAILED | LOCERR_DIRECT_DISCOVERY_MEASURE_NOT_ALLOWED | LOCERR_DIRECT_DISCOVERY_DETAIL_NOT_ALLOWED | LOCERR_DIRECT_DISCOVERY_NOT_SYNTH_CIRCULAR_ALLOWED | LOCERR_DIRECT_DISCOVERY_ONLY_ONE_DD_TABLE_ALLOWED | LOCERR_DIRECT_DISCOVERY_DB_AUTHORIZATION_FAILED | LOCERR_SMART_LOAD_TABLE_NOT_FOUND | LOCERR_SMART_LOAD_TABLE_DUPLICATED | LOCERR_VARIABLE_NO_NAME | LOCERR_VARIABLE_DUPLICATE_NAME | LOCERR_VARIABLE_INCONSISTENCY | LOCERR_MEDIA_LIBRARY_LIST_FAILED | LOCERR_MEDIA_LIBRARY_CONTENT_FAILED | LOCERR_MEDIA_BUNDLING_FAILED | LOCERR_MEDIA_UNBUNDLING_FAILED | LOCERR_MEDIA_LIBRARY_NOT_FOUND | LOCERR_FEATURE_DISABLED | LOCERR_JSON_RPC_INVALID_REQUEST | LOCERR_JSON_RPC_METHOD_NOT_FOUND | LOCERR_JSON_RPC_INVALID_PARAMETERS | LOCERR_JSON_RPC_INTERNAL_ERROR | LOCERR_JSON_RPC_PARSE_ERROR deriving (Show, Read, Eq, Ord, Enum)
data NxLocalizedWarningCode = LOCWARN_PERSONAL_RELOAD_REQUIRED | LOCWARN_PERSONAL_VERSION_EXPIRES_SOON | LOCWARN_EXPORT_DATA_TRUNCATED | LOCWARN_COULD_NOT_OPEN_ALL_OBJECTS deriving (Show, Read, Eq, Ord, Enum)
data NxGrpType = GRP_NX_NONE | GRP_NX_HIEARCHY | GRP_NX_COLLECTION deriving (Show, Read, Eq, Ord, Enum)
data NxExportFileType = EXPORT_CSV_C | EXPORT_CSV_T | EXPORT_OOXML deriving (Show, Read, Eq, Ord, Enum)
data NxExportState = EXPORT_POSSIBLE | EXPORT_ALL deriving (Show, Read, Eq, Ord, Enum)
data NxDimCellType = NX_DIM_CELL_VALUE | NX_DIM_CELL_EMPTY | NX_DIM_CELL_NORMAL | NX_DIM_CELL_TOTAL | NX_DIM_CELL_OTHER | NX_DIM_CELL_AGGR | NX_DIM_CELL_PSEUDO | NX_DIM_CELL_ROOT | NX_DIM_CELL_NULL deriving (Show, Read, Eq, Ord, Enum)
data NxStackElemType = NX_STACK_CELL_NORMAL | NX_STACK_CELL_TOTAL | NX_STACK_CELL_OTHER | NX_STACK_CELL_SUM | NX_STACK_CELL_VALUE | NX_STACK_CELL_PSEUDO deriving (Show, Read, Eq, Ord, Enum)
data NxSortIndicatorType = NX_SORT_INDICATE_NONE | NX_SORT_INDICATE_ASC | NX_SORT_INDICATE_DESC deriving (Show, Read, Eq, Ord, Enum)
data NxDimensionType = NX_DIMENSION_TYPE_DISCRETE | NX_DIMENSION_TYPE_NUMERIC | NX_DIMENSION_TYPE_TIME deriving (Show, Read, Eq, Ord, Enum)
data NxFieldSelectionMode = SELECTION_MODE_NORMAL | SELECTION_MODE_AND | SELECTION_MODE_NOT deriving (Show, Read, Eq, Ord, Enum)
data NxFrequencyMode = NX_FREQUENCY_NONE | NX_FREQUENCY_VALUE | NX_FREQUENCY_PERCENT | NX_FREQUENCY_RELATIVE deriving (Show, Read, Eq, Ord, Enum)
data NxDataReductionMode = DATA_REDUCTION_NONE | DATA_REDUCTION_ONEDIM | DATA_REDUCTION_SCATTERED | DATA_REDUCTION_CLUSTERED | DATA_REDUCTION_STACKED deriving (Show, Read, Eq, Ord, Enum)
data NxHypercubeMode = DATA_MODE_STRAIGHT | DATA_MODE_PIVOT | DATA_MODE_PIVOT_STACK deriving (Show, Read, Eq, Ord, Enum)
data NxPatchOperationType = Add | Remove | Replace deriving (Show, Read, Eq, Ord, Enum)
data NxSelectionCellType = NX_CELL_DATA | NX_CELL_TOP | NX_CELL_LEFT deriving (Show, Read, Eq, Ord, Enum)
data NxMatchingFieldMode = MATCHINGFIELDMODE_MATCH_ALL | MATCHINGFIELDMODE_MATCH_ONE deriving (Show, Read, Eq, Ord, Enum)
instance ValueType FieldType where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue FieldType"

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

instance ValueType NxMatchingFieldMode where
  toValue lit = ValueString (show lit)
  fromValue v = case v of
    ValueString txt -> read txt
    _ -> error "fromValue NxMatchingFieldMode"

