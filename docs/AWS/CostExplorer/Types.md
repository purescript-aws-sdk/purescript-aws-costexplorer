## Module AWS.CostExplorer.Types

#### `options`

``` purescript
options :: Options
```

#### `AttributeType`

``` purescript
newtype AttributeType
  = AttributeType String
```

##### Instances
``` purescript
Newtype AttributeType _
Generic AttributeType _
Show AttributeType
Decode AttributeType
Encode AttributeType
```

#### `AttributeValue`

``` purescript
newtype AttributeValue
  = AttributeValue String
```

##### Instances
``` purescript
Newtype AttributeValue _
Generic AttributeValue _
Show AttributeValue
Decode AttributeValue
Encode AttributeValue
```

#### `Attributes`

``` purescript
newtype Attributes
  = Attributes (StrMap AttributeValue)
```

##### Instances
``` purescript
Newtype Attributes _
Generic Attributes _
Show Attributes
Decode Attributes
Encode Attributes
```

#### `BillExpirationException`

``` purescript
newtype BillExpirationException
  = BillExpirationException { "Message" :: Maybe (ErrorMessage) }
```

<p>The requested report expired. Update the date interval and try again.</p>

##### Instances
``` purescript
Newtype BillExpirationException _
Generic BillExpirationException _
Show BillExpirationException
Decode BillExpirationException
Encode BillExpirationException
```

#### `newBillExpirationException`

``` purescript
newBillExpirationException :: BillExpirationException
```

Constructs BillExpirationException from required parameters

#### `newBillExpirationException'`

``` purescript
newBillExpirationException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> BillExpirationException
```

Constructs BillExpirationException's fields from required parameters

#### `Context`

``` purescript
newtype Context
  = Context String
```

##### Instances
``` purescript
Newtype Context _
Generic Context _
Show Context
Decode Context
Encode Context
```

#### `Coverage`

``` purescript
newtype Coverage
  = Coverage { "CoverageHours" :: Maybe (CoverageHours) }
```

<p>The amount of instance usage that a reservation covered.</p>

##### Instances
``` purescript
Newtype Coverage _
Generic Coverage _
Show Coverage
Decode Coverage
Encode Coverage
```

#### `newCoverage`

``` purescript
newCoverage :: Coverage
```

Constructs Coverage from required parameters

#### `newCoverage'`

``` purescript
newCoverage' :: ({ "CoverageHours" :: Maybe (CoverageHours) } -> { "CoverageHours" :: Maybe (CoverageHours) }) -> Coverage
```

Constructs Coverage's fields from required parameters

#### `CoverageByTime`

``` purescript
newtype CoverageByTime
  = CoverageByTime { "TimePeriod" :: Maybe (DateInterval), "Groups" :: Maybe (ReservationCoverageGroups), "Total" :: Maybe (Coverage) }
```

<p>Reservation coverage, in hours.</p>

##### Instances
``` purescript
Newtype CoverageByTime _
Generic CoverageByTime _
Show CoverageByTime
Decode CoverageByTime
Encode CoverageByTime
```

#### `newCoverageByTime`

``` purescript
newCoverageByTime :: CoverageByTime
```

Constructs CoverageByTime from required parameters

#### `newCoverageByTime'`

``` purescript
newCoverageByTime' :: ({ "TimePeriod" :: Maybe (DateInterval), "Groups" :: Maybe (ReservationCoverageGroups), "Total" :: Maybe (Coverage) } -> { "TimePeriod" :: Maybe (DateInterval), "Groups" :: Maybe (ReservationCoverageGroups), "Total" :: Maybe (Coverage) }) -> CoverageByTime
```

Constructs CoverageByTime's fields from required parameters

#### `CoverageHours`

``` purescript
newtype CoverageHours
  = CoverageHours { "OnDemandHours" :: Maybe (OnDemandHours), "ReservedHours" :: Maybe (ReservedHours), "TotalRunningHours" :: Maybe (TotalRunningHours), "CoverageHoursPercentage" :: Maybe (CoverageHoursPercentage) }
```

<p>How long a running instance either used a reservation or was On-Demand.</p>

##### Instances
``` purescript
Newtype CoverageHours _
Generic CoverageHours _
Show CoverageHours
Decode CoverageHours
Encode CoverageHours
```

#### `newCoverageHours`

``` purescript
newCoverageHours :: CoverageHours
```

Constructs CoverageHours from required parameters

#### `newCoverageHours'`

``` purescript
newCoverageHours' :: ({ "OnDemandHours" :: Maybe (OnDemandHours), "ReservedHours" :: Maybe (ReservedHours), "TotalRunningHours" :: Maybe (TotalRunningHours), "CoverageHoursPercentage" :: Maybe (CoverageHoursPercentage) } -> { "OnDemandHours" :: Maybe (OnDemandHours), "ReservedHours" :: Maybe (ReservedHours), "TotalRunningHours" :: Maybe (TotalRunningHours), "CoverageHoursPercentage" :: Maybe (CoverageHoursPercentage) }) -> CoverageHours
```

Constructs CoverageHours's fields from required parameters

#### `CoverageHoursPercentage`

``` purescript
newtype CoverageHoursPercentage
  = CoverageHoursPercentage String
```

##### Instances
``` purescript
Newtype CoverageHoursPercentage _
Generic CoverageHoursPercentage _
Show CoverageHoursPercentage
Decode CoverageHoursPercentage
Encode CoverageHoursPercentage
```

#### `CoveragesByTime`

``` purescript
newtype CoveragesByTime
  = CoveragesByTime (Array CoverageByTime)
```

##### Instances
``` purescript
Newtype CoveragesByTime _
Generic CoveragesByTime _
Show CoveragesByTime
Decode CoveragesByTime
Encode CoveragesByTime
```

#### `DataUnavailableException`

