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
extension LicenseManager {
    // MARK: Async API Calls

    /// Accepts the specified grant.
    public func acceptGrant(_ input: AcceptGrantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptGrantResponse {
        return try await self.client.execute(operation: "AcceptGrant", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Checks in the specified license. Check in a license when it is no longer in use.
    public func checkInLicense(_ input: CheckInLicenseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckInLicenseResponse {
        return try await self.client.execute(operation: "CheckInLicense", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Checks out the specified license for offline use.
    public func checkoutBorrowLicense(_ input: CheckoutBorrowLicenseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckoutBorrowLicenseResponse {
        return try await self.client.execute(operation: "CheckoutBorrowLicense", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Checks out the specified license.  If the account that created the license is the same that is performing the check out, you must specify the account as the beneficiary.
    public func checkoutLicense(_ input: CheckoutLicenseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckoutLicenseResponse {
        return try await self.client.execute(operation: "CheckoutLicense", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a grant for the specified license. A grant shares the use of license entitlements with specific Amazon Web Services accounts.
    public func createGrant(_ input: CreateGrantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGrantResponse {
        return try await self.client.execute(operation: "CreateGrant", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new version of the specified grant.
    public func createGrantVersion(_ input: CreateGrantVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGrantVersionResponse {
        return try await self.client.execute(operation: "CreateGrantVersion", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a license.
    public func createLicense(_ input: CreateLicenseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLicenseResponse {
        return try await self.client.execute(operation: "CreateLicense", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a license configuration.  A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy,  Dedicated Instance, Dedicated Host, or all of these), license affinity  to host (how long a  license must be associated with a host), and the number of licenses purchased and used.
    public func createLicenseConfiguration(_ input: CreateLicenseConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLicenseConfigurationResponse {
        return try await self.client.execute(operation: "CreateLicenseConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new license conversion task.
    public func createLicenseConversionTaskForResource(_ input: CreateLicenseConversionTaskForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLicenseConversionTaskForResourceResponse {
        return try await self.client.execute(operation: "CreateLicenseConversionTaskForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a report generator.
    public func createLicenseManagerReportGenerator(_ input: CreateLicenseManagerReportGeneratorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLicenseManagerReportGeneratorResponse {
        return try await self.client.execute(operation: "CreateLicenseManagerReportGenerator", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new version of the specified license.
    public func createLicenseVersion(_ input: CreateLicenseVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLicenseVersionResponse {
        return try await self.client.execute(operation: "CreateLicenseVersion", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a long-lived token. A refresh token is a JWT token used to get an access token. With an access token, you can call AssumeRoleWithWebIdentity to get role credentials that you can use to  call License Manager to manage the specified license.
    public func createToken(_ input: CreateTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTokenResponse {
        return try await self.client.execute(operation: "CreateToken", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified grant.
    public func deleteGrant(_ input: DeleteGrantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGrantResponse {
        return try await self.client.execute(operation: "DeleteGrant", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified license.
    public func deleteLicense(_ input: DeleteLicenseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLicenseResponse {
        return try await self.client.execute(operation: "DeleteLicense", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified license configuration.  You cannot delete a license configuration that is in use.
    public func deleteLicenseConfiguration(_ input: DeleteLicenseConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLicenseConfigurationResponse {
        return try await self.client.execute(operation: "DeleteLicenseConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified report generator. This action deletes the report generator, which stops it from generating future reports. The action cannot be reversed. It has no effect on the previous reports from this generator.
    public func deleteLicenseManagerReportGenerator(_ input: DeleteLicenseManagerReportGeneratorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLicenseManagerReportGeneratorResponse {
        return try await self.client.execute(operation: "DeleteLicenseManagerReportGenerator", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified token. Must be called in the license home Region.
    public func deleteToken(_ input: DeleteTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTokenResponse {
        return try await self.client.execute(operation: "DeleteToken", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Extends the expiration date for license consumption.
    public func extendLicenseConsumption(_ input: ExtendLicenseConsumptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExtendLicenseConsumptionResponse {
        return try await self.client.execute(operation: "ExtendLicenseConsumption", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a temporary access token to use with AssumeRoleWithWebIdentity. Access tokens are valid for one hour.
    public func getAccessToken(_ input: GetAccessTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAccessTokenResponse {
        return try await self.client.execute(operation: "GetAccessToken", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets detailed information about the specified grant.
    public func getGrant(_ input: GetGrantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGrantResponse {
        return try await self.client.execute(operation: "GetGrant", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets detailed information about the specified license.
    public func getLicense(_ input: GetLicenseRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLicenseResponse {
        return try await self.client.execute(operation: "GetLicense", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets detailed information about the specified license configuration.
    public func getLicenseConfiguration(_ input: GetLicenseConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLicenseConfigurationResponse {
        return try await self.client.execute(operation: "GetLicenseConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about the specified license type conversion task.
    public func getLicenseConversionTask(_ input: GetLicenseConversionTaskRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLicenseConversionTaskResponse {
        return try await self.client.execute(operation: "GetLicenseConversionTask", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about the specified report generator.
    public func getLicenseManagerReportGenerator(_ input: GetLicenseManagerReportGeneratorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLicenseManagerReportGeneratorResponse {
        return try await self.client.execute(operation: "GetLicenseManagerReportGenerator", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets detailed information about the usage of the specified license.
    public func getLicenseUsage(_ input: GetLicenseUsageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLicenseUsageResponse {
        return try await self.client.execute(operation: "GetLicenseUsage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the License Manager settings for the current Region.
    public func getServiceSettings(_ input: GetServiceSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetServiceSettingsResponse {
        return try await self.client.execute(operation: "GetServiceSettings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the resource associations for the specified license configuration.  Resource associations need not consume licenses from a license configuration.  For example, an AMI or a stopped instance might not consume a license (depending on  the license rules).
    public func listAssociationsForLicenseConfiguration(_ input: ListAssociationsForLicenseConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssociationsForLicenseConfigurationResponse {
        return try await self.client.execute(operation: "ListAssociationsForLicenseConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the grants distributed for the specified license.
    public func listDistributedGrants(_ input: ListDistributedGrantsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDistributedGrantsResponse {
        return try await self.client.execute(operation: "ListDistributedGrants", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the license configuration operations that failed.
    public func listFailuresForLicenseConfigurationOperations(_ input: ListFailuresForLicenseConfigurationOperationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFailuresForLicenseConfigurationOperationsResponse {
        return try await self.client.execute(operation: "ListFailuresForLicenseConfigurationOperations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the license configurations for your account.
    public func listLicenseConfigurations(_ input: ListLicenseConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLicenseConfigurationsResponse {
        return try await self.client.execute(operation: "ListLicenseConfigurations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the license type conversion tasks for your account.
    public func listLicenseConversionTasks(_ input: ListLicenseConversionTasksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLicenseConversionTasksResponse {
        return try await self.client.execute(operation: "ListLicenseConversionTasks", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the report generators for your account.
    public func listLicenseManagerReportGenerators(_ input: ListLicenseManagerReportGeneratorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLicenseManagerReportGeneratorsResponse {
        return try await self.client.execute(operation: "ListLicenseManagerReportGenerators", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the license configurations for the specified resource.
    public func listLicenseSpecificationsForResource(_ input: ListLicenseSpecificationsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLicenseSpecificationsForResourceResponse {
        return try await self.client.execute(operation: "ListLicenseSpecificationsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all versions of the specified license.
    public func listLicenseVersions(_ input: ListLicenseVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLicenseVersionsResponse {
        return try await self.client.execute(operation: "ListLicenseVersions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the licenses for your account.
    public func listLicenses(_ input: ListLicensesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLicensesResponse {
        return try await self.client.execute(operation: "ListLicenses", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists grants that are received but not accepted.
    public func listReceivedGrants(_ input: ListReceivedGrantsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReceivedGrantsResponse {
        return try await self.client.execute(operation: "ListReceivedGrants", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the grants received for all accounts in the organization.
    public func listReceivedGrantsForOrganization(_ input: ListReceivedGrantsForOrganizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReceivedGrantsForOrganizationResponse {
        return try await self.client.execute(operation: "ListReceivedGrantsForOrganization", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists received licenses.
    public func listReceivedLicenses(_ input: ListReceivedLicensesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReceivedLicensesResponse {
        return try await self.client.execute(operation: "ListReceivedLicenses", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the licenses received for all accounts in the organization.
    public func listReceivedLicensesForOrganization(_ input: ListReceivedLicensesForOrganizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReceivedLicensesForOrganizationResponse {
        return try await self.client.execute(operation: "ListReceivedLicensesForOrganization", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists resources managed using Systems Manager inventory.
    public func listResourceInventory(_ input: ListResourceInventoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResourceInventoryResponse {
        return try await self.client.execute(operation: "ListResourceInventory", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for the specified license configuration.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists your tokens.
    public func listTokens(_ input: ListTokensRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTokensResponse {
        return try await self.client.execute(operation: "ListTokens", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time. Use this action to audit the current license consumption for any license inventory and configuration.
    public func listUsageForLicenseConfiguration(_ input: ListUsageForLicenseConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsageForLicenseConfigurationResponse {
        return try await self.client.execute(operation: "ListUsageForLicenseConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Rejects the specified grant.
    public func rejectGrant(_ input: RejectGrantRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RejectGrantResponse {
        return try await self.client.execute(operation: "RejectGrant", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds the specified tags to the specified license configuration.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified license configuration.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the attributes of an existing license configuration.
    public func updateLicenseConfiguration(_ input: UpdateLicenseConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLicenseConfigurationResponse {
        return try await self.client.execute(operation: "UpdateLicenseConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a report generator. After you make changes to a report generator, it starts generating new reports within 60 minutes of being updated.
    public func updateLicenseManagerReportGenerator(_ input: UpdateLicenseManagerReportGeneratorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLicenseManagerReportGeneratorResponse {
        return try await self.client.execute(operation: "UpdateLicenseManagerReportGenerator", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or removes the specified license configurations for the specified Amazon Web Services resource.  You can update the license specifications of AMIs, instances, and hosts. You cannot update the license specifications for launch templates and CloudFormation templates,  as they send license configurations to the operation that creates the resource.
    public func updateLicenseSpecificationsForResource(_ input: UpdateLicenseSpecificationsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLicenseSpecificationsForResourceResponse {
        return try await self.client.execute(operation: "UpdateLicenseSpecificationsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates License Manager settings for the current Region.
    public func updateServiceSettings(_ input: UpdateServiceSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateServiceSettingsResponse {
        return try await self.client.execute(operation: "UpdateServiceSettings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}
