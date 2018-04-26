
module AWS.CostExplorer.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
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
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeBillExpirationException :: Newtype BillExpirationException _
derive instance repGenericBillExpirationException :: Generic BillExpirationException _
instance showBillExpirationException :: Show BillExpirationException where show = genericShow
instance decodeBillExpirationException :: Decode BillExpirationException where decode = genericDecode options
instance encodeBillExpirationException :: Encode BillExpirationException where encode = genericEncode options

-- | Constructs BillExpirationException from required parameters
newBillExpirationException :: BillExpirationException
newBillExpirationException  = BillExpirationException { "Message": Nothing }

-- | Constructs BillExpirationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBillExpirationException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> BillExpirationException
newBillExpirationException'  customize = (BillExpirationException <<< customize) { "Message": Nothing }



newtype Context = Context String
derive instance newtypeContext :: Newtype Context _
derive instance repGenericContext :: Generic Context _
instance showContext :: Show Context where show = genericShow
instance decodeContext :: Decode Context where decode = genericDecode options
instance encodeContext :: Encode Context where encode = genericEncode options



-- | <p>The amount of instance usage that a reservation covered.</p>
newtype Coverage = Coverage 
  { "CoverageHours" :: Maybe (CoverageHours)
  }
derive instance newtypeCoverage :: Newtype Coverage _
derive instance repGenericCoverage :: Generic Coverage _
instance showCoverage :: Show Coverage where show = genericShow
instance decodeCoverage :: Decode Coverage where decode = genericDecode options
instance encodeCoverage :: Encode Coverage where encode = genericEncode options

-- | Constructs Coverage from required parameters
newCoverage :: Coverage
newCoverage  = Coverage { "CoverageHours": Nothing }

-- | Constructs Coverage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCoverage' :: ( { "CoverageHours" :: Maybe (CoverageHours) } -> {"CoverageHours" :: Maybe (CoverageHours) } ) -> Coverage
newCoverage'  customize = (Coverage <<< customize) { "CoverageHours": Nothing }



-- | <p>Reservation coverage, in hours.</p>
newtype CoverageByTime = CoverageByTime 
  { "TimePeriod" :: Maybe (DateInterval)
  , "Groups" :: Maybe (ReservationCoverageGroups)
  , "Total" :: Maybe (Coverage)
  }
derive instance newtypeCoverageByTime :: Newtype CoverageByTime _
derive instance repGenericCoverageByTime :: Generic CoverageByTime _
instance showCoverageByTime :: Show CoverageByTime where show = genericShow
instance decodeCoverageByTime :: Decode CoverageByTime where decode = genericDecode options
instance encodeCoverageByTime :: Encode CoverageByTime where encode = genericEncode options

-- | Constructs CoverageByTime from required parameters
newCoverageByTime :: CoverageByTime
newCoverageByTime  = CoverageByTime { "Groups": Nothing, "TimePeriod": Nothing, "Total": Nothing }

-- | Constructs CoverageByTime's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCoverageByTime' :: ( { "TimePeriod" :: Maybe (DateInterval) , "Groups" :: Maybe (ReservationCoverageGroups) , "Total" :: Maybe (Coverage) } -> {"TimePeriod" :: Maybe (DateInterval) , "Groups" :: Maybe (ReservationCoverageGroups) , "Total" :: Maybe (Coverage) } ) -> CoverageByTime
newCoverageByTime'  customize = (CoverageByTime <<< customize) { "Groups": Nothing, "TimePeriod": Nothing, "Total": Nothing }



-- | <p>How long a running instance either used a reservation or was On-Demand.</p>
newtype CoverageHours = CoverageHours 
  { "OnDemandHours" :: Maybe (OnDemandHours)
  , "ReservedHours" :: Maybe (ReservedHours)
  , "TotalRunningHours" :: Maybe (TotalRunningHours)
  , "CoverageHoursPercentage" :: Maybe (CoverageHoursPercentage)
  }
derive instance newtypeCoverageHours :: Newtype CoverageHours _
derive instance repGenericCoverageHours :: Generic CoverageHours _
instance showCoverageHours :: Show CoverageHours where show = genericShow
instance decodeCoverageHours :: Decode CoverageHours where decode = genericDecode options
instance encodeCoverageHours :: Encode CoverageHours where encode = genericEncode options

-- | Constructs CoverageHours from required parameters
newCoverageHours :: CoverageHours
newCoverageHours  = CoverageHours { "CoverageHoursPercentage": Nothing, "OnDemandHours": Nothing, "ReservedHours": Nothing, "TotalRunningHours": Nothing }

-- | Constructs CoverageHours's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCoverageHours' :: ( { "OnDemandHours" :: Maybe (OnDemandHours) , "ReservedHours" :: Maybe (ReservedHours) , "TotalRunningHours" :: Maybe (TotalRunningHours) , "CoverageHoursPercentage" :: Maybe (CoverageHoursPercentage) } -> {"OnDemandHours" :: Maybe (OnDemandHours) , "ReservedHours" :: Maybe (ReservedHours) , "TotalRunningHours" :: Maybe (TotalRunningHours) , "CoverageHoursPercentage" :: Maybe (CoverageHoursPercentage) } ) -> CoverageHours
newCoverageHours'  customize = (CoverageHours <<< customize) { "CoverageHoursPercentage": Nothing, "OnDemandHours": Nothing, "ReservedHours": Nothing, "TotalRunningHours": Nothing }



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
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeDataUnavailableException :: Newtype DataUnavailableException _
derive instance repGenericDataUnavailableException :: Generic DataUnavailableException _
instance showDataUnavailableException :: Show DataUnavailableException where show = genericShow
instance decodeDataUnavailableException :: Decode DataUnavailableException where decode = genericDecode options
instance encodeDataUnavailableException :: Encode DataUnavailableException where encode = genericEncode options