``` purescript
newtype DataUnavailableException
  = DataUnavailableException { "Message" :: Maybe (ErrorMessage) }
```

<p>The requested data is unavailable.</p>

##### Instances
``` purescript
Newtype DataUnavailableException _
Generic DataUnavailableException _
Show DataUnavailableException
Decode DataUnavailableException
Encode DataUnavailableException
```

#### `newDataUnavailableException`

``` purescript
newDataUnavailableException :: DataUnavailableException
```

Constructs DataUnavailableException from required parameters

#### `newDataUnavailableException'`

``` purescript
newDataUnavailableException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> DataUnavailableException
```

Constructs DataUnavailableException's fields from required parameters

#### `DateInterval`

``` purescript
newtype DateInterval
  = DateInterval { "Start" :: YearMonthDay, "End" :: YearMonthDay }
```

<p>The time period that you want the usage and costs for. </p>

##### Instances
``` purescript
Newtype DateInterval _
Generic DateInterval _
Show DateInterval
Decode DateInterval
Encode DateInterval
```

#### `newDateInterval`

``` purescript
newDateInterval :: YearMonthDay -> YearMonthDay -> DateInterval
```

Constructs DateInterval from required parameters

#### `newDateInterval'`

``` purescript
newDateInterval' :: YearMonthDay -> YearMonthDay -> ({ "Start" :: YearMonthDay, "End" :: YearMonthDay } -> { "Start" :: YearMonthDay, "End" :: YearMonthDay }) -> DateInterval
```

Constructs DateInterval's fields from required parameters

#### `Dimension`

``` purescript
newtype Dimension
  = Dimension String
```

##### Instances
``` purescript
Newtype Dimension _
Generic Dimension _
Show Dimension
Decode Dimension
Encode Dimension
```

#### `DimensionValues`

``` purescript
newtype DimensionValues
  = DimensionValues { "Key" :: Maybe (Dimension), "Values" :: Maybe (Values) }
```

<p>The metadata that you can use to filter and group your results. You can use <code>GetDimensionValues</code> to find specific values.</p>

##### Instances
``` purescript
Newtype DimensionValues _
Generic DimensionValues _
Show DimensionValues
Decode DimensionValues
Encode DimensionValues
```

#### `newDimensionValues`

``` purescript
newDimensionValues :: DimensionValues
```

Constructs DimensionValues from required parameters

#### `newDimensionValues'`

``` purescript
newDimensionValues' :: ({ "Key" :: Maybe (Dimension), "Values" :: Maybe (Values) } -> { "Key" :: Maybe (Dimension), "Values" :: Maybe (Values) }) -> DimensionValues
```

Constructs DimensionValues's fields from required parameters

#### `DimensionValuesWithAttributes`

``` purescript
newtype DimensionValuesWithAttributes
  = DimensionValuesWithAttributes { "Value" :: Maybe (Value), "Attributes" :: Maybe (Attributes) }
```

<p>The metadata of a specific type that you can use to filter and group your results. You can use <code>GetDimensionValues</code> to find specific values.</p>

##### Instances
``` purescript
Newtype DimensionValuesWithAttributes _
Generic DimensionValuesWithAttributes _
Show DimensionValuesWithAttributes
Decode DimensionValuesWithAttributes
Encode DimensionValuesWithAttributes
```

#### `newDimensionValuesWithAttributes`

``` purescript
newDimensionValuesWithAttributes :: DimensionValuesWithAttributes
```

Constructs DimensionValuesWithAttributes from required parameters

#### `newDimensionValuesWithAttributes'`

``` purescript
newDimensionValuesWithAttributes' :: ({ "Value" :: Maybe (Value), "Attributes" :: Maybe (Attributes) } -> { "Value" :: Maybe (Value), "Attributes" :: Maybe (Attributes) }) -> DimensionValuesWithAttributes
```

Constructs DimensionValuesWithAttributes's fields from required parameters

#### `DimensionValuesWithAttributesList`

``` purescript
newtype DimensionValuesWithAttributesList
  = DimensionValuesWithAttributesList (Array DimensionValuesWithAttributes)
```

##### Instances
``` purescript
Newtype DimensionValuesWithAttributesList _
Generic DimensionValuesWithAttributesList _
Show DimensionValuesWithAttributesList
Decode DimensionValuesWithAttributesList
Encode DimensionValuesWithAttributesList
```

#### `Entity`

``` purescript
newtype Entity
  = Entity String
```

##### Instances
``` purescript
Newtype Entity _
Generic Entity _
Show Entity
Decode Entity
Encode Entity
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `Estimated`

``` purescript
newtype Estimated
  = Estimated Boolean
```

##### Instances
``` purescript
Newtype Estimated _
Generic Estimated _
Show Estimated
Decode Estimated
Encode Estimated
```

#### `Expression`

``` purescript
newtype Expression
  = Expression { "Dimensions" :: Maybe (DimensionValues), "Tags" :: Maybe (TagValues) }
