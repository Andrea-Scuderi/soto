//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS CodeStarconnections service.
///
/// AWS CodeStar Connections  The CodeStar Connections feature is in preview release and is subject to change.  This AWS CodeStar Connections API Reference provides descriptions and usage examples of the operations and data types for the AWS CodeStar Connections API. You can use the connections API to work with connections and installations.  Connections are configurations that you use to connect AWS resources to external code repositories. Each connection is a resource that can be given to services such as CodePipeline to connect to a third-party repository such as Bitbucket. For example, you can add the connection in CodePipeline so that it triggers your pipeline when a code change is made to your third-party code repository. Each connection is named and associated with a unique ARN that is used to reference the connection. When you create a connection, the console initiates a third-party connection handshake. Installations are the apps that are used to conduct this handshake. For example, the installation for the Bitbucket provider type is the Bitbucket Cloud app. When you create a connection, you can choose an existing installation or create one. When you want to create a connection to an installed provider type such as GitHub Enterprise Server, you create a host for your connections. You can work with connections by calling:    CreateConnection, which creates a uniquely named connection that can be referenced by services such as CodePipeline.    DeleteConnection, which deletes the specified connection.    GetConnection, which returns information about the connection, including the connection status.    ListConnections, which lists the connections associated with your account.   You can work with hosts by calling:    CreateHost, which creates a host that represents the infrastructure where your provider is installed.    DeleteHost, which deletes the specified host.    GetHost, which returns information about the host, including the setup status.    ListHosts, which lists the hosts associated with your account.   You can work with tags in AWS CodeStar Connections by calling the following:    ListTagsForResource, which gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeStar Connections.    TagResource, which adds or updates tags for a resource in AWS CodeStar Connections.    UntagResource, which removes tags for a resource in AWS CodeStar Connections.   For information about how to use AWS CodeStar Connections, see the Developer Tools User Guide.
public struct CodeStarconnections: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the CodeStarconnections client
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
            amzTarget: "com.amazonaws.codestar.connections.CodeStar_connections_20191201",
            service: "codestar-connections",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2019-12-01",
            endpoint: endpoint,
            errorType: CodeStarconnectionsErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a connection that can then be given to other AWS services like CodePipeline so that it can access third-party code repositories. The connection is in pending status until the third-party connection handshake is completed from the console.
    public func createConnection(_ input: CreateConnectionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConnectionOutput> {
        return self.client.execute(operation: "CreateConnection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a resource that represents the infrastructure where a third-party provider is installed. The host is used when you create connections to an installed third-party provider type, such as GitHub Enterprise Server. You create one host for all connections to that provider.  A host created through the CLI or the SDK is in `PENDING` status by default. You can make its status `AVAILABLE` by setting up the host in the console.
    public func createHost(_ input: CreateHostInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHostOutput> {
        return self.client.execute(operation: "CreateHost", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The connection to be deleted.
    public func deleteConnection(_ input: DeleteConnectionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConnectionOutput> {
        return self.client.execute(operation: "DeleteConnection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The host to be deleted. Before you delete a host, all connections associated to the host must be deleted.  A host cannot be deleted if it is in the VPC_CONFIG_INITIALIZING or VPC_CONFIG_DELETING state.
    public func deleteHost(_ input: DeleteHostInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteHostOutput> {
        return self.client.execute(operation: "DeleteHost", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the connection ARN and details such as status, owner, and provider type.
    public func getConnection(_ input: GetConnectionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetConnectionOutput> {
        return self.client.execute(operation: "GetConnection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the host ARN and details such as status, provider type, endpoint, and, if applicable, the VPC configuration.
    public func getHost(_ input: GetHostInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetHostOutput> {
        return self.client.execute(operation: "GetHost", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the connections associated with your account.
    public func listConnections(_ input: ListConnectionsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListConnectionsOutput> {
        return self.client.execute(operation: "ListConnections", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the hosts associated with your account.
    public func listHosts(_ input: ListHostsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListHostsOutput> {
        return self.client.execute(operation: "ListHosts", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the set of key-value pairs (metadata) that are used to manage the resource.
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceOutput> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceOutput> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from an AWS resource.
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceOutput> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension CodeStarconnections {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: CodeStarconnections, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
