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
extension Rbin {
    // MARK: Async API Calls

    /// Creates a Recycle Bin retention rule. For more information, see  Create Recycle Bin retention rules in the Amazon Elastic Compute Cloud User Guide.
    public func createRule(_ input: CreateRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRuleResponse {
        return try await self.client.execute(operation: "CreateRule", path: "/rules", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Recycle Bin retention rule. For more information, see  Delete Recycle Bin retention rules in the Amazon Elastic Compute Cloud User Guide.
    public func deleteRule(_ input: DeleteRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuleResponse {
        return try await self.client.execute(operation: "DeleteRule", path: "/rules/{Identifier}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about a Recycle Bin retention rule.
    public func getRule(_ input: GetRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRuleResponse {
        return try await self.client.execute(operation: "GetRule", path: "/rules/{Identifier}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the Recycle Bin retention rules in the Region.
    public func listRules(_ input: ListRulesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRulesResponse {
        return try await self.client.execute(operation: "ListRules", path: "/list-rules", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags assigned to a retention rule.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Locks a retention rule. A locked retention rule can't be modified or deleted.
    public func lockRule(_ input: LockRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LockRuleResponse {
        return try await self.client.execute(operation: "LockRule", path: "/rules/{Identifier}/lock", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Assigns tags to the specified retention rule.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Unlocks a retention rule. After a retention rule is unlocked, it can be modified or deleted  only after the unlock delay period expires.
    public func unlockRule(_ input: UnlockRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnlockRuleResponse {
        return try await self.client.execute(operation: "UnlockRule", path: "/rules/{Identifier}/unlock", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Unassigns a tag from a retention rule.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing Recycle Bin retention rule. You can update a retention rule's description,  resource tags, and retention period at any time after creation. You can't update a retention rule's  resource type after creation. For more information, see  Update Recycle Bin retention rules in the Amazon Elastic Compute Cloud User Guide.
    public func updateRule(_ input: UpdateRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRuleResponse {
        return try await self.client.execute(operation: "UpdateRule", path: "/rules/{Identifier}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Rbin {
    /// Lists the Recycle Bin retention rules in the Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRulesPaginator(
        _ input: ListRulesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRulesRequest, ListRulesResponse> {
        return .init(
            input: input,
            command: self.listRules,
            inputKey: \ListRulesRequest.nextToken,
            outputKey: \ListRulesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