```

<p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p> <ul> <li> <p>Simple dimension values - You can set the dimension name and values for the filters that you plan to use. For example, you can filter for <code>INSTANCE_TYPE==m4.xlarge OR INSTANCE_TYPE==c4.large</code>. The <code>Expression</code> for that looks like this.</p> <p> <code>{ "Dimensions": { "Key": "INSTANCE_TYPE", "Values": [ "m4.xlarge", “c4.large” ] } }</code> </p> <p>The list of dimension values are OR'd together to retrieve cost or usage data. You can create <code>Expression</code> and <code>DimensionValues</code> objects using either <code>with*</code> methods or <code>set*</code> methods in multiple lines. </p> </li> <li> <p>Compound dimension values with logical operations - You can use multiple <code>Expression</code> types and the logical operators <code>AND/OR/NOT</code> to create a list of one or more <code>Expression</code> objects. This allows you to filter on more advanced options. For example, you can filter on <code>((INSTANCE_TYPE == m4.large OR INSTANCE_TYPE == m3.large) OR (TAG.Type == Type1)) AND (USAGE_TYPE != DataTransfer)</code>. The <code>Expression</code> for that looks like this.</p> <p> <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "INSTANCE_TYPE", "Values": [ "m4.x.large", "c4.large" ] }}, {"Tag": { "Key": "TagName", "Values": ["Value1"] } } ]}, {"Not": {"dimensions": { "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] } </code> </p> <note> <p>Because each <code>Expression</code> can have only one operator, the service returns an error if more than one is specified. The following example shows an Expression object that will create an error.</p> </note> <p> <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE", "Values": [ "DataTransfer" ] } } </code> </p> </li> </ul>

##### Instances
``` purescript
Newtype Expression _
Generic Expression _
Show Expression
Decode Expression
Encode Expression
```

#### `newExpression`

``` purescript
newExpression :: Expression
```

Constructs Expression from required parameters

#### `newExpression'`

``` purescript
newExpression' :: ({ "Dimensions" :: Maybe (DimensionValues), "Tags" :: Maybe (TagValues) } -> { "Dimensions" :: Maybe (DimensionValues), "Tags" :: Maybe (TagValues) }) -> Expression
```

Constructs Expression's fields from required parameters

#### `Expressions`

``` purescript
newtype Expressions
  = Expressions (Array Expression)
```

##### Instances
``` purescript
Newtype Expressions _
Generic Expressions _
Show Expressions
Decode Expressions
Encode Expressions
```

#### `GetCostAndUsageRequest`

``` purescript
newtype GetCostAndUsageRequest
  = GetCostAndUsageRequest { "TimePeriod" :: Maybe (DateInterval), "Granularity" :: Maybe (Granularity), "Filter" :: Maybe (Expression), "Metrics" :: Maybe (MetricNames), "GroupBy" :: Maybe (GroupDefinitions), "NextPageToken" :: Maybe (NextPageToken) }
```

##### Instances
``` purescript
Newtype GetCostAndUsageRequest _
Generic GetCostAndUsageRequest _
Show GetCostAndUsageRequest
Decode GetCostAndUsageRequest
Encode GetCostAndUsageRequest
```

#### `newGetCostAndUsageRequest`

``` purescript
newGetCostAndUsageRequest :: GetCostAndUsageRequest
```

Constructs GetCostAndUsageRequest from required parameters

#### `newGetCostAndUsageRequest'`

``` purescript
newGetCostAndUsageRequest' :: ({ "TimePeriod" :: Maybe (DateInterval), "Granularity" :: Maybe (Granularity), "Filter" :: Maybe (Expression), "Metrics" :: Maybe (MetricNames), "GroupBy" :: Maybe (GroupDefinitions), "NextPageToken" :: Maybe (NextPageToken) } -> { "TimePeriod" :: Maybe (DateInterval), "Granularity" :: Maybe (Granularity), "Filter" :: Maybe (Expression), "Metrics" :: Maybe (MetricNames), "GroupBy" :: Maybe (GroupDefinitions), "NextPageToken" :: Maybe (NextPageToken) }) -> GetCostAndUsageRequest
```

Constructs GetCostAndUsageRequest's fields from required parameters

#### `GetCostAndUsageResponse`

``` purescript
newtype GetCostAndUsageResponse
  = GetCostAndUsageResponse { "NextPageToken" :: Maybe (NextPageToken), "GroupDefinitions" :: Maybe (GroupDefinitions), "ResultsByTime" :: Maybe (ResultsByTime) }
```

##### Instances
``` purescript
Newtype GetCostAndUsageResponse _
Generic GetCostAndUsageResponse _
Show GetCostAndUsageResponse
Decode GetCostAndUsageResponse
Encode GetCostAndUsageResponse
```

#### `newGetCostAndUsageResponse`

``` purescript
newGetCostAndUsageResponse :: GetCostAndUsageResponse
```

Constructs GetCostAndUsageResponse from required parameters

#### `newGetCostAndUsageResponse'`

``` purescript
newGetCostAndUsageResponse' :: ({ "NextPageToken" :: Maybe (NextPageToken), "GroupDefinitions" :: Maybe (GroupDefinitions), "ResultsByTime" :: Maybe (ResultsByTime) } -> { "NextPageToken" :: Maybe (NextPageToken), "GroupDefinitions" :: Maybe (GroupDefinitions), "ResultsByTime" :: Maybe (ResultsByTime) }) -> GetCostAndUsageResponse
```

Constructs GetCostAndUsageResponse's fields from required parameters

#### `GetDimensionValuesRequest`

``` purescript
newtype GetDimensionValuesRequest
  = GetDimensionValuesRequest { "SearchString" :: Maybe (SearchString), "TimePeriod" :: DateInterval, "Dimension" :: Dimension, "Context" :: Maybe (Context), "NextPageToken" :: Maybe (NextPageToken) }
```

##### Instances
``` purescript
Newtype GetDimensionValuesRequest _
Generic GetDimensionValuesRequest _
Show GetDimensionValuesRequest
Decode GetDimensionValuesRequest
Encode GetDimensionValuesRequest
```

#### `newGetDimensionValuesRequest`

``` purescript
newGetDimensionValuesRequest :: Dimension -> DateInterval -> GetDimensionValuesRequest
```

Constructs GetDimensionValuesRequest from required parameters

#### `newGetDimensionValuesRequest'`

``` purescript
newGetDimensionValuesRequest' :: Dimension -> DateInterval -> ({ "SearchString" :: Maybe (SearchString), "TimePeriod" :: DateInterval, "Dimension" :: Dimension, "Context" :: Maybe (Context), "NextPageToken" :: Maybe (NextPageToken) } -> { "SearchString" :: Maybe (SearchString), "TimePeriod" :: DateInterval, "Dimension" :: Dimension, "Context" :: Maybe (Context), "NextPageToken" :: Maybe (NextPageToken) }) -> GetDimensionValuesRequest
```

