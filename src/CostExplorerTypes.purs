
module AWS.CostExplorer.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AttributeType = AttributeType String
derive instance newtypeAttributeType :: Newtype AttributeType _
derive instance repGenericAttributeType :: Generic AttributeType _
instance showAttributeType :: Show AttributeType where show = genericShow
instance decodeAttributeType :: Decode AttributeType where decode = genericDecode options
instance encodeAttributeType :: Encode AttributeType where encode = genericEncode options



newtype AttributeValue = AttributeValue String
derive instance newtypeAttributeValue :: Newtype AttributeValue _
derive instance repGenericAttributeValue :: Generic AttributeValue _
instance showAttributeValue :: Show AttributeValue where show = genericShow
instance decodeAttributeValue :: Decode AttributeValue where decode = genericDecode options
instance encodeAttributeValue :: Encode AttributeValue where encode = genericEncode options



newtype Attributes = Attributes (StrMap.StrMap AttributeValue)
derive instance newtypeAttributes :: Newtype Attributes _
derive instance repGenericAttributes :: Generic Attributes _
instance showAttributes :: Show Attributes where show = genericShow
instance decodeAttributes :: Decode Attributes where decode = genericDecode options
instance encodeAttributes :: Encode Attributes where encode = genericEncode options



-- | <p>The requested report expired. Update the date interval and try again.</p>
newtype BillExpirationException = BillExpirationException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeBillExpirationException :: Newtype BillExpirationException _
derive instance repGenericBillExpirationException :: Generic BillExpirationException _
instance showBillExpirationException :: Show BillExpirationException where show = genericShow
instance decodeBillExpirationException :: Decode BillExpirationException where decode = genericDecode options
instance encodeBillExpirationException :: Encode BillExpirationException where encode = genericEncode options

-- | Constructs BillExpirationException from required parameters
newBillExpirationException :: BillExpirationException
newBillExpirationException  = BillExpirationException { "Message": (NullOrUndefined Nothing) }

-- | Constructs BillExpirationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBillExpirationException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> BillExpirationException
newBillExpirationException'  customize = (BillExpirationException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype Context = Context String
derive instance newtypeContext :: Newtype Context _
derive instance repGenericContext :: Generic Context _
instance showContext :: Show Context where show = genericShow
instance decodeContext :: Decode Context where decode = genericDecode options
instance encodeContext :: Encode Context where encode = genericEncode options



-- | <p>The amount of instance usage that a reservation covered.</p>
newtype Coverage = Coverage 
  { "CoverageHours" :: NullOrUndefined (CoverageHours)
  }
derive instance newtypeCoverage :: Newtype Coverage _
derive instance repGenericCoverage :: Generic Coverage _
instance showCoverage :: Show Coverage where show = genericShow
instance decodeCoverage :: Decode Coverage where decode = genericDecode options
instance encodeCoverage :: Encode Coverage where encode = genericEncode options

-- | Constructs Coverage from required parameters
newCoverage :: Coverage
newCoverage  = Coverage { "CoverageHours": (NullOrUndefined Nothing) }

-- | Constructs Coverage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCoverage' :: ( { "CoverageHours" :: NullOrUndefined (CoverageHours) } -> {"CoverageHours" :: NullOrUndefined (CoverageHours) } ) -> Coverage
newCoverage'  customize = (Coverage <<< customize) { "CoverageHours": (NullOrUndefined Nothing) }



-- | <p>Reservation coverage, in hours.</p>
newtype CoverageByTime = CoverageByTime 
  { "TimePeriod" :: NullOrUndefined (DateInterval)
  , "Groups" :: NullOrUndefined (ReservationCoverageGroups)
  , "Total" :: NullOrUndefined (Coverage)
  }
derive instance newtypeCoverageByTime :: Newtype CoverageByTime _
derive instance repGenericCoverageByTime :: Generic CoverageByTime _
instance showCoverageByTime :: Show CoverageByTime where show = genericShow
instance decodeCoverageByTime :: Decode CoverageByTime where decode = genericDecode options
instance encodeCoverageByTime :: Encode CoverageByTime where encode = genericEncode options

-- | Constructs CoverageByTime from required parameters
newCoverageByTime :: CoverageByTime
newCoverageByTime  = CoverageByTime { "Groups": (NullOrUndefined Nothing), "TimePeriod": (NullOrUndefined Nothing), "Total": (NullOrUndefined Nothing) }

-- | Constructs CoverageByTime's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCoverageByTime' :: ( { "TimePeriod" :: NullOrUndefined (DateInterval) , "Groups" :: NullOrUndefined (ReservationCoverageGroups) , "Total" :: NullOrUndefined (Coverage) } -> {"TimePeriod" :: NullOrUndefined (DateInterval) , "Groups" :: NullOrUndefined (ReservationCoverageGroups) , "Total" :: NullOrUndefined (Coverage) } ) -> CoverageByTime
newCoverageByTime'  customize = (CoverageByTime <<< customize) { "Groups": (NullOrUndefined Nothing), "TimePeriod": (NullOrUndefined Nothing), "Total": (NullOrUndefined Nothing) }



-- | <p>How long a running instance either used a reservation or was On-Demand.</p>
newtype CoverageHours = CoverageHours 
  { "OnDemandHours" :: NullOrUndefined (OnDemandHours)
  , "ReservedHours" :: NullOrUndefined (ReservedHours)
  , "TotalRunningHours" :: NullOrUndefined (TotalRunningHours)
  , "CoverageHoursPercentage" :: NullOrUndefined (CoverageHoursPercentage)
  }
derive instance newtypeCoverageHours :: Newtype CoverageHours _
derive instance repGenericCoverageHours :: Generic CoverageHours _
instance showCoverageHours :: Show CoverageHours where show = genericShow
instance decodeCoverageHours :: Decode CoverageHours where decode = genericDecode options
instance encodeCoverageHours :: Encode CoverageHours where encode = genericEncode options

-- | Constructs CoverageHours from required parameters
newCoverageHours :: CoverageHours
newCoverageHours  = CoverageHours { "CoverageHoursPercentage": (NullOrUndefined Nothing), "OnDemandHours": (NullOrUndefined Nothing), "ReservedHours": (NullOrUndefined Nothing), "TotalRunningHours": (NullOrUndefined Nothing) }

-- | Constructs CoverageHours's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCoverageHours' :: ( { "OnDemandHours" :: NullOrUndefined (OnDemandHours) , "ReservedHours" :: NullOrUndefined (ReservedHours) , "TotalRunningHours" :: NullOrUndefined (TotalRunningHours) , "CoverageHoursPercentage" :: NullOrUndefined (CoverageHoursPercentage) } -> {"OnDemandHours" :: NullOrUndefined (OnDemandHours) , "ReservedHours" :: NullOrUndefined (ReservedHours) , "TotalRunningHours" :: NullOrUndefined (TotalRunningHours) , "CoverageHoursPercentage" :: NullOrUndefined (CoverageHoursPercentage) } ) -> CoverageHours
newCoverageHours'  customize = (CoverageHours <<< customize) { "CoverageHoursPercentage": (NullOrUndefined Nothing), "OnDemandHours": (NullOrUndefined Nothing), "ReservedHours": (NullOrUndefined Nothing), "TotalRunningHours": (NullOrUndefined Nothing) }



newtype CoverageHoursPercentage = CoverageHoursPercentage String
derive instance newtypeCoverageHoursPercentage :: Newtype CoverageHoursPercentage _
derive instance repGenericCoverageHoursPercentage :: Generic CoverageHoursPercentage _
instance showCoverageHoursPercentage :: Show CoverageHoursPercentage where show = genericShow
instance decodeCoverageHoursPercentage :: Decode CoverageHoursPercentage where decode = genericDecode options
instance encodeCoverageHoursPercentage :: Encode CoverageHoursPercentage where encode = genericEncode options



newtype CoveragesByTime = CoveragesByTime (Array CoverageByTime)
derive instance newtypeCoveragesByTime :: Newtype CoveragesByTime _
derive instance repGenericCoveragesByTime :: Generic CoveragesByTime _
instance showCoveragesByTime :: Show CoveragesByTime where show = genericShow
instance decodeCoveragesByTime :: Decode CoveragesByTime where decode = genericDecode options
instance encodeCoveragesByTime :: Encode CoveragesByTime where encode = genericEncode options



-- | <p>The requested data is unavailable.</p>
newtype DataUnavailableException = DataUnavailableException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeDataUnavailableException :: Newtype DataUnavailableException _
derive instance repGenericDataUnavailableException :: Generic DataUnavailableException _
instance showDataUnavailableException :: Show DataUnavailableException where show = genericShow
instance decodeDataUnavailableException :: Decode DataUnavailableException where decode = genericDecode options
instance encodeDataUnavailableException :: Encode DataUnavailableException where encode = genericEncode options

