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
extension IoTEvents {
    // MARK: Async API Calls

    /// Creates an alarm model to monitor an AWS IoT Events input attribute. You can use the alarm to get notified when the value is outside a specified range. For more information, see Create an alarm model in the AWS IoT Events Developer Guide.
    public func createAlarmModel(_ input: CreateAlarmModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAlarmModelResponse {
        return try await self.client.execute(operation: "CreateAlarmModel", path: "/alarm-models", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a detector model.
    public func createDetectorModel(_ input: CreateDetectorModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDetectorModelResponse {
        return try await self.client.execute(operation: "CreateDetectorModel", path: "/detector-models", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an input.
    public func createInput(_ input: CreateInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInputResponse {
        return try await self.client.execute(operation: "CreateInput", path: "/inputs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an alarm model. Any alarm instances that were created based on this alarm model are also deleted. This action can't be undone.
    public func deleteAlarmModel(_ input: DeleteAlarmModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAlarmModelResponse {
        return try await self.client.execute(operation: "DeleteAlarmModel", path: "/alarm-models/{alarmModelName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a detector model. Any active instances of the detector model are also deleted.
    public func deleteDetectorModel(_ input: DeleteDetectorModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDetectorModelResponse {
        return try await self.client.execute(operation: "DeleteDetectorModel", path: "/detector-models/{detectorModelName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an input.
    public func deleteInput(_ input: DeleteInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInputResponse {
        return try await self.client.execute(operation: "DeleteInput", path: "/inputs/{inputName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about an alarm model. If you don't specify a value for the alarmModelVersion parameter, the latest version is returned.
    public func describeAlarmModel(_ input: DescribeAlarmModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmModelResponse {
        return try await self.client.execute(operation: "DescribeAlarmModel", path: "/alarm-models/{alarmModelName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a detector model. If the version parameter is not specified, information about the latest version is returned.
    public func describeDetectorModel(_ input: DescribeDetectorModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDetectorModelResponse {
        return try await self.client.execute(operation: "DescribeDetectorModel", path: "/detector-models/{detectorModelName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves runtime information about a detector model analysis.  After AWS IoT Events starts analyzing your detector model, you have up to 24 hours to retrieve the analysis results.
    public func describeDetectorModelAnalysis(_ input: DescribeDetectorModelAnalysisRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDetectorModelAnalysisResponse {
        return try await self.client.execute(operation: "DescribeDetectorModelAnalysis", path: "/analysis/detector-models/{analysisId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes an input.
    public func describeInput(_ input: DescribeInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInputResponse {
        return try await self.client.execute(operation: "DescribeInput", path: "/inputs/{inputName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the current settings of the AWS IoT Events logging options.
    public func describeLoggingOptions(_ input: DescribeLoggingOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoggingOptionsResponse {
        return try await self.client.execute(operation: "DescribeLoggingOptions", path: "/logging", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves one or more analysis results of the detector model.  After AWS IoT Events starts analyzing your detector model, you have up to 24 hours to retrieve the analysis results.
    public func getDetectorModelAnalysisResults(_ input: GetDetectorModelAnalysisResultsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDetectorModelAnalysisResultsResponse {
        return try await self.client.execute(operation: "GetDetectorModelAnalysisResults", path: "/analysis/detector-models/{analysisId}/results", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the versions of an alarm model. The operation returns only the metadata associated with each alarm model version.
    public func listAlarmModelVersions(_ input: ListAlarmModelVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAlarmModelVersionsResponse {
        return try await self.client.execute(operation: "ListAlarmModelVersions", path: "/alarm-models/{alarmModelName}/versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the alarm models that you created. The operation returns only the metadata associated with each alarm model.
    public func listAlarmModels(_ input: ListAlarmModelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAlarmModelsResponse {
        return try await self.client.execute(operation: "ListAlarmModels", path: "/alarm-models", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the versions of a detector model. Only the metadata associated with each detector model version is returned.
    public func listDetectorModelVersions(_ input: ListDetectorModelVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDetectorModelVersionsResponse {
        return try await self.client.execute(operation: "ListDetectorModelVersions", path: "/detector-models/{detectorModelName}/versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the detector models you have created. Only the metadata associated with each detector model is returned.
    public func listDetectorModels(_ input: ListDetectorModelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDetectorModelsResponse {
        return try await self.client.execute(operation: "ListDetectorModels", path: "/detector-models", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists one or more input routings.
    public func listInputRoutings(_ input: ListInputRoutingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInputRoutingsResponse {
        return try await self.client.execute(operation: "ListInputRoutings", path: "/input-routings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the inputs you have created.
    public func listInputs(_ input: ListInputsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInputsResponse {
        return try await self.client.execute(operation: "ListInputs", path: "/inputs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags (metadata) you have assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets or updates the AWS IoT Events logging options. If you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. If you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy), it takes up to five minutes for that change to take effect.
    public func putLoggingOptions(_ input: PutLoggingOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "PutLoggingOptions", path: "/logging", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Performs an analysis of your detector model. For more information,  see Troubleshooting a detector model  in the AWS IoT Events Developer Guide.
    public func startDetectorModelAnalysis(_ input: StartDetectorModelAnalysisRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartDetectorModelAnalysisResponse {
        return try await self.client.execute(operation: "StartDetectorModelAnalysis", path: "/analysis/detector-models", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the given tags (metadata) from the resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an alarm model. Any alarms that were created based on the previous version are deleted and then created again as new data arrives.
    public func updateAlarmModel(_ input: UpdateAlarmModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAlarmModelResponse {
        return try await self.client.execute(operation: "UpdateAlarmModel", path: "/alarm-models/{alarmModelName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a detector model. Detectors (instances) spawned by the previous version are deleted and then re-created as new inputs arrive.
    public func updateDetectorModel(_ input: UpdateDetectorModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDetectorModelResponse {
        return try await self.client.execute(operation: "UpdateDetectorModel", path: "/detector-models/{detectorModelName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an input.
    public func updateInput(_ input: UpdateInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateInputResponse {
        return try await self.client.execute(operation: "UpdateInput", path: "/inputs/{inputName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}
