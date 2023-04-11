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
extension BackupGateway {
    // MARK: Async API Calls

    /// Associates a backup gateway with your server. After you complete the association process, you can back up and restore your VMs through the gateway.
    public func associateGatewayToServer(_ input: AssociateGatewayToServerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateGatewayToServerOutput {
        return try await self.client.execute(operation: "AssociateGatewayToServer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a backup gateway. After you create a gateway, you can associate it with a server using the AssociateGatewayToServer operation.
    public func createGateway(_ input: CreateGatewayInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGatewayOutput {
        return try await self.client.execute(operation: "CreateGateway", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a backup gateway.
    public func deleteGateway(_ input: DeleteGatewayInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGatewayOutput {
        return try await self.client.execute(operation: "DeleteGateway", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a hypervisor.
    public func deleteHypervisor(_ input: DeleteHypervisorInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteHypervisorOutput {
        return try await self.client.execute(operation: "DeleteHypervisor", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates a backup gateway from the specified server. After the disassociation process finishes, the gateway can no longer access the virtual machines on the server.
    public func disassociateGatewayFromServer(_ input: DisassociateGatewayFromServerInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateGatewayFromServerOutput {
        return try await self.client.execute(operation: "DisassociateGatewayFromServer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the bandwidth rate limit schedule for a specified gateway.  By default, gateways do not have bandwidth rate limit schedules, which means  no bandwidth rate limiting is in effect. Use this to get a gateway's  bandwidth rate limit schedule.
    public func getBandwidthRateLimitSchedule(_ input: GetBandwidthRateLimitScheduleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBandwidthRateLimitScheduleOutput {
        return try await self.client.execute(operation: "GetBandwidthRateLimitSchedule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// By providing the ARN (Amazon Resource Name), this API returns the gateway.
    public func getGateway(_ input: GetGatewayInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGatewayOutput {
        return try await self.client.execute(operation: "GetGateway", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This action requests information about the specified hypervisor to which the gateway will connect.  A hypervisor is hardware, software, or firmware that creates and manages virtual machines,  and allocates resources to them.
    public func getHypervisor(_ input: GetHypervisorInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetHypervisorOutput {
        return try await self.client.execute(operation: "GetHypervisor", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This action retrieves the property mappings for the specified hypervisor.  A hypervisor property mapping displays the relationship of entity properties  available from the on-premises hypervisor to the properties available in Amazon Web Services.
    public func getHypervisorPropertyMappings(_ input: GetHypervisorPropertyMappingsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetHypervisorPropertyMappingsOutput {
        return try await self.client.execute(operation: "GetHypervisorPropertyMappings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// By providing the ARN (Amazon Resource Name), this API returns the virtual machine.
    public func getVirtualMachine(_ input: GetVirtualMachineInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetVirtualMachineOutput {
        return try await self.client.execute(operation: "GetVirtualMachine", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Connect to a hypervisor by importing its configuration.
    public func importHypervisorConfiguration(_ input: ImportHypervisorConfigurationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportHypervisorConfigurationOutput {
        return try await self.client.execute(operation: "ImportHypervisorConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists backup gateways owned by an Amazon Web Services account in an Amazon Web Services Region. The returned list is ordered by gateway Amazon Resource Name (ARN).
    public func listGateways(_ input: ListGatewaysInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGatewaysOutput {
        return try await self.client.execute(operation: "ListGateways", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists your hypervisors.
    public func listHypervisors(_ input: ListHypervisorsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListHypervisorsOutput {
        return try await self.client.execute(operation: "ListHypervisors", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags applied to the resource identified by its Amazon Resource Name (ARN).
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists your virtual machines.
    public func listVirtualMachines(_ input: ListVirtualMachinesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVirtualMachinesOutput {
        return try await self.client.execute(operation: "ListVirtualMachines", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This action sets the bandwidth rate limit schedule for a specified gateway.  By default, gateways do not have a bandwidth rate limit schedule, which means  no bandwidth rate limiting is in effect. Use this to initiate a   gateway's bandwidth rate limit schedule.
    public func putBandwidthRateLimitSchedule(_ input: PutBandwidthRateLimitScheduleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutBandwidthRateLimitScheduleOutput {
        return try await self.client.execute(operation: "PutBandwidthRateLimitSchedule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This action sets the property mappings for the specified hypervisor.  A hypervisor property mapping displays the relationship of entity properties  available from the on-premises hypervisor to the properties available in Amazon Web Services.
    public func putHypervisorPropertyMappings(_ input: PutHypervisorPropertyMappingsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutHypervisorPropertyMappingsOutput {
        return try await self.client.execute(operation: "PutHypervisorPropertyMappings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Set the maintenance start time for a gateway.
    public func putMaintenanceStartTime(_ input: PutMaintenanceStartTimeInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutMaintenanceStartTimeOutput {
        return try await self.client.execute(operation: "PutMaintenanceStartTime", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This action sends a request to sync metadata across the specified virtual machines.
    public func startVirtualMachinesMetadataSync(_ input: StartVirtualMachinesMetadataSyncInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartVirtualMachinesMetadataSyncOutput {
        return try await self.client.execute(operation: "StartVirtualMachinesMetadataSync", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tag the resource.
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceOutput {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tests your hypervisor configuration to validate that backup gateway can connect with the hypervisor and its resources.
    public func testHypervisorConfiguration(_ input: TestHypervisorConfigurationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TestHypervisorConfigurationOutput {
        return try await self.client.execute(operation: "TestHypervisorConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from the resource.
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceOutput {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a gateway's name. Specify which gateway to update using the Amazon Resource Name (ARN) of the gateway in your request.
    public func updateGatewayInformation(_ input: UpdateGatewayInformationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGatewayInformationOutput {
        return try await self.client.execute(operation: "UpdateGatewayInformation", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the gateway virtual machine (VM) software.  The request immediately triggers the software update.  When you make this request, you get a 200 OK success response immediately. However, it might take some  time for the update to complete.
    public func updateGatewaySoftwareNow(_ input: UpdateGatewaySoftwareNowInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGatewaySoftwareNowOutput {
        return try await self.client.execute(operation: "UpdateGatewaySoftwareNow", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a hypervisor metadata, including its host, username, and password. Specify which hypervisor to update using the Amazon Resource Name (ARN) of the hypervisor in your request.
    public func updateHypervisor(_ input: UpdateHypervisorInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateHypervisorOutput {
        return try await self.client.execute(operation: "UpdateHypervisor", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}