-- | Constructs DataUnavailableException from required parameters
newDataUnavailableException :: DataUnavailableException
newDataUnavailableException  = DataUnavailableException { "Message": Nothing }

-- | Constructs DataUnavailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDataUnavailableException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> DataUnavailableException
newDataUnavailableException'  customize = (DataUnavailableException <<< customize) { "Message": Nothing }



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
  { "Key" :: Maybe (Dimension)
  , "Values" :: Maybe (Values)
  }
derive instance newtypeDimensionValues :: Newtype DimensionValues _
derive instance repGenericDimensionValues :: Generic DimensionValues _
instance showDimensionValues :: Show DimensionValues where show = genericShow
instance decodeDimensionValues :: Decode DimensionValues where decode = genericDecode options
instance encodeDimensionValues :: Encode DimensionValues where encode = genericEncode options

-- | Constructs DimensionValues from required parameters
newDimensionValues :: DimensionValues
newDimensionValues  = DimensionValues { "Key": Nothing, "Values": Nothing }

-- | Constructs DimensionValues's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDimensionValues' :: ( { "Key" :: Maybe (Dimension) , "Values" :: Maybe (Values) } -> {"Key" :: Maybe (Dimension) , "Values" :: Maybe (Values) } ) -> DimensionValues
newDimensionValues'  customize = (DimensionValues <<< customize) { "Key": Nothing, "Values": Nothing }



-- | <p>The metadata of a specific type that you can use to filter and group your results. You can use <code>GetDimensionValues</code> to find specific values.</p>
newtype DimensionValuesWithAttributes = DimensionValuesWithAttributes 
  { "Value" :: Maybe (Value)
  , "Attributes" :: Maybe (Attributes)
  }
derive instance newtypeDimensionValuesWithAttributes :: Newtype DimensionValuesWithAttributes _
derive instance repGenericDimensionValuesWithAttributes :: Generic DimensionValuesWithAttributes _
instance showDimensionValuesWithAttributes :: Show DimensionValuesWithAttributes where show = genericShow
instance decodeDimensionValuesWithAttributes :: Decode DimensionValuesWithAttributes where decode = genericDecode options
instance encodeDimensionValuesWithAttributes :: Encode DimensionValuesWithAttributes where encode = genericEncode options

-- | Constructs DimensionValuesWithAttributes from required parameters
newDimensionValuesWithAttributes :: DimensionValuesWithAttributes
newDimensionValuesWithAttributes  = DimensionValuesWithAttributes { "Attributes": Nothing, "Value": Nothing }

-- | Constructs DimensionValuesWithAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDimensionValuesWithAttributes' :: ( { "Value" :: Maybe (Value) , "Attributes" :: Maybe (Attributes) } -> {"Value" :: Maybe (Value) , "Attributes" :: Maybe (Attributes) } ) -> DimensionValuesWithAttributes
newDimensionValuesWithAttributes'  customize = (DimensionValuesWithAttributes <<< customize) { "Attributes": Nothing, "Value": Nothing }



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
  { "Dimensions" :: Maybe (DimensionValues)
  , "Tags" :: Maybe (TagValues)
  }
derive instance newtypeExpression :: Newtype Expression _
derive instance repGenericExpression :: Generic Expression _
instance showExpression :: Show Expression where show = genericShow
instance decodeExpression :: Decode Expression where decode = genericDecode options
instance encodeExpression :: Encode Expression where encode = genericEncode options

-- | Constructs Expression from required parameters
newExpression :: Expression
newExpression  = Expression { "Dimensions": Nothing, "Tags": Nothing }

-- | Constructs Expression's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExpression' :: ( { "Dimensions" :: Maybe (DimensionValues) , "Tags" :: Maybe (TagValues) } -> {"Dimensions" :: Maybe (DimensionValues) , "Tags" :: Maybe (TagValues) } ) -> Expression
newExpression'  customize = (Expression <<< customize) { "Dimensions": Nothing, "Tags": Nothing }



newtype Expressions = Expressions (Array Expression)
derive instance newtypeExpressions :: Newtype Expressions _
derive instance repGenericExpressions :: Generic Expressions _
instance showExpressions :: Show Expressions where show = genericShow
instance decodeExpressions :: Decode Expressions where decode = genericDecode options
instance encodeExpressions :: Encode Expressions where encode = genericEncode options



newtype GetCostAndUsageRequest = GetCostAndUsageRequest 
  { "TimePeriod" :: Maybe (DateInterval)
  , "Granularity" :: Maybe (Granularity)
  , "Filter" :: Maybe (Expression)
  , "Metrics" :: Maybe (MetricNames)
  , "GroupBy" :: Maybe (GroupDefinitions)
  , "NextPageToken" :: Maybe (NextPageToken)
  }
derive instance newtypeGetCostAndUsageRequest :: Newtype GetCostAndUsageRequest _
derive instance repGenericGetCostAndUsageRequest :: Generic GetCostAndUsageRequest _
instance showGetCostAndUsageRequest :: Show GetCostAndUsageRequest where show = genericShow
instance decodeGetCostAndUsageRequest :: Decode GetCostAndUsageRequest where decode = genericDecode options
instance encodeGetCostAndUsageRequest :: Encode GetCostAndUsageRequest where encode = genericEncode options

