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
extension DAX {
    // MARK: Async API Calls

    /// Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.
    public func createCluster(_ input: CreateClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        return try await self.client.execute(operation: "CreateCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new parameter group. A parameter group is a collection of parameters that you apply to all of the nodes in a DAX cluster.
    public func createParameterGroup(_ input: CreateParameterGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateParameterGroupResponse {
        return try await self.client.execute(operation: "CreateParameterGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new subnet group.
    public func createSubnetGroup(_ input: CreateSubnetGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubnetGroupResponse {
        return try await self.client.execute(operation: "CreateSubnetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more nodes from a DAX cluster.  You cannot use DecreaseReplicationFactor to remove the last node in a DAX cluster. If you need to do this, use DeleteCluster instead.
    public func decreaseReplicationFactor(_ input: DecreaseReplicationFactorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DecreaseReplicationFactorResponse {
        return try await self.client.execute(operation: "DecreaseReplicationFactor", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a previously provisioned DAX cluster. DeleteCluster deletes all associated nodes, node endpoints and the DAX cluster itself. When you receive a successful response from this action, DAX immediately begins deleting the cluster; you cannot cancel or revert this action.
    public func deleteCluster(_ input: DeleteClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterResponse {
        return try await self.client.execute(operation: "DeleteCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any DAX clusters.
    public func deleteParameterGroup(_ input: DeleteParameterGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteParameterGroupResponse {
        return try await self.client.execute(operation: "DeleteParameterGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a subnet group.  You cannot delete a subnet group if it is associated with any DAX clusters.
    public func deleteSubnetGroup(_ input: DeleteSubnetGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSubnetGroupResponse {
        return try await self.client.execute(operation: "DeleteSubnetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied. If the cluster is in the CREATING state, only cluster level information will be displayed until all of the nodes are successfully provisioned. If the cluster is in the DELETING state, only cluster level information will be displayed. If nodes are currently being added to the DAX cluster, node endpoint information and creation time for the additional nodes will not be displayed until they are completely provisioned. When the DAX cluster state is available, the cluster is ready for use. If nodes are currently being removed from the DAX cluster, no endpoint information for the removed nodes is displayed.
    public func describeClusters(_ input: DescribeClustersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        return try await self.client.execute(operation: "DescribeClusters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the default system parameter information for the DAX caching software.
    public func describeDefaultParameters(_ input: DescribeDefaultParametersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefaultParametersResponse {
        return try await self.client.execute(operation: "DescribeDefaultParameters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns events related to DAX clusters and parameter groups. You can obtain events specific to a particular DAX cluster or parameter group by providing the name as a parameter. By default, only the events occurring within the last 24 hours are returned; however, you can retrieve up to 14 days' worth of events if necessary.
    public func describeEvents(_ input: DescribeEventsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEventsResponse {
        return try await self.client.execute(operation: "DescribeEvents", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of parameter group descriptions. If a parameter group name is specified, the list will contain only the descriptions for that group.
    public func describeParameterGroups(_ input: DescribeParameterGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParameterGroupsResponse {
        return try await self.client.execute(operation: "DescribeParameterGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the detailed parameter list for a particular parameter group.
    public func describeParameters(_ input: DescribeParametersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParametersResponse {
        return try await self.client.execute(operation: "DescribeParameters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.
    public func describeSubnetGroups(_ input: DescribeSubnetGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubnetGroupsResponse {
        return try await self.client.execute(operation: "DescribeSubnetGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more nodes to a DAX cluster.
    public func increaseReplicationFactor(_ input: IncreaseReplicationFactorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IncreaseReplicationFactorResponse {
        return try await self.client.execute(operation: "IncreaseReplicationFactor", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all of the tags for a DAX cluster. You can call ListTags up to 10 times per second, per account.
    public func listTags(_ input: ListTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsResponse {
        return try await self.client.execute(operation: "ListTags", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible. During the reboot, the node status is set to REBOOTING.   RebootNode restarts the DAX engine process and does not remove the contents of the cache.
    public func rebootNode(_ input: RebootNodeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RebootNodeResponse {
        return try await self.client.execute(operation: "RebootNode", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a set of tags with a DAX resource.  You can call TagResource up to 5 times per second, per account.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the association of tags from a DAX resource. You can call UntagResource up to 5 times per second, per account.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the settings for a DAX cluster. You can use this action to change one or more cluster configuration parameters by specifying the parameters and the new values.
    public func updateCluster(_ input: UpdateClusterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateClusterResponse {
        return try await self.client.execute(operation: "UpdateCluster", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.
    public func updateParameterGroup(_ input: UpdateParameterGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateParameterGroupResponse {
        return try await self.client.execute(operation: "UpdateParameterGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies an existing subnet group.
    public func updateSubnetGroup(_ input: UpdateSubnetGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSubnetGroupResponse {
        return try await self.client.execute(operation: "UpdateSubnetGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}
