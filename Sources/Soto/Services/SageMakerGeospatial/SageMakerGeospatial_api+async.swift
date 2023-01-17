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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension SageMakerGeospatial {
    // MARK: Async API Calls

    /// Use this operation to delete an Earth Observation job.
    public func deleteEarthObservationJob(_ input: DeleteEarthObservationJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEarthObservationJobOutput {
        return try await self.client.execute(operation: "DeleteEarthObservationJob", path: "/earth-observation-jobs/{Arn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this operation to delete a Vector Enrichment job.
    public func deleteVectorEnrichmentJob(_ input: DeleteVectorEnrichmentJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVectorEnrichmentJobOutput {
        return try await self.client.execute(operation: "DeleteVectorEnrichmentJob", path: "/vector-enrichment-jobs/{Arn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this operation to export results of an Earth Observation job and optionally source images used as input to the EOJ to an S3 location.
    public func exportEarthObservationJob(_ input: ExportEarthObservationJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportEarthObservationJobOutput {
        return try await self.client.execute(operation: "ExportEarthObservationJob", path: "/export-earth-observation-job", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this operation to copy results of a Vector Enrichment job to an S3 location.
    public func exportVectorEnrichmentJob(_ input: ExportVectorEnrichmentJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVectorEnrichmentJobOutput {
        return try await self.client.execute(operation: "ExportVectorEnrichmentJob", path: "/export-vector-enrichment-jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get the details for a previously initiated Earth Observation job.
    public func getEarthObservationJob(_ input: GetEarthObservationJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEarthObservationJobOutput {
        return try await self.client.execute(operation: "GetEarthObservationJob", path: "/earth-observation-jobs/{Arn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this operation to get details of a specific raster data collection.
    public func getRasterDataCollection(_ input: GetRasterDataCollectionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRasterDataCollectionOutput {
        return try await self.client.execute(operation: "GetRasterDataCollection", path: "/raster-data-collection/{Arn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a web mercator tile for the given Earth Observation job.
    public func getTile(_ input: GetTileInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTileOutput {
        return try await self.client.execute(operation: "GetTile", path: "/tile/{z}/{x}/{y}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves details of a Vector Enrichment Job for a given job Amazon Resource Name (ARN).
    public func getVectorEnrichmentJob(_ input: GetVectorEnrichmentJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetVectorEnrichmentJobOutput {
        return try await self.client.execute(operation: "GetVectorEnrichmentJob", path: "/vector-enrichment-jobs/{Arn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this operation to get a list of the Earth Observation jobs associated with the calling Amazon Web Services account.
    public func listEarthObservationJobs(_ input: ListEarthObservationJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEarthObservationJobOutput {
        return try await self.client.execute(operation: "ListEarthObservationJobs", path: "/list-earth-observation-jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this operation to get raster data collections.
    public func listRasterDataCollections(_ input: ListRasterDataCollectionsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRasterDataCollectionsOutput {
        return try await self.client.execute(operation: "ListRasterDataCollections", path: "/raster-data-collections", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags attached to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of vector enrichment jobs.
    public func listVectorEnrichmentJobs(_ input: ListVectorEnrichmentJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVectorEnrichmentJobOutput {
        return try await self.client.execute(operation: "ListVectorEnrichmentJobs", path: "/list-vector-enrichment-jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you run image query on a specific raster data collection to get a list of the satellite imagery matching the selected filters.
    public func searchRasterDataCollection(_ input: SearchRasterDataCollectionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchRasterDataCollectionOutput {
        return try await self.client.execute(operation: "SearchRasterDataCollection", path: "/search-raster-data-collection", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this operation to create an Earth observation job.
    public func startEarthObservationJob(_ input: StartEarthObservationJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartEarthObservationJobOutput {
        return try await self.client.execute(operation: "StartEarthObservationJob", path: "/earth-observation-jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a Vector Enrichment job for the supplied job type.  Currently, there are two supported job types: reverse geocoding and map matching.
    public func startVectorEnrichmentJob(_ input: StartVectorEnrichmentJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartVectorEnrichmentJobOutput {
        return try await self.client.execute(operation: "StartVectorEnrichmentJob", path: "/vector-enrichment-jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this operation to stop an existing earth observation job.
    public func stopEarthObservationJob(_ input: StopEarthObservationJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopEarthObservationJobOutput {
        return try await self.client.execute(operation: "StopEarthObservationJob", path: "/earth-observation-jobs/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops the  Vector Enrichment job for a given job ARN.
    public func stopVectorEnrichmentJob(_ input: StopVectorEnrichmentJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopVectorEnrichmentJobOutput {
        return try await self.client.execute(operation: "StopVectorEnrichmentJob", path: "/vector-enrichment-jobs/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The resource you want to tag.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The resource you want to untag.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    // MARK: Streaming Async API Calls

    /// Gets a web mercator tile for the given Earth Observation job.
    public func getTileStreaming(_ input: GetTileInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop) -> EventLoopFuture<Void>) async throws -> GetTileOutput {
        return try await self.client.execute(operation: "GetTile", path: "/tile/{z}/{x}/{y}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop, stream: stream)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension SageMakerGeospatial {
    /// Use this operation to get a list of the Earth Observation jobs associated with the calling Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEarthObservationJobsPaginator(
        _ input: ListEarthObservationJobInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEarthObservationJobInput, ListEarthObservationJobOutput> {
        return .init(
            input: input,
            command: self.listEarthObservationJobs,
            inputKey: \ListEarthObservationJobInput.nextToken,
            outputKey: \ListEarthObservationJobOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Use this operation to get raster data collections.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRasterDataCollectionsPaginator(
        _ input: ListRasterDataCollectionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRasterDataCollectionsInput, ListRasterDataCollectionsOutput> {
        return .init(
            input: input,
            command: self.listRasterDataCollections,
            inputKey: \ListRasterDataCollectionsInput.nextToken,
            outputKey: \ListRasterDataCollectionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves a list of vector enrichment jobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listVectorEnrichmentJobsPaginator(
        _ input: ListVectorEnrichmentJobInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListVectorEnrichmentJobInput, ListVectorEnrichmentJobOutput> {
        return .init(
            input: input,
            command: self.listVectorEnrichmentJobs,
            inputKey: \ListVectorEnrichmentJobInput.nextToken,
            outputKey: \ListVectorEnrichmentJobOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Allows you run image query on a specific raster data collection to get a list of the satellite imagery matching the selected filters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchRasterDataCollectionPaginator(
        _ input: SearchRasterDataCollectionInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchRasterDataCollectionInput, SearchRasterDataCollectionOutput> {
        return .init(
            input: input,
            command: self.searchRasterDataCollection,
            inputKey: \SearchRasterDataCollectionInput.nextToken,
            outputKey: \SearchRasterDataCollectionOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
