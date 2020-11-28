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

/// Service object for interacting with AWS AugmentedAIRuntime service.
///
///  Amazon Augmented AI is in preview release and is subject to change. We do not recommend using this product in production environments.  Amazon Augmented AI (Amazon A2I) adds the benefit of human judgment to any machine learning application. When an AI application can't evaluate data with a high degree of confidence, human reviewers can take over. This human review is called a human review workflow. To create and start a human review workflow, you need three resources: a worker task template, a flow definition, and a human loop. For information about these resources and prerequisites for using Amazon A2I, see Get Started with Amazon Augmented AI in the Amazon SageMaker Developer Guide. This API reference includes information about API actions and data types that you can use to interact with Amazon A2I programmatically. Use this guide to:   Start a human loop with the StartHumanLoop operation when using Amazon A2I with a custom task type. To learn more about the difference between custom and built-in task types, see Use Task Types . To learn how to start a human loop using this API, see Create and Start a Human Loop for a Custom Task Type  in the Amazon SageMaker Developer Guide.   Manage your human loops. You can list all human loops that you have created, describe individual human loops, and stop and delete human loops. To learn more, see Monitor and Manage Your Human Loop  in the Amazon SageMaker Developer Guide.   Amazon A2I integrates APIs from various AWS services to create and start human review workflows for those services. To learn how Amazon A2I uses these APIs, see Use APIs in Amazon A2I in the Amazon SageMaker Developer Guide.
public struct AugmentedAIRuntime: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the AugmentedAIRuntime client
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
            service: "a2i-runtime.sagemaker",
            signingName: "sagemaker",
            serviceProtocol: .restjson,
            apiVersion: "2019-11-07",
            endpoint: endpoint,
            errorType: AugmentedAIRuntimeErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Deletes the specified human loop for a flow definition.
    public func deleteHumanLoop(_ input: DeleteHumanLoopRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteHumanLoopResponse> {
        return self.client.execute(operation: "DeleteHumanLoop", path: "/human-loops/{HumanLoopName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the specified human loop.
    public func describeHumanLoop(_ input: DescribeHumanLoopRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHumanLoopResponse> {
        return self.client.execute(operation: "DescribeHumanLoop", path: "/human-loops/{HumanLoopName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about human loops, given the specified parameters. If a human loop was deleted, it will not be included.
    public func listHumanLoops(_ input: ListHumanLoopsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListHumanLoopsResponse> {
        return self.client.execute(operation: "ListHumanLoops", path: "/human-loops", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a human loop, provided that at least one activation condition is met.
    public func startHumanLoop(_ input: StartHumanLoopRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartHumanLoopResponse> {
        return self.client.execute(operation: "StartHumanLoop", path: "/human-loops", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops the specified human loop.
    public func stopHumanLoop(_ input: StopHumanLoopRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopHumanLoopResponse> {
        return self.client.execute(operation: "StopHumanLoop", path: "/human-loops/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension AugmentedAIRuntime {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: AugmentedAIRuntime, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