Constructs GetDimensionValuesRequest's fields from required parameters

#### `GetDimensionValuesResponse`

``` purescript
newtype GetDimensionValuesResponse
  = GetDimensionValuesResponse { "DimensionValues" :: DimensionValuesWithAttributesList, "ReturnSize" :: PageSize, "TotalSize" :: PageSize, "NextPageToken" :: Maybe (NextPageToken) }
```

##### Instances
``` purescript
Newtype GetDimensionValuesResponse _
Generic GetDimensionValuesResponse _
Show GetDimensionValuesResponse
Decode GetDimensionValuesResponse
Encode GetDimensionValuesResponse
```

#### `newGetDimensionValuesResponse`

``` purescript
newGetDimensionValuesResponse :: DimensionValuesWithAttributesList -> PageSize -> PageSize -> GetDimensionValuesResponse
```

Constructs GetDimensionValuesResponse from required parameters

#### `newGetDimensionValuesResponse'`

``` purescript
newGetDimensionValuesResponse' :: DimensionValuesWithAttributesList -> PageSize -> PageSize -> ({ "DimensionValues" :: DimensionValuesWithAttributesList, "ReturnSize" :: PageSize, "TotalSize" :: PageSize, "NextPageToken" :: Maybe (NextPageToken) } -> { "DimensionValues" :: DimensionValuesWithAttributesList, "ReturnSize" :: PageSize, "TotalSize" :: PageSize, "NextPageToken" :: Maybe (NextPageToken) }) -> GetDimensionValuesResponse
```

Constructs GetDimensionValuesResponse's fields from required parameters

#### `GetReservationCoverageRequest`

``` purescript
newtype GetReservationCoverageRequest
  = GetReservationCoverageRequest { "TimePeriod" :: DateInterval, "GroupBy" :: Maybe (GroupDefinitions), "Granularity" :: Maybe (Granularity), "Filter" :: Maybe (Expression), "NextPageToken" :: Maybe (NextPageToken) }
```

<p>You can query for how much of your instance usage was covered by a reservation.</p>

##### Instances
``` purescript
Newtype GetReservationCoverageRequest _
Generic GetReservationCoverageRequest _
Show GetReservationCoverageRequest
Decode GetReservationCoverageRequest
Encode GetReservationCoverageRequest
```

#### `newGetReservationCoverageRequest`

``` purescript
newGetReservationCoverageRequest :: DateInterval -> GetReservationCoverageRequest
```

Constructs GetReservationCoverageRequest from required parameters

#### `newGetReservationCoverageRequest'`

``` purescript
newGetReservationCoverageRequest' :: DateInterval -> ({ "TimePeriod" :: DateInterval, "GroupBy" :: Maybe (GroupDefinitions), "Granularity" :: Maybe (Granularity), "Filter" :: Maybe (Expression), "NextPageToken" :: Maybe (NextPageToken) } -> { "TimePeriod" :: DateInterval, "GroupBy" :: Maybe (GroupDefinitions), "Granularity" :: Maybe (Granularity), "Filter" :: Maybe (Expression), "NextPageToken" :: Maybe (NextPageToken) }) -> GetReservationCoverageRequest
```

Constructs GetReservationCoverageRequest's fields from required parameters

#### `GetReservationCoverageResponse`

``` purescript
newtype GetReservationCoverageResponse
  = GetReservationCoverageResponse { "CoveragesByTime" :: CoveragesByTime, "Total" :: Maybe (Coverage), "NextPageToken" :: Maybe (NextPageToken) }
```

##### Instances
``` purescript
Newtype GetReservationCoverageResponse _
Generic GetReservationCoverageResponse _
Show GetReservationCoverageResponse
Decode GetReservationCoverageResponse
Encode GetReservationCoverageResponse
```

#### `newGetReservationCoverageResponse`

``` purescript
newGetReservationCoverageResponse :: CoveragesByTime -> GetReservationCoverageResponse
```

Constructs GetReservationCoverageResponse from required parameters

#### `newGetReservationCoverageResponse'`

``` purescript
newGetReservationCoverageResponse' :: CoveragesByTime -> ({ "CoveragesByTime" :: CoveragesByTime, "Total" :: Maybe (Coverage), "NextPageToken" :: Maybe (NextPageToken) } -> { "CoveragesByTime" :: CoveragesByTime, "Total" :: Maybe (Coverage), "NextPageToken" :: Maybe (NextPageToken) }) -> GetReservationCoverageResponse
```

Constructs GetReservationCoverageResponse's fields from required parameters

#### `GetReservationUtilizationRequest`

``` purescript
newtype GetReservationUtilizationRequest
  = GetReservationUtilizationRequest { "TimePeriod" :: DateInterval, "GroupBy" :: Maybe (GroupDefinitions), "Granularity" :: Maybe (Granularity), "Filter" :: Maybe (Expression), "NextPageToken" :: Maybe (NextPageToken) }
```

##### Instances
``` purescript
Newtype GetReservationUtilizationRequest _
Generic GetReservationUtilizationRequest _
Show GetReservationUtilizationRequest
Decode GetReservationUtilizationRequest
Encode GetReservationUtilizationRequest
```

#### `newGetReservationUtilizationRequest`

``` purescript
newGetReservationUtilizationRequest :: DateInterval -> GetReservationUtilizationRequest
```

Constructs GetReservationUtilizationRequest from required parameters

#### `newGetReservationUtilizationRequest'`