-- | Constructs GetCostAndUsageRequest from required parameters
newGetCostAndUsageRequest :: GetCostAndUsageRequest
newGetCostAndUsageRequest  = GetCostAndUsageRequest { "Filter": Nothing, "Granularity": Nothing, "GroupBy": Nothing, "Metrics": Nothing, "NextPageToken": Nothing, "TimePeriod": Nothing }

-- | Constructs GetCostAndUsageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCostAndUsageRequest' :: ( { "TimePeriod" :: Maybe (DateInterval) , "Granularity" :: Maybe (Granularity) , "Filter" :: Maybe (Expression) , "Metrics" :: Maybe (MetricNames) , "GroupBy" :: Maybe (GroupDefinitions) , "NextPageToken" :: Maybe (NextPageToken) } -> {"TimePeriod" :: Maybe (DateInterval) , "Granularity" :: Maybe (Granularity) , "Filter" :: Maybe (Expression) , "Metrics" :: Maybe (MetricNames) , "GroupBy" :: Maybe (GroupDefinitions) , "NextPageToken" :: Maybe (NextPageToken) } ) -> GetCostAndUsageRequest
newGetCostAndUsageRequest'  customize = (GetCostAndUsageRequest <<< customize) { "Filter": Nothing, "Granularity": Nothing, "GroupBy": Nothing, "Metrics": Nothing, "NextPageToken": Nothing, "TimePeriod": Nothing }



newtype GetCostAndUsageResponse = GetCostAndUsageResponse 
  { "NextPageToken" :: Maybe (NextPageToken)
  , "GroupDefinitions" :: Maybe (GroupDefinitions)
  , "ResultsByTime" :: Maybe (ResultsByTime)
  }
derive instance newtypeGetCostAndUsageResponse :: Newtype GetCostAndUsageResponse _
derive instance repGenericGetCostAndUsageResponse :: Generic GetCostAndUsageResponse _
instance showGetCostAndUsageResponse :: Show GetCostAndUsageResponse where show = genericShow
instance decodeGetCostAndUsageResponse :: Decode GetCostAndUsageResponse where decode = genericDecode options
instance encodeGetCostAndUsageResponse :: Encode GetCostAndUsageResponse where encode = genericEncode options

-- | Constructs GetCostAndUsageResponse from required parameters
newGetCostAndUsageResponse :: GetCostAndUsageResponse
newGetCostAndUsageResponse  = GetCostAndUsageResponse { "GroupDefinitions": Nothing, "NextPageToken": Nothing, "ResultsByTime": Nothing }

-- | Constructs GetCostAndUsageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCostAndUsageResponse' :: ( { "NextPageToken" :: Maybe (NextPageToken) , "GroupDefinitions" :: Maybe (GroupDefinitions) , "ResultsByTime" :: Maybe (ResultsByTime) } -> {"NextPageToken" :: Maybe (NextPageToken) , "GroupDefinitions" :: Maybe (GroupDefinitions) , "ResultsByTime" :: Maybe (ResultsByTime) } ) -> GetCostAndUsageResponse
newGetCostAndUsageResponse'  customize = (GetCostAndUsageResponse <<< customize) { "GroupDefinitions": Nothing, "NextPageToken": Nothing, "ResultsByTime": Nothing }



newtype GetDimensionValuesRequest = GetDimensionValuesRequest 
  { "SearchString" :: Maybe (SearchString)
  , "TimePeriod" :: (DateInterval)
  , "Dimension" :: (Dimension)
  , "Context" :: Maybe (Context)
  , "NextPageToken" :: Maybe (NextPageToken)
  }
derive instance newtypeGetDimensionValuesRequest :: Newtype GetDimensionValuesRequest _
derive instance repGenericGetDimensionValuesRequest :: Generic GetDimensionValuesRequest _
instance showGetDimensionValuesRequest :: Show GetDimensionValuesRequest where show = genericShow
instance decodeGetDimensionValuesRequest :: Decode GetDimensionValuesRequest where decode = genericDecode options
instance encodeGetDimensionValuesRequest :: Encode GetDimensionValuesRequest where encode = genericEncode options

-- | Constructs GetDimensionValuesRequest from required parameters
newGetDimensionValuesRequest :: Dimension -> DateInterval -> GetDimensionValuesRequest
newGetDimensionValuesRequest _Dimension _TimePeriod = GetDimensionValuesRequest { "Dimension": _Dimension, "TimePeriod": _TimePeriod, "Context": Nothing, "NextPageToken": Nothing, "SearchString": Nothing }

-- | Constructs GetDimensionValuesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDimensionValuesRequest' :: Dimension -> DateInterval -> ( { "SearchString" :: Maybe (SearchString) , "TimePeriod" :: (DateInterval) , "Dimension" :: (Dimension) , "Context" :: Maybe (Context) , "NextPageToken" :: Maybe (NextPageToken) } -> {"SearchString" :: Maybe (SearchString) , "TimePeriod" :: (DateInterval) , "Dimension" :: (Dimension) , "Context" :: Maybe (Context) , "NextPageToken" :: Maybe (NextPageToken) } ) -> GetDimensionValuesRequest
newGetDimensionValuesRequest' _Dimension _TimePeriod customize = (GetDimensionValuesRequest <<< customize) { "Dimension": _Dimension, "TimePeriod": _TimePeriod, "Context": Nothing, "NextPageToken": Nothing, "SearchString": Nothing }



