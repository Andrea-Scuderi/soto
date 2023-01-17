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
extension ConnectCases {
    // MARK: Async API Calls

    /// Returns the description for the list of fields in the request parameters.
    public func batchGetField(_ input: BatchGetFieldRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetFieldResponse {
        return try await self.client.execute(operation: "BatchGetField", path: "/domains/{domainId}/fields-batch", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates and updates a set of field options for a single select field in a Cases domain.
    public func batchPutFieldOptions(_ input: BatchPutFieldOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchPutFieldOptionsResponse {
        return try await self.client.execute(operation: "BatchPutFieldOptions", path: "/domains/{domainId}/fields/{fieldId}/options", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a case in the specified Cases domain. Case system and custom fields are taken as an array id/value pairs with a declared data types.   customer_id is a required field when creating a case.
    public func createCase(_ input: CreateCaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCaseResponse {
        return try await self.client.execute(operation: "CreateCase", path: "/domains/{domainId}/cases", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a domain, which is a container for all case data, such as cases, fields, templates and layouts. Each Amazon Connect instance can be associated with only one Cases domain.  This will not associate your connect instance to Cases domain. Instead, use the Amazon Connect CreateIntegrationAssociation API.
    public func createDomain(_ input: CreateDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainResponse {
        return try await self.client.execute(operation: "CreateDomain", path: "/domains", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a field in the Cases domain. This field is used to define the case object model (that is, defines what data can be captured on cases) in a Cases domain.
    public func createField(_ input: CreateFieldRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFieldResponse {
        return try await self.client.execute(operation: "CreateField", path: "/domains/{domainId}/fields", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a layout in the Cases domain. Layouts define the following configuration in the top section and More Info tab of the Cases user interface:   Fields to display to the users   Field ordering    Title and Status fields cannot be part of layouts since they are not configurable.
    public func createLayout(_ input: CreateLayoutRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLayoutResponse {
        return try await self.client.execute(operation: "CreateLayout", path: "/domains/{domainId}/layouts", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a related item (comments, tasks, and contacts) and associates it with a case.  A Related Item is a resource that is associated with a case. It may or may not have an external identifier linking it to an external resource (for example, a contactArn). All Related Items have their own internal identifier, the relatedItemArn. Examples of related items include comments and contacts.
    public func createRelatedItem(_ input: CreateRelatedItemRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRelatedItemResponse {
        return try await self.client.execute(operation: "CreateRelatedItem", path: "/domains/{domainId}/cases/{caseId}/related-items/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a template in the Cases domain. This template is used to define the case object model (that is, to define what data can be captured on cases) in a Cases domain. A template must have a unique name within a domain, and it must reference existing field IDs and layout IDs. Additionally, multiple fields with same IDs are not allowed within the same Template. A template can be either Active or Inactive, as indicated by its status. Inactive templates cannot be used to create cases.
    public func createTemplate(_ input: CreateTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTemplateResponse {
        return try await self.client.execute(operation: "CreateTemplate", path: "/domains/{domainId}/templates", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a specific case if it exists.
    public func getCase(_ input: GetCaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCaseResponse {
        return try await self.client.execute(operation: "GetCase", path: "/domains/{domainId}/cases/{caseId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the case event publishing configuration.
    public func getCaseEventConfiguration(_ input: GetCaseEventConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCaseEventConfigurationResponse {
        return try await self.client.execute(operation: "GetCaseEventConfiguration", path: "/domains/{domainId}/case-event-configuration", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a specific domain if it exists.
    public func getDomain(_ input: GetDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDomainResponse {
        return try await self.client.execute(operation: "GetDomain", path: "/domains/{domainId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the details for the requested layout.
    public func getLayout(_ input: GetLayoutRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLayoutResponse {
        return try await self.client.execute(operation: "GetLayout", path: "/domains/{domainId}/layouts/{layoutId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the details for the requested template.
    public func getTemplate(_ input: GetTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTemplateResponse {
        return try await self.client.execute(operation: "GetTemplate", path: "/domains/{domainId}/templates/{templateId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists cases for a given contact.
    public func listCasesForContact(_ input: ListCasesForContactRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCasesForContactResponse {
        return try await self.client.execute(operation: "ListCasesForContact", path: "/domains/{domainId}/list-cases-for-contact", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all cases domains in the Amazon Web Services account. Each list item is a condensed summary object of the domain.
    public func listDomains(_ input: ListDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainsResponse {
        return try await self.client.execute(operation: "ListDomains", path: "/domains-list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the field options for a field identifier in the domain.
    public func listFieldOptions(_ input: ListFieldOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFieldOptionsResponse {
        return try await self.client.execute(operation: "ListFieldOptions", path: "/domains/{domainId}/fields/{fieldId}/options-list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all fields in a Cases domain.
    public func listFields(_ input: ListFieldsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFieldsResponse {
        return try await self.client.execute(operation: "ListFields", path: "/domains/{domainId}/fields-list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all layouts in the given cases domain. Each list item is a condensed summary object of the layout.
    public func listLayouts(_ input: ListLayoutsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLayoutsResponse {
        return try await self.client.execute(operation: "ListLayouts", path: "/domains/{domainId}/layouts-list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists tags for a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{arn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the templates in a Cases domain. Each list item is a condensed summary object of the template.
    public func listTemplates(_ input: ListTemplatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTemplatesResponse {
        return try await self.client.execute(operation: "ListTemplates", path: "/domains/{domainId}/templates-list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// API for adding case event publishing configuration
    public func putCaseEventConfiguration(_ input: PutCaseEventConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutCaseEventConfigurationResponse {
        return try await self.client.execute(operation: "PutCaseEventConfiguration", path: "/domains/{domainId}/case-event-configuration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Searches for cases within their associated Cases domain. Search results are returned as a paginated list of abridged case documents.
    public func searchCases(_ input: SearchCasesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchCasesResponse {
        return try await self.client.execute(operation: "SearchCases", path: "/domains/{domainId}/cases-search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Searches for related items that are associated with a case.  If no filters are provided, this returns all related items associated with a case.
    public func searchRelatedItems(_ input: SearchRelatedItemsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchRelatedItemsResponse {
        return try await self.client.execute(operation: "SearchRelatedItems", path: "/domains/{domainId}/cases/{caseId}/related-items-search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{arn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Untags a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{arn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the values of fields on a case. Fields to be updated are received as an array of id/value pairs identical to the CreateCase input . If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.
    public func updateCase(_ input: UpdateCaseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCaseResponse {
        return try await self.client.execute(operation: "UpdateCase", path: "/domains/{domainId}/cases/{caseId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the properties of an existing field.
    public func updateField(_ input: UpdateFieldRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFieldResponse {
        return try await self.client.execute(operation: "UpdateField", path: "/domains/{domainId}/fields/{fieldId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the attributes of an existing layout. If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body. A ValidationException is returned when you add non-existent fieldIds to a layout.  Title and Status fields cannot be part of layouts because they are not configurable.
    public func updateLayout(_ input: UpdateLayoutRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLayoutResponse {
        return try await self.client.execute(operation: "UpdateLayout", path: "/domains/{domainId}/layouts/{layoutId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the attributes of an existing template. The template attributes that can be modified include name, description, layoutConfiguration, requiredFields, and status. At least one of these attributes must not be null. If a null value is provided for a given attribute, that attribute is ignored and its current value is preserved.
    public func updateTemplate(_ input: UpdateTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTemplateResponse {
        return try await self.client.execute(operation: "UpdateTemplate", path: "/domains/{domainId}/templates/{templateId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ConnectCases {
    /// Returns information about a specific case if it exists.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getCasePaginator(
        _ input: GetCaseRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetCaseRequest, GetCaseResponse> {
        return .init(
            input: input,
            command: self.getCase,
            inputKey: \GetCaseRequest.nextToken,
            outputKey: \GetCaseResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists cases for a given contact.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCasesForContactPaginator(
        _ input: ListCasesForContactRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCasesForContactRequest, ListCasesForContactResponse> {
        return .init(
            input: input,
            command: self.listCasesForContact,
            inputKey: \ListCasesForContactRequest.nextToken,
            outputKey: \ListCasesForContactResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all cases domains in the Amazon Web Services account. Each list item is a condensed summary object of the domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDomainsPaginator(
        _ input: ListDomainsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDomainsRequest, ListDomainsResponse> {
        return .init(
            input: input,
            command: self.listDomains,
            inputKey: \ListDomainsRequest.nextToken,
            outputKey: \ListDomainsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all of the field options for a field identifier in the domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFieldOptionsPaginator(
        _ input: ListFieldOptionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFieldOptionsRequest, ListFieldOptionsResponse> {
        return .init(
            input: input,
            command: self.listFieldOptions,
            inputKey: \ListFieldOptionsRequest.nextToken,
            outputKey: \ListFieldOptionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all fields in a Cases domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFieldsPaginator(
        _ input: ListFieldsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFieldsRequest, ListFieldsResponse> {
        return .init(
            input: input,
            command: self.listFields,
            inputKey: \ListFieldsRequest.nextToken,
            outputKey: \ListFieldsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all layouts in the given cases domain. Each list item is a condensed summary object of the layout.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLayoutsPaginator(
        _ input: ListLayoutsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLayoutsRequest, ListLayoutsResponse> {
        return .init(
            input: input,
            command: self.listLayouts,
            inputKey: \ListLayoutsRequest.nextToken,
            outputKey: \ListLayoutsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all of the templates in a Cases domain. Each list item is a condensed summary object of the template.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTemplatesPaginator(
        _ input: ListTemplatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTemplatesRequest, ListTemplatesResponse> {
        return .init(
            input: input,
            command: self.listTemplates,
            inputKey: \ListTemplatesRequest.nextToken,
            outputKey: \ListTemplatesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Searches for cases within their associated Cases domain. Search results are returned as a paginated list of abridged case documents.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchCasesPaginator(
        _ input: SearchCasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchCasesRequest, SearchCasesResponse> {
        return .init(
            input: input,
            command: self.searchCases,
            inputKey: \SearchCasesRequest.nextToken,
            outputKey: \SearchCasesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Searches for related items that are associated with a case.  If no filters are provided, this returns all related items associated with a case.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchRelatedItemsPaginator(
        _ input: SearchRelatedItemsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchRelatedItemsRequest, SearchRelatedItemsResponse> {
        return .init(
            input: input,
            command: self.searchRelatedItems,
            inputKey: \SearchRelatedItemsRequest.nextToken,
            outputKey: \SearchRelatedItemsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
