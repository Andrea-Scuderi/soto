//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
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

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Connect {
    ///  Gets the real-time metric data from the specified Amazon Connect instance. For a description of each metric, see Real-time Metrics Definitions in the Amazon Connect Administrator Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getCurrentMetricDataPaginator(
        _ input: GetCurrentMetricDataRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetCurrentMetricDataRequest, GetCurrentMetricDataResponse> {
        return .init(
            input: input,
            command: getCurrentMetricData,
            inputKey: \GetCurrentMetricDataRequest.nextToken,
            outputKey: \GetCurrentMetricDataResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the real-time active user data from the specified Amazon Connect instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getCurrentUserDataPaginator(
        _ input: GetCurrentUserDataRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetCurrentUserDataRequest, GetCurrentUserDataResponse> {
        return .init(
            input: input,
            command: getCurrentUserData,
            inputKey: \GetCurrentUserDataRequest.nextToken,
            outputKey: \GetCurrentUserDataResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets historical metric data from the specified Amazon Connect instance.
    ///   For a description of each historical metric, see Historical Metrics Definitions in the Amazon Connect Administrator Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getMetricDataPaginator(
        _ input: GetMetricDataRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetMetricDataRequest, GetMetricDataResponse> {
        return .init(
            input: input,
            command: getMetricData,
            inputKey: \GetMetricDataRequest.nextToken,
            outputKey: \GetMetricDataResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change. Lists agent statuses.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAgentStatusesPaginator(
        _ input: ListAgentStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAgentStatusRequest, ListAgentStatusResponse> {
        return .init(
            input: input,
            command: listAgentStatuses,
            inputKey: \ListAgentStatusRequest.nextToken,
            outputKey: \ListAgentStatusResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change. Returns a paginated list of all approved origins associated with the instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listApprovedOriginsPaginator(
        _ input: ListApprovedOriginsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListApprovedOriginsRequest, ListApprovedOriginsResponse> {
        return .init(
            input: input,
            command: listApprovedOrigins,
            inputKey: \ListApprovedOriginsRequest.nextToken,
            outputKey: \ListApprovedOriginsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change. For the specified version of Amazon Lex, returns a paginated list of all the Amazon Lex bots currently associated with the instance. Use this API to returns both Amazon Lex V1 and V2 bots.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBotsPaginator(
        _ input: ListBotsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBotsRequest, ListBotsResponse> {
        return .init(
            input: input,
            command: listBots,
            inputKey: \ListBotsRequest.nextToken,
            outputKey: \ListBotsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides information about the flow modules for the specified Amazon Connect instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listContactFlowModulesPaginator(
        _ input: ListContactFlowModulesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListContactFlowModulesRequest, ListContactFlowModulesResponse> {
        return .init(
            input: input,
            command: listContactFlowModules,
            inputKey: \ListContactFlowModulesRequest.nextToken,
            outputKey: \ListContactFlowModulesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides information about the flows for the specified Amazon Connect instance. You can also create and update flows using the Amazon Connect Flow language. For more information about flows, see Flows in the Amazon Connect Administrator Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listContactFlowsPaginator(
        _ input: ListContactFlowsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListContactFlowsRequest, ListContactFlowsResponse> {
        return .init(
            input: input,
            command: listContactFlows,
            inputKey: \ListContactFlowsRequest.nextToken,
            outputKey: \ListContactFlowsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change. For the specified referenceTypes, returns a list of references associated with the contact.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listContactReferencesPaginator(
        _ input: ListContactReferencesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListContactReferencesRequest, ListContactReferencesResponse> {
        return .init(
            input: input,
            command: listContactReferences,
            inputKey: \ListContactReferencesRequest.nextToken,
            outputKey: \ListContactReferencesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the default vocabularies for the specified Amazon Connect instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDefaultVocabulariesPaginator(
        _ input: ListDefaultVocabulariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDefaultVocabulariesRequest, ListDefaultVocabulariesResponse> {
        return .init(
            input: input,
            command: listDefaultVocabularies,
            inputKey: \ListDefaultVocabulariesRequest.nextToken,
            outputKey: \ListDefaultVocabulariesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides information about the hours of operation for the specified Amazon Connect instance. For more information about hours of operation, see Set the Hours of Operation for a Queue in the Amazon Connect Administrator Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listHoursOfOperationsPaginator(
        _ input: ListHoursOfOperationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListHoursOfOperationsRequest, ListHoursOfOperationsResponse> {
        return .init(
            input: input,
            command: listHoursOfOperations,
            inputKey: \ListHoursOfOperationsRequest.nextToken,
            outputKey: \ListHoursOfOperationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change. Returns a paginated list of all attribute types for the given instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInstanceAttributesPaginator(
        _ input: ListInstanceAttributesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInstanceAttributesRequest, ListInstanceAttributesResponse> {
        return .init(
            input: input,
            command: listInstanceAttributes,
            inputKey: \ListInstanceAttributesRequest.nextToken,
            outputKey: \ListInstanceAttributesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change.
    ///   Returns a paginated list of storage configs for the identified instance and resource type.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInstanceStorageConfigsPaginator(
        _ input: ListInstanceStorageConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInstanceStorageConfigsRequest, ListInstanceStorageConfigsResponse> {
        return .init(
            input: input,
            command: listInstanceStorageConfigs,
            inputKey: \ListInstanceStorageConfigsRequest.nextToken,
            outputKey: \ListInstanceStorageConfigsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change. Return a list of instances which are in active state, creation-in-progress state, and failed state. Instances that aren't successfully created (they are in a failed state) are returned only for 24 hours after the CreateInstance API was invoked.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInstancesPaginator(
        _ input: ListInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInstancesRequest, ListInstancesResponse> {
        return .init(
            input: input,
            command: listInstances,
            inputKey: \ListInstancesRequest.nextToken,
            outputKey: \ListInstancesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides summary information about the Amazon Web Services resource associations for the specified Amazon Connect instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listIntegrationAssociationsPaginator(
        _ input: ListIntegrationAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListIntegrationAssociationsRequest, ListIntegrationAssociationsResponse> {
        return .init(
            input: input,
            command: listIntegrationAssociations,
            inputKey: \ListIntegrationAssociationsRequest.nextToken,
            outputKey: \ListIntegrationAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change. Returns a paginated list of all Lambda functions that display in the dropdown options in the relevant flow blocks.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLambdaFunctionsPaginator(
        _ input: ListLambdaFunctionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLambdaFunctionsRequest, ListLambdaFunctionsResponse> {
        return .init(
            input: input,
            command: listLambdaFunctions,
            inputKey: \ListLambdaFunctionsRequest.nextToken,
            outputKey: \ListLambdaFunctionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change. Returns a paginated list of all the Amazon Lex V1 bots currently associated with the instance. To return both Amazon Lex V1 and V2 bots, use the ListBots API.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLexBotsPaginator(
        _ input: ListLexBotsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLexBotsRequest, ListLexBotsResponse> {
        return .init(
            input: input,
            command: listLexBots,
            inputKey: \ListLexBotsRequest.nextToken,
            outputKey: \ListLexBotsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides information about the phone numbers for the specified Amazon Connect instance.  For more information about phone numbers, see Set Up Phone Numbers for Your Contact Center in the Amazon Connect Administrator Guide.
    ///    The phone number Arn value that is returned from each of the items in the PhoneNumberSummaryList cannot be used to tag phone number resources. It will fail with a ResourceNotFoundException. Instead, use the ListPhoneNumbersV2 API. It returns the new phone number ARN that can be used to tag phone number resources.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPhoneNumbersPaginator(
        _ input: ListPhoneNumbersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPhoneNumbersRequest, ListPhoneNumbersResponse> {
        return .init(
            input: input,
            command: listPhoneNumbers,
            inputKey: \ListPhoneNumbersRequest.nextToken,
            outputKey: \ListPhoneNumbersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists phone numbers claimed to your Amazon Connect instance or traffic distribution group. If the provided TargetArn is a traffic distribution group, you can call this API in both Amazon Web Services Regions associated with traffic distribution group. For more information about phone numbers, see Set Up Phone Numbers for Your Contact Center in the Amazon Connect Administrator Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPhoneNumbersV2Paginator(
        _ input: ListPhoneNumbersV2Request,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPhoneNumbersV2Request, ListPhoneNumbersV2Response> {
        return .init(
            input: input,
            command: listPhoneNumbersV2,
            inputKey: \ListPhoneNumbersV2Request.nextToken,
            outputKey: \ListPhoneNumbersV2Response.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides information about the prompts for the specified Amazon Connect instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPromptsPaginator(
        _ input: ListPromptsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPromptsRequest, ListPromptsResponse> {
        return .init(
            input: input,
            command: listPrompts,
            inputKey: \ListPromptsRequest.nextToken,
            outputKey: \ListPromptsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change. Lists the quick connects associated with a queue.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listQueueQuickConnectsPaginator(
        _ input: ListQueueQuickConnectsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListQueueQuickConnectsRequest, ListQueueQuickConnectsResponse> {
        return .init(
            input: input,
            command: listQueueQuickConnects,
            inputKey: \ListQueueQuickConnectsRequest.nextToken,
            outputKey: \ListQueueQuickConnectsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides information about the queues for the specified Amazon Connect instance. If you do not specify a QueueTypes parameter, both standard and agent queues are returned. This might cause an unexpected truncation of results if you have more than 1000 agents and you limit the number of results of the API call in code. For more information about queues, see Queues: Standard and Agent in the Amazon Connect Administrator Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listQueuesPaginator(
        _ input: ListQueuesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListQueuesRequest, ListQueuesResponse> {
        return .init(
            input: input,
            command: listQueues,
            inputKey: \ListQueuesRequest.nextToken,
            outputKey: \ListQueuesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides information about the quick connects for the specified Amazon Connect instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listQuickConnectsPaginator(
        _ input: ListQuickConnectsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListQuickConnectsRequest, ListQuickConnectsResponse> {
        return .init(
            input: input,
            command: listQuickConnects,
            inputKey: \ListQuickConnectsRequest.nextToken,
            outputKey: \ListQuickConnectsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the queues associated with a routing profile.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRoutingProfileQueuesPaginator(
        _ input: ListRoutingProfileQueuesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRoutingProfileQueuesRequest, ListRoutingProfileQueuesResponse> {
        return .init(
            input: input,
            command: listRoutingProfileQueues,
            inputKey: \ListRoutingProfileQueuesRequest.nextToken,
            outputKey: \ListRoutingProfileQueuesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides summary information about the routing profiles for the specified Amazon Connect instance. For more information about routing profiles, see Routing Profiles and Create a Routing Profile in the Amazon Connect Administrator Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRoutingProfilesPaginator(
        _ input: ListRoutingProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRoutingProfilesRequest, ListRoutingProfilesResponse> {
        return .init(
            input: input,
            command: listRoutingProfiles,
            inputKey: \ListRoutingProfilesRequest.nextToken,
            outputKey: \ListRoutingProfilesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change. Returns a paginated list of all security keys associated with the instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSecurityKeysPaginator(
        _ input: ListSecurityKeysRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSecurityKeysRequest, ListSecurityKeysResponse> {
        return .init(
            input: input,
            command: listSecurityKeys,
            inputKey: \ListSecurityKeysRequest.nextToken,
            outputKey: \ListSecurityKeysResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change. Lists the permissions granted to a security profile.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSecurityProfilePermissionsPaginator(
        _ input: ListSecurityProfilePermissionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSecurityProfilePermissionsRequest, ListSecurityProfilePermissionsResponse> {
        return .init(
            input: input,
            command: listSecurityProfilePermissions,
            inputKey: \ListSecurityProfilePermissionsRequest.nextToken,
            outputKey: \ListSecurityProfilePermissionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides summary information about the security profiles for the specified Amazon Connect instance. For more information about security profiles, see Security Profiles in the Amazon Connect Administrator Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSecurityProfilesPaginator(
        _ input: ListSecurityProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSecurityProfilesRequest, ListSecurityProfilesResponse> {
        return .init(
            input: input,
            command: listSecurityProfiles,
            inputKey: \ListSecurityProfilesRequest.nextToken,
            outputKey: \ListSecurityProfilesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists task templates for the specified Amazon Connect instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTaskTemplatesPaginator(
        _ input: ListTaskTemplatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTaskTemplatesRequest, ListTaskTemplatesResponse> {
        return .init(
            input: input,
            command: listTaskTemplates,
            inputKey: \ListTaskTemplatesRequest.nextToken,
            outputKey: \ListTaskTemplatesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists traffic distribution groups.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTrafficDistributionGroupsPaginator(
        _ input: ListTrafficDistributionGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTrafficDistributionGroupsRequest, ListTrafficDistributionGroupsResponse> {
        return .init(
            input: input,
            command: listTrafficDistributionGroups,
            inputKey: \ListTrafficDistributionGroupsRequest.nextToken,
            outputKey: \ListTrafficDistributionGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the use cases for the integration association.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUseCasesPaginator(
        _ input: ListUseCasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUseCasesRequest, ListUseCasesResponse> {
        return .init(
            input: input,
            command: listUseCases,
            inputKey: \ListUseCasesRequest.nextToken,
            outputKey: \ListUseCasesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides summary information about the hierarchy groups for the specified Amazon Connect instance. For more information about agent hierarchies, see Set Up Agent Hierarchies in the Amazon Connect Administrator Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUserHierarchyGroupsPaginator(
        _ input: ListUserHierarchyGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUserHierarchyGroupsRequest, ListUserHierarchyGroupsResponse> {
        return .init(
            input: input,
            command: listUserHierarchyGroups,
            inputKey: \ListUserHierarchyGroupsRequest.nextToken,
            outputKey: \ListUserHierarchyGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides summary information about the users for the specified Amazon Connect instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUsersPaginator(
        _ input: ListUsersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUsersRequest, ListUsersResponse> {
        return .init(
            input: input,
            command: listUsers,
            inputKey: \ListUsersRequest.nextToken,
            outputKey: \ListUsersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches for available phone numbers that you can claim to your Amazon Connect instance or traffic distribution group. If the provided TargetArn is a traffic distribution group, you can call this API in both Amazon Web Services Regions associated with the traffic distribution group.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchAvailablePhoneNumbersPaginator(
        _ input: SearchAvailablePhoneNumbersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchAvailablePhoneNumbersRequest, SearchAvailablePhoneNumbersResponse> {
        return .init(
            input: input,
            command: searchAvailablePhoneNumbers,
            inputKey: \SearchAvailablePhoneNumbersRequest.nextToken,
            outputKey: \SearchAvailablePhoneNumbersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change. Searches queues in an Amazon Connect instance, with optional filtering.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchQueuesPaginator(
        _ input: SearchQueuesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchQueuesRequest, SearchQueuesResponse> {
        return .init(
            input: input,
            command: searchQueues,
            inputKey: \SearchQueuesRequest.nextToken,
            outputKey: \SearchQueuesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change. Searches routing profiles in an Amazon Connect instance, with optional filtering.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchRoutingProfilesPaginator(
        _ input: SearchRoutingProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchRoutingProfilesRequest, SearchRoutingProfilesResponse> {
        return .init(
            input: input,
            command: searchRoutingProfiles,
            inputKey: \SearchRoutingProfilesRequest.nextToken,
            outputKey: \SearchRoutingProfilesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This API is in preview release for Amazon Connect and is subject to change. Searches security profiles in an Amazon Connect instance, with optional filtering.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchSecurityProfilesPaginator(
        _ input: SearchSecurityProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchSecurityProfilesRequest, SearchSecurityProfilesResponse> {
        return .init(
            input: input,
            command: searchSecurityProfiles,
            inputKey: \SearchSecurityProfilesRequest.nextToken,
            outputKey: \SearchSecurityProfilesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches users in an Amazon Connect instance, with optional filtering.    AfterContactWorkTimeLimit is returned in milliseconds.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchUsersPaginator(
        _ input: SearchUsersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchUsersRequest, SearchUsersResponse> {
        return .init(
            input: input,
            command: searchUsers,
            inputKey: \SearchUsersRequest.nextToken,
            outputKey: \SearchUsersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches for vocabularies within a specific Amazon Connect instance using State, NameStartsWith, and LanguageCode.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchVocabulariesPaginator(
        _ input: SearchVocabulariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchVocabulariesRequest, SearchVocabulariesResponse> {
        return .init(
            input: input,
            command: searchVocabularies,
            inputKey: \SearchVocabulariesRequest.nextToken,
            outputKey: \SearchVocabulariesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