newtype GetDimensionValuesResponse = GetDimensionValuesResponse 
  { "DimensionValues" :: (DimensionValuesWithAttributesList)
  , "ReturnSize" :: (PageSize)
  , "TotalSize" :: (PageSize)
  , "NextPageToken" :: Maybe (NextPageToken)
  }
derive instance newtypeGetDimensionValuesResponse :: Newtype GetDimensionValuesResponse _
derive instance repGenericGetDimensionValuesResponse :: Generic GetDimensionValuesResponse _
instance showGetDimensionValuesResponse :: Show GetDimensionValuesResponse where show = genericShow
instance decodeGetDimensionValuesResponse :: Decode GetDimensionValuesResponse where decode = genericDecode options
instance encodeGetDimensionValuesResponse :: Encode GetDimensionValuesResponse where encode = genericEncode options

-- | Constructs GetDimensionValuesResponse from required parameters
newGetDimensionValuesResponse :: DimensionValuesWithAttributesList -> PageSize -> PageSize -> GetDimensionValuesResponse
newGetDimensionValuesResponse _DimensionValues _ReturnSize _TotalSize = GetDimensionValuesResponse { "DimensionValues": _DimensionValues, "ReturnSize": _ReturnSize, "TotalSize": _TotalSize, "NextPageToken": Nothing }

-- | Constructs GetDimensionValuesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDimensionValuesResponse' :: DimensionValuesWithAttributesList -> PageSize -> PageSize -> ( { "DimensionValues" :: (DimensionValuesWithAttributesList) , "ReturnSize" :: (PageSize) , "TotalSize" :: (PageSize) , "NextPageToken" :: Maybe (NextPageToken) } -> {"DimensionValues" :: (DimensionValuesWithAttributesList) , "ReturnSize" :: (PageSize) , "TotalSize" :: (PageSize) , "NextPageToken" :: Maybe (NextPageToken) } ) -> GetDimensionValuesResponse
newGetDimensionValuesResponse' _DimensionValues _ReturnSize _TotalSize customize = (GetDimensionValuesResponse <<< customize) { "DimensionValues": _DimensionValues, "ReturnSize": _ReturnSize, "TotalSize": _TotalSize, "NextPageToken": Nothing }



-- | <p>You can query for how much of your instance usage was covered by a reservation.</p>
newtype GetReservationCoverageRequest = GetReservationCoverageRequest 
  { "TimePeriod" :: (DateInterval)
  , "GroupBy" :: Maybe (GroupDefinitions)
  , "Granularity" :: Maybe (Granularity)
  , "Filter" :: Maybe (Expression)
  , "NextPageToken" :: Maybe (NextPageToken)
  }
derive instance newtypeGetReservationCoverageRequest :: Newtype GetReservationCoverageRequest _
derive instance repGenericGetReservationCoverageRequest :: Generic GetReservationCoverageRequest _
instance showGetReservationCoverageRequest :: Show GetReservationCoverageRequest where show = genericShow
instance decodeGetReservationCoverageRequest :: Decode GetReservationCoverageRequest where decode = genericDecode options
instance encodeGetReservationCoverageRequest :: Encode GetReservationCoverageRequest where encode = genericEncode options

-- | Constructs GetReservationCoverageRequest from required parameters
newGetReservationCoverageRequest :: DateInterval -> GetReservationCoverageRequest
newGetReservationCoverageRequest _TimePeriod = GetReservationCoverageRequest { "TimePeriod": _TimePeriod, "Filter": Nothing, "Granularity": Nothing, "GroupBy": Nothing, "NextPageToken": Nothing }

-- | Constructs GetReservationCoverageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReservationCoverageRequest' :: DateInterval -> ( { "TimePeriod" :: (DateInterval) , "GroupBy" :: Maybe (GroupDefinitions) , "Granularity" :: Maybe (Granularity) , "Filter" :: Maybe (Expression) , "NextPageToken" :: Maybe (NextPageToken) } -> {"TimePeriod" :: (DateInterval) , "GroupBy" :: Maybe (GroupDefinitions) , "Granularity" :: Maybe (Granularity) , "Filter" :: Maybe (Expression) , "NextPageToken" :: Maybe (NextPageToken) } ) -> GetReservationCoverageRequest
newGetReservationCoverageRequest' _TimePeriod customize = (GetReservationCoverageRequest <<< customize) { "TimePeriod": _TimePeriod, "Filter": Nothing, "Granularity": Nothing, "GroupBy": Nothing, "NextPageToken": Nothing }



newtype GetReservationCoverageResponse = GetReservationCoverageResponse 
  { "CoveragesByTime" :: (CoveragesByTime)
  , "Total" :: Maybe (Coverage)
  , "NextPageToken" :: Maybe (NextPageToken)
  }
derive instance newtypeGetReservationCoverageResponse :: Newtype GetReservationCoverageResponse _
derive instance repGenericGetReservationCoverageResponse :: Generic GetReservationCoverageResponse _
instance showGetReservationCoverageResponse :: Show GetReservationCoverageResponse where show = genericShow
instance decodeGetReservationCoverageResponse :: Decode GetReservationCoverageResponse where decode = genericDecode options
instance encodeGetReservationCoverageResponse :: Encode GetReservationCoverageResponse where encode = genericEncode options

