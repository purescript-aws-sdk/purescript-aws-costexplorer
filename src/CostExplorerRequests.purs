
module AWS.CostExplorer.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.CostExplorer as CostExplorer
import AWS.CostExplorer.Types as CostExplorerTypes


-- | <p>Retrieve cost and usage metrics for your account. You can specify which cost and usage-related metric, such as <code>BlendedCosts</code> or <code>UsageQuantity</code>, that you want the request to return. You can also filter and group your data by various dimensions, such as <code>SERVICE</code> or <code>AZ</code>, in a specific time range. See the <code>GetDimensionValues</code> action for a complete list of the valid dimensions. Master accounts in an organization have access to all member accounts.</p>
getCostAndUsage :: forall eff. CostExplorer.Service -> CostExplorerTypes.GetCostAndUsageRequest -> Aff (exception :: EXCEPTION | eff) CostExplorerTypes.GetCostAndUsageResponse
getCostAndUsage (CostExplorer.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getCostAndUsage"


-- | <p>You can use <code>GetDimensionValues</code> to retrieve all available filter values for a specific filter over a period of time. You can search the dimension values for an arbitrary string. </p>
getDimensionValues :: forall eff. CostExplorer.Service -> CostExplorerTypes.GetDimensionValuesRequest -> Aff (exception :: EXCEPTION | eff) CostExplorerTypes.GetDimensionValuesResponse
getDimensionValues (CostExplorer.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getDimensionValues"


-- | <p>Retrieve the reservation coverage for your account. An organization's master account has access to the associated member accounts. For any time period, you can filter data about reservation usage by the following dimensions. </p> <ul> <li> <p>AZ</p> </li> <li> <p>INSTANCE_TYPE</p> </li> <li> <p>LINKED_ACCOUNT</p> </li> <li> <p>PLATFORM</p> </li> <li> <p>REGION</p> </li> <li> <p>TENANCY</p> </li> </ul> <p>To determine valid values for a dimension, use the <code>GetDimensionValues</code> operation. </p>
getReservationCoverage :: forall eff. CostExplorer.Service -> CostExplorerTypes.GetReservationCoverageRequest -> Aff (exception :: EXCEPTION | eff) CostExplorerTypes.GetReservationCoverageResponse
getReservationCoverage (CostExplorer.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getReservationCoverage"


-- | <p>You can retrieve the Reservation utilization for your account. Master accounts in an organization have access to their associated member accounts. You can filter data by dimensions in a time period. You can use <code>GetDimensionValues</code> to determine the possible dimension values. Currently, you can group only by <code>SUBSCRIPTION_ID</code>. </p>
getReservationUtilization :: forall eff. CostExplorer.Service -> CostExplorerTypes.GetReservationUtilizationRequest -> Aff (exception :: EXCEPTION | eff) CostExplorerTypes.GetReservationUtilizationResponse
getReservationUtilization (CostExplorer.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getReservationUtilization"


-- | <p>You can query for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string. </p>
getTags :: forall eff. CostExplorer.Service -> CostExplorerTypes.GetTagsRequest -> Aff (exception :: EXCEPTION | eff) CostExplorerTypes.GetTagsResponse
getTags (CostExplorer.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getTags"
