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
extension ApplicationDiscoveryService {
    // MARK: Async API Calls

    /// Associates one or more configuration items with an application.
    public func associateConfigurationItemsToApplication(_ input: AssociateConfigurationItemsToApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateConfigurationItemsToApplicationResponse {
        return try await self.client.execute(operation: "AssociateConfigurationItemsToApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes one or more import tasks, each identified by their import ID. Each import task has a number of records that can identify servers or applications.
    ///  Amazon Web Services Application Discovery Service has built-in matching logic that will identify when discovered servers match existing entries that you've previously discovered, the information for the already-existing discovered server is updated. When you delete an import task that contains records that were used to match, the information in those matched records that comes from the deleted records will also be deleted.
    public func batchDeleteImportData(_ input: BatchDeleteImportDataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteImportDataResponse {
        return try await self.client.execute(operation: "BatchDeleteImportData", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an application with the given name and description.
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationResponse {
        return try await self.client.execute(operation: "CreateApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates one or more tags for configuration items. Tags are metadata that help you categorize IT assets. This API accepts a list of multiple configuration items.
    ///   Do not store sensitive information (like personal data) in tags.
    public func createTags(_ input: CreateTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTagsResponse {
        return try await self.client.execute(operation: "CreateTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a list of applications and their associations with configuration items.
    public func deleteApplications(_ input: DeleteApplicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApplicationsResponse {
        return try await self.client.execute(operation: "DeleteApplications", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the association between configuration items and one or more tags. This API accepts a list of multiple configuration items.
    public func deleteTags(_ input: DeleteTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTagsResponse {
        return try await self.client.execute(operation: "DeleteTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists agents or connectors as specified by ID or other filters. All agents/connectors associated with your user account can be listed if you call DescribeAgents as is without passing any parameters.
    public func describeAgents(_ input: DescribeAgentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentsResponse {
        return try await self.client.execute(operation: "DescribeAgents", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves attributes for a list of configuration item IDs.
    ///   All of the supplied IDs must be for the same asset type from one of the following:   server   application   process   connection
    ///  Output fields are specific to the asset type specified. For example, the output for a server configuration item includes a list of attributes about the server, such as host name, operating system, number of network cards, etc. For a complete list of outputs for each asset type, see Using the DescribeConfigurations Action in the Amazon Web Services Application Discovery Service User Guide.
    public func describeConfigurations(_ input: DescribeConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigurationsResponse {
        return try await self.client.execute(operation: "DescribeConfigurations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists exports as specified by ID. All continuous exports associated with your user account can be listed if you call DescribeContinuousExports as is without passing any parameters.
    public func describeContinuousExports(_ input: DescribeContinuousExportsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContinuousExportsResponse {
        return try await self.client.execute(operation: "DescribeContinuousExports", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  DescribeExportConfigurations is deprecated. Use DescribeExportTasks, instead.
    public func describeExportConfigurations(_ input: DescribeExportConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExportConfigurationsResponse {
        return try await self.client.execute(operation: "DescribeExportConfigurations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve status of one or more export tasks. You can retrieve the status of up to 100 export tasks.
    public func describeExportTasks(_ input: DescribeExportTasksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExportTasksResponse {
        return try await self.client.execute(operation: "DescribeExportTasks", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of import tasks for your account, including status information, times, IDs, the Amazon S3 Object URL for the import file, and more.
    public func describeImportTasks(_ input: DescribeImportTasksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImportTasksResponse {
        return try await self.client.execute(operation: "DescribeImportTasks", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of configuration items that have tags as specified by the key-value pairs, name and value, passed to the optional parameter filters. There are three valid tag filter names:   tagKey   tagValue   configurationId   Also, all configuration items associated with your user account that have tags can be listed if you call DescribeTags as is without passing any parameters.
    public func describeTags(_ input: DescribeTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagsResponse {
        return try await self.client.execute(operation: "DescribeTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates one or more configuration items from an application.
    public func disassociateConfigurationItemsFromApplication(_ input: DisassociateConfigurationItemsFromApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateConfigurationItemsFromApplicationResponse {
        return try await self.client.execute(operation: "DisassociateConfigurationItemsFromApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deprecated. Use StartExportTask instead. Exports all discovered configuration data to an Amazon S3 bucket or an application that enables you to view and evaluate the data. Data includes tags and tag associations, processes, connections, servers, and system performance. This API returns an export ID that you can query using the DescribeExportConfigurations API. The system imposes a limit of two configuration exports in six hours.
    public func exportConfigurations(logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportConfigurationsResponse {
        return try await self.client.execute(operation: "ExportConfigurations", path: "/", httpMethod: .POST, serviceConfig: self.config, logger: logger, on: eventLoop)
    }

    /// Retrieves a short summary of discovered assets. This API operation takes no request parameters and is called as is at the command prompt as shown in the example.
    public func getDiscoverySummary(_ input: GetDiscoverySummaryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDiscoverySummaryResponse {
        return try await self.client.execute(operation: "GetDiscoverySummary", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of configuration items as specified by the value passed to the required parameter configurationType. Optional filtering may be applied to refine search results.
    public func listConfigurations(_ input: ListConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListConfigurationsResponse {
        return try await self.client.execute(operation: "ListConfigurations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of servers that are one network hop away from a specified server.
    public func listServerNeighbors(_ input: ListServerNeighborsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListServerNeighborsResponse {
        return try await self.client.execute(operation: "ListServerNeighbors", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Start the continuous flow of agent's discovered data into Amazon Athena.
    public func startContinuousExport(_ input: StartContinuousExportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartContinuousExportResponse {
        return try await self.client.execute(operation: "StartContinuousExport", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Instructs the specified agents or connectors to start collecting data.
    public func startDataCollectionByAgentIds(_ input: StartDataCollectionByAgentIdsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartDataCollectionByAgentIdsResponse {
        return try await self.client.execute(operation: "StartDataCollectionByAgentIds", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Begins the export of discovered data to an S3 bucket. If you specify agentIds in a filter, the task exports up to 72 hours of detailed data collected by the identified Application Discovery Agent, including network, process, and performance details. A time range for exported agent data may be set by using startTime and endTime. Export of detailed agent data is limited to five concurrently running exports.  If you do not include an agentIds filter, summary data is exported that includes both Amazon Web Services Agentless Discovery Connector data and summary data from Amazon Web Services Discovery Agents. Export of summary data is limited to two exports per day.
    public func startExportTask(_ input: StartExportTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartExportTaskResponse {
        return try await self.client.execute(operation: "StartExportTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an import task, which allows you to import details of your on-premises environment directly into Amazon Web Services Migration Hub without having to use the Application Discovery Service (ADS) tools such as the Discovery Connector or Discovery Agent. This gives you the option to perform migration assessment and planning directly from your imported data, including the ability to group your devices as applications and track their migration status.
    ///  To start an import request, do this:
    ///    Download the specially formatted comma separated value (CSV) import template, which you can find here: https://s3.us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv.   Fill out the template with your server and application data.   Upload your import file to an Amazon S3 bucket, and make a note of it's Object URL. Your import file must be in the CSV format.   Use the console or the StartImportTask command with the Amazon Web Services CLI or one of the Amazon Web Services SDKs to import the records from your file.
    ///  For more information, including step-by-step procedures, see Migration Hub Import in the Amazon Web Services Application Discovery Service User Guide.
    ///   There are limits to the number of import tasks you can create (and delete) in an Amazon Web Services account. For more information, see Amazon Web Services Application Discovery Service Limits in the Amazon Web Services Application Discovery Service User Guide.
    public func startImportTask(_ input: StartImportTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartImportTaskResponse {
        return try await self.client.execute(operation: "StartImportTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stop the continuous flow of agent's discovered data into Amazon Athena.
    public func stopContinuousExport(_ input: StopContinuousExportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopContinuousExportResponse {
        return try await self.client.execute(operation: "StopContinuousExport", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Instructs the specified agents or connectors to stop collecting data.
    public func stopDataCollectionByAgentIds(_ input: StopDataCollectionByAgentIdsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopDataCollectionByAgentIdsResponse {
        return try await self.client.execute(operation: "StopDataCollectionByAgentIds", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates metadata about an application.
    public func updateApplication(_ input: UpdateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApplicationResponse {
        return try await self.client.execute(operation: "UpdateApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ApplicationDiscoveryService {
    /// Lists exports as specified by ID. All continuous exports associated with your user account can be listed if you call DescribeContinuousExports as is without passing any parameters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeContinuousExportsPaginator(
        _ input: DescribeContinuousExportsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeContinuousExportsRequest, DescribeContinuousExportsResponse> {
        return .init(
            input: input,
            command: self.describeContinuousExports,
            inputKey: \DescribeContinuousExportsRequest.nextToken,
            outputKey: \DescribeContinuousExportsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns an array of import tasks for your account, including status information, times, IDs, the Amazon S3 Object URL for the import file, and more.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeImportTasksPaginator(
        _ input: DescribeImportTasksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeImportTasksRequest, DescribeImportTasksResponse> {
        return .init(
            input: input,
            command: self.describeImportTasks,
            inputKey: \DescribeImportTasksRequest.nextToken,
            outputKey: \DescribeImportTasksResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
