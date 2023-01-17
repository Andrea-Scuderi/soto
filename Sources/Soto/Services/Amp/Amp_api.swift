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

@_exported import SotoCore

/// Service object for interacting with AWS Amp service.
///
/// Amazon Managed Service for Prometheus
public struct Amp: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Amp client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "aps",
            serviceProtocol: .restjson,
            apiVersion: "2020-08-01",
            endpoint: endpoint,
            errorType: AmpErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Create an alert manager definition.
    public func createAlertManagerDefinition(_ input: CreateAlertManagerDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAlertManagerDefinitionResponse> {
        return self.client.execute(operation: "CreateAlertManagerDefinition", path: "/workspaces/{workspaceId}/alertmanager/definition", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create logging configuration.
    public func createLoggingConfiguration(_ input: CreateLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLoggingConfigurationResponse> {
        return self.client.execute(operation: "CreateLoggingConfiguration", path: "/workspaces/{workspaceId}/logging", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a rule group namespace.
    public func createRuleGroupsNamespace(_ input: CreateRuleGroupsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRuleGroupsNamespaceResponse> {
        return self.client.execute(operation: "CreateRuleGroupsNamespace", path: "/workspaces/{workspaceId}/rulegroupsnamespaces", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new AMP workspace.
    public func createWorkspace(_ input: CreateWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkspaceResponse> {
        return self.client.execute(operation: "CreateWorkspace", path: "/workspaces", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an alert manager definition.
    @discardableResult public func deleteAlertManagerDefinition(_ input: DeleteAlertManagerDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteAlertManagerDefinition", path: "/workspaces/{workspaceId}/alertmanager/definition", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete logging configuration.
    @discardableResult public func deleteLoggingConfiguration(_ input: DeleteLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteLoggingConfiguration", path: "/workspaces/{workspaceId}/logging", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a rule groups namespace.
    @discardableResult public func deleteRuleGroupsNamespace(_ input: DeleteRuleGroupsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteRuleGroupsNamespace", path: "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an AMP workspace.
    @discardableResult public func deleteWorkspace(_ input: DeleteWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an alert manager definition.
    public func describeAlertManagerDefinition(_ input: DescribeAlertManagerDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlertManagerDefinitionResponse> {
        return self.client.execute(operation: "DescribeAlertManagerDefinition", path: "/workspaces/{workspaceId}/alertmanager/definition", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes logging configuration.
    public func describeLoggingConfiguration(_ input: DescribeLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoggingConfigurationResponse> {
        return self.client.execute(operation: "DescribeLoggingConfiguration", path: "/workspaces/{workspaceId}/logging", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describe a rule groups namespace.
    public func describeRuleGroupsNamespace(_ input: DescribeRuleGroupsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleGroupsNamespaceResponse> {
        return self.client.execute(operation: "DescribeRuleGroupsNamespace", path: "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an existing AMP workspace.
    public func describeWorkspace(_ input: DescribeWorkspaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkspaceResponse> {
        return self.client.execute(operation: "DescribeWorkspace", path: "/workspaces/{workspaceId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists rule groups namespaces.
    public func listRuleGroupsNamespaces(_ input: ListRuleGroupsNamespacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRuleGroupsNamespacesResponse> {
        return self.client.execute(operation: "ListRuleGroupsNamespaces", path: "/workspaces/{workspaceId}/rulegroupsnamespaces", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags you have assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all AMP workspaces, including workspaces being created or deleted.
    public func listWorkspaces(_ input: ListWorkspacesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWorkspacesResponse> {
        return self.client.execute(operation: "ListWorkspaces", path: "/workspaces", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update an alert manager definition.
    public func putAlertManagerDefinition(_ input: PutAlertManagerDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutAlertManagerDefinitionResponse> {
        return self.client.execute(operation: "PutAlertManagerDefinition", path: "/workspaces/{workspaceId}/alertmanager/definition", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a rule groups namespace.
    public func putRuleGroupsNamespace(_ input: PutRuleGroupsNamespaceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutRuleGroupsNamespaceResponse> {
        return self.client.execute(operation: "PutRuleGroupsNamespace", path: "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates tags for the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update logging configuration.
    public func updateLoggingConfiguration(_ input: UpdateLoggingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLoggingConfigurationResponse> {
        return self.client.execute(operation: "UpdateLoggingConfiguration", path: "/workspaces/{workspaceId}/logging", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an AMP workspace alias.
    @discardableResult public func updateWorkspaceAlias(_ input: UpdateWorkspaceAliasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UpdateWorkspaceAlias", path: "/workspaces/{workspaceId}/alias", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension Amp {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Amp, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension Amp {
    /// Lists rule groups namespaces.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listRuleGroupsNamespacesPaginator<Result>(
        _ input: ListRuleGroupsNamespacesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListRuleGroupsNamespacesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listRuleGroupsNamespaces,
            inputKey: \ListRuleGroupsNamespacesRequest.nextToken,
            outputKey: \ListRuleGroupsNamespacesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listRuleGroupsNamespacesPaginator(
        _ input: ListRuleGroupsNamespacesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListRuleGroupsNamespacesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listRuleGroupsNamespaces,
            inputKey: \ListRuleGroupsNamespacesRequest.nextToken,
            outputKey: \ListRuleGroupsNamespacesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Lists all AMP workspaces, including workspaces being created or deleted.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listWorkspacesPaginator<Result>(
        _ input: ListWorkspacesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListWorkspacesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listWorkspaces,
            inputKey: \ListWorkspacesRequest.nextToken,
            outputKey: \ListWorkspacesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listWorkspacesPaginator(
        _ input: ListWorkspacesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListWorkspacesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listWorkspaces,
            inputKey: \ListWorkspacesRequest.nextToken,
            outputKey: \ListWorkspacesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Amp.ListRuleGroupsNamespacesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Amp.ListRuleGroupsNamespacesRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            workspaceId: self.workspaceId
        )
    }
}

extension Amp.ListWorkspacesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Amp.ListWorkspacesRequest {
        return .init(
            alias: self.alias,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

// MARK: Waiters

extension Amp {
    /// Wait until a workspace reaches ACTIVE status
    public func waitUntilWorkspaceActive(
        _ input: DescribeWorkspaceRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("workspace.status.statusCode", expected: "ACTIVE")),
                .init(state: .retry, matcher: try! JMESPathMatcher("workspace.status.statusCode", expected: "UPDATING")),
                .init(state: .retry, matcher: try! JMESPathMatcher("workspace.status.statusCode", expected: "CREATING")),
            ],
            command: self.describeWorkspace
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    /// Wait until a workspace reaches DELETED status
    public func waitUntilWorkspaceDeleted(
        _ input: DescribeWorkspaceRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
                .init(state: .retry, matcher: try! JMESPathMatcher("workspace.status.statusCode", expected: "DELETING")),
            ],
            command: self.describeWorkspace
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
