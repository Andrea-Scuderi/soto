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
extension AmplifyUIBuilder {
    // MARK: Async API Calls

    /// Creates a new component for an Amplify app.
    public func createComponent(_ input: CreateComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateComponentResponse {
        return try await self.client.execute(operation: "CreateComponent", path: "/app/{appId}/environment/{environmentName}/components", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new form for an Amplify app.
    public func createForm(_ input: CreateFormRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFormResponse {
        return try await self.client.execute(operation: "CreateForm", path: "/app/{appId}/environment/{environmentName}/forms", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a theme to apply to the components in an Amplify app.
    public func createTheme(_ input: CreateThemeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateThemeResponse {
        return try await self.client.execute(operation: "CreateTheme", path: "/app/{appId}/environment/{environmentName}/themes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a component from an Amplify app.
    public func deleteComponent(_ input: DeleteComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteComponent", path: "/app/{appId}/environment/{environmentName}/components/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a form from an Amplify app.
    public func deleteForm(_ input: DeleteFormRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteForm", path: "/app/{appId}/environment/{environmentName}/forms/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a theme from an Amplify app.
    public func deleteTheme(_ input: DeleteThemeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteTheme", path: "/app/{appId}/environment/{environmentName}/themes/{id}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Exchanges an access code for a token.
    public func exchangeCodeForToken(_ input: ExchangeCodeForTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExchangeCodeForTokenResponse {
        return try await self.client.execute(operation: "ExchangeCodeForToken", path: "/tokens/{provider}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Exports component configurations to code that is ready to integrate into an Amplify app.
    public func exportComponents(_ input: ExportComponentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportComponentsResponse {
        return try await self.client.execute(operation: "ExportComponents", path: "/export/app/{appId}/environment/{environmentName}/components", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Exports form configurations to code that is ready to integrate into an Amplify app.
    public func exportForms(_ input: ExportFormsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportFormsResponse {
        return try await self.client.execute(operation: "ExportForms", path: "/export/app/{appId}/environment/{environmentName}/forms", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Exports theme configurations to code that is ready to integrate into an Amplify app.
    public func exportThemes(_ input: ExportThemesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportThemesResponse {
        return try await self.client.execute(operation: "ExportThemes", path: "/export/app/{appId}/environment/{environmentName}/themes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an existing component for an Amplify app.
    public func getComponent(_ input: GetComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetComponentResponse {
        return try await self.client.execute(operation: "GetComponent", path: "/app/{appId}/environment/{environmentName}/components/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an existing form for an Amplify app.
    public func getForm(_ input: GetFormRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetFormResponse {
        return try await self.client.execute(operation: "GetForm", path: "/app/{appId}/environment/{environmentName}/forms/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns existing metadata for an Amplify app.
    public func getMetadata(_ input: GetMetadataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMetadataResponse {
        return try await self.client.execute(operation: "GetMetadata", path: "/app/{appId}/environment/{environmentName}/metadata", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an existing theme for an Amplify app.
    public func getTheme(_ input: GetThemeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetThemeResponse {
        return try await self.client.execute(operation: "GetTheme", path: "/app/{appId}/environment/{environmentName}/themes/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of components for a specified Amplify app and backend environment.
    public func listComponents(_ input: ListComponentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListComponentsResponse {
        return try await self.client.execute(operation: "ListComponents", path: "/app/{appId}/environment/{environmentName}/components", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of forms for a specified Amplify app and backend environment.
    public func listForms(_ input: ListFormsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFormsResponse {
        return try await self.client.execute(operation: "ListForms", path: "/app/{appId}/environment/{environmentName}/forms", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of themes for a specified Amplify app and backend environment.
    public func listThemes(_ input: ListThemesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListThemesResponse {
        return try await self.client.execute(operation: "ListThemes", path: "/app/{appId}/environment/{environmentName}/themes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stores the metadata information about a feature on a form or view.
    public func putMetadataFlag(_ input: PutMetadataFlagRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "PutMetadataFlag", path: "/app/{appId}/environment/{environmentName}/metadata/features/{featureName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Refreshes a previously issued access token that might have expired.
    public func refreshToken(_ input: RefreshTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefreshTokenResponse {
        return try await self.client.execute(operation: "RefreshToken", path: "/tokens/{provider}/refresh", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing component.
    public func updateComponent(_ input: UpdateComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateComponentResponse {
        return try await self.client.execute(operation: "UpdateComponent", path: "/app/{appId}/environment/{environmentName}/components/{id}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing form.
    public func updateForm(_ input: UpdateFormRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFormResponse {
        return try await self.client.execute(operation: "UpdateForm", path: "/app/{appId}/environment/{environmentName}/forms/{id}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing theme.
    public func updateTheme(_ input: UpdateThemeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateThemeResponse {
        return try await self.client.execute(operation: "UpdateTheme", path: "/app/{appId}/environment/{environmentName}/themes/{id}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension AmplifyUIBuilder {
    /// Exports component configurations to code that is ready to integrate into an Amplify app.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func exportComponentsPaginator(
        _ input: ExportComponentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ExportComponentsRequest, ExportComponentsResponse> {
        return .init(
            input: input,
            command: self.exportComponents,
            inputKey: \ExportComponentsRequest.nextToken,
            outputKey: \ExportComponentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Exports form configurations to code that is ready to integrate into an Amplify app.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func exportFormsPaginator(
        _ input: ExportFormsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ExportFormsRequest, ExportFormsResponse> {
        return .init(
            input: input,
            command: self.exportForms,
            inputKey: \ExportFormsRequest.nextToken,
            outputKey: \ExportFormsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Exports theme configurations to code that is ready to integrate into an Amplify app.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func exportThemesPaginator(
        _ input: ExportThemesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ExportThemesRequest, ExportThemesResponse> {
        return .init(
            input: input,
            command: self.exportThemes,
            inputKey: \ExportThemesRequest.nextToken,
            outputKey: \ExportThemesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves a list of components for a specified Amplify app and backend environment.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listComponentsPaginator(
        _ input: ListComponentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListComponentsRequest, ListComponentsResponse> {
        return .init(
            input: input,
            command: self.listComponents,
            inputKey: \ListComponentsRequest.nextToken,
            outputKey: \ListComponentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves a list of forms for a specified Amplify app and backend environment.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFormsPaginator(
        _ input: ListFormsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFormsRequest, ListFormsResponse> {
        return .init(
            input: input,
            command: self.listForms,
            inputKey: \ListFormsRequest.nextToken,
            outputKey: \ListFormsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves a list of themes for a specified Amplify app and backend environment.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listThemesPaginator(
        _ input: ListThemesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListThemesRequest, ListThemesResponse> {
        return .init(
            input: input,
            command: self.listThemes,
            inputKey: \ListThemesRequest.nextToken,
            outputKey: \ListThemesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
