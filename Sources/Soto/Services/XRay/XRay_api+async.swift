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
extension XRay {
    // MARK: Async API Calls

    /// Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use GetTraceSummaries to get a list of trace IDs.
    public func batchGetTraces(_ input: BatchGetTracesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetTracesResult {
        return try await self.client.execute(operation: "BatchGetTraces", path: "/Traces", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a group resource with a name and a filter expression.
    public func createGroup(_ input: CreateGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGroupResult {
        return try await self.client.execute(operation: "CreateGroup", path: "/CreateGroup", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a rule to control sampling behavior for instrumented applications. Services retrieve rules with GetSamplingRules, and evaluate each rule in ascending order of priority for each request. If a rule matches, the service records a trace, borrowing it from the reservoir size. After 10 seconds, the service reports back to X-Ray with GetSamplingTargets to get updated versions of each in-use rule. The updated rule contains a trace quota that the service can use instead of borrowing from the reservoir.
    public func createSamplingRule(_ input: CreateSamplingRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSamplingRuleResult {
        return try await self.client.execute(operation: "CreateSamplingRule", path: "/CreateSamplingRule", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a group resource.
    public func deleteGroup(_ input: DeleteGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGroupResult {
        return try await self.client.execute(operation: "DeleteGroup", path: "/DeleteGroup", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a resource policy from the target Amazon Web Services account.
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResourcePolicyResult {
        return try await self.client.execute(operation: "DeleteResourcePolicy", path: "/DeleteResourcePolicy", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a sampling rule.
    public func deleteSamplingRule(_ input: DeleteSamplingRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSamplingRuleResult {
        return try await self.client.execute(operation: "DeleteSamplingRule", path: "/DeleteSamplingRule", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the current encryption configuration for X-Ray data.
    public func getEncryptionConfig(_ input: GetEncryptionConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEncryptionConfigResult {
        return try await self.client.execute(operation: "GetEncryptionConfig", path: "/EncryptionConfig", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves group resource details.
    public func getGroup(_ input: GetGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGroupResult {
        return try await self.client.execute(operation: "GetGroup", path: "/GetGroup", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves all active group details.
    public func getGroups(_ input: GetGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGroupsResult {
        return try await self.client.execute(operation: "GetGroups", path: "/Groups", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the summary information of an insight. This includes impact to clients and root cause services, the top anomalous services, the category, the state of the insight, and the start and end time of the insight.
    public func getInsight(_ input: GetInsightRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInsightResult {
        return try await self.client.execute(operation: "GetInsight", path: "/Insight", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// X-Ray reevaluates insights periodically until they're resolved, and records each intermediate state as an event. You can review an insight's events in the Impact Timeline on the Inspect page in the X-Ray console.
    public func getInsightEvents(_ input: GetInsightEventsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInsightEventsResult {
        return try await self.client.execute(operation: "GetInsightEvents", path: "/InsightEvents", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a service graph structure filtered by the specified insight. The service graph is limited to only structural information. For a complete service graph, use this API with the GetServiceGraph API.
    public func getInsightImpactGraph(_ input: GetInsightImpactGraphRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInsightImpactGraphResult {
        return try await self.client.execute(operation: "GetInsightImpactGraph", path: "/InsightImpactGraph", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the summaries of all insights in the specified group matching the provided filter values.
    public func getInsightSummaries(_ input: GetInsightSummariesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInsightSummariesResult {
        return try await self.client.execute(operation: "GetInsightSummaries", path: "/InsightSummaries", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves all sampling rules.
    public func getSamplingRules(_ input: GetSamplingRulesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSamplingRulesResult {
        return try await self.client.execute(operation: "GetSamplingRules", path: "/GetSamplingRules", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about recent sampling results for all sampling rules.
    public func getSamplingStatisticSummaries(_ input: GetSamplingStatisticSummariesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSamplingStatisticSummariesResult {
        return try await self.client.execute(operation: "GetSamplingStatisticSummaries", path: "/SamplingStatisticSummaries", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Requests a sampling quota for rules that the service is using to sample requests.
    public func getSamplingTargets(_ input: GetSamplingTargetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSamplingTargetsResult {
        return try await self.client.execute(operation: "GetSamplingTargets", path: "/SamplingTargets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the Amazon Web Services X-Ray SDK. Downstream services can be other applications, Amazon Web Services resources, HTTP web APIs, or SQL databases.
    public func getServiceGraph(_ input: GetServiceGraphRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetServiceGraphResult {
        return try await self.client.execute(operation: "GetServiceGraph", path: "/ServiceGraph", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get an aggregation of service statistics defined by a specific time range.
    public func getTimeSeriesServiceStatistics(_ input: GetTimeSeriesServiceStatisticsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTimeSeriesServiceStatisticsResult {
        return try await self.client.execute(operation: "GetTimeSeriesServiceStatistics", path: "/TimeSeriesServiceStatistics", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a service graph for one or more specific trace IDs.
    public func getTraceGraph(_ input: GetTraceGraphRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTraceGraphResult {
        return try await self.client.execute(operation: "GetTraceGraph", path: "/TraceGraph", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves IDs and annotations for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to BatchGetTraces. A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through api.example.com:  service("api.example.com")  This filter expression finds traces that have an annotation named account with the value 12345:  annotation.account = "12345"  For a full list of indexed fields and keywords that you can use in filter expressions, see Using Filter Expressions in the Amazon Web Services X-Ray Developer Guide.
    public func getTraceSummaries(_ input: GetTraceSummariesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTraceSummariesResult {
        return try await self.client.execute(operation: "GetTraceSummaries", path: "/TraceSummaries", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the list of resource policies in the target Amazon Web Services account.
    public func listResourcePolicies(_ input: ListResourcePoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResourcePoliciesResult {
        return try await self.client.execute(operation: "ListResourcePolicies", path: "/ListResourcePolicies", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of tags that are applied to the specified Amazon Web Services X-Ray group or sampling rule.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/ListTagsForResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the encryption configuration for X-Ray data.
    public func putEncryptionConfig(_ input: PutEncryptionConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutEncryptionConfigResult {
        return try await self.client.execute(operation: "PutEncryptionConfig", path: "/PutEncryptionConfig", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Sets the resource policy to grant one or more Amazon Web Services services and accounts permissions to  access X-Ray. Each resource policy will be associated with a specific Amazon Web Services account.  Each Amazon Web Services account can have a maximum of 5 resource policies, and each policy name must be  unique within that account. The maximum size of each resource policy is 5KB.
    public func putResourcePolicy(_ input: PutResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutResourcePolicyResult {
        return try await self.client.execute(operation: "PutResourcePolicy", path: "/PutResourcePolicy", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Used by the Amazon Web Services X-Ray daemon to upload telemetry.
    public func putTelemetryRecords(_ input: PutTelemetryRecordsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutTelemetryRecordsResult {
        return try await self.client.execute(operation: "PutTelemetryRecords", path: "/TelemetryRecords", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Uploads segment documents to Amazon Web Services X-Ray. The X-Ray SDK generates segment documents and sends them to the X-Ray daemon, which uploads them in batches. A segment document can be a completed segment, an in-progress segment, or an array of subsegments. Segments must include the following fields. For the full segment document schema, see Amazon Web Services X-Ray Segment Documents in the Amazon Web Services X-Ray Developer Guide.  Required segment document fields     name - The name of the service that handled the request.    id - A 64-bit identifier for the segment, unique among segments in the same trace, in 16 hexadecimal digits.    trace_id - A unique identifier that connects all segments and subsegments originating from a single client request.    start_time - Time the segment or subsegment was created, in floating point seconds in epoch time, accurate to milliseconds. For example, 1480615200.010 or 1.480615200010E9.    end_time - Time the segment or subsegment was closed. For example, 1480615200.090 or 1.480615200090E9. Specify either an end_time or in_progress.    in_progress - Set to true instead of specifying an end_time to record that a segment has been started, but is not complete. Send an in-progress segment when your application receives a request that will take a long time to serve, to trace that the request was received. When the response is sent, send the complete segment to overwrite the in-progress segment.   A trace_id consists of three numbers separated by hyphens. For example, 1-58406520-a006649127e371903a2de979. This includes:  Trace ID Format    The version number, for instance, 1.   The time of the original request, in Unix epoch time, in 8 hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch time is 1480615200 seconds, or 58406520 in hexadecimal.   A 96-bit identifier for the trace, globally unique, in 24 hexadecimal digits.
    public func putTraceSegments(_ input: PutTraceSegmentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutTraceSegmentsResult {
        return try await self.client.execute(operation: "PutTraceSegments", path: "/TraceSegments", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies tags to an existing Amazon Web Services X-Ray group or sampling rule.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/TagResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from an Amazon Web Services X-Ray group or sampling rule. You cannot edit or delete system tags (those with an aws: prefix).
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/UntagResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a group resource.
    public func updateGroup(_ input: UpdateGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGroupResult {
        return try await self.client.execute(operation: "UpdateGroup", path: "/UpdateGroup", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies a sampling rule's configuration.
    public func updateSamplingRule(_ input: UpdateSamplingRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSamplingRuleResult {
        return try await self.client.execute(operation: "UpdateSamplingRule", path: "/UpdateSamplingRule", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension XRay {
    /// Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use GetTraceSummaries to get a list of trace IDs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func batchGetTracesPaginator(
        _ input: BatchGetTracesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<BatchGetTracesRequest, BatchGetTracesResult> {
        return .init(
            input: input,
            command: self.batchGetTraces,
            inputKey: \BatchGetTracesRequest.nextToken,
            outputKey: \BatchGetTracesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves all active group details.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getGroupsPaginator(
        _ input: GetGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetGroupsRequest, GetGroupsResult> {
        return .init(
            input: input,
            command: self.getGroups,
            inputKey: \GetGroupsRequest.nextToken,
            outputKey: \GetGroupsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// X-Ray reevaluates insights periodically until they're resolved, and records each intermediate state as an event. You can review an insight's events in the Impact Timeline on the Inspect page in the X-Ray console.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getInsightEventsPaginator(
        _ input: GetInsightEventsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetInsightEventsRequest, GetInsightEventsResult> {
        return .init(
            input: input,
            command: self.getInsightEvents,
            inputKey: \GetInsightEventsRequest.nextToken,
            outputKey: \GetInsightEventsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves the summaries of all insights in the specified group matching the provided filter values.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getInsightSummariesPaginator(
        _ input: GetInsightSummariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetInsightSummariesRequest, GetInsightSummariesResult> {
        return .init(
            input: input,
            command: self.getInsightSummaries,
            inputKey: \GetInsightSummariesRequest.nextToken,
            outputKey: \GetInsightSummariesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves all sampling rules.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getSamplingRulesPaginator(
        _ input: GetSamplingRulesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetSamplingRulesRequest, GetSamplingRulesResult> {
        return .init(
            input: input,
            command: self.getSamplingRules,
            inputKey: \GetSamplingRulesRequest.nextToken,
            outputKey: \GetSamplingRulesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves information about recent sampling results for all sampling rules.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getSamplingStatisticSummariesPaginator(
        _ input: GetSamplingStatisticSummariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetSamplingStatisticSummariesRequest, GetSamplingStatisticSummariesResult> {
        return .init(
            input: input,
            command: self.getSamplingStatisticSummaries,
            inputKey: \GetSamplingStatisticSummariesRequest.nextToken,
            outputKey: \GetSamplingStatisticSummariesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the Amazon Web Services X-Ray SDK. Downstream services can be other applications, Amazon Web Services resources, HTTP web APIs, or SQL databases.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getServiceGraphPaginator(
        _ input: GetServiceGraphRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetServiceGraphRequest, GetServiceGraphResult> {
        return .init(
            input: input,
            command: self.getServiceGraph,
            inputKey: \GetServiceGraphRequest.nextToken,
            outputKey: \GetServiceGraphResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Get an aggregation of service statistics defined by a specific time range.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getTimeSeriesServiceStatisticsPaginator(
        _ input: GetTimeSeriesServiceStatisticsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetTimeSeriesServiceStatisticsRequest, GetTimeSeriesServiceStatisticsResult> {
        return .init(
            input: input,
            command: self.getTimeSeriesServiceStatistics,
            inputKey: \GetTimeSeriesServiceStatisticsRequest.nextToken,
            outputKey: \GetTimeSeriesServiceStatisticsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves a service graph for one or more specific trace IDs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getTraceGraphPaginator(
        _ input: GetTraceGraphRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetTraceGraphRequest, GetTraceGraphResult> {
        return .init(
            input: input,
            command: self.getTraceGraph,
            inputKey: \GetTraceGraphRequest.nextToken,
            outputKey: \GetTraceGraphResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves IDs and annotations for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to BatchGetTraces. A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through api.example.com:  service("api.example.com")  This filter expression finds traces that have an annotation named account with the value 12345:  annotation.account = "12345"  For a full list of indexed fields and keywords that you can use in filter expressions, see Using Filter Expressions in the Amazon Web Services X-Ray Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getTraceSummariesPaginator(
        _ input: GetTraceSummariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetTraceSummariesRequest, GetTraceSummariesResult> {
        return .init(
            input: input,
            command: self.getTraceSummaries,
            inputKey: \GetTraceSummariesRequest.nextToken,
            outputKey: \GetTraceSummariesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns the list of resource policies in the target Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listResourcePoliciesPaginator(
        _ input: ListResourcePoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListResourcePoliciesRequest, ListResourcePoliciesResult> {
        return .init(
            input: input,
            command: self.listResourcePolicies,
            inputKey: \ListResourcePoliciesRequest.nextToken,
            outputKey: \ListResourcePoliciesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns a list of tags that are applied to the specified Amazon Web Services X-Ray group or sampling rule.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTagsForResourceRequest, ListTagsForResourceResponse> {
        return .init(
            input: input,
            command: self.listTagsForResource,
            inputKey: \ListTagsForResourceRequest.nextToken,
            outputKey: \ListTagsForResourceResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