``` purescript
newGetReservationUtilizationRequest' :: DateInterval -> ({ "TimePeriod" :: DateInterval, "GroupBy" :: Maybe (GroupDefinitions), "Granularity" :: Maybe (Granularity), "Filter" :: Maybe (Expression), "NextPageToken" :: Maybe (NextPageToken) } -> { "TimePeriod" :: DateInterval, "GroupBy" :: Maybe (GroupDefinitions), "Granularity" :: Maybe (Granularity), "Filter" :: Maybe (Expression), "NextPageToken" :: Maybe (NextPageToken) }) -> GetReservationUtilizationRequest
```

Constructs GetReservationUtilizationRequest's fields from required parameters

#### `GetReservationUtilizationResponse`

``` purescript
newtype GetReservationUtilizationResponse
  = GetReservationUtilizationResponse { "UtilizationsByTime" :: UtilizationsByTime, "Total" :: Maybe (ReservationAggregates), "NextPageToken" :: Maybe (NextPageToken) }
```

##### Instances
``` purescript
Newtype GetReservationUtilizationResponse _
Generic GetReservationUtilizationResponse _
Show GetReservationUtilizationResponse
Decode GetReservationUtilizationResponse
Encode GetReservationUtilizationResponse
```

#### `newGetReservationUtilizationResponse`

``` purescript
newGetReservationUtilizationResponse :: UtilizationsByTime -> GetReservationUtilizationResponse
```

Constructs GetReservationUtilizationResponse from required parameters

#### `newGetReservationUtilizationResponse'`

``` purescript
newGetReservationUtilizationResponse' :: UtilizationsByTime -> ({ "UtilizationsByTime" :: UtilizationsByTime, "Total" :: Maybe (ReservationAggregates), "NextPageToken" :: Maybe (NextPageToken) } -> { "UtilizationsByTime" :: UtilizationsByTime, "Total" :: Maybe (ReservationAggregates), "NextPageToken" :: Maybe (NextPageToken) }) -> GetReservationUtilizationResponse
```

Constructs GetReservationUtilizationResponse's fields from required parameters

#### `GetTagsRequest`

``` purescript
newtype GetTagsRequest
  = GetTagsRequest { "SearchString" :: Maybe (SearchString), "TimePeriod" :: DateInterval, "TagKey" :: Maybe (TagKey), "NextPageToken" :: Maybe (NextPageToken) }
```

##### Instances
``` purescript
Newtype GetTagsRequest _
Generic GetTagsRequest _
Show GetTagsRequest
Decode GetTagsRequest
Encode GetTagsRequest
```

#### `newGetTagsRequest`

``` purescript
newGetTagsRequest :: DateInterval -> GetTagsRequest
```

Constructs GetTagsRequest from required parameters

#### `newGetTagsRequest'`

``` purescript
newGetTagsRequest' :: DateInterval -> ({ "SearchString" :: Maybe (SearchString), "TimePeriod" :: DateInterval, "TagKey" :: Maybe (TagKey), "NextPageToken" :: Maybe (NextPageToken) } -> { "SearchString" :: Maybe (SearchString), "TimePeriod" :: DateInterval, "TagKey" :: Maybe (TagKey), "NextPageToken" :: Maybe (NextPageToken) }) -> GetTagsRequest
```

Constructs GetTagsRequest's fields from required parameters

#### `GetTagsResponse`

``` purescript
newtype GetTagsResponse
  = GetTagsResponse { "NextPageToken" :: Maybe (NextPageToken), "Tags" :: TagList, "ReturnSize" :: PageSize, "TotalSize" :: PageSize }
```

##### Instances
``` purescript
Newtype GetTagsResponse _
Generic GetTagsResponse _
Show GetTagsResponse
Decode GetTagsResponse
Encode GetTagsResponse
```

#### `newGetTagsResponse`

``` purescript
newGetTagsResponse :: PageSize -> TagList -> PageSize -> GetTagsResponse
```

Constructs GetTagsResponse from required parameters

#### `newGetTagsResponse'`

``` purescript
newGetTagsResponse' :: PageSize -> TagList -> PageSize -> ({ "NextPageToken" :: Maybe (NextPageToken), "Tags" :: TagList, "ReturnSize" :: PageSize, "TotalSize" :: PageSize } -> { "NextPageToken" :: Maybe (NextPageToken), "Tags" :: TagList, "ReturnSize" :: PageSize, "TotalSize" :: PageSize }) -> GetTagsResponse
```

Constructs GetTagsResponse's fields from required parameters

#### `Granularity`

``` purescript
newtype Granularity
  = Granularity String
```

##### Instances
``` purescript
Newtype Granularity _
Generic Granularity _
Show Granularity
Decode Granularity
Encode Granularity
```

#### `Group`

``` purescript
newtype Group
  = Group { "Keys" :: Maybe (Keys), "Metrics" :: Maybe (Metrics) }
```

<p>One level of grouped data within the results.</p>

##### Instances
``` purescript
Newtype Group _
Generic Group _
Show Group
Decode Group
Encode Group
```

#### `newGroup`

``` purescript
newGroup :: Group
```

Constructs Group from required parameters

#### `newGroup'`

``` purescript
newGroup' :: ({ "Keys" :: Maybe (Keys), "Metrics" :: Maybe (Metrics) } -> { "Keys" :: Maybe (Keys), "Metrics" :: Maybe (Metrics) }) -> Group
```

Constructs Group's fields from required parameters

#### `GroupDefinition`

``` purescript
newtype GroupDefinition
  = GroupDefinition { "Type" :: Maybe (GroupDefinitionType), "Key" :: Maybe (GroupDefinitionKey) }
```

<p>Represents a group when you specify a group by criteria, or in the response to a query with a specific grouping.</p>

##### Instances
``` purescript
Newtype GroupDefinition _
Generic GroupDefinition _
Show GroupDefinition
Decode GroupDefinition
Encode GroupDefinition
```

#### `newGroupDefinition`

``` purescript
newGroupDefinition :: GroupDefinition
```

Constructs GroupDefinition from required parameters

#### `newGroupDefinition'`

