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
extension KafkaConnect {
    // MARK: Async API Calls

    /// Creates a connector using the specified properties.
    public func createConnector(_ input: CreateConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConnectorResponse {
        return try await self.client.execute(operation: "CreateConnector", path: "/v1/connectors", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a custom plugin using the specified properties.
    public func createCustomPlugin(_ input: CreateCustomPluginRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomPluginResponse {
        return try await self.client.execute(operation: "CreateCustomPlugin", path: "/v1/custom-plugins", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a worker configuration using the specified properties.
    public func createWorkerConfiguration(_ input: CreateWorkerConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkerConfigurationResponse {
        return try await self.client.execute(operation: "CreateWorkerConfiguration", path: "/v1/worker-configurations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified connector.
    public func deleteConnector(_ input: DeleteConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConnectorResponse {
        return try await self.client.execute(operation: "DeleteConnector", path: "/v1/connectors/{connectorArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a custom plugin.
    public func deleteCustomPlugin(_ input: DeleteCustomPluginRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomPluginResponse {
        return try await self.client.execute(operation: "DeleteCustomPlugin", path: "/v1/custom-plugins/{customPluginArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns summary information about the connector.
    public func describeConnector(_ input: DescribeConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConnectorResponse {
        return try await self.client.execute(operation: "DescribeConnector", path: "/v1/connectors/{connectorArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A summary description of the custom plugin.
    public func describeCustomPlugin(_ input: DescribeCustomPluginRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomPluginResponse {
        return try await self.client.execute(operation: "DescribeCustomPlugin", path: "/v1/custom-plugins/{customPluginArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a worker configuration.
    public func describeWorkerConfiguration(_ input: DescribeWorkerConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkerConfigurationResponse {
        return try await self.client.execute(operation: "DescribeWorkerConfiguration", path: "/v1/worker-configurations/{workerConfigurationArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all the connectors in this account and Region. The list is limited to connectors whose name starts with the specified prefix. The response also includes a description of each of the listed connectors.
    public func listConnectors(_ input: ListConnectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListConnectorsResponse {
        return try await self.client.execute(operation: "ListConnectors", path: "/v1/connectors", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all of the custom plugins in this account and Region.
    public func listCustomPlugins(_ input: ListCustomPluginsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCustomPluginsResponse {
        return try await self.client.execute(operation: "ListCustomPlugins", path: "/v1/custom-plugins", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all of the worker configurations in this account and Region.
    public func listWorkerConfigurations(_ input: ListWorkerConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWorkerConfigurationsResponse {
        return try await self.client.execute(operation: "ListWorkerConfigurations", path: "/v1/worker-configurations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified connector.
    public func updateConnector(_ input: UpdateConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateConnectorResponse {
        return try await self.client.execute(operation: "UpdateConnector", path: "/v1/connectors/{connectorArn}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension KafkaConnect {
    /// Returns a list of all the connectors in this account and Region. The list is limited to connectors whose name starts with the specified prefix. The response also includes a description of each of the listed connectors.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listConnectorsPaginator(
        _ input: ListConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListConnectorsRequest, ListConnectorsResponse> {
        return .init(
            input: input,
            command: self.listConnectors,
            inputKey: \ListConnectorsRequest.nextToken,
            outputKey: \ListConnectorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns a list of all of the custom plugins in this account and Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCustomPluginsPaginator(
        _ input: ListCustomPluginsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCustomPluginsRequest, ListCustomPluginsResponse> {
        return .init(
            input: input,
            command: self.listCustomPlugins,
            inputKey: \ListCustomPluginsRequest.nextToken,
            outputKey: \ListCustomPluginsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns a list of all of the worker configurations in this account and Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listWorkerConfigurationsPaginator(
        _ input: ListWorkerConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListWorkerConfigurationsRequest, ListWorkerConfigurationsResponse> {
        return .init(
            input: input,
            command: self.listWorkerConfigurations,
            inputKey: \ListWorkerConfigurationsRequest.nextToken,
            outputKey: \ListWorkerConfigurationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
