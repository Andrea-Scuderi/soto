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
extension KendraRanking {
    // MARK: Async API Calls

    /// Creates a rescore execution plan. A rescore execution  plan is an Amazon Kendra Intelligent Ranking resource  used for provisioning the Rescore API. You set  the number of capacity units that you require for  Amazon Kendra Intelligent Ranking to rescore or re-rank  a search service's results. For an example of using the  CreateRescoreExecutionPlan API, including using  the Python and Java SDKs, see Semantically  ranking a search service's results.
    public func createRescoreExecutionPlan(_ input: CreateRescoreExecutionPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRescoreExecutionPlanResponse {
        return try await self.client.execute(operation: "CreateRescoreExecutionPlan", path: "/rescore-execution-plans", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a rescore execution plan. A rescore execution  plan is an Amazon Kendra Intelligent Ranking resource  used for provisioning the Rescore API.
    public func deleteRescoreExecutionPlan(_ input: DeleteRescoreExecutionPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteRescoreExecutionPlan", path: "/rescore-execution-plans/{Id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a rescore execution plan. A rescore  execution plan is an Amazon Kendra Intelligent Ranking  resource used for provisioning the Rescore API.
    public func describeRescoreExecutionPlan(_ input: DescribeRescoreExecutionPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRescoreExecutionPlanResponse {
        return try await self.client.execute(operation: "DescribeRescoreExecutionPlan", path: "/rescore-execution-plans/{Id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists your rescore execution plans. A rescore execution plan  is an Amazon Kendra Intelligent Ranking resource used for  provisioning the Rescore API.
    public func listRescoreExecutionPlans(_ input: ListRescoreExecutionPlansRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRescoreExecutionPlansResponse {
        return try await self.client.execute(operation: "ListRescoreExecutionPlans", path: "/rescore-execution-plans", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of tags associated with a specified resource.  A rescore execution plan is an example of a resource that  can have tags associated with it.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Rescores or re-ranks search results from a search service  such as OpenSearch (self managed). You use the semantic search  capabilities of Amazon Kendra Intelligent Ranking to  improve the search service's results.
    public func rescore(_ input: RescoreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RescoreResult {
        return try await self.client.execute(operation: "Rescore", path: "/rescore-execution-plans/{RescoreExecutionPlanId}/rescore", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a specified tag to a specified rescore execution  plan. A rescore execution plan is an Amazon Kendra  Intelligent Ranking resource used for provisioning the  Rescore API. If the tag already exists,  the existing value is replaced with the new value.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag from a rescore execution plan. A rescore  execution plan is an Amazon Kendra Intelligent  Ranking resource used for provisioning the  Rescore operation.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a rescore execution plan. A rescore execution plan  is an Amazon Kendra Intelligent Ranking resource used for  provisioning the Rescore API. You can update the  number of capacity units you require for Amazon Kendra  Intelligent Ranking to rescore or re-rank a search service's  results.
    public func updateRescoreExecutionPlan(_ input: UpdateRescoreExecutionPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateRescoreExecutionPlan", path: "/rescore-execution-plans/{Id}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension KendraRanking {
    /// Lists your rescore execution plans. A rescore execution plan  is an Amazon Kendra Intelligent Ranking resource used for  provisioning the Rescore API.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRescoreExecutionPlansPaginator(
        _ input: ListRescoreExecutionPlansRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRescoreExecutionPlansRequest, ListRescoreExecutionPlansResponse> {
        return .init(
            input: input,
            command: self.listRescoreExecutionPlans,
            inputKey: \ListRescoreExecutionPlansRequest.nextToken,
            outputKey: \ListRescoreExecutionPlansResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