-- | Constructs DataUnavailableException from required parameters
newDataUnavailableException :: DataUnavailableException
newDataUnavailableException  = DataUnavailableException { "Message": (NullOrUndefined Nothing) }

-- | Constructs DataUnavailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDataUnavailableException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> DataUnavailableException
newDataUnavailableException'  customize = (DataUnavailableException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The time period that you want the usage and costs for. </p>
newtype DateInterval = DateInterval 
  { "Start" :: (YearMonthDay)
  , "End" :: (YearMonthDay)
  }
derive instance newtypeDateInterval :: Newtype DateInterval _
derive instance repGenericDateInterval :: Generic DateInterval _
instance showDateInterval :: Show DateInterval where show = genericShow
instance decodeDateInterval :: Decode DateInterval where decode = genericDecode options
instance encodeDateInterval :: Encode DateInterval where encode = genericEncode options

-- | Constructs DateInterval from required parameters
newDateInterval :: YearMonthDay -> YearMonthDay -> DateInterval
newDateInterval _End _Start = DateInterval { "End": _End, "Start": _Start }

-- | Constructs DateInterval's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDateInterval' :: YearMonthDay -> YearMonthDay -> ( { "Start" :: (YearMonthDay) , "End" :: (YearMonthDay) } -> {"Start" :: (YearMonthDay) , "End" :: (YearMonthDay) } ) -> DateInterval
newDateInterval' _End _Start customize = (DateInterval <<< customize) { "End": _End, "Start": _Start }



newtype Dimension = Dimension String
derive instance newtypeDimension :: Newtype Dimension _
derive instance repGenericDimension :: Generic Dimension _
instance showDimension :: Show Dimension where show = genericShow
instance decodeDimension :: Decode Dimension where decode = genericDecode options
instance encodeDimension :: Encode Dimension where encode = genericEncode options



-- | <p>The metadata that you can use to filter and group your results. You can use <code>GetDimensionValues</code> to find specific values.</p>
newtype DimensionValues = DimensionValues 
  { "Key" :: NullOrUndefined (Dimension)
  , "Values" :: NullOrUndefined (Values)
  }
derive instance newtypeDimensionValues :: Newtype DimensionValues _
derive instance repGenericDimensionValues :: Generic DimensionValues _
instance showDimensionValues :: Show DimensionValues where show = genericShow
instance decodeDimensionValues :: Decode DimensionValues where decode = genericDecode options
instance encodeDimensionValues :: Encode DimensionValues where encode = genericEncode options

-- | Constructs DimensionValues from required parameters
newDimensionValues :: DimensionValues
newDimensionValues  = DimensionValues { "Key": (NullOrUndefined Nothing), "Values": (NullOrUndefined Nothing) }

-- | Constructs DimensionValues's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDimensionValues' :: ( { "Key" :: NullOrUndefined (Dimension) , "Values" :: NullOrUndefined (Values) } -> {"Key" :: NullOrUndefined (Dimension) , "Values" :: NullOrUndefined (Values) } ) -> DimensionValues
newDimensionValues'  customize = (DimensionValues <<< customize) { "Key": (NullOrUndefined Nothing), "Values": (NullOrUndefined Nothing) }



-- | <p>The metadata of a specific type that you can use to filter and group your results. You can use <code>GetDimensionValues</code> to find specific values.</p>
newtype DimensionValuesWithAttributes = DimensionValuesWithAttributes 
  { "Value" :: NullOrUndefined (Value)
  , "Attributes" :: NullOrUndefined (Attributes)
  }
derive instance newtypeDimensionValuesWithAttributes :: Newtype DimensionValuesWithAttributes _
derive instance repGenericDimensionValuesWithAttributes :: Generic DimensionValuesWithAttributes _
instance showDimensionValuesWithAttributes :: Show DimensionValuesWithAttributes where show = genericShow
instance decodeDimensionValuesWithAttributes :: Decode DimensionValuesWithAttributes where decode = genericDecode options
instance encodeDimensionValuesWithAttributes :: Encode DimensionValuesWithAttributes where encode = genericEncode options