-- | Constructs GetReservationCoverageResponse from required parameters
newGetReservationCoverageResponse :: CoveragesByTime -> GetReservationCoverageResponse
newGetReservationCoverageResponse _CoveragesByTime = GetReservationCoverageResponse { "CoveragesByTime": _CoveragesByTime, "NextPageToken": Nothing, "Total": Nothing }

-- | Constructs GetReservationCoverageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReservationCoverageResponse' :: CoveragesByTime -> ( { "CoveragesByTime" :: (CoveragesByTime) , "Total" :: Maybe (Coverage) , "NextPageToken" :: Maybe (NextPageToken) } -> {"CoveragesByTime" :: (CoveragesByTime) , "Total" :: Maybe (Coverage) , "NextPageToken" :: Maybe (NextPageToken) } ) -> GetReservationCoverageResponse
newGetReservationCoverageResponse' _CoveragesByTime customize = (GetReservationCoverageResponse <<< customize) { "CoveragesByTime": _CoveragesByTime, "NextPageToken": Nothing, "Total": Nothing }



newtype GetReservationUtilizationRequest = GetReservationUtilizationRequest 
  { "TimePeriod" :: (DateInterval)
  , "GroupBy" :: Maybe (GroupDefinitions)
  , "Granularity" :: Maybe (Granularity)
  , "Filter" :: Maybe (Expression)
  , "NextPageToken" :: Maybe (NextPageToken)
  }
derive instance newtypeGetReservationUtilizationRequest :: Newtype GetReservationUtilizationRequest _
derive instance repGenericGetReservationUtilizationRequest :: Generic GetReservationUtilizationRequest _
instance showGetReservationUtilizationRequest :: Show GetReservationUtilizationRequest where show = genericShow
instance decodeGetReservationUtilizationRequest :: Decode GetReservationUtilizationRequest where decode = genericDecode options
instance encodeGetReservationUtilizationRequest :: Encode GetReservationUtilizationRequest where encode = genericEncode options

-- | Constructs GetReservationUtilizationRequest from required parameters
newGetReservationUtilizationRequest :: DateInterval -> GetReservationUtilizationRequest
newGetReservationUtilizationRequest _TimePeriod = GetReservationUtilizationRequest { "TimePeriod": _TimePeriod, "Filter": Nothing, "Granularity": Nothing, "GroupBy": Nothing, "NextPageToken": Nothing }

-- | Constructs GetReservationUtilizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReservationUtilizationRequest' :: DateInterval -> ( { "TimePeriod" :: (DateInterval) , "GroupBy" :: Maybe (GroupDefinitions) , "Granularity" :: Maybe (Granularity) , "Filter" :: Maybe (Expression) , "NextPageToken" :: Maybe (NextPageToken) } -> {"TimePeriod" :: (DateInterval) , "GroupBy" :: Maybe (GroupDefinitions) , "Granularity" :: Maybe (Granularity) , "Filter" :: Maybe (Expression) , "NextPageToken" :: Maybe (NextPageToken) } ) -> GetReservationUtilizationRequest
newGetReservationUtilizationRequest' _TimePeriod customize = (GetReservationUtilizationRequest <<< customize) { "TimePeriod": _TimePeriod, "Filter": Nothing, "Granularity": Nothing, "GroupBy": Nothing, "NextPageToken": Nothing }



newtype GetReservationUtilizationResponse = GetReservationUtilizationResponse 
  { "UtilizationsByTime" :: (UtilizationsByTime)
  , "Total" :: Maybe (ReservationAggregates)
  , "NextPageToken" :: Maybe (NextPageToken)
  }
derive instance newtypeGetReservationUtilizationResponse :: Newtype GetReservationUtilizationResponse _
derive instance repGenericGetReservationUtilizationResponse :: Generic GetReservationUtilizationResponse _
instance showGetReservationUtilizationResponse :: Show GetReservationUtilizationResponse where show = genericShow
instance decodeGetReservationUtilizationResponse :: Decode GetReservationUtilizationResponse where decode = genericDecode options
instance encodeGetReservationUtilizationResponse :: Encode GetReservationUtilizationResponse where encode = genericEncode options

-- | Constructs GetReservationUtilizationResponse from required parameters
newGetReservationUtilizationResponse :: UtilizationsByTime -> GetReservationUtilizationResponse
newGetReservationUtilizationResponse _UtilizationsByTime = GetReservationUtilizationResponse { "UtilizationsByTime": _UtilizationsByTime, "NextPageToken": Nothing, "Total": Nothing }

-- | Constructs GetReservationUtilizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetReservationUtilizationResponse' :: UtilizationsByTime -> ( { "UtilizationsByTime" :: (UtilizationsByTime) , "Total" :: Maybe (ReservationAggregates) , "NextPageToken" :: Maybe (NextPageToken) } -> {"UtilizationsByTime" :: (UtilizationsByTime) , "Total" :: Maybe (ReservationAggregates) , "NextPageToken" :: Maybe (NextPageToken) } ) -> GetReservationUtilizationResponse
newGetReservationUtilizationResponse' _UtilizationsByTime customize = (GetReservationUtilizationResponse <<< customize) { "UtilizationsByTime": _UtilizationsByTime, "NextPageToken": Nothing, "Total": Nothing }



