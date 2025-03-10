//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2023 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Appflow {
    // MARK: Async API Calls

    /// Cancels active runs for a flow. You can cancel all of the active runs for a flow, or you can cancel specific runs by providing their IDs. You can cancel a flow run only when the run is in progress. You can't cancel a run that has already completed or failed. You also can't cancel a run that's scheduled to occur but hasn't started yet. To prevent a scheduled run, you can deactivate the flow with the StopFlow action. You cannot resume a run after you cancel it. When you send your request, the status for each run becomes CancelStarted. When the cancellation completes, the status becomes Canceled.  When you cancel a run, you still incur charges for any data that the run already processed before the cancellation. If the run had already written some data to the flow destination, then that data remains in the destination. If you configured the flow to use a batch API (such as the Salesforce Bulk API 2.0), then the run will finish reading or writing its entire batch of data after the cancellation. For these operations, the data processing charges for Amazon AppFlow apply. For the pricing information, see Amazon AppFlow pricing.
    public func cancelFlowExecutions(_ input: CancelFlowExecutionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelFlowExecutionsResponse {
        return try await self.client.execute(operation: "CancelFlowExecutions", path: "/cancel-flow-executions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new connector profile associated with your Amazon Web Services account. There is a soft quota of 100 connector profiles per Amazon Web Services account. If you need more connector profiles than this quota allows, you can submit a request to the Amazon AppFlow team through the Amazon AppFlow support channel. In each connector profile that you create, you can provide the credentials and properties for only one connector.
    public func createConnectorProfile(_ input: CreateConnectorProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConnectorProfileResponse {
        return try await self.client.execute(operation: "CreateConnectorProfile", path: "/create-connector-profile", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Enables your application to create a new flow using Amazon AppFlow. You must create a connector profile before calling this API. Please note that the Request Syntax below shows syntax for multiple destinations, however, you can only transfer data to one item in this list at a time. Amazon AppFlow does not currently support flows to multiple destinations at once.
    public func createFlow(_ input: CreateFlowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowResponse {
        return try await self.client.execute(operation: "CreateFlow", path: "/create-flow", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Enables you to delete an existing connector profile.
    public func deleteConnectorProfile(_ input: DeleteConnectorProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConnectorProfileResponse {
        return try await self.client.execute(operation: "DeleteConnectorProfile", path: "/delete-connector-profile", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Enables your application to delete an existing flow. Before deleting the flow, Amazon AppFlow validates the request by checking the flow configuration and status. You can delete flows one at a time.
    public func deleteFlow(_ input: DeleteFlowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFlowResponse {
        return try await self.client.execute(operation: "DeleteFlow", path: "/delete-flow", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the given custom connector registered in your Amazon Web Services account. This API can be used for custom connectors that are registered in your account and also for Amazon authored connectors.
    public func describeConnector(_ input: DescribeConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConnectorResponse {
        return try await self.client.execute(operation: "DescribeConnector", path: "/describe-connector", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Provides details regarding the entity used with the connector, with a description of the data model for each field in that entity.
    public func describeConnectorEntity(_ input: DescribeConnectorEntityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConnectorEntityResponse {
        return try await self.client.execute(operation: "DescribeConnectorEntity", path: "/describe-connector-entity", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of connector-profile details matching the provided connector-profile names and connector-types. Both input lists are optional, and you can use them to filter the result.  If no names or connector-types are provided, returns all connector profiles in a paginated form. If there is no match, this operation returns an empty list.
    public func describeConnectorProfiles(_ input: DescribeConnectorProfilesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConnectorProfilesResponse {
        return try await self.client.execute(operation: "DescribeConnectorProfiles", path: "/describe-connector-profiles", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes the connectors vended by Amazon AppFlow for specified connector types. If you don't specify a connector type, this operation describes all connectors vended by Amazon AppFlow. If there are more connectors than can be returned in one page, the response contains a nextToken object, which can be be passed in to the next call to the DescribeConnectors API operation to retrieve the next page.
    public func describeConnectors(_ input: DescribeConnectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConnectorsResponse {
        return try await self.client.execute(operation: "DescribeConnectors", path: "/describe-connectors", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Provides a description of the specified flow.
    public func describeFlow(_ input: DescribeFlowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowResponse {
        return try await self.client.execute(operation: "DescribeFlow", path: "/describe-flow", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Fetches the execution history of the flow.
    public func describeFlowExecutionRecords(_ input: DescribeFlowExecutionRecordsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowExecutionRecordsResponse {
        return try await self.client.execute(operation: "DescribeFlowExecutionRecords", path: "/describe-flow-execution-records", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the list of available connector entities supported by Amazon AppFlow. For example, you can query Salesforce for Account and Opportunity entities, or query ServiceNow for the Incident entity.
    public func listConnectorEntities(_ input: ListConnectorEntitiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListConnectorEntitiesResponse {
        return try await self.client.execute(operation: "ListConnectorEntities", path: "/list-connector-entities", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the list of all registered custom connectors in your Amazon Web Services account. This API lists only custom connectors registered in this account, not the Amazon Web Services authored connectors.
    public func listConnectors(_ input: ListConnectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListConnectorsResponse {
        return try await self.client.execute(operation: "ListConnectors", path: "/list-connectors", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists all of the flows associated with your account.
    public func listFlows(_ input: ListFlowsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFlowsResponse {
        return try await self.client.execute(operation: "ListFlows", path: "/list-flows", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves the tags that are associated with a specified flow.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers a new custom connector with your Amazon Web Services account. Before you can register the connector, you must deploy the associated AWS lambda function in your account.
    public func registerConnector(_ input: RegisterConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterConnectorResponse {
        return try await self.client.execute(operation: "RegisterConnector", path: "/register-connector", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Activates an existing flow. For on-demand flows, this operation runs the flow immediately. For schedule and event-triggered flows, this operation activates the flow.
    public func startFlow(_ input: StartFlowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartFlowResponse {
        return try await self.client.execute(operation: "StartFlow", path: "/start-flow", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deactivates the existing flow. For on-demand flows, this operation returns an unsupportedOperationException error message. For schedule and event-triggered flows, this operation deactivates the flow.
    public func stopFlow(_ input: StopFlowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopFlowResponse {
        return try await self.client.execute(operation: "StopFlow", path: "/stop-flow", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Applies a tag to the specified flow.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Unregisters the custom connector registered in your account that matches the connector label provided in the request.
    public func unregisterConnector(_ input: UnregisterConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnregisterConnectorResponse {
        return try await self.client.execute(operation: "UnregisterConnector", path: "/unregister-connector", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes a tag from the specified flow.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a given connector profile associated with your account.
    public func updateConnectorProfile(_ input: UpdateConnectorProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateConnectorProfileResponse {
        return try await self.client.execute(operation: "UpdateConnectorProfile", path: "/update-connector-profile", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a custom connector that you've previously registered. This operation updates the connector with one of the following:   The latest version of the AWS Lambda function that's assigned to the connector   A new AWS Lambda function that you specify
    public func updateConnectorRegistration(_ input: UpdateConnectorRegistrationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateConnectorRegistrationResponse {
        return try await self.client.execute(operation: "UpdateConnectorRegistration", path: "/update-connector-registration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates an existing flow.
    public func updateFlow(_ input: UpdateFlowRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFlowResponse {
        return try await self.client.execute(operation: "UpdateFlow", path: "/update-flow", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Appflow {
    ///  Returns a list of connector-profile details matching the provided connector-profile names and connector-types. Both input lists are optional, and you can use them to filter the result.  If no names or connector-types are provided, returns all connector profiles in a paginated form. If there is no match, this operation returns an empty list.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeConnectorProfilesPaginator(
        _ input: DescribeConnectorProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeConnectorProfilesRequest, DescribeConnectorProfilesResponse> {
        return .init(
            input: input,
            command: self.describeConnectorProfiles,
            inputKey: \DescribeConnectorProfilesRequest.nextToken,
            outputKey: \DescribeConnectorProfilesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the connectors vended by Amazon AppFlow for specified connector types. If you don't specify a connector type, this operation describes all connectors vended by Amazon AppFlow. If there are more connectors than can be returned in one page, the response contains a nextToken object, which can be be passed in to the next call to the DescribeConnectors API operation to retrieve the next page.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeConnectorsPaginator(
        _ input: DescribeConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeConnectorsRequest, DescribeConnectorsResponse> {
        return .init(
            input: input,
            command: self.describeConnectors,
            inputKey: \DescribeConnectorsRequest.nextToken,
            outputKey: \DescribeConnectorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Fetches the execution history of the flow.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeFlowExecutionRecordsPaginator(
        _ input: DescribeFlowExecutionRecordsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeFlowExecutionRecordsRequest, DescribeFlowExecutionRecordsResponse> {
        return .init(
            input: input,
            command: self.describeFlowExecutionRecords,
            inputKey: \DescribeFlowExecutionRecordsRequest.nextToken,
            outputKey: \DescribeFlowExecutionRecordsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns the list of all registered custom connectors in your Amazon Web Services account. This API lists only custom connectors registered in this account, not the Amazon Web Services authored connectors.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listConnectorsPaginator(
        _ input: ListConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListConnectorsRequest, ListConnectorsResponse> {
        return .init(
            input: input,
            command: self.listConnectors,
            inputKey: \ListConnectorsRequest.nextToken,
            outputKey: \ListConnectorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all of the flows associated with your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFlowsPaginator(
        _ input: ListFlowsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFlowsRequest, ListFlowsResponse> {
        return .init(
            input: input,
            command: self.listFlows,
            inputKey: \ListFlowsRequest.nextToken,
            outputKey: \ListFlowsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