``` purescript
newGroupDefinition' :: ({ "Type" :: Maybe (GroupDefinitionType), "Key" :: Maybe (GroupDefinitionKey) } -> { "Type" :: Maybe (GroupDefinitionType), "Key" :: Maybe (GroupDefinitionKey) }) -> GroupDefinition
```

Constructs GroupDefinition's fields from required parameters

#### `GroupDefinitionKey`

``` purescript
newtype GroupDefinitionKey
  = GroupDefinitionKey String
```

##### Instances
``` purescript
Newtype GroupDefinitionKey _
Generic GroupDefinitionKey _
Show GroupDefinitionKey
Decode GroupDefinitionKey
Encode GroupDefinitionKey
```

#### `GroupDefinitionType`

``` purescript
newtype GroupDefinitionType
  = GroupDefinitionType String
```

##### Instances
``` purescript
Newtype GroupDefinitionType _
Generic GroupDefinitionType _
Show GroupDefinitionType
Decode GroupDefinitionType
Encode GroupDefinitionType
```

#### `GroupDefinitions`

``` purescript
newtype GroupDefinitions
  = GroupDefinitions (Array GroupDefinition)
```

##### Instances
``` purescript
Newtype GroupDefinitions _
Generic GroupDefinitions _
Show GroupDefinitions
Decode GroupDefinitions
Encode GroupDefinitions
```

#### `Groups`

``` purescript
newtype Groups
  = Groups (Array Group)
```

##### Instances
``` purescript
Newtype Groups _
Generic Groups _
Show Groups
Decode Groups
Encode Groups
```

#### `InvalidNextTokenException`

``` purescript
newtype InvalidNextTokenException
  = InvalidNextTokenException { "Message" :: Maybe (ErrorMessage) }
```

<p>The pagination token is invalid. Try again without a pagination token.</p>

##### Instances
``` purescript
Newtype InvalidNextTokenException _
Generic InvalidNextTokenException _
Show InvalidNextTokenException
Decode InvalidNextTokenException
Encode InvalidNextTokenException
```

#### `newInvalidNextTokenException`

``` purescript
newInvalidNextTokenException :: InvalidNextTokenException
```

Constructs InvalidNextTokenException from required parameters

#### `newInvalidNextTokenException'`

``` purescript
newInvalidNextTokenException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> InvalidNextTokenException
```

Constructs InvalidNextTokenException's fields from required parameters

#### `Key`

``` purescript
newtype Key
  = Key String
```

##### Instances
``` purescript
Newtype Key _
Generic Key _
Show Key
Decode Key
Encode Key
```

#### `Keys`

``` purescript
newtype Keys
  = Keys (Array Key)
```

##### Instances
``` purescript
Newtype Keys _
Generic Keys _
Show Keys
Decode Keys
Encode Keys
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { "Message" :: Maybe (ErrorMessage) }
```

<p>You made too many calls in a short period of time. Try again later.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `MetricAmount`

``` purescript
newtype MetricAmount
  = MetricAmount String
```

##### Instances
``` purescript
Newtype MetricAmount _
Generic MetricAmount _
Show MetricAmount
Decode MetricAmount
Encode MetricAmount
```

#### `MetricName`

``` purescript
newtype MetricName
  = MetricName String
```

##### Instances
``` purescript
Newtype MetricName _
Generic MetricName _
Show MetricName
Decode MetricName
Encode MetricName
```

#### `MetricNames`

``` purescript
newtype MetricNames
  = MetricNames (Array MetricName)
```

##### Instances
``` purescript
Newtype MetricNames _
Generic MetricNames _
Show MetricNames
Decode MetricNames
Encode MetricNames
```

#### `MetricUnit`

``` purescript
newtype MetricUnit
  = MetricUnit String
```

##### Instances
``` purescript
Newtype MetricUnit _
Generic MetricUnit _
Show MetricUnit
Decode MetricUnit
Encode MetricUnit
```

#### `MetricValue`

``` purescript
newtype MetricValue
  = MetricValue { "Amount" :: Maybe (MetricAmount), "Unit" :: Maybe (MetricUnit) }
```

<p>The aggregated value for a metric.</p>

##### Instances
``` purescript
Newtype MetricValue _
Generic MetricValue _
Show MetricValue
Decode MetricValue
Encode MetricValue
```

#### `newMetricValue`

``` purescript
newMetricValue :: MetricValue
```

Constructs MetricValue from required parameters

#### `newMetricValue'`

``` purescript
newMetricValue' :: ({ "Amount" :: Maybe (MetricAmount), "Unit" :: Maybe (MetricUnit) } -> { "Amount" :: Maybe (MetricAmount), "Unit" :: Maybe (MetricUnit) }) -> MetricValue
```

Constructs MetricValue's fields from required parameters

#### `Metrics`

``` purescript
newtype Metrics
  = Metrics (StrMap MetricValue)
```

##### Instances
``` purescript
Newtype Metrics _
Generic Metrics _
Show Metrics
Decode Metrics
Encode Metrics
```

#### `NextPageToken`

``` purescript
newtype NextPageToken
  = NextPageToken String
```

##### Instances
``` purescript
Newtype NextPageToken _
Generic NextPageToken _
Show NextPageToken
Decode NextPageToken
Encode NextPageToken
```

#### `OnDemandHours`

``` purescript
newtype OnDemandHours
  = OnDemandHours String
```

##### Instances
``` purescript
Newtype OnDemandHours _
Generic OnDemandHours _
Show OnDemandHours
Decode OnDemandHours
Encode OnDemandHours
```

#### `PageSize`

``` purescript
newtype PageSize
  = PageSize Int
```

##### Instances
``` purescript
Newtype PageSize _
Generic PageSize _
Show PageSize
Decode PageSize
Encode PageSize
```

#### `PurchasedHours`

``` purescript
newtype PurchasedHours
  = PurchasedHours String
```