newtype GetTagsRequest = GetTagsRequest 
  { "SearchString" :: Maybe (SearchString)
  , "TimePeriod" :: (DateInterval)
  , "TagKey" :: Maybe (TagKey)
  , "NextPageToken" :: Maybe (NextPageToken)
  }
derive instance newtypeGetTagsRequest :: Newtype GetTagsRequest _
derive instance repGenericGetTagsRequest :: Generic GetTagsRequest _
instance showGetTagsRequest :: Show GetTagsRequest where show = genericShow
instance decodeGetTagsRequest :: Decode GetTagsRequest where decode = genericDecode options
instance encodeGetTagsRequest :: Encode GetTagsRequest where encode = genericEncode options

-- | Constructs GetTagsRequest from required parameters
newGetTagsRequest :: DateInterval -> GetTagsRequest
newGetTagsRequest _TimePeriod = GetTagsRequest { "TimePeriod": _TimePeriod, "NextPageToken": Nothing, "SearchString": Nothing, "TagKey": Nothing }

-- | Constructs GetTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTagsRequest' :: DateInterval -> ( { "SearchString" :: Maybe (SearchString) , "TimePeriod" :: (DateInterval) , "TagKey" :: Maybe (TagKey) , "NextPageToken" :: Maybe (NextPageToken) } -> {"SearchString" :: Maybe (SearchString) , "TimePeriod" :: (DateInterval) , "TagKey" :: Maybe (TagKey) , "NextPageToken" :: Maybe (NextPageToken) } ) -> GetTagsRequest
newGetTagsRequest' _TimePeriod customize = (GetTagsRequest <<< customize) { "TimePeriod": _TimePeriod, "NextPageToken": Nothing, "SearchString": Nothing, "TagKey": Nothing }



newtype GetTagsResponse = GetTagsResponse 
  { "NextPageToken" :: Maybe (NextPageToken)
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
newGetTagsResponse _ReturnSize _Tags _TotalSize = GetTagsResponse { "ReturnSize": _ReturnSize, "Tags": _Tags, "TotalSize": _TotalSize, "NextPageToken": Nothing }

-- | Constructs GetTagsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTagsResponse' :: PageSize -> TagList -> PageSize -> ( { "NextPageToken" :: Maybe (NextPageToken) , "Tags" :: (TagList) , "ReturnSize" :: (PageSize) , "TotalSize" :: (PageSize) } -> {"NextPageToken" :: Maybe (NextPageToken) , "Tags" :: (TagList) , "ReturnSize" :: (PageSize) , "TotalSize" :: (PageSize) } ) -> GetTagsResponse
newGetTagsResponse' _ReturnSize _Tags _TotalSize customize = (GetTagsResponse <<< customize) { "ReturnSize": _ReturnSize, "Tags": _Tags, "TotalSize": _TotalSize, "NextPageToken": Nothing }



newtype Granularity = Granularity String
derive instance newtypeGranularity :: Newtype Granularity _
derive instance repGenericGranularity :: Generic Granularity _
instance showGranularity :: Show Granularity where show = genericShow
instance decodeGranularity :: Decode Granularity where decode = genericDecode options
instance encodeGranularity :: Encode Granularity where encode = genericEncode options



-- | <p>One level of grouped data within the results.</p>
newtype Group = Group 
  { "Keys" :: Maybe (Keys)
  , "Metrics" :: Maybe (Metrics)
  }
derive instance newtypeGroup :: Newtype Group _
derive instance repGenericGroup :: Generic Group _
instance showGroup :: Show Group where show = genericShow
instance decodeGroup :: Decode Group where decode = genericDecode options
instance encodeGroup :: Encode Group where encode = genericEncode options

-- | Constructs Group from required parameters
newGroup :: Group
newGroup  = Group { "Keys": Nothing, "Metrics": Nothing }

-- | Constructs Group's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroup' :: ( { "Keys" :: Maybe (Keys) , "Metrics" :: Maybe (Metrics) } -> {"Keys" :: Maybe (Keys) , "Metrics" :: Maybe (Metrics) } ) -> Group
newGroup'  customize = (Group <<< customize) { "Keys": Nothing, "Metrics": Nothing }



-- | <p>Represents a group when you specify a group by criteria, or in the response to a query with a specific grouping.</p>
newtype GroupDefinition = GroupDefinition 
  { "Type" :: Maybe (GroupDefinitionType)
  , "Key" :: Maybe (GroupDefinitionKey)
  }
derive instance newtypeGroupDefinition :: Newtype GroupDefinition _
derive instance repGenericGroupDefinition :: Generic GroupDefinition _
instance showGroupDefinition :: Show GroupDefinition where show = genericShow
instance decodeGroupDefinition :: Decode GroupDefinition where decode = genericDecode options
instance encodeGroupDefinition :: Encode GroupDefinition where encode = genericEncode options

-- | Constructs GroupDefinition from required parameters
newGroupDefinition :: GroupDefinition
newGroupDefinition  = GroupDefinition { "Key": Nothing, "Type": Nothing }

-- | Constructs GroupDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroupDefinition' :: ( { "Type" :: Maybe (GroupDefinitionType) , "Key" :: Maybe (GroupDefinitionKey) } -> {"Type" :: Maybe (GroupDefinitionType) , "Key" :: Maybe (GroupDefinitionKey) } ) -> GroupDefinition
newGroupDefinition'  customize = (GroupDefinition <<< customize) { "Key": Nothing, "Type": Nothing }



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
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidNextTokenException :: Newtype InvalidNextTokenException _
derive instance repGenericInvalidNextTokenException :: Generic InvalidNextTokenException _
instance showInvalidNextTokenException :: Show InvalidNextTokenException where show = genericShow
instance decodeInvalidNextTokenException :: Decode InvalidNextTokenException where decode = genericDecode options
instance encodeInvalidNextTokenException :: Encode InvalidNextTokenException where encode = genericEncode options

-- | Constructs InvalidNextTokenException from required parameters
newInvalidNextTokenException :: InvalidNextTokenException
newInvalidNextTokenException  = InvalidNextTokenException { "Message": Nothing }

-- | Constructs InvalidNextTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidNextTokenException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> InvalidNextTokenException
newInvalidNextTokenException'  customize = (InvalidNextTokenException <<< customize) { "Message": Nothing }



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
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "Message": Nothing }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "Message": Nothing }



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
  { "Amount" :: Maybe (MetricAmount)
  , "Unit" :: Maybe (MetricUnit)
  }
