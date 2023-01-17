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

/// Service object for interacting with AWS ConnectParticipant service.
///
/// Amazon Connect is a cloud-based contact center solution that makes it easy to set up and manage a customer contact center. Amazon Connect enables customer contacts through voice or chat. Use the Amazon Connect Participant Service to manage chat participants, such as agents and customers.
public struct ConnectParticipant: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ConnectParticipant client
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
            service: "participant.connect",
            signingName: "execute-api",
            serviceProtocol: .restjson,
            apiVersion: "2018-09-07",
            endpoint: endpoint,
            serviceEndpoints: [
                "us-gov-west-1": "participant.connect.us-gov-west-1.amazonaws.com"
            ],
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "us-east-1": "participant.connect-fips.us-east-1.amazonaws.com",
                    "us-west-2": "participant.connect-fips.us-west-2.amazonaws.com"
                ])
            ],
            errorType: ConnectParticipantErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Allows you to confirm that the attachment has been uploaded using the pre-signed URL provided in StartAttachmentUpload API.    ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    public func completeAttachmentUpload(_ input: CompleteAttachmentUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompleteAttachmentUploadResponse> {
        return self.client.execute(operation: "CompleteAttachmentUpload", path: "/participant/complete-attachment-upload", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates the participant's connection.    ParticipantToken is used for invoking this API instead of ConnectionToken.  The participant token is valid for the lifetime of the participant – until they are part of a contact. The response URL for WEBSOCKET Type has a connect expiry timeout of 100s. Clients must manually connect to the returned websocket URL and subscribe to the desired topic.  For chat, you need to publish the following on the established websocket connection:  {"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}  Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter, clients need to call this API again to obtain a new websocket URL and perform the same steps as before.  Message streaming support: This API can also be used together with the StartContactStreaming API to create a participant connection for chat contacts that are not using a websocket. For more information about message streaming, Enable real-time chat message streaming in the Amazon Connect Administrator Guide.  Feature specifications: For information about feature specifications, such as the allowed number of open websocket connections per participant, see Feature specifications in the Amazon Connect Administrator Guide.   The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    public func createParticipantConnection(_ input: CreateParticipantConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateParticipantConnectionResponse> {
        return self.client.execute(operation: "CreateParticipantConnection", path: "/participant/connection", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disconnects a participant.    ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    public func disconnectParticipant(_ input: DisconnectParticipantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisconnectParticipantResponse> {
        return self.client.execute(operation: "DisconnectParticipant", path: "/participant/disconnect", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a pre-signed URL for download of a completed attachment. This is an asynchronous API for use with active contacts.   ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    public func getAttachment(_ input: GetAttachmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAttachmentResponse> {
        return self.client.execute(operation: "GetAttachment", path: "/participant/attachment", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a transcript of the session, including details about any attachments.    ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    public func getTranscript(_ input: GetTranscriptRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTranscriptResponse> {
        return self.client.execute(operation: "GetTranscript", path: "/participant/transcript", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends an event.    ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    public func sendEvent(_ input: SendEventRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendEventResponse> {
        return self.client.execute(operation: "SendEvent", path: "/participant/event", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends a message.   ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    public func sendMessage(_ input: SendMessageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendMessageResponse> {
        return self.client.execute(operation: "SendMessage", path: "/participant/message", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a pre-signed Amazon S3 URL in response for uploading the file directly to S3.   ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
    public func startAttachmentUpload(_ input: StartAttachmentUploadRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartAttachmentUploadResponse> {
        return self.client.execute(operation: "StartAttachmentUpload", path: "/participant/start-attachment-upload", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ConnectParticipant {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ConnectParticipant, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension ConnectParticipant {
    /// Retrieves a transcript of the session, including details about any attachments.    ConnectionToken is used for invoking this API instead of ParticipantToken.  The Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.
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
    public func getTranscriptPaginator<Result>(
        _ input: GetTranscriptRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetTranscriptResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.getTranscript,
            inputKey: \GetTranscriptRequest.nextToken,
            outputKey: \GetTranscriptResponse.nextToken,
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
    public func getTranscriptPaginator(
        _ input: GetTranscriptRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetTranscriptResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.getTranscript,
            inputKey: \GetTranscriptRequest.nextToken,
            outputKey: \GetTranscriptResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ConnectParticipant.GetTranscriptRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ConnectParticipant.GetTranscriptRequest {
        return .init(
            connectionToken: self.connectionToken,
            contactId: self.contactId,
            maxResults: self.maxResults,
            nextToken: token,
            scanDirection: self.scanDirection,
            sortOrder: self.sortOrder,
            startPosition: self.startPosition
        )
    }
}