##### Instances
``` purescript
Newtype PurchasedHours _
Generic PurchasedHours _
Show PurchasedHours
Decode PurchasedHours
Encode PurchasedHours
```

#### `ReservationAggregates`

``` purescript
newtype ReservationAggregates
  = ReservationAggregates { "UtilizationPercentage" :: Maybe (UtilizationPercentage), "PurchasedHours" :: Maybe (PurchasedHours), "TotalActualHours" :: Maybe (TotalActualHours), "UnusedHours" :: Maybe (UnusedHours) }
```

<p>The aggregated numbers for your RI usage.</p>

##### Instances
``` purescript
Newtype ReservationAggregates _
Generic ReservationAggregates _
Show ReservationAggregates
Decode ReservationAggregates
Encode ReservationAggregates
```

#### `newReservationAggregates`

``` purescript
newReservationAggregates :: ReservationAggregates
```

Constructs ReservationAggregates from required parameters

#### `newReservationAggregates'`

``` purescript
newReservationAggregates' :: ({ "UtilizationPercentage" :: Maybe (UtilizationPercentage), "PurchasedHours" :: Maybe (PurchasedHours), "TotalActualHours" :: Maybe (TotalActualHours), "UnusedHours" :: Maybe (UnusedHours) } -> { "UtilizationPercentage" :: Maybe (UtilizationPercentage), "PurchasedHours" :: Maybe (PurchasedHours), "TotalActualHours" :: Maybe (TotalActualHours), "UnusedHours" :: Maybe (UnusedHours) }) -> ReservationAggregates
```

Constructs ReservationAggregates's fields from required parameters

#### `ReservationCoverageGroup`

``` purescript
newtype ReservationCoverageGroup
  = ReservationCoverageGroup { "Attributes" :: Maybe (Attributes), "Coverage" :: Maybe (Coverage) }
```

<p>A group of reservations that share a set of attributes.</p>

##### Instances
``` purescript
Newtype ReservationCoverageGroup _
Generic ReservationCoverageGroup _
Show ReservationCoverageGroup
Decode ReservationCoverageGroup
Encode ReservationCoverageGroup
```

#### `newReservationCoverageGroup`

``` purescript
newReservationCoverageGroup :: ReservationCoverageGroup
```

Constructs ReservationCoverageGroup from required parameters

#### `newReservationCoverageGroup'`

``` purescript
newReservationCoverageGroup' :: ({ "Attributes" :: Maybe (Attributes), "Coverage" :: Maybe (Coverage) } -> { "Attributes" :: Maybe (Attributes), "Coverage" :: Maybe (Coverage) }) -> ReservationCoverageGroup
```

Constructs ReservationCoverageGroup's fields from required parameters

#### `ReservationCoverageGroups`

``` purescript
newtype ReservationCoverageGroups
  = ReservationCoverageGroups (Array ReservationCoverageGroup)
```

##### Instances
``` purescript
Newtype ReservationCoverageGroups _
Generic ReservationCoverageGroups _
Show ReservationCoverageGroups
Decode ReservationCoverageGroups
Encode ReservationCoverageGroups
```

#### `ReservationGroupKey`

``` purescript
newtype ReservationGroupKey
  = ReservationGroupKey String
```

##### Instances
``` purescript
Newtype ReservationGroupKey _
Generic ReservationGroupKey _
Show ReservationGroupKey
Decode ReservationGroupKey
Encode ReservationGroupKey
```

#### `ReservationGroupValue`

``` purescript
newtype ReservationGroupValue
  = ReservationGroupValue String
```

##### Instances
``` purescript
Newtype ReservationGroupValue _
Generic ReservationGroupValue _
Show ReservationGroupValue
Decode ReservationGroupValue
Encode ReservationGroupValue
```

#### `ReservationUtilizationGroup`

``` purescript
newtype ReservationUtilizationGroup
  = ReservationUtilizationGroup { "Key" :: Maybe (ReservationGroupKey), "Value" :: Maybe (ReservationGroupValue), "Attributes" :: Maybe (Attributes), "Utilization" :: Maybe (ReservationAggregates) }
```

<p>A group of RIs that share a set of attributes.</p>

##### Instances
``` purescript
Newtype ReservationUtilizationGroup _
Generic ReservationUtilizationGroup _
Show ReservationUtilizationGroup
Decode ReservationUtilizationGroup
Encode ReservationUtilizationGroup
```

#### `newReservationUtilizationGroup`

``` purescript
newReservationUtilizationGroup :: ReservationUtilizationGroup
```

Constructs ReservationUtilizationGroup from required parameters

#### `newReservationUtilizationGroup'`

``` purescript
newReservationUtilizationGroup' :: ({ "Key" :: Maybe (ReservationGroupKey), "Value" :: Maybe (ReservationGroupValue), "Attributes" :: Maybe (Attributes), "Utilization" :: Maybe (ReservationAggregates) } -> { "Key" :: Maybe (ReservationGroupKey), "Value" :: Maybe (ReservationGroupValue), "Attributes" :: Maybe (Attributes), "Utilization" :: Maybe (ReservationAggregates) }) -> ReservationUtilizationGroup
```

Constructs ReservationUtilizationGroup's fields from required parameters

#### `ReservationUtilizationGroups`

``` purescript
newtype ReservationUtilizationGroups
  = ReservationUtilizationGroups (Array ReservationUtilizationGroup)
```

##### Instances
``` purescript
Newtype ReservationUtilizationGroups _
Generic ReservationUtilizationGroups _
Show ReservationUtilizationGroups
Decode ReservationUtilizationGroups
Encode ReservationUtilizationGroups
```

#### `ReservedHours`

``` purescript
newtype ReservedHours
  = ReservedHours String
```

##### Instances
``` purescript
Newtype ReservedHours _
Generic ReservedHours _
Show ReservedHours
Decode ReservedHours
Encode ReservedHours
```