derive instance newtypeMetricValue :: Newtype MetricValue _
derive instance repGenericMetricValue :: Generic MetricValue _
instance showMetricValue :: Show MetricValue where show = genericShow
instance decodeMetricValue :: Decode MetricValue where decode = genericDecode options
instance encodeMetricValue :: Encode MetricValue where encode = genericEncode options

-- | Constructs MetricValue from required parameters
newMetricValue :: MetricValue
newMetricValue  = MetricValue { "Amount": Nothing, "Unit": Nothing }

-- | Constructs MetricValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMetricValue' :: ( { "Amount" :: Maybe (MetricAmount) , "Unit" :: Maybe (MetricUnit) } -> {"Amount" :: Maybe (MetricAmount) , "Unit" :: Maybe (MetricUnit) } ) -> MetricValue
newMetricValue'  customize = (MetricValue <<< customize) { "Amount": Nothing, "Unit": Nothing }



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
  { "UtilizationPercentage" :: Maybe (UtilizationPercentage)
  , "PurchasedHours" :: Maybe (PurchasedHours)
  , "TotalActualHours" :: Maybe (TotalActualHours)
  , "UnusedHours" :: Maybe (UnusedHours)
  }
derive instance newtypeReservationAggregates :: Newtype ReservationAggregates _
derive instance repGenericReservationAggregates :: Generic ReservationAggregates _
instance showReservationAggregates :: Show ReservationAggregates where show = genericShow
instance decodeReservationAggregates :: Decode ReservationAggregates where decode = genericDecode options
instance encodeReservationAggregates :: Encode ReservationAggregates where encode = genericEncode options

-- | Constructs ReservationAggregates from required parameters
newReservationAggregates :: ReservationAggregates
newReservationAggregates  = ReservationAggregates { "PurchasedHours": Nothing, "TotalActualHours": Nothing, "UnusedHours": Nothing, "UtilizationPercentage": Nothing }

-- | Constructs ReservationAggregates's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReservationAggregates' :: ( { "UtilizationPercentage" :: Maybe (UtilizationPercentage) , "PurchasedHours" :: Maybe (PurchasedHours) , "TotalActualHours" :: Maybe (TotalActualHours) , "UnusedHours" :: Maybe (UnusedHours) } -> {"UtilizationPercentage" :: Maybe (UtilizationPercentage) , "PurchasedHours" :: Maybe (PurchasedHours) , "TotalActualHours" :: Maybe (TotalActualHours) , "UnusedHours" :: Maybe (UnusedHours) } ) -> ReservationAggregates
newReservationAggregates'  customize = (ReservationAggregates <<< customize) { "PurchasedHours": Nothing, "TotalActualHours": Nothing, "UnusedHours": Nothing, "UtilizationPercentage": Nothing }



-- | <p>A group of reservations that share a set of attributes.</p>
newtype ReservationCoverageGroup = ReservationCoverageGroup 
  { "Attributes" :: Maybe (Attributes)
  , "Coverage" :: Maybe (Coverage)
  }
derive instance newtypeReservationCoverageGroup :: Newtype ReservationCoverageGroup _
derive instance repGenericReservationCoverageGroup :: Generic ReservationCoverageGroup _
instance showReservationCoverageGroup :: Show ReservationCoverageGroup where show = genericShow
instance decodeReservationCoverageGroup :: Decode ReservationCoverageGroup where decode = genericDecode options
instance encodeReservationCoverageGroup :: Encode ReservationCoverageGroup where encode = genericEncode options

-- | Constructs ReservationCoverageGroup from required parameters
newReservationCoverageGroup :: ReservationCoverageGroup
newReservationCoverageGroup  = ReservationCoverageGroup { "Attributes": Nothing, "Coverage": Nothing }

-- | Constructs ReservationCoverageGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReservationCoverageGroup' :: ( { "Attributes" :: Maybe (Attributes) , "Coverage" :: Maybe (Coverage) } -> {"Attributes" :: Maybe (Attributes) , "Coverage" :: Maybe (Coverage) } ) -> ReservationCoverageGroup
newReservationCoverageGroup'  customize = (ReservationCoverageGroup <<< customize) { "Attributes": Nothing, "Coverage": Nothing }



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
  { "Key" :: Maybe (ReservationGroupKey)
  , "Value" :: Maybe (ReservationGroupValue)
  , "Attributes" :: Maybe (Attributes)
  , "Utilization" :: Maybe (ReservationAggregates)
  }
