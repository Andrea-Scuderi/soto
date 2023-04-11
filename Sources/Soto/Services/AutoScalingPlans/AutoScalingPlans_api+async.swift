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
extension AutoScalingPlans {
    // MARK: Async API Calls

    /// Creates a scaling plan.
    public func createScalingPlan(_ input: CreateScalingPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScalingPlanResponse {
        return try await self.client.execute(operation: "CreateScalingPlan", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified scaling plan. Deleting a scaling plan deletes the underlying ScalingInstruction for all of the scalable resources that are covered by the plan. If the plan has launched resources or has scaling activities in progress, you must delete those resources separately.
    public func deleteScalingPlan(_ input: DeleteScalingPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScalingPlanResponse {
        return try await self.client.execute(operation: "DeleteScalingPlan", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the scalable resources in the specified scaling plan.
    public func describeScalingPlanResources(_ input: DescribeScalingPlanResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScalingPlanResourcesResponse {
        return try await self.client.execute(operation: "DescribeScalingPlanResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes one or more of your scaling plans.
    public func describeScalingPlans(_ input: DescribeScalingPlansRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScalingPlansResponse {
        return try await self.client.execute(operation: "DescribeScalingPlans", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the forecast data for a scalable resource. Capacity forecasts are represented as predicted values, or data points, that are calculated using historical data points from a specified CloudWatch load metric. Data points are available for up to 56 days.
    public func getScalingPlanResourceForecastData(_ input: GetScalingPlanResourceForecastDataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetScalingPlanResourceForecastDataResponse {
        return try await self.client.execute(operation: "GetScalingPlanResourceForecastData", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified scaling plan. You cannot update a scaling plan if it is in the process of being created, updated, or deleted.
    public func updateScalingPlan(_ input: UpdateScalingPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateScalingPlanResponse {
        return try await self.client.execute(operation: "UpdateScalingPlan", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}
