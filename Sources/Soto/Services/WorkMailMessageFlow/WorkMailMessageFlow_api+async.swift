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
extension WorkMailMessageFlow {
    // MARK: Async API Calls

    /// Retrieves the raw content of an in-transit email message, in MIME format.
    public func getRawMessageContent(_ input: GetRawMessageContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRawMessageContentResponse {
        return try await self.client.execute(operation: "GetRawMessageContent", path: "/messages/{messageId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the raw content of an in-transit email message, in MIME format. This example describes how to update in-transit email message. For more information and examples for using this API, see   Updating message content with AWS Lambda.    Updates to an in-transit message only appear when you call PutRawMessageContent from an AWS Lambda function  configured with a  synchronous  Run Lambda rule. If you call PutRawMessageContent on a delivered or sent message, the message remains unchanged, even though GetRawMessageContent returns an updated  message.
    public func putRawMessageContent(_ input: PutRawMessageContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutRawMessageContentResponse {
        return try await self.client.execute(operation: "PutRawMessageContent", path: "/messages/{messageId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    // MARK: Streaming Async API Calls

    /// Retrieves the raw content of an in-transit email message, in MIME format.
    public func getRawMessageContentStreaming(_ input: GetRawMessageContentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop) -> EventLoopFuture<Void>) async throws -> GetRawMessageContentResponse {
        return try await self.client.execute(operation: "GetRawMessageContent", path: "/messages/{messageId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop, stream: stream)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