derive instance newtypeReservationUtilizationGroup :: Newtype ReservationUtilizationGroup _
derive instance repGenericReservationUtilizationGroup :: Generic ReservationUtilizationGroup _
instance showReservationUtilizationGroup :: Show ReservationUtilizationGroup where show = genericShow
instance decodeReservationUtilizationGroup :: Decode ReservationUtilizationGroup where decode = genericDecode options
instance encodeReservationUtilizationGroup :: Encode ReservationUtilizationGroup where encode = genericEncode options

-- | Constructs ReservationUtilizationGroup from required parameters
newReservationUtilizationGroup :: ReservationUtilizationGroup
newReservationUtilizationGroup  = ReservationUtilizationGroup { "Attributes": Nothing, "Key": Nothing, "Utilization": Nothing, "Value": Nothing }

-- | Constructs ReservationUtilizationGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReservationUtilizationGroup' :: ( { "Key" :: Maybe (ReservationGroupKey) , "Value" :: Maybe (ReservationGroupValue) , "Attributes" :: Maybe (Attributes) , "Utilization" :: Maybe (ReservationAggregates) } -> {"Key" :: Maybe (ReservationGroupKey) , "Value" :: Maybe (ReservationGroupValue) , "Attributes" :: Maybe (Attributes) , "Utilization" :: Maybe (ReservationAggregates) } ) -> ReservationUtilizationGroup
newReservationUtilizationGroup'  customize = (ReservationUtilizationGroup <<< customize) { "Attributes": Nothing, "Key": Nothing, "Utilization": Nothing, "Value": Nothing }



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
  { "TimePeriod" :: Maybe (DateInterval)
  , "Total" :: Maybe (Metrics)
  , "Groups" :: Maybe (Groups)
  , "Estimated" :: Maybe (Estimated)
  }
derive instance newtypeResultByTime :: Newtype ResultByTime _
derive instance repGenericResultByTime :: Generic ResultByTime _
instance showResultByTime :: Show ResultByTime where show = genericShow
instance decodeResultByTime :: Decode ResultByTime where decode = genericDecode options
instance encodeResultByTime :: Encode ResultByTime where encode = genericEncode options

-- | Constructs ResultByTime from required parameters
newResultByTime :: ResultByTime
newResultByTime  = ResultByTime { "Estimated": Nothing, "Groups": Nothing, "TimePeriod": Nothing, "Total": Nothing }

-- | Constructs ResultByTime's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResultByTime' :: ( { "TimePeriod" :: Maybe (DateInterval) , "Total" :: Maybe (Metrics) , "Groups" :: Maybe (Groups) , "Estimated" :: Maybe (Estimated) } -> {"TimePeriod" :: Maybe (DateInterval) , "Total" :: Maybe (Metrics) , "Groups" :: Maybe (Groups) , "Estimated" :: Maybe (Estimated) } ) -> ResultByTime
newResultByTime'  customize = (ResultByTime <<< customize) { "Estimated": Nothing, "Groups": Nothing, "TimePeriod": Nothing, "Total": Nothing }



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
  { "Key" :: Maybe (TagKey)
  , "Values" :: Maybe (Values)
  }
derive instance newtypeTagValues :: Newtype TagValues _
derive instance repGenericTagValues :: Generic TagValues _
instance showTagValues :: Show TagValues where show = genericShow
instance decodeTagValues :: Decode TagValues where decode = genericDecode options
instance encodeTagValues :: Encode TagValues where encode = genericEncode options

-- | Constructs TagValues from required parameters
newTagValues :: TagValues
newTagValues  = TagValues { "Key": Nothing, "Values": Nothing }

-- | Constructs TagValues's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagValues' :: ( { "Key" :: Maybe (TagKey) , "Values" :: Maybe (Values) } -> {"Key" :: Maybe (TagKey) , "Values" :: Maybe (Values) } ) -> TagValues
newTagValues'  customize = (TagValues <<< customize) { "Key": Nothing, "Values": Nothing }



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
  { "TimePeriod" :: Maybe (DateInterval)
  , "Groups" :: Maybe (ReservationUtilizationGroups)
  , "Total" :: Maybe (ReservationAggregates)
  }
derive instance newtypeUtilizationByTime :: Newtype UtilizationByTime _
derive instance repGenericUtilizationByTime :: Generic UtilizationByTime _
instance showUtilizationByTime :: Show UtilizationByTime where show = genericShow
instance decodeUtilizationByTime :: Decode UtilizationByTime where decode = genericDecode options
instance encodeUtilizationByTime :: Encode UtilizationByTime where encode = genericEncode options

-- | Constructs UtilizationByTime from required parameters
newUtilizationByTime :: UtilizationByTime
newUtilizationByTime  = UtilizationByTime { "Groups": Nothing, "TimePeriod": Nothing, "Total": Nothing }

-- | Constructs UtilizationByTime's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUtilizationByTime' :: ( { "TimePeriod" :: Maybe (DateInterval) , "Groups" :: Maybe (ReservationUtilizationGroups) , "Total" :: Maybe (ReservationAggregates) } -> {"TimePeriod" :: Maybe (DateInterval) , "Groups" :: Maybe (ReservationUtilizationGroups) , "Total" :: Maybe (ReservationAggregates) } ) -> UtilizationByTime
newUtilizationByTime'  customize = (UtilizationByTime <<< customize) { "Groups": Nothing, "TimePeriod": Nothing, "Total": Nothing }



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