-- | Constructs DimensionValuesWithAttributes from required parameters
newDimensionValuesWithAttributes :: DimensionValuesWithAttributes
newDimensionValuesWithAttributes  = DimensionValuesWithAttributes { "Attributes": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs DimensionValuesWithAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDimensionValuesWithAttributes' :: ( { "Value" :: NullOrUndefined (Value) , "Attributes" :: NullOrUndefined (Attributes) } -> {"Value" :: NullOrUndefined (Value) , "Attributes" :: NullOrUndefined (Attributes) } ) -> DimensionValuesWithAttributes
newDimensionValuesWithAttributes'  customize = (DimensionValuesWithAttributes <<< customize) { "Attributes": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype DimensionValuesWithAttributesList = DimensionValuesWithAttributesList (Array DimensionValuesWithAttributes)
derive instance newtypeDimensionValuesWithAttributesList :: Newtype DimensionValuesWithAttributesList _
derive instance repGenericDimensionValuesWithAttributesList :: Generic DimensionValuesWithAttributesList _
instance showDimensionValuesWithAttributesList :: Show DimensionValuesWithAttributesList where show = genericShow
instance decodeDimensionValuesWithAttributesList :: Decode DimensionValuesWithAttributesList where decode = genericDecode options
instance encodeDimensionValuesWithAttributesList :: Encode DimensionValuesWithAttributesList where encode = genericEncode options



newtype Entity = Entity String
derive instance newtypeEntity :: Newtype Entity _
derive instance repGenericEntity :: Generic Entity _
instance showEntity :: Show Entity where show = genericShow
instance decodeEntity :: Decode Entity where decode = genericDecode options
instance encodeEntity :: Encode Entity where encode = genericEncode options



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



newtype Estimated = Estimated Boolean
derive instance newtypeEstimated :: Newtype Estimated _
derive instance repGenericEstimated :: Generic Estimated _
instance showEstimated :: Show Estimated where show = genericShow
instance decodeEstimated :: Decode Estimated where decode = genericDecode options
instance encodeEstimated :: Encode Estimated where encode = genericEncode options



-- | <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p> <ul> <li> <p>Simple dimension values - You can set the dimension name and values for the filters that you plan to use. For example, you can filter for <code>INSTANCE_TYPE==m4.xlarge OR INSTANCE_TYPE==c4.large</code>. The <code>Expression</code> for that looks like this.</p> <p> <code>{ "Dimensions": { "Key": "INSTANCE_TYPE", "Values": [ "m4.xlarge", “c4.large” ] } }</code> </p> <p>The list of dimension values are OR'd together to retrieve cost or usage data. You can create <code>Expression</code> and <code>DimensionValues</code> objects using either <code>with*</code> methods or <code>set*</code> methods in multiple lines. </p> </li> <li> <p>Compound dimension values with logical operations - You can use multiple <code>Expression</code> types and the logical operators <code>AND/OR/NOT</code> to create a list of one or more <code>Expression</code> objects. This allows you to filter on more advanced options. For example, you can filter on <code>((INSTANCE_TYPE == m4.large OR INSTANCE_TYPE == m3.large) OR (TAG.Type == Type1)) AND (USAGE_TYPE != DataTransfer)</code>. The <code>Expression</code> for that looks like this.</p> <p> <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "INSTANCE_TYPE", "Values": [ "m4.x.large", "c4.large" ] }}, {"Tag": { "Key": "TagName", "Values": ["Value1"] } } ]}, {"Not": {"dimensions": { "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] } </code> </p> <note> <p>Because each <code>Expression</code> can have only one operator, the service returns an error if more than one is specified. The following example shows an Expression object that will create an error.</p> </note> <p> <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE", "Values": [ "DataTransfer" ] } } </code> </p> </li> </ul>
newtype Expression = Expression 
  { "Dimensions" :: NullOrUndefined (DimensionValues)
  , "Tags" :: NullOrUndefined (TagValues)
  }
derive instance newtypeExpression :: Newtype Expression _
derive instance repGenericExpression :: Generic Expression _
instance showExpression :: Show Expression where show = genericShow
instance decodeExpression :: Decode Expression where decode = genericDecode options
instance encodeExpression :: Encode Expression where encode = genericEncode options

-- | Constructs Expression from required parameters
newExpression :: Expression
newExpression  = Expression { "Dimensions": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }

-- | Constructs Expression's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExpression' :: ( { "Dimensions" :: NullOrUndefined (DimensionValues) , "Tags" :: NullOrUndefined (TagValues) } -> {"Dimensions" :: NullOrUndefined (DimensionValues) , "Tags" :: NullOrUndefined (TagValues) } ) -> Expression
newExpression'  customize = (Expression <<< customize) { "Dimensions": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }



newtype Expressions = Expressions (Array Expression)
derive instance newtypeExpressions :: Newtype Expressions _
derive instance repGenericExpressions :: Generic Expressions _
instance showExpressions :: Show Expressions where show = genericShow
instance decodeExpressions :: Decode Expressions where decode = genericDecode options
instance encodeExpressions :: Encode Expressions where encode = genericEncode options



newtype GetCostAndUsageRequest = GetCostAndUsageRequest 
  { "TimePeriod" :: NullOrUndefined (DateInterval)
  , "Granularity" :: NullOrUndefined (Granularity)
  , "Filter" :: NullOrUndefined (Expression)
  , "Metrics" :: NullOrUndefined (MetricNames)
  , "GroupBy" :: NullOrUndefined (GroupDefinitions)
  , "NextPageToken" :: NullOrUndefined (NextPageToken)
  }
derive instance newtypeGetCostAndUsageRequest :: Newtype GetCostAndUsageRequest _
derive instance repGenericGetCostAndUsageRequest :: Generic GetCostAndUsageRequest _
instance showGetCostAndUsageRequest :: Show GetCostAndUsageRequest where show = genericShow
instance decodeGetCostAndUsageRequest :: Decode GetCostAndUsageRequest where decode = genericDecode options
instance encodeGetCostAndUsageRequest :: Encode GetCostAndUsageRequest where encode = genericEncode options

-- | Constructs GetCostAndUsageRequest from required parameters
newGetCostAndUsageRequest :: GetCostAndUsageRequest
newGetCostAndUsageRequest  = GetCostAndUsageRequest { "Filter": (NullOrUndefined Nothing), "Granularity": (NullOrUndefined Nothing), "GroupBy": (NullOrUndefined Nothing), "Metrics": (NullOrUndefined Nothing), "NextPageToken": (NullOrUndefined Nothing), "TimePeriod": (NullOrUndefined Nothing) }

-- | Constructs GetCostAndUsageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCostAndUsageRequest' :: ( { "TimePeriod" :: NullOrUndefined (DateInterval) , "Granularity" :: NullOrUndefined (Granularity) , "Filter" :: NullOrUndefined (Expression) , "Metrics" :: NullOrUndefined (MetricNames) , "GroupBy" :: NullOrUndefined (GroupDefinitions) , "NextPageToken" :: NullOrUndefined (NextPageToken) } -> {"TimePeriod" :: NullOrUndefined (DateInterval) , "Granularity" :: NullOrUndefined (Granularity) , "Filter" :: NullOrUndefined (Expression) , "Metrics" :: NullOrUndefined (MetricNames) , "GroupBy" :: NullOrUndefined (GroupDefinitions) , "NextPageToken" :: NullOrUndefined (NextPageToken) } ) -> GetCostAndUsageRequest
newGetCostAndUsageRequest'  customize = (GetCostAndUsageRequest <<< customize) { "Filter": (NullOrUndefined Nothing), "Granularity": (NullOrUndefined Nothing), "GroupBy": (NullOrUndefined Nothing), "Metrics": (NullOrUndefined Nothing), "NextPageToken": (NullOrUndefined Nothing), "TimePeriod": (NullOrUndefined Nothing) }



newtype GetCostAndUsageResponse = GetCostAndUsageResponse 
  { "NextPageToken" :: NullOrUndefined (NextPageToken)
  , "GroupDefinitions" :: NullOrUndefined (GroupDefinitions)
  , "ResultsByTime" :: NullOrUndefined (ResultsByTime)
  }
derive instance newtypeGetCostAndUsageResponse :: Newtype GetCostAndUsageResponse _
derive instance repGenericGetCostAndUsageResponse :: Generic GetCostAndUsageResponse _
instance showGetCostAndUsageResponse :: Show GetCostAndUsageResponse where show = genericShow
instance decodeGetCostAndUsageResponse :: Decode GetCostAndUsageResponse where decode = genericDecode options
instance encodeGetCostAndUsageResponse :: Encode GetCostAndUsageResponse where encode = genericEncode options

-- | Constructs GetCostAndUsageResponse from required parameters
newGetCostAndUsageResponse :: GetCostAndUsageResponse
newGetCostAndUsageResponse  = GetCostAndUsageResponse { "GroupDefinitions": (NullOrUndefined Nothing), "NextPageToken": (NullOrUndefined Nothing), "ResultsByTime": (NullOrUndefined Nothing) }

-- | Constructs GetCostAndUsageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCostAndUsageResponse' :: ( { "NextPageToken" :: NullOrUndefined (NextPageToken) , "GroupDefinitions" :: NullOrUndefined (GroupDefinitions) , "ResultsByTime" :: NullOrUndefined (ResultsByTime) } -> {"NextPageToken" :: NullOrUndefined (NextPageToken) , "GroupDefinitions" :: NullOrUndefined (GroupDefinitions) , "ResultsByTime" :: NullOrUndefined (ResultsByTime) } ) -> GetCostAndUsageResponse
newGetCostAndUsageResponse'  customize = (GetCostAndUsageResponse <<< customize) { "GroupDefinitions": (NullOrUndefined Nothing), "NextPageToken": (NullOrUndefined Nothing), "ResultsByTime": (NullOrUndefined Nothing) }



newtype GetDimensionValuesRequest = GetDimensionValuesRequest 
  { "SearchString" :: NullOrUndefined (SearchString)
  , "TimePeriod" :: (DateInterval)
  , "Dimension" :: (Dimension)
  , "Context" :: NullOrUndefined (Context)
  , "NextPageToken" :: NullOrUndefined (NextPageToken)
  }
derive instance newtypeGetDimensionValuesRequest :: Newtype GetDimensionValuesRequest _
derive instance repGenericGetDimensionValuesRequest :: Generic GetDimensionValuesRequest _
instance showGetDimensionValuesRequest :: Show GetDimensionValuesRequest where show = genericShow
instance decodeGetDimensionValuesRequest :: Decode GetDimensionValuesRequest where decode = genericDecode options
instance encodeGetDimensionValuesRequest :: Encode GetDimensionValuesRequest where encode = genericEncode options

-- | Constructs GetDimensionValuesRequest from required parameters
newGetDimensionValuesRequest :: Dimension -> DateInterval -> GetDimensionValuesRequest
newGetDimensionValuesRequest _Dimension _TimePeriod = GetDimensionValuesRequest { "Dimension": _Dimension, "TimePeriod": _TimePeriod, "Context": (NullOrUndefined Nothing), "NextPageToken": (NullOrUndefined Nothing), "SearchString": (NullOrUndefined Nothing) }

-- | Constructs GetDimensionValuesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDimensionValuesRequest' :: Dimension -> DateInterval -> ( { "SearchString" :: NullOrUndefined (SearchString) , "TimePeriod" :: (DateInterval) , "Dimension" :: (Dimension) , "Context" :: NullOrUndefined (Context) , "NextPageToken" :: NullOrUndefined (NextPageToken) } -> {"SearchString" :: NullOrUndefined (SearchString) , "TimePeriod" :: (DateInterval) , "Dimension" :: (Dimension) , "Context" :: NullOrUndefined (Context) , "NextPageToken" :: NullOrUndefined (NextPageToken) } ) -> GetDimensionValuesRequest
newGetDimensionValuesRequest' _Dimension _TimePeriod customize = (GetDimensionValuesRequest <<< customize) { "Dimension": _Dimension, "TimePeriod": _TimePeriod, "Context": (NullOrUndefined Nothing), "NextPageToken": (NullOrUndefined Nothing), "SearchString": (NullOrUndefined Nothing) }



newtype GetDimensionValuesResponse = GetDimensionValuesResponse 
  { "DimensionValues" :: (DimensionValuesWithAttributesList)
  , "ReturnSize" :: (PageSize)
  , "TotalSize" :: (PageSize)
  , "NextPageToken" :: NullOrUndefined (NextPageToken)
  }
derive instance newtypeGetDimensionValuesResponse :: Newtype GetDimensionValuesResponse _
derive instance repGenericGetDimensionValuesResponse :: Generic GetDimensionValuesResponse _
instance showGetDimensionValuesResponse :: Show GetDimensionValuesResponse where show = genericShow
instance decodeGetDimensionValuesResponse :: Decode GetDimensionValuesResponse where decode = genericDecode options
instance encodeGetDimensionValuesResponse :: Encode GetDimensionValuesResponse where encode = genericEncode options

-- | Constructs GetDimensionValuesResponse from required parameters
newGetDimensionValuesResponse :: DimensionValuesWithAttributesList -> PageSize -> PageSize -> GetDimensionValuesResponse
newGetDimensionValuesResponse _DimensionValues _ReturnSize _TotalSize = GetDimensionValuesResponse { "DimensionValues": _DimensionValues, "ReturnSize": _ReturnSize, "TotalSize": _TotalSize, "NextPageToken": (NullOrUndefined Nothing) }

-- | Constructs GetDimensionValuesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDimensionValuesResponse' :: DimensionValuesWithAttributesList -> PageSize -> PageSize -> ( { "DimensionValues" :: (DimensionValuesWithAttributesList) , "ReturnSize" :: (PageSize) , "TotalSize" :: (PageSize) , "NextPageToken" :: NullOrUndefined (NextPageToken) } -> {"DimensionValues" :: (DimensionValuesWithAttributesList) , "ReturnSize" :: (PageSize) , "TotalSize" :: (PageSize) , "NextPageToken" :: NullOrUndefined (NextPageToken) } ) -> GetDimensionValuesResponse
newGetDimensionValuesResponse' _DimensionValues _ReturnSize _TotalSize customize = (GetDimensionValuesResponse <<< customize) { "DimensionValues": _DimensionValues, "ReturnSize": _ReturnSize, "TotalSize": _TotalSize, "NextPageToken": (NullOrUndefined Nothing) }



-- | <p>You can query for how much of your instance usage was covered by a reservation.</p>
newtype GetReservationCoverageRequest = GetReservationCoverageRequest 
  { "TimePeriod" :: (DateInterval)
  , "GroupBy" :: NullOrUndefined (GroupDefinitions)
  , "Granularity" :: NullOrUndefined (Granularity)
  , "Filter" :: NullOrUndefined (Expression)
  , "NextPageToken" :: NullOrUndefined (NextPageToken)
  }
derive instance newtypeGetReservationCoverageRequest :: Newtype GetReservationCoverageRequest _
derive instance repGenericGetReservationCoverageRequest :: Generic GetReservationCoverageRequest _
instance showGetReservationCoverageRequest :: Show GetReservationCoverageRequest where show = genericShow
instance decodeGetReservationCoverageRequest :: Decode GetReservationCoverageRequest where decode = genericDecode options
instance encodeGetReservationCoverageRequest :: Encode GetReservationCoverageRequest where encode = genericEncode options

-- | Constructs GetReservationCoverageRequest from required parameters
newGetReservationCoverageRequest :: DateInterval -> GetReservationCoverageRequest
newGetReservationCoverageRequest _TimePeriod = GetReservationCoverageRequest { "TimePeriod": _TimePeriod, "Filter": (NullOrUndefined Nothing), "Granularity": (NullOrUndefined Nothing), "GroupBy": (NullOrUndefined Nothing), "NextPageToken": (NullOrUndefined Nothing) }

-- | Constructs GetReservationCoverageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReservationCoverageRequest' :: DateInterval -> ( { "TimePeriod" :: (DateInterval) , "GroupBy" :: NullOrUndefined (GroupDefinitions) , "Granularity" :: NullOrUndefined (Granularity) , "Filter" :: NullOrUndefined (Expression) , "NextPageToken" :: NullOrUndefined (NextPageToken) } -> {"TimePeriod" :: (DateInterval) , "GroupBy" :: NullOrUndefined (GroupDefinitions) , "Granularity" :: NullOrUndefined (Granularity) , "Filter" :: NullOrUndefined (Expression) , "NextPageToken" :: NullOrUndefined (NextPageToken) } ) -> GetReservationCoverageRequest
newGetReservationCoverageRequest' _TimePeriod customize = (GetReservationCoverageRequest <<< customize) { "TimePeriod": _TimePeriod, "Filter": (NullOrUndefined Nothing), "Granularity": (NullOrUndefined Nothing), "GroupBy": (NullOrUndefined Nothing), "NextPageToken": (NullOrUndefined Nothing) }



newtype GetReservationCoverageResponse = GetReservationCoverageResponse 
  { "CoveragesByTime" :: (CoveragesByTime)
  , "Total" :: NullOrUndefined (Coverage)
  , "NextPageToken" :: NullOrUndefined (NextPageToken)
  }
derive instance newtypeGetReservationCoverageResponse :: Newtype GetReservationCoverageResponse _
derive instance repGenericGetReservationCoverageResponse :: Generic GetReservationCoverageResponse _
instance showGetReservationCoverageResponse :: Show GetReservationCoverageResponse where show = genericShow
instance decodeGetReservationCoverageResponse :: Decode GetReservationCoverageResponse where decode = genericDecode options
instance encodeGetReservationCoverageResponse :: Encode GetReservationCoverageResponse where encode = genericEncode options

-- | Constructs GetReservationCoverageResponse from required parameters
newGetReservationCoverageResponse :: CoveragesByTime -> GetReservationCoverageResponse
newGetReservationCoverageResponse _CoveragesByTime = GetReservationCoverageResponse { "CoveragesByTime": _CoveragesByTime, "NextPageToken": (NullOrUndefined Nothing), "Total": (NullOrUndefined Nothing) }

-- | Constructs GetReservationCoverageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReservationCoverageResponse' :: CoveragesByTime -> ( { "CoveragesByTime" :: (CoveragesByTime) , "Total" :: NullOrUndefined (Coverage) , "NextPageToken" :: NullOrUndefined (NextPageToken) } -> {"CoveragesByTime" :: (CoveragesByTime) , "Total" :: NullOrUndefined (Coverage) , "NextPageToken" :: NullOrUndefined (NextPageToken) } ) -> GetReservationCoverageResponse
newGetReservationCoverageResponse' _CoveragesByTime customize = (GetReservationCoverageResponse <<< customize) { "CoveragesByTime": _CoveragesByTime, "NextPageToken": (NullOrUndefined Nothing), "Total": (NullOrUndefined Nothing) }



newtype GetReservationUtilizationRequest = GetReservationUtilizationRequest 
  { "TimePeriod" :: (DateInterval)
  , "GroupBy" :: NullOrUndefined (GroupDefinitions)
  , "Granularity" :: NullOrUndefined (Granularity)
  , "Filter" :: NullOrUndefined (Expression)
  , "NextPageToken" :: NullOrUndefined (NextPageToken)
  }
derive instance newtypeGetReservationUtilizationRequest :: Newtype GetReservationUtilizationRequest _
derive instance repGenericGetReservationUtilizationRequest :: Generic GetReservationUtilizationRequest _
instance showGetReservationUtilizationRequest :: Show GetReservationUtilizationRequest where show = genericShow
instance decodeGetReservationUtilizationRequest :: Decode GetReservationUtilizationRequest where decode = genericDecode options
instance encodeGetReservationUtilizationRequest :: Encode GetReservationUtilizationRequest where encode = genericEncode options

-- | Constructs GetReservationUtilizationRequest from required parameters
newGetReservationUtilizationRequest :: DateInterval -> GetReservationUtilizationRequest
newGetReservationUtilizationRequest _TimePeriod = GetReservationUtilizationRequest { "TimePeriod": _TimePeriod, "Filter": (NullOrUndefined Nothing), "Granularity": (NullOrUndefined Nothing), "GroupBy": (NullOrUndefined Nothing), "NextPageToken": (NullOrUndefined Nothing) }

-- | Constructs GetReservationUtilizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReservationUtilizationRequest' :: DateInterval -> ( { "TimePeriod" :: (DateInterval) , "GroupBy" :: NullOrUndefined (GroupDefinitions) , "Granularity" :: NullOrUndefined (Granularity) , "Filter" :: NullOrUndefined (Expression) , "NextPageToken" :: NullOrUndefined (NextPageToken) } -> {"TimePeriod" :: (DateInterval) , "GroupBy" :: NullOrUndefined (GroupDefinitions) , "Granularity" :: NullOrUndefined (Granularity) , "Filter" :: NullOrUndefined (Expression) , "NextPageToken" :: NullOrUndefined (NextPageToken) } ) -> GetReservationUtilizationRequest
newGetReservationUtilizationRequest' _TimePeriod customize = (GetReservationUtilizationRequest <<< customize) { "TimePeriod": _TimePeriod, "Filter": (NullOrUndefined Nothing), "Granularity": (NullOrUndefined Nothing), "GroupBy": (NullOrUndefined Nothing), "NextPageToken": (NullOrUndefined Nothing) }



newtype GetReservationUtilizationResponse = GetReservationUtilizationResponse 
  { "UtilizationsByTime" :: (UtilizationsByTime)
  , "Total" :: NullOrUndefined (ReservationAggregates)
  , "NextPageToken" :: NullOrUndefined (NextPageToken)
  }
derive instance newtypeGetReservationUtilizationResponse :: Newtype GetReservationUtilizationResponse _
derive instance repGenericGetReservationUtilizationResponse :: Generic GetReservationUtilizationResponse _
instance showGetReservationUtilizationResponse :: Show GetReservationUtilizationResponse where show = genericShow
instance decodeGetReservationUtilizationResponse :: Decode GetReservationUtilizationResponse where decode = genericDecode options
instance encodeGetReservationUtilizationResponse :: Encode GetReservationUtilizationResponse where encode = genericEncode options

-- | Constructs GetReservationUtilizationResponse from required parameters
newGetReservationUtilizationResponse :: UtilizationsByTime -> GetReservationUtilizationResponse
newGetReservationUtilizationResponse _UtilizationsByTime = GetReservationUtilizationResponse { "UtilizationsByTime": _UtilizationsByTime, "NextPageToken": (NullOrUndefined Nothing), "Total": (NullOrUndefined Nothing) }

-- | Constructs GetReservationUtilizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReservationUtilizationResponse' :: UtilizationsByTime -> ( { "UtilizationsByTime" :: (UtilizationsByTime) , "Total" :: NullOrUndefined (ReservationAggregates) , "NextPageToken" :: NullOrUndefined (NextPageToken) } -> {"UtilizationsByTime" :: (UtilizationsByTime) , "Total" :: NullOrUndefined (ReservationAggregates) , "NextPageToken" :: NullOrUndefined (NextPageToken) } ) -> GetReservationUtilizationResponse
newGetReservationUtilizationResponse' _UtilizationsByTime customize = (GetReservationUtilizationResponse <<< customize) { "UtilizationsByTime": _UtilizationsByTime, "NextPageToken": (NullOrUndefined Nothing), "Total": (NullOrUndefined Nothing) }



newtype GetTagsRequest = GetTagsRequest 
  { "SearchString" :: NullOrUndefined (SearchString)
  , "TimePeriod" :: (DateInterval)
  , "TagKey" :: NullOrUndefined (TagKey)
  , "NextPageToken" :: NullOrUndefined (NextPageToken)
  }
derive instance newtypeGetTagsRequest :: Newtype GetTagsRequest _
derive instance repGenericGetTagsRequest :: Generic GetTagsRequest _
instance showGetTagsRequest :: Show GetTagsRequest where show = genericShow
instance decodeGetTagsRequest :: Decode GetTagsRequest where decode = genericDecode options
instance encodeGetTagsRequest :: Encode GetTagsRequest where encode = genericEncode options

-- | Constructs GetTagsRequest from required parameters
newGetTagsRequest :: DateInterval -> GetTagsRequest
newGetTagsRequest _TimePeriod = GetTagsRequest { "TimePeriod": _TimePeriod, "NextPageToken": (NullOrUndefined Nothing), "SearchString": (NullOrUndefined Nothing), "TagKey": (NullOrUndefined Nothing) }

-- | Constructs GetTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTagsRequest' :: DateInterval -> ( { "SearchString" :: NullOrUndefined (SearchString) , "TimePeriod" :: (DateInterval) , "TagKey" :: NullOrUndefined (TagKey) , "NextPageToken" :: NullOrUndefined (NextPageToken) } -> {"SearchString" :: NullOrUndefined (SearchString) , "TimePeriod" :: (DateInterval) , "TagKey" :: NullOrUndefined (TagKey) , "NextPageToken" :: NullOrUndefined (NextPageToken) } ) -> GetTagsRequest
newGetTagsRequest' _TimePeriod customize = (GetTagsRequest <<< customize) { "TimePeriod": _TimePeriod, "NextPageToken": (NullOrUndefined Nothing), "SearchString": (NullOrUndefined Nothing), "TagKey": (NullOrUndefined Nothing) }



newtype GetTagsResponse = GetTagsResponse 
  { "NextPageToken" :: NullOrUndefined (NextPageToken)
  , "Tags" :: (TagList)
  , "ReturnSize" :: (PageSize)
  , "TotalSize" :: (PageSize)
  }
derive instance newtypeGetTagsResponse :: Newtype GetTagsResponse _
derive instance repGenericGetTagsResponse :: Generic GetTagsResponse _
instance showGetTagsResponse :: Show GetTagsResponse where show = genericShow
instance decodeGetTagsResponse :: Decode GetTagsResponse where decode = genericDecode options
instance encodeGetTagsResponse :: Encode GetTagsResponse where encode = genericEncode options

-- | Constructs GetTagsResponse from required parameters
newGetTagsResponse :: PageSize -> TagList -> PageSize -> GetTagsResponse
newGetTagsResponse _ReturnSize _Tags _TotalSize = GetTagsResponse { "ReturnSize": _ReturnSize, "Tags": _Tags, "TotalSize": _TotalSize, "NextPageToken": (NullOrUndefined Nothing) }

-- | Constructs GetTagsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTagsResponse' :: PageSize -> TagList -> PageSize -> ( { "NextPageToken" :: NullOrUndefined (NextPageToken) , "Tags" :: (TagList) , "ReturnSize" :: (PageSize) , "TotalSize" :: (PageSize) } -> {"NextPageToken" :: NullOrUndefined (NextPageToken) , "Tags" :: (TagList) , "ReturnSize" :: (PageSize) , "TotalSize" :: (PageSize) } ) -> GetTagsResponse
newGetTagsResponse' _ReturnSize _Tags _TotalSize customize = (GetTagsResponse <<< customize) { "ReturnSize": _ReturnSize, "Tags": _Tags, "TotalSize": _TotalSize, "NextPageToken": (NullOrUndefined Nothing) }



newtype Granularity = Granularity String
derive instance newtypeGranularity :: Newtype Granularity _
derive instance repGenericGranularity :: Generic Granularity _
instance showGranularity :: Show Granularity where show = genericShow
instance decodeGranularity :: Decode Granularity where decode = genericDecode options
instance encodeGranularity :: Encode Granularity where encode = genericEncode options



-- | <p>One level of grouped data within the results.</p>
newtype Group = Group 
  { "Keys" :: NullOrUndefined (Keys)
  , "Metrics" :: NullOrUndefined (Metrics)
  }
derive instance newtypeGroup :: Newtype Group _
derive instance repGenericGroup :: Generic Group _
instance showGroup :: Show Group where show = genericShow
instance decodeGroup :: Decode Group where decode = genericDecode options
instance encodeGroup :: Encode Group where encode = genericEncode options

-- | Constructs Group from required parameters
newGroup :: Group
newGroup  = Group { "Keys": (NullOrUndefined Nothing), "Metrics": (NullOrUndefined Nothing) }

-- | Constructs Group's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroup' :: ( { "Keys" :: NullOrUndefined (Keys) , "Metrics" :: NullOrUndefined (Metrics) } -> {"Keys" :: NullOrUndefined (Keys) , "Metrics" :: NullOrUndefined (Metrics) } ) -> Group
newGroup'  customize = (Group <<< customize) { "Keys": (NullOrUndefined Nothing), "Metrics": (NullOrUndefined Nothing) }



-- | <p>Represents a group when you specify a group by criteria, or in the response to a query with a specific grouping.</p>
newtype GroupDefinition = GroupDefinition 
  { "Type" :: NullOrUndefined (GroupDefinitionType)
  , "Key" :: NullOrUndefined (GroupDefinitionKey)
  }
derive instance newtypeGroupDefinition :: Newtype GroupDefinition _
derive instance repGenericGroupDefinition :: Generic GroupDefinition _
instance showGroupDefinition :: Show GroupDefinition where show = genericShow
instance decodeGroupDefinition :: Decode GroupDefinition where decode = genericDecode options
instance encodeGroupDefinition :: Encode GroupDefinition where encode = genericEncode options

-- | Constructs GroupDefinition from required parameters
newGroupDefinition :: GroupDefinition
newGroupDefinition  = GroupDefinition { "Key": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs GroupDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroupDefinition' :: ( { "Type" :: NullOrUndefined (GroupDefinitionType) , "Key" :: NullOrUndefined (GroupDefinitionKey) } -> {"Type" :: NullOrUndefined (GroupDefinitionType) , "Key" :: NullOrUndefined (GroupDefinitionKey) } ) -> GroupDefinition
newGroupDefinition'  customize = (GroupDefinition <<< customize) { "Key": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype GroupDefinitionKey = GroupDefinitionKey String
derive instance newtypeGroupDefinitionKey :: Newtype GroupDefinitionKey _
derive instance repGenericGroupDefinitionKey :: Generic GroupDefinitionKey _
instance showGroupDefinitionKey :: Show GroupDefinitionKey where show = genericShow
instance decodeGroupDefinitionKey :: Decode GroupDefinitionKey where decode = genericDecode options
instance encodeGroupDefinitionKey :: Encode GroupDefinitionKey where encode = genericEncode options



newtype GroupDefinitionType = GroupDefinitionType String
derive instance newtypeGroupDefinitionType :: Newtype GroupDefinitionType _
derive instance repGenericGroupDefinitionType :: Generic GroupDefinitionType _
instance showGroupDefinitionType :: Show GroupDefinitionType where show = genericShow
instance decodeGroupDefinitionType :: Decode GroupDefinitionType where decode = genericDecode options
instance encodeGroupDefinitionType :: Encode GroupDefinitionType where encode = genericEncode options



newtype GroupDefinitions = GroupDefinitions (Array GroupDefinition)
derive instance newtypeGroupDefinitions :: Newtype GroupDefinitions _
derive instance repGenericGroupDefinitions :: Generic GroupDefinitions _
instance showGroupDefinitions :: Show GroupDefinitions where show = genericShow
instance decodeGroupDefinitions :: Decode GroupDefinitions where decode = genericDecode options
instance encodeGroupDefinitions :: Encode GroupDefinitions where encode = genericEncode options



newtype Groups = Groups (Array Group)
derive instance newtypeGroups :: Newtype Groups _
derive instance repGenericGroups :: Generic Groups _
instance showGroups :: Show Groups where show = genericShow
instance decodeGroups :: Decode Groups where decode = genericDecode options
instance encodeGroups :: Encode Groups where encode = genericEncode options



-- | <p>The pagination token is invalid. Try again without a pagination token.</p>
newtype InvalidNextTokenException = InvalidNextTokenException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidNextTokenException :: Newtype InvalidNextTokenException _
derive instance repGenericInvalidNextTokenException :: Generic InvalidNextTokenException _
instance showInvalidNextTokenException :: Show InvalidNextTokenException where show = genericShow
instance decodeInvalidNextTokenException :: Decode InvalidNextTokenException where decode = genericDecode options
instance encodeInvalidNextTokenException :: Encode InvalidNextTokenException where encode = genericEncode options

-- | Constructs InvalidNextTokenException from required parameters
newInvalidNextTokenException :: InvalidNextTokenException
newInvalidNextTokenException  = InvalidNextTokenException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidNextTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidNextTokenException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> InvalidNextTokenException
newInvalidNextTokenException'  customize = (InvalidNextTokenException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype Key = Key String
derive instance newtypeKey :: Newtype Key _
derive instance repGenericKey :: Generic Key _
instance showKey :: Show Key where show = genericShow
instance decodeKey :: Decode Key where decode = genericDecode options
instance encodeKey :: Encode Key where encode = genericEncode options



newtype Keys = Keys (Array Key)
derive instance newtypeKeys :: Newtype Keys _
derive instance repGenericKeys :: Generic Keys _
instance showKeys :: Show Keys where show = genericShow
instance decodeKeys :: Decode Keys where decode = genericDecode options
instance encodeKeys :: Encode Keys where encode = genericEncode options



-- | <p>You made too many calls in a short period of time. Try again later.</p>
newtype LimitExceededException = LimitExceededException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype MetricAmount = MetricAmount String
derive instance newtypeMetricAmount :: Newtype MetricAmount _
derive instance repGenericMetricAmount :: Generic MetricAmount _
instance showMetricAmount :: Show MetricAmount where show = genericShow
instance decodeMetricAmount :: Decode MetricAmount where decode = genericDecode options
instance encodeMetricAmount :: Encode MetricAmount where encode = genericEncode options



newtype MetricName = MetricName String
derive instance newtypeMetricName :: Newtype MetricName _
derive instance repGenericMetricName :: Generic MetricName _
instance showMetricName :: Show MetricName where show = genericShow
instance decodeMetricName :: Decode MetricName where decode = genericDecode options
instance encodeMetricName :: Encode MetricName where encode = genericEncode options



newtype MetricNames = MetricNames (Array MetricName)
derive instance newtypeMetricNames :: Newtype MetricNames _
derive instance repGenericMetricNames :: Generic MetricNames _
instance showMetricNames :: Show MetricNames where show = genericShow
instance decodeMetricNames :: Decode MetricNames where decode = genericDecode options
instance encodeMetricNames :: Encode MetricNames where encode = genericEncode options



newtype MetricUnit = MetricUnit String
derive instance newtypeMetricUnit :: Newtype MetricUnit _
derive instance repGenericMetricUnit :: Generic MetricUnit _
instance showMetricUnit :: Show MetricUnit where show = genericShow
instance decodeMetricUnit :: Decode MetricUnit where decode = genericDecode options
instance encodeMetricUnit :: Encode MetricUnit where encode = genericEncode options



-- | <p>The aggregated value for a metric.</p>
newtype MetricValue = MetricValue 
  { "Amount" :: NullOrUndefined (MetricAmount)
  , "Unit" :: NullOrUndefined (MetricUnit)
  }
derive instance newtypeMetricValue :: Newtype MetricValue _
derive instance repGenericMetricValue :: Generic MetricValue _
instance showMetricValue :: Show MetricValue where show = genericShow
instance decodeMetricValue :: Decode MetricValue where decode = genericDecode options
instance encodeMetricValue :: Encode MetricValue where encode = genericEncode options

-- | Constructs MetricValue from required parameters
newMetricValue :: MetricValue
newMetricValue  = MetricValue { "Amount": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }

-- | Constructs MetricValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMetricValue' :: ( { "Amount" :: NullOrUndefined (MetricAmount) , "Unit" :: NullOrUndefined (MetricUnit) } -> {"Amount" :: NullOrUndefined (MetricAmount) , "Unit" :: NullOrUndefined (MetricUnit) } ) -> MetricValue
newMetricValue'  customize = (MetricValue <<< customize) { "Amount": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }



newtype Metrics = Metrics (StrMap.StrMap MetricValue)
derive instance newtypeMetrics :: Newtype Metrics _
derive instance repGenericMetrics :: Generic Metrics _
instance showMetrics :: Show Metrics where show = genericShow
instance decodeMetrics :: Decode Metrics where decode = genericDecode options
instance encodeMetrics :: Encode Metrics where encode = genericEncode options



newtype NextPageToken = NextPageToken String
derive instance newtypeNextPageToken :: Newtype NextPageToken _
derive instance repGenericNextPageToken :: Generic NextPageToken _
instance showNextPageToken :: Show NextPageToken where show = genericShow
instance decodeNextPageToken :: Decode NextPageToken where decode = genericDecode options
instance encodeNextPageToken :: Encode NextPageToken where encode = genericEncode options



newtype OnDemandHours = OnDemandHours String
derive instance newtypeOnDemandHours :: Newtype OnDemandHours _
derive instance repGenericOnDemandHours :: Generic OnDemandHours _
instance showOnDemandHours :: Show OnDemandHours where show = genericShow
instance decodeOnDemandHours :: Decode OnDemandHours where decode = genericDecode options
instance encodeOnDemandHours :: Encode OnDemandHours where encode = genericEncode options



newtype PageSize = PageSize Int
derive instance newtypePageSize :: Newtype PageSize _
derive instance repGenericPageSize :: Generic PageSize _
instance showPageSize :: Show PageSize where show = genericShow
instance decodePageSize :: Decode PageSize where decode = genericDecode options
instance encodePageSize :: Encode PageSize where encode = genericEncode options



newtype PurchasedHours = PurchasedHours String
derive instance newtypePurchasedHours :: Newtype PurchasedHours _
derive instance repGenericPurchasedHours :: Generic PurchasedHours _
instance showPurchasedHours :: Show PurchasedHours where show = genericShow
instance decodePurchasedHours :: Decode PurchasedHours where decode = genericDecode options
instance encodePurchasedHours :: Encode PurchasedHours where encode = genericEncode options



-- | <p>The aggregated numbers for your RI usage.</p>
newtype ReservationAggregates = ReservationAggregates 
  { "UtilizationPercentage" :: NullOrUndefined (UtilizationPercentage)
  , "PurchasedHours" :: NullOrUndefined (PurchasedHours)
  , "TotalActualHours" :: NullOrUndefined (TotalActualHours)
  , "UnusedHours" :: NullOrUndefined (UnusedHours)
  }
derive instance newtypeReservationAggregates :: Newtype ReservationAggregates _
derive instance repGenericReservationAggregates :: Generic ReservationAggregates _
instance showReservationAggregates :: Show ReservationAggregates where show = genericShow
instance decodeReservationAggregates :: Decode ReservationAggregates where decode = genericDecode options
instance encodeReservationAggregates :: Encode ReservationAggregates where encode = genericEncode options

-- | Constructs ReservationAggregates from required parameters
newReservationAggregates :: ReservationAggregates
newReservationAggregates  = ReservationAggregates { "PurchasedHours": (NullOrUndefined Nothing), "TotalActualHours": (NullOrUndefined Nothing), "UnusedHours": (NullOrUndefined Nothing), "UtilizationPercentage": (NullOrUndefined Nothing) }

-- | Constructs ReservationAggregates's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReservationAggregates' :: ( { "UtilizationPercentage" :: NullOrUndefined (UtilizationPercentage) , "PurchasedHours" :: NullOrUndefined (PurchasedHours) , "TotalActualHours" :: NullOrUndefined (TotalActualHours) , "UnusedHours" :: NullOrUndefined (UnusedHours) } -> {"UtilizationPercentage" :: NullOrUndefined (UtilizationPercentage) , "PurchasedHours" :: NullOrUndefined (PurchasedHours) , "TotalActualHours" :: NullOrUndefined (TotalActualHours) , "UnusedHours" :: NullOrUndefined (UnusedHours) } ) -> ReservationAggregates
newReservationAggregates'  customize = (ReservationAggregates <<< customize) { "PurchasedHours": (NullOrUndefined Nothing), "TotalActualHours": (NullOrUndefined Nothing), "UnusedHours": (NullOrUndefined Nothing), "UtilizationPercentage": (NullOrUndefined Nothing) }



-- | <p>A group of reservations that share a set of attributes.</p>
newtype ReservationCoverageGroup = ReservationCoverageGroup 
  { "Attributes" :: NullOrUndefined (Attributes)
  , "Coverage" :: NullOrUndefined (Coverage)
  }
derive instance newtypeReservationCoverageGroup :: Newtype ReservationCoverageGroup _
derive instance repGenericReservationCoverageGroup :: Generic ReservationCoverageGroup _
instance showReservationCoverageGroup :: Show ReservationCoverageGroup where show = genericShow
instance decodeReservationCoverageGroup :: Decode ReservationCoverageGroup where decode = genericDecode options
instance encodeReservationCoverageGroup :: Encode ReservationCoverageGroup where encode = genericEncode options

-- | Constructs ReservationCoverageGroup from required parameters
newReservationCoverageGroup :: ReservationCoverageGroup
newReservationCoverageGroup  = ReservationCoverageGroup { "Attributes": (NullOrUndefined Nothing), "Coverage": (NullOrUndefined Nothing) }

-- | Constructs ReservationCoverageGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReservationCoverageGroup' :: ( { "Attributes" :: NullOrUndefined (Attributes) , "Coverage" :: NullOrUndefined (Coverage) } -> {"Attributes" :: NullOrUndefined (Attributes) , "Coverage" :: NullOrUndefined (Coverage) } ) -> ReservationCoverageGroup
newReservationCoverageGroup'  customize = (ReservationCoverageGroup <<< customize) { "Attributes": (NullOrUndefined Nothing), "Coverage": (NullOrUndefined Nothing) }



newtype ReservationCoverageGroups = ReservationCoverageGroups (Array ReservationCoverageGroup)
derive instance newtypeReservationCoverageGroups :: Newtype ReservationCoverageGroups _
derive instance repGenericReservationCoverageGroups :: Generic ReservationCoverageGroups _
instance showReservationCoverageGroups :: Show ReservationCoverageGroups where show = genericShow
instance decodeReservationCoverageGroups :: Decode ReservationCoverageGroups where decode = genericDecode options
instance encodeReservationCoverageGroups :: Encode ReservationCoverageGroups where encode = genericEncode options



newtype ReservationGroupKey = ReservationGroupKey String
derive instance newtypeReservationGroupKey :: Newtype ReservationGroupKey _
derive instance repGenericReservationGroupKey :: Generic ReservationGroupKey _
instance showReservationGroupKey :: Show ReservationGroupKey where show = genericShow
instance decodeReservationGroupKey :: Decode ReservationGroupKey where decode = genericDecode options
instance encodeReservationGroupKey :: Encode ReservationGroupKey where encode = genericEncode options



newtype ReservationGroupValue = ReservationGroupValue String
derive instance newtypeReservationGroupValue :: Newtype ReservationGroupValue _
derive instance repGenericReservationGroupValue :: Generic ReservationGroupValue _
instance showReservationGroupValue :: Show ReservationGroupValue where show = genericShow
instance decodeReservationGroupValue :: Decode ReservationGroupValue where decode = genericDecode options
instance encodeReservationGroupValue :: Encode ReservationGroupValue where encode = genericEncode options



-- | <p>A group of RIs that share a set of attributes.</p>
newtype ReservationUtilizationGroup = ReservationUtilizationGroup 
  { "Key" :: NullOrUndefined (ReservationGroupKey)
  , "Value" :: NullOrUndefined (ReservationGroupValue)
  , "Attributes" :: NullOrUndefined (Attributes)
  , "Utilization" :: NullOrUndefined (ReservationAggregates)
  }
derive instance newtypeReservationUtilizationGroup :: Newtype ReservationUtilizationGroup _
derive instance repGenericReservationUtilizationGroup :: Generic ReservationUtilizationGroup _
instance showReservationUtilizationGroup :: Show ReservationUtilizationGroup where show = genericShow
instance decodeReservationUtilizationGroup :: Decode ReservationUtilizationGroup where decode = genericDecode options
instance encodeReservationUtilizationGroup :: Encode ReservationUtilizationGroup where encode = genericEncode options

-- | Constructs ReservationUtilizationGroup from required parameters
newReservationUtilizationGroup :: ReservationUtilizationGroup
newReservationUtilizationGroup  = ReservationUtilizationGroup { "Attributes": (NullOrUndefined Nothing), "Key": (NullOrUndefined Nothing), "Utilization": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs ReservationUtilizationGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReservationUtilizationGroup' :: ( { "Key" :: NullOrUndefined (ReservationGroupKey) , "Value" :: NullOrUndefined (ReservationGroupValue) , "Attributes" :: NullOrUndefined (Attributes) , "Utilization" :: NullOrUndefined (ReservationAggregates) } -> {"Key" :: NullOrUndefined (ReservationGroupKey) , "Value" :: NullOrUndefined (ReservationGroupValue) , "Attributes" :: NullOrUndefined (Attributes) , "Utilization" :: NullOrUndefined (ReservationAggregates) } ) -> ReservationUtilizationGroup
newReservationUtilizationGroup'  customize = (ReservationUtilizationGroup <<< customize) { "Attributes": (NullOrUndefined Nothing), "Key": (NullOrUndefined Nothing), "Utilization": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype ReservationUtilizationGroups = ReservationUtilizationGroups (Array ReservationUtilizationGroup)
derive instance newtypeReservationUtilizationGroups :: Newtype ReservationUtilizationGroups _
derive instance repGenericReservationUtilizationGroups :: Generic ReservationUtilizationGroups _
instance showReservationUtilizationGroups :: Show ReservationUtilizationGroups where show = genericShow
instance decodeReservationUtilizationGroups :: Decode ReservationUtilizationGroups where decode = genericDecode options
instance encodeReservationUtilizationGroups :: Encode ReservationUtilizationGroups where encode = genericEncode options



newtype ReservedHours = ReservedHours String
derive instance newtypeReservedHours :: Newtype ReservedHours _
derive instance repGenericReservedHours :: Generic ReservedHours _
instance showReservedHours :: Show ReservedHours where show = genericShow
instance decodeReservedHours :: Decode ReservedHours where decode = genericDecode options
instance encodeReservedHours :: Encode ReservedHours where encode = genericEncode options



-- | <p>The result that is associated with a time period.</p>
newtype ResultByTime = ResultByTime 
  { "TimePeriod" :: NullOrUndefined (DateInterval)
  , "Total" :: NullOrUndefined (Metrics)
  , "Groups" :: NullOrUndefined (Groups)
  , "Estimated" :: NullOrUndefined (Estimated)
  }
derive instance newtypeResultByTime :: Newtype ResultByTime _
derive instance repGenericResultByTime :: Generic ResultByTime _
instance showResultByTime :: Show ResultByTime where show = genericShow
instance decodeResultByTime :: Decode ResultByTime where decode = genericDecode options
instance encodeResultByTime :: Encode ResultByTime where encode = genericEncode options

-- | Constructs ResultByTime from required parameters
newResultByTime :: ResultByTime
newResultByTime  = ResultByTime { "Estimated": (NullOrUndefined Nothing), "Groups": (NullOrUndefined Nothing), "TimePeriod": (NullOrUndefined Nothing), "Total": (NullOrUndefined Nothing) }

-- | Constructs ResultByTime's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResultByTime' :: ( { "TimePeriod" :: NullOrUndefined (DateInterval) , "Total" :: NullOrUndefined (Metrics) , "Groups" :: NullOrUndefined (Groups) , "Estimated" :: NullOrUndefined (Estimated) } -> {"TimePeriod" :: NullOrUndefined (DateInterval) , "Total" :: NullOrUndefined (Metrics) , "Groups" :: NullOrUndefined (Groups) , "Estimated" :: NullOrUndefined (Estimated) } ) -> ResultByTime
newResultByTime'  customize = (ResultByTime <<< customize) { "Estimated": (NullOrUndefined Nothing), "Groups": (NullOrUndefined Nothing), "TimePeriod": (NullOrUndefined Nothing), "Total": (NullOrUndefined Nothing) }



newtype ResultsByTime = ResultsByTime (Array ResultByTime)
derive instance newtypeResultsByTime :: Newtype ResultsByTime _
derive instance repGenericResultsByTime :: Generic ResultsByTime _
instance showResultsByTime :: Show ResultsByTime where show = genericShow
instance decodeResultsByTime :: Decode ResultsByTime where decode = genericDecode options
instance encodeResultsByTime :: Encode ResultsByTime where encode = genericEncode options



newtype SearchString = SearchString String
derive instance newtypeSearchString :: Newtype SearchString _
derive instance repGenericSearchString :: Generic SearchString _
instance showSearchString :: Show SearchString where show = genericShow
instance decodeSearchString :: Decode SearchString where decode = genericDecode options
instance encodeSearchString :: Encode SearchString where encode = genericEncode options



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagList = TagList (Array Entity)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



-- | <p>The values that are available for a tag.</p>
newtype TagValues = TagValues 
  { "Key" :: NullOrUndefined (TagKey)
  , "Values" :: NullOrUndefined (Values)
  }
derive instance newtypeTagValues :: Newtype TagValues _
derive instance repGenericTagValues :: Generic TagValues _
instance showTagValues :: Show TagValues where show = genericShow
instance decodeTagValues :: Decode TagValues where decode = genericDecode options
instance encodeTagValues :: Encode TagValues where encode = genericEncode options

-- | Constructs TagValues from required parameters
newTagValues :: TagValues
newTagValues  = TagValues { "Key": (NullOrUndefined Nothing), "Values": (NullOrUndefined Nothing) }

-- | Constructs TagValues's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagValues' :: ( { "Key" :: NullOrUndefined (TagKey) , "Values" :: NullOrUndefined (Values) } -> {"Key" :: NullOrUndefined (TagKey) , "Values" :: NullOrUndefined (Values) } ) -> TagValues
newTagValues'  customize = (TagValues <<< customize) { "Key": (NullOrUndefined Nothing), "Values": (NullOrUndefined Nothing) }



newtype TotalActualHours = TotalActualHours String
derive instance newtypeTotalActualHours :: Newtype TotalActualHours _
derive instance repGenericTotalActualHours :: Generic TotalActualHours _
instance showTotalActualHours :: Show TotalActualHours where show = genericShow
instance decodeTotalActualHours :: Decode TotalActualHours where decode = genericDecode options
instance encodeTotalActualHours :: Encode TotalActualHours where encode = genericEncode options



newtype TotalRunningHours = TotalRunningHours String
derive instance newtypeTotalRunningHours :: Newtype TotalRunningHours _
derive instance repGenericTotalRunningHours :: Generic TotalRunningHours _
instance showTotalRunningHours :: Show TotalRunningHours where show = genericShow
instance decodeTotalRunningHours :: Decode TotalRunningHours where decode = genericDecode options
instance encodeTotalRunningHours :: Encode TotalRunningHours where encode = genericEncode options



newtype UnusedHours = UnusedHours String
derive instance newtypeUnusedHours :: Newtype UnusedHours _
derive instance repGenericUnusedHours :: Generic UnusedHours _
instance showUnusedHours :: Show UnusedHours where show = genericShow
instance decodeUnusedHours :: Decode UnusedHours where decode = genericDecode options
instance encodeUnusedHours :: Encode UnusedHours where encode = genericEncode options



-- | <p>The amount of utilization, in hours.</p>
newtype UtilizationByTime = UtilizationByTime 
  { "TimePeriod" :: NullOrUndefined (DateInterval)
  , "Groups" :: NullOrUndefined (ReservationUtilizationGroups)
  , "Total" :: NullOrUndefined (ReservationAggregates)
  }
derive instance newtypeUtilizationByTime :: Newtype UtilizationByTime _
derive instance repGenericUtilizationByTime :: Generic UtilizationByTime _
instance showUtilizationByTime :: Show UtilizationByTime where show = genericShow
instance decodeUtilizationByTime :: Decode UtilizationByTime where decode = genericDecode options
instance encodeUtilizationByTime :: Encode UtilizationByTime where encode = genericEncode options

-- | Constructs UtilizationByTime from required parameters
newUtilizationByTime :: UtilizationByTime
newUtilizationByTime  = UtilizationByTime { "Groups": (NullOrUndefined Nothing), "TimePeriod": (NullOrUndefined Nothing), "Total": (NullOrUndefined Nothing) }

-- | Constructs UtilizationByTime's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUtilizationByTime' :: ( { "TimePeriod" :: NullOrUndefined (DateInterval) , "Groups" :: NullOrUndefined (ReservationUtilizationGroups) , "Total" :: NullOrUndefined (ReservationAggregates) } -> {"TimePeriod" :: NullOrUndefined (DateInterval) , "Groups" :: NullOrUndefined (ReservationUtilizationGroups) , "Total" :: NullOrUndefined (ReservationAggregates) } ) -> UtilizationByTime
newUtilizationByTime'  customize = (UtilizationByTime <<< customize) { "Groups": (NullOrUndefined Nothing), "TimePeriod": (NullOrUndefined Nothing), "Total": (NullOrUndefined Nothing) }



newtype UtilizationPercentage = UtilizationPercentage String
derive instance newtypeUtilizationPercentage :: Newtype UtilizationPercentage _
derive instance repGenericUtilizationPercentage :: Generic UtilizationPercentage _
instance showUtilizationPercentage :: Show UtilizationPercentage where show = genericShow
instance decodeUtilizationPercentage :: Decode UtilizationPercentage where decode = genericDecode options
instance encodeUtilizationPercentage :: Encode UtilizationPercentage where encode = genericEncode options



newtype UtilizationsByTime = UtilizationsByTime (Array UtilizationByTime)
derive instance newtypeUtilizationsByTime :: Newtype UtilizationsByTime _
derive instance repGenericUtilizationsByTime :: Generic UtilizationsByTime _
instance showUtilizationsByTime :: Show UtilizationsByTime where show = genericShow
instance decodeUtilizationsByTime :: Decode UtilizationsByTime where decode = genericDecode options
instance encodeUtilizationsByTime :: Encode UtilizationsByTime where encode = genericEncode options



newtype Value = Value String
derive instance newtypeValue :: Newtype Value _
derive instance repGenericValue :: Generic Value _
instance showValue :: Show Value where show = genericShow
instance decodeValue :: Decode Value where decode = genericDecode options
instance encodeValue :: Encode Value where encode = genericEncode options



newtype Values = Values (Array Value)
derive instance newtypeValues :: Newtype Values _
derive instance repGenericValues :: Generic Values _
instance showValues :: Show Values where show = genericShow
instance decodeValues :: Decode Values where decode = genericDecode options
instance encodeValues :: Encode Values where encode = genericEncode options



newtype YearMonthDay = YearMonthDay String
derive instance newtypeYearMonthDay :: Newtype YearMonthDay _
derive instance repGenericYearMonthDay :: Generic YearMonthDay _
instance showYearMonthDay :: Show YearMonthDay where show = genericShow
instance decodeYearMonthDay :: Decode YearMonthDay where decode = genericDecode options
instance encodeYearMonthDay :: Encode YearMonthDay where encode = genericEncode options

