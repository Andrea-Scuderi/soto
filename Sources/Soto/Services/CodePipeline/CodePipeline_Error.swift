//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

/// Error enum for CodePipeline
public struct CodePipelineErrorType: AWSErrorType {
    enum Code: String {
        case actionNotFoundException = "ActionNotFoundException"
        case actionTypeNotFoundException = "ActionTypeNotFoundException"
        case approvalAlreadyCompletedException = "ApprovalAlreadyCompletedException"
        case concurrentModificationException = "ConcurrentModificationException"
        case conflictException = "ConflictException"
        case duplicatedStopRequestException = "DuplicatedStopRequestException"
        case invalidActionDeclarationException = "InvalidActionDeclarationException"
        case invalidApprovalTokenException = "InvalidApprovalTokenException"
        case invalidArnException = "InvalidArnException"
        case invalidBlockerDeclarationException = "InvalidBlockerDeclarationException"
        case invalidClientTokenException = "InvalidClientTokenException"
        case invalidJobException = "InvalidJobException"
        case invalidJobStateException = "InvalidJobStateException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidNonceException = "InvalidNonceException"
        case invalidStageDeclarationException = "InvalidStageDeclarationException"
        case invalidStructureException = "InvalidStructureException"
        case invalidTagsException = "InvalidTagsException"
        case invalidWebhookAuthenticationParametersException = "InvalidWebhookAuthenticationParametersException"
        case invalidWebhookFilterPatternException = "InvalidWebhookFilterPatternException"
        case jobNotFoundException = "JobNotFoundException"
        case limitExceededException = "LimitExceededException"
        case notLatestPipelineExecutionException = "NotLatestPipelineExecutionException"
        case outputVariablesSizeExceededException = "OutputVariablesSizeExceededException"
        case pipelineExecutionNotFoundException = "PipelineExecutionNotFoundException"
        case pipelineExecutionNotStoppableException = "PipelineExecutionNotStoppableException"
        case pipelineNameInUseException = "PipelineNameInUseException"
        case pipelineNotFoundException = "PipelineNotFoundException"
        case pipelineVersionNotFoundException = "PipelineVersionNotFoundException"
        case requestFailedException = "RequestFailedException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case stageNotFoundException = "StageNotFoundException"
        case stageNotRetryableException = "StageNotRetryableException"
        case tooManyTagsException = "TooManyTagsException"
        case validationException = "ValidationException"
        case webhookNotFoundException = "WebhookNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CodePipeline
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// The specified action cannot be found.
    public static var actionNotFoundException: Self { .init(.actionNotFoundException) }
    /// The specified action type cannot be found.
    public static var actionTypeNotFoundException: Self { .init(.actionTypeNotFoundException) }
    /// The approval action has already been approved or rejected.
    public static var approvalAlreadyCompletedException: Self { .init(.approvalAlreadyCompletedException) }
    /// Unable to modify the tag due to a simultaneous update request.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// Your request cannot be handled because the pipeline is busy handling ongoing activities. Try again later.
    public static var conflictException: Self { .init(.conflictException) }
    /// The pipeline execution is already in a Stopping state. If you already chose to stop and wait, you cannot make that request again. You can choose to stop and abandon now, but be aware that this option can lead to failed tasks or out of sequence tasks. If you already chose to stop and abandon, you cannot make that request again.
    public static var duplicatedStopRequestException: Self { .init(.duplicatedStopRequestException) }
    /// The action declaration was specified in an invalid format.
    public static var invalidActionDeclarationException: Self { .init(.invalidActionDeclarationException) }
    /// The approval request already received a response or has expired.
    public static var invalidApprovalTokenException: Self { .init(.invalidApprovalTokenException) }
    /// The specified resource ARN is invalid.
    public static var invalidArnException: Self { .init(.invalidArnException) }
    /// Reserved for future use.
    public static var invalidBlockerDeclarationException: Self { .init(.invalidBlockerDeclarationException) }
    /// The client token was specified in an invalid format
    public static var invalidClientTokenException: Self { .init(.invalidClientTokenException) }
    /// The job was specified in an invalid format or cannot be found.
    public static var invalidJobException: Self { .init(.invalidJobException) }
    /// The job state was specified in an invalid format.
    public static var invalidJobStateException: Self { .init(.invalidJobStateException) }
    /// The next token was specified in an invalid format. Make sure that the next token you provide is the token returned by a previous call.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// The nonce was specified in an invalid format.
    public static var invalidNonceException: Self { .init(.invalidNonceException) }
    /// The stage declaration was specified in an invalid format.
    public static var invalidStageDeclarationException: Self { .init(.invalidStageDeclarationException) }
    /// The structure was specified in an invalid format.
    public static var invalidStructureException: Self { .init(.invalidStructureException) }
    /// The specified resource tags are invalid.
    public static var invalidTagsException: Self { .init(.invalidTagsException) }
    /// The specified authentication type is in an invalid format.
    public static var invalidWebhookAuthenticationParametersException: Self { .init(.invalidWebhookAuthenticationParametersException) }
    /// The specified event filter rule is in an invalid format.
    public static var invalidWebhookFilterPatternException: Self { .init(.invalidWebhookFilterPatternException) }
    /// The job was specified in an invalid format or cannot be found.
    public static var jobNotFoundException: Self { .init(.jobNotFoundException) }
    /// The number of pipelines associated with the AWS account has exceeded the limit allowed for the account.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The stage has failed in a later run of the pipeline and the pipelineExecutionId associated with the request is out of date.
    public static var notLatestPipelineExecutionException: Self { .init(.notLatestPipelineExecutionException) }
    /// Exceeded the total size limit for all variables in the pipeline.
    public static var outputVariablesSizeExceededException: Self { .init(.outputVariablesSizeExceededException) }
    /// The pipeline execution was specified in an invalid format or cannot be found, or an execution ID does not belong to the specified pipeline.
    public static var pipelineExecutionNotFoundException: Self { .init(.pipelineExecutionNotFoundException) }
    /// Unable to stop the pipeline execution. The execution might already be in a Stopped state, or it might no longer be in progress.
    public static var pipelineExecutionNotStoppableException: Self { .init(.pipelineExecutionNotStoppableException) }
    /// The specified pipeline name is already in use.
    public static var pipelineNameInUseException: Self { .init(.pipelineNameInUseException) }
    /// The pipeline was specified in an invalid format or cannot be found.
    public static var pipelineNotFoundException: Self { .init(.pipelineNotFoundException) }
    /// The pipeline version was specified in an invalid format or cannot be found.
    public static var pipelineVersionNotFoundException: Self { .init(.pipelineVersionNotFoundException) }
    /// The request has failed because of an unknown error, exception, or failure.
    public static var requestFailedException: Self { .init(.requestFailedException) }
    /// The resource was specified in an invalid format.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The stage was specified in an invalid format or cannot be found.
    public static var stageNotFoundException: Self { .init(.stageNotFoundException) }
    /// Unable to retry. The pipeline structure or stage state might have changed while actions awaited retry, or the stage contains no failed actions.
    public static var stageNotRetryableException: Self { .init(.stageNotRetryableException) }
    /// The tags limit for a resource has been exceeded.
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
    /// The validation was specified in an invalid format.
    public static var validationException: Self { .init(.validationException) }
    /// The specified webhook was entered in an invalid format or cannot be found.
    public static var webhookNotFoundException: Self { .init(.webhookNotFoundException) }
}

extension CodePipelineErrorType: Equatable {
    public static func == (lhs: CodePipelineErrorType, rhs: CodePipelineErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CodePipelineErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
