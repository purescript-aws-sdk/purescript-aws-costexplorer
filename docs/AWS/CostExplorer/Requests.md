## Module AWS.CostExplorer.Requests

#### `getCostAndUsage`

``` purescript
getCostAndUsage :: forall eff. Service -> GetCostAndUsageRequest -> Aff (exception :: EXCEPTION | eff) GetCostAndUsageResponse
```

<p>Retrieve cost and usage metrics for your account. You can specify which cost and usage-related metric, such as <code>BlendedCosts</code> or <code>UsageQuantity</code>, that you want the request to return. You can also filter and group your data by various dimensions, such as <code>SERVICE</code> or <code>AZ</code>, in a specific time range. See the <code>GetDimensionValues</code> action for a complete list of the valid dimensions. Master accounts in an organization have access to all member accounts.</p>

#### `getDimensionValues`

``` purescript
getDimensionValues :: forall eff. Service -> GetDimensionValuesRequest -> Aff (exception :: EXCEPTION | eff) GetDimensionValuesResponse
```

<p>You can use <code>GetDimensionValues</code> to retrieve all available filter values for a specific filter over a period of time. You can search the dimension values for an arbitrary string. </p>

#### `getReservationCoverage`

``` purescript
getReservationCoverage :: forall eff. Service -> GetReservationCoverageRequest -> Aff (exception :: EXCEPTION | eff) GetReservationCoverageResponse
```

<p>Retrieve the reservation coverage for your account. An organization's master account has access to the associated member accounts. For any time period, you can filter data about reservation usage by the following dimensions. </p> <ul> <li> <p>AZ</p> </li> <li> <p>INSTANCE_TYPE</p> </li> <li> <p>LINKED_ACCOUNT</p> </li> <li> <p>PLATFORM</p> </li> <li> <p>REGION</p> </li> <li> <p>TENANCY</p> </li> </ul> <p>To determine valid values for a dimension, use the <code>GetDimensionValues</code> operation. </p>

#### `getReservationUtilization`

``` purescript
getReservationUtilization :: forall eff. Service -> GetReservationUtilizationRequest -> Aff (exception :: EXCEPTION | eff) GetReservationUtilizationResponse
```

<p>You can retrieve the Reservation utilization for your account. Master accounts in an organization have access to their associated member accounts. You can filter data by dimensions in a time period. You can use <code>GetDimensionValues</code> to determine the possible dimension values. Currently, you can group only by <code>SUBSCRIPTION_ID</code>. </p>

#### `getTags`

``` purescript
getTags :: forall eff. Service -> GetTagsRequest -> Aff (exception :: EXCEPTION | eff) GetTagsResponse
```

<p>You can query for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string. </p>