#### `ResultByTime`

``` purescript
newtype ResultByTime
  = ResultByTime { "TimePeriod" :: Maybe (DateInterval), "Total" :: Maybe (Metrics), "Groups" :: Maybe (Groups), "Estimated" :: Maybe (Estimated) }
```

<p>The result that is associated with a time period.</p>

##### Instances
``` purescript
Newtype ResultByTime _
Generic ResultByTime _
Show ResultByTime
Decode ResultByTime
Encode ResultByTime
```

#### `newResultByTime`

``` purescript
newResultByTime :: ResultByTime
```

Constructs ResultByTime from required parameters

#### `newResultByTime'`

``` purescript
newResultByTime' :: ({ "TimePeriod" :: Maybe (DateInterval), "Total" :: Maybe (Metrics), "Groups" :: Maybe (Groups), "Estimated" :: Maybe (Estimated) } -> { "TimePeriod" :: Maybe (DateInterval), "Total" :: Maybe (Metrics), "Groups" :: Maybe (Groups), "Estimated" :: Maybe (Estimated) }) -> ResultByTime
```

Constructs ResultByTime's fields from required parameters

#### `ResultsByTime`

``` purescript
newtype ResultsByTime
  = ResultsByTime (Array ResultByTime)
```

##### Instances
``` purescript
Newtype ResultsByTime _
Generic ResultsByTime _
Show ResultsByTime
Decode ResultsByTime
Encode ResultsByTime
```

#### `SearchString`

``` purescript
newtype SearchString
  = SearchString String
```

##### Instances
``` purescript
Newtype SearchString _
Generic SearchString _
Show SearchString
Decode SearchString
Encode SearchString
```

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Entity)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TagValues`

``` purescript
newtype TagValues
  = TagValues { "Key" :: Maybe (TagKey), "Values" :: Maybe (Values) }
```

<p>The values that are available for a tag.</p>

##### Instances
``` purescript
Newtype TagValues _
Generic TagValues _
Show TagValues
Decode TagValues
Encode TagValues
```

#### `newTagValues`

``` purescript
newTagValues :: TagValues
```

Constructs TagValues from required parameters

#### `newTagValues'`

``` purescript
newTagValues' :: ({ "Key" :: Maybe (TagKey), "Values" :: Maybe (Values) } -> { "Key" :: Maybe (TagKey), "Values" :: Maybe (Values) }) -> TagValues
```

Constructs TagValues's fields from required parameters

#### `TotalActualHours`

``` purescript
newtype TotalActualHours
  = TotalActualHours String
```

##### Instances
``` purescript
Newtype TotalActualHours _
Generic TotalActualHours _
Show TotalActualHours
Decode TotalActualHours
Encode TotalActualHours
```

#### `TotalRunningHours`

``` purescript
newtype TotalRunningHours
  = TotalRunningHours String
```

##### Instances
``` purescript
Newtype TotalRunningHours _
Generic TotalRunningHours _
Show TotalRunningHours
Decode TotalRunningHours
Encode TotalRunningHours
```

#### `UnusedHours`

``` purescript
newtype UnusedHours
  = UnusedHours String
```

##### Instances
``` purescript
Newtype UnusedHours _
Generic UnusedHours _
Show UnusedHours
Decode UnusedHours
Encode UnusedHours
```

#### `UtilizationByTime`

``` purescript
newtype UtilizationByTime
  = UtilizationByTime { "TimePeriod" :: Maybe (DateInterval), "Groups" :: Maybe (ReservationUtilizationGroups), "Total" :: Maybe (ReservationAggregates) }
```

<p>The amount of utilization, in hours.</p>

##### Instances
``` purescript
Newtype UtilizationByTime _
Generic UtilizationByTime _
Show UtilizationByTime
Decode UtilizationByTime
Encode UtilizationByTime
```

#### `newUtilizationByTime`

``` purescript
newUtilizationByTime :: UtilizationByTime
```

Constructs UtilizationByTime from required parameters

#### `newUtilizationByTime'`

``` purescript
newUtilizationByTime' :: ({ "TimePeriod" :: Maybe (DateInterval), "Groups" :: Maybe (ReservationUtilizationGroups), "Total" :: Maybe (ReservationAggregates) } -> { "TimePeriod" :: Maybe (DateInterval), "Groups" :: Maybe (ReservationUtilizationGroups), "Total" :: Maybe (ReservationAggregates) }) -> UtilizationByTime
```

Constructs UtilizationByTime's fields from required parameters

#### `UtilizationPercentage`

``` purescript
newtype UtilizationPercentage
  = UtilizationPercentage String
```

##### Instances
``` purescript
Newtype UtilizationPercentage _
Generic UtilizationPercentage _
Show UtilizationPercentage
Decode UtilizationPercentage
Encode UtilizationPercentage
```

#### `UtilizationsByTime`

``` purescript
newtype UtilizationsByTime
  = UtilizationsByTime (Array UtilizationByTime)
```

##### Instances
``` purescript
Newtype UtilizationsByTime _
Generic UtilizationsByTime _
Show UtilizationsByTime
Decode UtilizationsByTime
Encode UtilizationsByTime
```

#### `Value`

``` purescript
newtype Value
  = Value String
```

##### Instances
``` purescript
Newtype Value _
Generic Value _
Show Value
Decode Value
Encode Value
```

#### `Values`

``` purescript
newtype Values
  = Values (Array Value)
```

##### Instances
``` purescript
Newtype Values _
Generic Values _
Show Values
Decode Values
Encode Values
```

#### `YearMonthDay`

``` purescript
newtype YearMonthDay
  = YearMonthDay String
```

##### Instances
``` purescript
Newtype YearMonthDay _
Generic YearMonthDay _
Show YearMonthDay
Decode YearMonthDay
Encode YearMonthDay
```


