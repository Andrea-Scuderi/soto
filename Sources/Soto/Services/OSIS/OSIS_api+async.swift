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
extension OSIS {
    // MARK: Async API Calls

    /// Creates an OpenSearch Ingestion pipeline. For more information, see Creating Amazon OpenSearch Ingestion pipelines.
    public func createPipeline(_ input: CreatePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePipelineResponse {
        return try await self.client.execute(operation: "CreatePipeline", path: "/2022-01-01/osis/createPipeline", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an OpenSearch Ingestion pipeline. For more information, see Deleting Amazon OpenSearch Ingestion pipelines.
    public func deletePipeline(_ input: DeletePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePipelineResponse {
        return try await self.client.execute(operation: "DeletePipeline", path: "/2022-01-01/osis/deletePipeline/{PipelineName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about an OpenSearch Ingestion pipeline.
    public func getPipeline(_ input: GetPipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPipelineResponse {
        return try await self.client.execute(operation: "GetPipeline", path: "/2022-01-01/osis/getPipeline/{PipelineName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about a specific blueprint for OpenSearch Ingestion. Blueprints are templates for the configuration needed for a CreatePipeline request. For more information, see Using blueprints to create a pipeline.
    public func getPipelineBlueprint(_ input: GetPipelineBlueprintRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPipelineBlueprintResponse {
        return try await self.client.execute(operation: "GetPipelineBlueprint", path: "/2022-01-01/osis/getPipelineBlueprint/{BlueprintName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns progress information for the current change happening on an OpenSearch Ingestion pipeline. Currently, this operation only returns information when a pipeline is being created. For more information, see Tracking the status of pipeline creation.
    public func getPipelineChangeProgress(_ input: GetPipelineChangeProgressRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPipelineChangeProgressResponse {
        return try await self.client.execute(operation: "GetPipelineChangeProgress", path: "/2022-01-01/osis/getPipelineChangeProgress/{PipelineName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of all available blueprints for Data Prepper. For more information, see Using blueprints to create a pipeline.
    public func listPipelineBlueprints(_ input: ListPipelineBlueprintsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPipelineBlueprintsResponse {
        return try await self.client.execute(operation: "ListPipelineBlueprints", path: "/2022-01-01/osis/listPipelineBlueprints", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all OpenSearch Ingestion pipelines in the current Amazon Web Services account and Region. For more information, see Viewing Amazon OpenSearch Ingestion pipelines.
    public func listPipelines(_ input: ListPipelinesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPipelinesResponse {
        return try await self.client.execute(operation: "ListPipelines", path: "/2022-01-01/osis/listPipelines", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all resource tags associated with an OpenSearch Ingestion pipeline. For more information, see Tagging Amazon OpenSearch Ingestion pipelines.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/2022-01-01/osis/listTagsForResource", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an OpenSearch Ingestion pipeline. For more information, see Starting an OpenSearch Ingestion pipeline.
    public func startPipeline(_ input: StartPipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartPipelineResponse {
        return try await self.client.execute(operation: "StartPipeline", path: "/2022-01-01/osis/startPipeline/{PipelineName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops an OpenSearch Ingestion pipeline. For more information, see Stopping an OpenSearch Ingestion pipeline.
    public func stopPipeline(_ input: StopPipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopPipelineResponse {
        return try await self.client.execute(operation: "StopPipeline", path: "/2022-01-01/osis/stopPipeline/{PipelineName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tags an OpenSearch Ingestion pipeline. For more information, see Tagging Amazon OpenSearch Ingestion pipelines.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/2022-01-01/osis/tagResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from an OpenSearch Ingestion pipeline. For more information, see Tagging Amazon OpenSearch Ingestion pipelines.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/2022-01-01/osis/untagResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an OpenSearch Ingestion pipeline. For more information, see Updating Amazon OpenSearch Ingestion pipelines.
    public func updatePipeline(_ input: UpdatePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePipelineResponse {
        return try await self.client.execute(operation: "UpdatePipeline", path: "/2022-01-01/osis/updatePipeline/{PipelineName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Checks whether an OpenSearch Ingestion pipeline configuration is valid prior to creation. For more information, see Creating Amazon OpenSearch Ingestion pipelines.
    public func validatePipeline(_ input: ValidatePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ValidatePipelineResponse {
        return try await self.client.execute(operation: "ValidatePipeline", path: "/2022-01-01/osis/validatePipeline", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension OSIS {
    /// Lists all OpenSearch Ingestion pipelines in the current Amazon Web Services account and Region. For more information, see Viewing Amazon OpenSearch Ingestion pipelines.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPipelinesPaginator(
        _ input: ListPipelinesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPipelinesRequest, ListPipelinesResponse> {
        return .init(
            input: input,
            command: self.listPipelines,
            inputKey: \ListPipelinesRequest.nextToken,
            outputKey: \ListPipelinesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
