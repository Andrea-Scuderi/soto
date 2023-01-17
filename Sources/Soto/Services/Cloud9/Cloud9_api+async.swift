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
extension Cloud9 {
    // MARK: Async API Calls

    /// Creates an Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.
    public func createEnvironmentEC2(_ input: CreateEnvironmentEC2Request, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEnvironmentEC2Result {
        return try await self.client.execute(operation: "CreateEnvironmentEC2", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds an environment member to an Cloud9 development environment.
    public func createEnvironmentMembership(_ input: CreateEnvironmentMembershipRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEnvironmentMembershipResult {
        return try await self.client.execute(operation: "CreateEnvironmentMembership", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.
    public func deleteEnvironment(_ input: DeleteEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEnvironmentResult {
        return try await self.client.execute(operation: "DeleteEnvironment", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an environment member from a development environment.
    public func deleteEnvironmentMembership(_ input: DeleteEnvironmentMembershipRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEnvironmentMembershipResult {
        return try await self.client.execute(operation: "DeleteEnvironmentMembership", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about environment members for an Cloud9 development environment.
    public func describeEnvironmentMemberships(_ input: DescribeEnvironmentMembershipsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentMembershipsResult {
        return try await self.client.execute(operation: "DescribeEnvironmentMemberships", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets status information for an Cloud9 development environment.
    public func describeEnvironmentStatus(_ input: DescribeEnvironmentStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentStatusResult {
        return try await self.client.execute(operation: "DescribeEnvironmentStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about Cloud9 development environments.
    public func describeEnvironments(_ input: DescribeEnvironmentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentsResult {
        return try await self.client.execute(operation: "DescribeEnvironments", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of Cloud9 development environment identifiers.
    public func listEnvironments(_ input: ListEnvironmentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEnvironmentsResult {
        return try await self.client.execute(operation: "ListEnvironments", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a list of the tags associated with an Cloud9 development environment.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to an Cloud9 development environment.  Tags that you add to an Cloud9 environment by using this method will NOT be automatically propagated to underlying resources.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from an Cloud9 development environment.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the settings of an existing Cloud9 development environment.
    public func updateEnvironment(_ input: UpdateEnvironmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEnvironmentResult {
        return try await self.client.execute(operation: "UpdateEnvironment", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the settings of an existing environment member for an Cloud9 development environment.
    public func updateEnvironmentMembership(_ input: UpdateEnvironmentMembershipRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEnvironmentMembershipResult {
        return try await self.client.execute(operation: "UpdateEnvironmentMembership", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Cloud9 {
    /// Gets information about environment members for an Cloud9 development environment.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeEnvironmentMembershipsPaginator(
        _ input: DescribeEnvironmentMembershipsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeEnvironmentMembershipsRequest, DescribeEnvironmentMembershipsResult> {
        return .init(
            input: input,
            command: self.describeEnvironmentMemberships,
            inputKey: \DescribeEnvironmentMembershipsRequest.nextToken,
            outputKey: \DescribeEnvironmentMembershipsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Gets a list of Cloud9 development environment identifiers.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEnvironmentsPaginator(
        _ input: ListEnvironmentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEnvironmentsRequest, ListEnvironmentsResult> {
        return .init(
            input: input,
            command: self.listEnvironments,
            inputKey: \ListEnvironmentsRequest.nextToken,
            outputKey: \ListEnvironmentsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
