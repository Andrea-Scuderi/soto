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
extension Wisdom {
    // MARK: Async API Calls

    /// Creates an Amazon Connect Wisdom assistant.
    public func createAssistant(_ input: CreateAssistantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssistantResponse {
        return try await self.client.execute(operation: "CreateAssistant", path: "/assistants", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an association between an Amazon Connect Wisdom assistant and another resource. Currently, the only supported association is with a knowledge base. An assistant can have only a single association.
    public func createAssistantAssociation(_ input: CreateAssistantAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssistantAssociationResponse {
        return try await self.client.execute(operation: "CreateAssistantAssociation", path: "/assistants/{assistantId}/associations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates Wisdom content. Before to calling this API, use StartContentUpload to upload an asset.
    public func createContent(_ input: CreateContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateContentResponse {
        return try await self.client.execute(operation: "CreateContent", path: "/knowledgeBases/{knowledgeBaseId}/contents", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a knowledge base.  When using this API, you cannot reuse Amazon AppIntegrations DataIntegrations with external knowledge bases such as Salesforce and ServiceNow. If you do, you'll get an InvalidRequestException error.
    ///  For example, you're programmatically managing your external knowledge base, and you want to add or remove one of the fields that is being ingested from Salesforce. Do the following:   Call DeleteKnowledgeBase.   Call DeleteDataIntegration.   Call CreateDataIntegration to recreate the DataIntegration or a create different one.   Call CreateKnowledgeBase.
    public func createKnowledgeBase(_ input: CreateKnowledgeBaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateKnowledgeBaseResponse {
        return try await self.client.execute(operation: "CreateKnowledgeBase", path: "/knowledgeBases", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a session. A session is a contextual container used for generating recommendations. Amazon Connect creates a new Wisdom session for each contact on which Wisdom is enabled.
    public func createSession(_ input: CreateSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSessionResponse {
        return try await self.client.execute(operation: "CreateSession", path: "/assistants/{assistantId}/sessions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an assistant.
    public func deleteAssistant(_ input: DeleteAssistantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAssistantResponse {
        return try await self.client.execute(operation: "DeleteAssistant", path: "/assistants/{assistantId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an assistant association.
    public func deleteAssistantAssociation(_ input: DeleteAssistantAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAssistantAssociationResponse {
        return try await self.client.execute(operation: "DeleteAssistantAssociation", path: "/assistants/{assistantId}/associations/{assistantAssociationId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the content.
    public func deleteContent(_ input: DeleteContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteContentResponse {
        return try await self.client.execute(operation: "DeleteContent", path: "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the knowledge base.  When you use this API to delete an external knowledge base such as Salesforce or ServiceNow, you must also delete the Amazon AppIntegrations DataIntegration. This is because you can't reuse the DataIntegration after it's been associated with an external knowledge base. However, you can delete and recreate it. See DeleteDataIntegration and CreateDataIntegration in the Amazon AppIntegrations API Reference.
    public func deleteKnowledgeBase(_ input: DeleteKnowledgeBaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteKnowledgeBaseResponse {
        return try await self.client.execute(operation: "DeleteKnowledgeBase", path: "/knowledgeBases/{knowledgeBaseId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about an assistant.
    public func getAssistant(_ input: GetAssistantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAssistantResponse {
        return try await self.client.execute(operation: "GetAssistant", path: "/assistants/{assistantId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about an assistant association.
    public func getAssistantAssociation(_ input: GetAssistantAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAssistantAssociationResponse {
        return try await self.client.execute(operation: "GetAssistantAssociation", path: "/assistants/{assistantId}/associations/{assistantAssociationId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves content, including a pre-signed URL to download the content.
    public func getContent(_ input: GetContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetContentResponse {
        return try await self.client.execute(operation: "GetContent", path: "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves summary information about the content.
    public func getContentSummary(_ input: GetContentSummaryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetContentSummaryResponse {
        return try await self.client.execute(operation: "GetContentSummary", path: "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/summary", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about the knowledge base.
    public func getKnowledgeBase(_ input: GetKnowledgeBaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetKnowledgeBaseResponse {
        return try await self.client.execute(operation: "GetKnowledgeBase", path: "/knowledgeBases/{knowledgeBaseId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves recommendations for the specified session. To avoid retrieving the same recommendations in subsequent calls, use NotifyRecommendationsReceived. This API supports long-polling behavior with the waitTimeSeconds parameter. Short poll is the default behavior and only returns recommendations already available. To perform a manual query against an assistant, use QueryAssistant.
    public func getRecommendations(_ input: GetRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecommendationsResponse {
        return try await self.client.execute(operation: "GetRecommendations", path: "/assistants/{assistantId}/sessions/{sessionId}/recommendations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information for a specified session.
    public func getSession(_ input: GetSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSessionResponse {
        return try await self.client.execute(operation: "GetSession", path: "/assistants/{assistantId}/sessions/{sessionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists information about assistant associations.
    public func listAssistantAssociations(_ input: ListAssistantAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssistantAssociationsResponse {
        return try await self.client.execute(operation: "ListAssistantAssociations", path: "/assistants/{assistantId}/associations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists information about assistants.
    public func listAssistants(_ input: ListAssistantsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssistantsResponse {
        return try await self.client.execute(operation: "ListAssistants", path: "/assistants", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the content.
    public func listContents(_ input: ListContentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListContentsResponse {
        return try await self.client.execute(operation: "ListContents", path: "/knowledgeBases/{knowledgeBaseId}/contents", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the knowledge bases.
    public func listKnowledgeBases(_ input: ListKnowledgeBasesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListKnowledgeBasesResponse {
        return try await self.client.execute(operation: "ListKnowledgeBases", path: "/knowledgeBases", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified recommendations from the specified assistant's queue of newly available recommendations. You can use this API in conjunction with GetRecommendations and a waitTimeSeconds input for long-polling behavior and avoiding duplicate recommendations.
    public func notifyRecommendationsReceived(_ input: NotifyRecommendationsReceivedRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> NotifyRecommendationsReceivedResponse {
        return try await self.client.execute(operation: "NotifyRecommendationsReceived", path: "/assistants/{assistantId}/sessions/{sessionId}/recommendations/notify", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Performs a manual search against the specified assistant. To retrieve recommendations for an assistant, use GetRecommendations.
    public func queryAssistant(_ input: QueryAssistantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryAssistantResponse {
        return try await self.client.execute(operation: "QueryAssistant", path: "/assistants/{assistantId}/query", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a URI template from a knowledge base.
    public func removeKnowledgeBaseTemplateUri(_ input: RemoveKnowledgeBaseTemplateUriRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveKnowledgeBaseTemplateUriResponse {
        return try await self.client.execute(operation: "RemoveKnowledgeBaseTemplateUri", path: "/knowledgeBases/{knowledgeBaseId}/templateUri", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Searches for content in a specified knowledge base. Can be used to get a specific content resource by its name.
    public func searchContent(_ input: SearchContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchContentResponse {
        return try await self.client.execute(operation: "SearchContent", path: "/knowledgeBases/{knowledgeBaseId}/search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Searches for sessions.
    public func searchSessions(_ input: SearchSessionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchSessionsResponse {
        return try await self.client.execute(operation: "SearchSessions", path: "/assistants/{assistantId}/searchSessions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a URL to upload content to a knowledge base. To upload content, first make a PUT request to the returned URL with your file, making sure to include the required headers. Then use CreateContent to finalize the content creation process or UpdateContent to modify an existing resource. You can only upload content to a knowledge base of type CUSTOM.
    public func startContentUpload(_ input: StartContentUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartContentUploadResponse {
        return try await self.client.execute(operation: "StartContentUpload", path: "/knowledgeBases/{knowledgeBaseId}/upload", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds the specified tags to the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates information about the content.
    public func updateContent(_ input: UpdateContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateContentResponse {
        return try await self.client.execute(operation: "UpdateContent", path: "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the template URI of a knowledge base. This is only supported for knowledge bases of type EXTERNAL. Include a single variable in ${variable} format; this interpolated by Wisdom using ingested content. For example, if you ingest a Salesforce article, it has an Id value, and you can set the template URI to https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view.
    public func updateKnowledgeBaseTemplateUri(_ input: UpdateKnowledgeBaseTemplateUriRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateKnowledgeBaseTemplateUriResponse {
        return try await self.client.execute(operation: "UpdateKnowledgeBaseTemplateUri", path: "/knowledgeBases/{knowledgeBaseId}/templateUri", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Wisdom {
    /// Lists information about assistant associations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssistantAssociationsPaginator(
        _ input: ListAssistantAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssistantAssociationsRequest, ListAssistantAssociationsResponse> {
        return .init(
            input: input,
            command: self.listAssistantAssociations,
            inputKey: \ListAssistantAssociationsRequest.nextToken,
            outputKey: \ListAssistantAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists information about assistants.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssistantsPaginator(
        _ input: ListAssistantsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssistantsRequest, ListAssistantsResponse> {
        return .init(
            input: input,
            command: self.listAssistants,
            inputKey: \ListAssistantsRequest.nextToken,
            outputKey: \ListAssistantsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the content.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listContentsPaginator(
        _ input: ListContentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListContentsRequest, ListContentsResponse> {
        return .init(
            input: input,
            command: self.listContents,
            inputKey: \ListContentsRequest.nextToken,
            outputKey: \ListContentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the knowledge bases.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listKnowledgeBasesPaginator(
        _ input: ListKnowledgeBasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListKnowledgeBasesRequest, ListKnowledgeBasesResponse> {
        return .init(
            input: input,
            command: self.listKnowledgeBases,
            inputKey: \ListKnowledgeBasesRequest.nextToken,
            outputKey: \ListKnowledgeBasesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Performs a manual search against the specified assistant. To retrieve recommendations for an assistant, use GetRecommendations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func queryAssistantPaginator(
        _ input: QueryAssistantRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<QueryAssistantRequest, QueryAssistantResponse> {
        return .init(
            input: input,
            command: self.queryAssistant,
            inputKey: \QueryAssistantRequest.nextToken,
            outputKey: \QueryAssistantResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Searches for content in a specified knowledge base. Can be used to get a specific content resource by its name.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchContentPaginator(
        _ input: SearchContentRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchContentRequest, SearchContentResponse> {
        return .init(
            input: input,
            command: self.searchContent,
            inputKey: \SearchContentRequest.nextToken,
            outputKey: \SearchContentResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Searches for sessions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchSessionsPaginator(
        _ input: SearchSessionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchSessionsRequest, SearchSessionsResponse> {
        return .init(
            input: input,
            command: self.searchSessions,
            inputKey: \SearchSessionsRequest.nextToken,
            outputKey: \SearchSessionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
