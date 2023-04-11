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
extension Route53RecoveryControlConfig {
    // MARK: Async API Calls

    /// Create a new cluster. A cluster is a set of redundant Regional endpoints against which you can run API calls to update or get the state of one or more routing controls. Each cluster has a name, status, Amazon Resource Name (ARN), and an array of the five cluster endpoints (one for each supported Amazon Web Services Region) that you can use with API calls to the cluster data plane.
    public func createCluster(_ input: CreateClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        return try await self.client.execute(operation: "CreateCluster", path: "/cluster", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new control panel. A control panel represents a group of routing controls that can be changed together in a single transaction. You can use a control panel to centrally view the operational status of applications across your organization, and trigger multi-app failovers in a single transaction, for example, to fail over an Availability Zone or Amazon Web Services Region.
    public func createControlPanel(_ input: CreateControlPanelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateControlPanelResponse {
        return try await self.client.execute(operation: "CreateControlPanel", path: "/controlpanel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new routing control. A routing control has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control traffic routing. To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.
    public func createRoutingControl(_ input: CreateRoutingControlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRoutingControlResponse {
        return try await self.client.execute(operation: "CreateRoutingControl", path: "/routingcontrol", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a safety rule in a control panel. Safety rules let you add safeguards around changing routing control states, and for enabling and disabling routing controls, to help prevent unexpected outcomes. There are two types of safety rules: assertion rules and gating rules. Assertion rule: An assertion rule enforces that, when you change a routing control state, that a certain criteria is met. For example, the criteria might be that at least one routing control state is On after the transaction so that traffic continues to flow to at least one cell for the application. This ensures that you avoid a fail-open scenario. Gating rule: A gating rule lets you configure a gating routing control as an overall "on/off" switch for a group of routing controls. Or, you can configure more complex gating scenarios, for example by configuring multiple gating routing controls. For more information, see Safety rules in the Amazon Route 53 Application Recovery Controller Developer Guide.
    public func createSafetyRule(_ input: CreateSafetyRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSafetyRuleResponse {
        return try await self.client.execute(operation: "CreateSafetyRule", path: "/safetyrule", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a cluster.
    public func deleteCluster(_ input: DeleteClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterResponse {
        return try await self.client.execute(operation: "DeleteCluster", path: "/cluster/{ClusterArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a control panel.
    public func deleteControlPanel(_ input: DeleteControlPanelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteControlPanelResponse {
        return try await self.client.execute(operation: "DeleteControlPanel", path: "/controlpanel/{ControlPanelArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a routing control.
    public func deleteRoutingControl(_ input: DeleteRoutingControlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRoutingControlResponse {
        return try await self.client.execute(operation: "DeleteRoutingControl", path: "/routingcontrol/{RoutingControlArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a safety rule./&gt;
    public func deleteSafetyRule(_ input: DeleteSafetyRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSafetyRuleResponse {
        return try await self.client.execute(operation: "DeleteSafetyRule", path: "/safetyrule/{SafetyRuleArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Display the details about a cluster. The response includes the cluster name, endpoints, status, and Amazon Resource Name (ARN).
    public func describeCluster(_ input: DescribeClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterResponse {
        return try await self.client.execute(operation: "DescribeCluster", path: "/cluster/{ClusterArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays details about a control panel.
    public func describeControlPanel(_ input: DescribeControlPanelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeControlPanelResponse {
        return try await self.client.execute(operation: "DescribeControlPanel", path: "/controlpanel/{ControlPanelArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays details about a routing control. A routing control has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control routing. To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.
    public func describeRoutingControl(_ input: DescribeRoutingControlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoutingControlResponse {
        return try await self.client.execute(operation: "DescribeRoutingControl", path: "/routingcontrol/{RoutingControlArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a safety rule.
    public func describeSafetyRule(_ input: DescribeSafetyRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSafetyRuleResponse {
        return try await self.client.execute(operation: "DescribeSafetyRule", path: "/safetyrule/{SafetyRuleArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of all Amazon Route 53 health checks associated with a specific routing control.
    public func listAssociatedRoute53HealthChecks(_ input: ListAssociatedRoute53HealthChecksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssociatedRoute53HealthChecksResponse {
        return try await self.client.execute(operation: "ListAssociatedRoute53HealthChecks", path: "/routingcontrol/{RoutingControlArn}/associatedRoute53HealthChecks", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of all the clusters in an account.
    public func listClusters(_ input: ListClustersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListClustersResponse {
        return try await self.client.execute(operation: "ListClusters", path: "/cluster", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of control panels in an account or in a cluster.
    public func listControlPanels(_ input: ListControlPanelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListControlPanelsResponse {
        return try await self.client.execute(operation: "ListControlPanels", path: "/controlpanels", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of routing controls for a control panel. A routing control is an Amazon Route 53 Application Recovery Controller construct that has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control routing.
    public func listRoutingControls(_ input: ListRoutingControlsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRoutingControlsResponse {
        return try await self.client.execute(operation: "ListRoutingControls", path: "/controlpanel/{ControlPanelArn}/routingcontrols", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the safety rules (the assertion rules and gating rules) that you've defined for the routing controls in a control panel.
    public func listSafetyRules(_ input: ListSafetyRulesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSafetyRulesResponse {
        return try await self.client.execute(operation: "ListSafetyRules", path: "/controlpanel/{ControlPanelArn}/safetyrules", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a tag to a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a control panel. The only update you can make to a control panel is to change the name of the control panel.
    public func updateControlPanel(_ input: UpdateControlPanelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateControlPanelResponse {
        return try await self.client.execute(operation: "UpdateControlPanel", path: "/controlpanel", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a routing control. You can only update the name of the routing control. To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.
    public func updateRoutingControl(_ input: UpdateRoutingControlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRoutingControlResponse {
        return try await self.client.execute(operation: "UpdateRoutingControl", path: "/routingcontrol", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a safety rule (an assertion rule or gating rule). You can only update the name and the waiting period for a safety rule. To make other updates, delete the safety rule and create a new one.
    public func updateSafetyRule(_ input: UpdateSafetyRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSafetyRuleResponse {
        return try await self.client.execute(operation: "UpdateSafetyRule", path: "/safetyrule", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Route53RecoveryControlConfig {
    /// Returns an array of all Amazon Route 53 health checks associated with a specific routing control.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAssociatedRoute53HealthChecksPaginator(
        _ input: ListAssociatedRoute53HealthChecksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAssociatedRoute53HealthChecksRequest, ListAssociatedRoute53HealthChecksResponse> {
        return .init(
            input: input,
            command: self.listAssociatedRoute53HealthChecks,
            inputKey: \ListAssociatedRoute53HealthChecksRequest.nextToken,
            outputKey: \ListAssociatedRoute53HealthChecksResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns an array of all the clusters in an account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listClustersPaginator(
        _ input: ListClustersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListClustersRequest, ListClustersResponse> {
        return .init(
            input: input,
            command: self.listClusters,
            inputKey: \ListClustersRequest.nextToken,
            outputKey: \ListClustersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns an array of control panels in an account or in a cluster.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listControlPanelsPaginator(
        _ input: ListControlPanelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListControlPanelsRequest, ListControlPanelsResponse> {
        return .init(
            input: input,
            command: self.listControlPanels,
            inputKey: \ListControlPanelsRequest.nextToken,
            outputKey: \ListControlPanelsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns an array of routing controls for a control panel. A routing control is an Amazon Route 53 Application Recovery Controller construct that has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control routing.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRoutingControlsPaginator(
        _ input: ListRoutingControlsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRoutingControlsRequest, ListRoutingControlsResponse> {
        return .init(
            input: input,
            command: self.listRoutingControls,
            inputKey: \ListRoutingControlsRequest.nextToken,
            outputKey: \ListRoutingControlsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// List the safety rules (the assertion rules and gating rules) that you've defined for the routing controls in a control panel.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSafetyRulesPaginator(
        _ input: ListSafetyRulesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSafetyRulesRequest, ListSafetyRulesResponse> {
        return .init(
            input: input,
            command: self.listSafetyRules,
            inputKey: \ListSafetyRulesRequest.nextToken,
            outputKey: \ListSafetyRulesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Route53RecoveryControlConfig {
    public func waitUntilClusterCreated(
        _ input: DescribeClusterRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("cluster.status", expected: "DEPLOYED")),
                .init(state: .retry, matcher: try! JMESPathMatcher("cluster.status", expected: "PENDING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerException")),
            ],
            minDelayTime: .seconds(5),
            command: self.describeCluster
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilClusterDeleted(
        _ input: DescribeClusterRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
                .init(state: .retry, matcher: try! JMESPathMatcher("cluster.status", expected: "PENDING_DELETION")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerException")),
            ],
            minDelayTime: .seconds(5),
            command: self.describeCluster
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilControlPanelCreated(
        _ input: DescribeControlPanelRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("controlPanel.status", expected: "DEPLOYED")),
                .init(state: .retry, matcher: try! JMESPathMatcher("controlPanel.status", expected: "PENDING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerException")),
            ],
            minDelayTime: .seconds(5),
            command: self.describeControlPanel
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilControlPanelDeleted(
        _ input: DescribeControlPanelRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
                .init(state: .retry, matcher: try! JMESPathMatcher("controlPanel.status", expected: "PENDING_DELETION")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerException")),
            ],
            minDelayTime: .seconds(5),
            command: self.describeControlPanel
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilRoutingControlCreated(
        _ input: DescribeRoutingControlRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("routingControl.status", expected: "DEPLOYED")),
                .init(state: .retry, matcher: try! JMESPathMatcher("routingControl.status", expected: "PENDING")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerException")),
            ],
            minDelayTime: .seconds(5),
            command: self.describeRoutingControl
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilRoutingControlDeleted(
        _ input: DescribeRoutingControlRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
                .init(state: .retry, matcher: try! JMESPathMatcher("routingControl.status", expected: "PENDING_DELETION")),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("InternalServerException")),
            ],
            minDelayTime: .seconds(5),
            command: self.describeRoutingControl
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
