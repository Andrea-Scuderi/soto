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
extension SSOAdmin {
    // MARK: Async API Calls

    /// Attaches the specified customer managed policy to the specified PermissionSet.
    public func attachCustomerManagedPolicyReferenceToPermissionSet(_ input: AttachCustomerManagedPolicyReferenceToPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachCustomerManagedPolicyReferenceToPermissionSetResponse {
        return try await self.client.execute(operation: "AttachCustomerManagedPolicyReferenceToPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches an AWS managed policy ARN to a permission set.  If the permission set is already referenced by one or more account assignments, you will need to call  ProvisionPermissionSet after this operation. Calling ProvisionPermissionSet applies the corresponding IAM policy updates to all assigned accounts.
    public func attachManagedPolicyToPermissionSet(_ input: AttachManagedPolicyToPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachManagedPolicyToPermissionSetResponse {
        return try await self.client.execute(operation: "AttachManagedPolicyToPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Assigns access to a principal for a specified AWS account using a specified permission set.  The term principal here refers to a user or group that is defined in IAM Identity Center.   As part of a successful CreateAccountAssignment call, the specified permission set will automatically be provisioned to the account in the form of an IAM policy. That policy is attached to the IAM role created in IAM Identity Center. If the permission set is subsequently updated, the corresponding IAM policies attached to roles in your accounts will not be updated automatically. In this case, you must call  ProvisionPermissionSet to make these updates.    After a successful response, call DescribeAccountAssignmentCreationStatus to describe the status of an assignment creation request.
    public func createAccountAssignment(_ input: CreateAccountAssignmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccountAssignmentResponse {
        return try await self.client.execute(operation: "CreateAccountAssignment", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables the attributes-based access control (ABAC) feature for the specified IAM Identity Center instance. You can also specify new attributes to add to your ABAC configuration during the enabling process. For more information about ABAC, see Attribute-Based Access Control in the IAM Identity Center User Guide.  After a successful response, call DescribeInstanceAccessControlAttributeConfiguration to validate that InstanceAccessControlAttributeConfiguration was created.
    public func createInstanceAccessControlAttributeConfiguration(_ input: CreateInstanceAccessControlAttributeConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceAccessControlAttributeConfigurationResponse {
        return try await self.client.execute(operation: "CreateInstanceAccessControlAttributeConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a permission set within a specified IAM Identity Center instance.  To grant users and groups access to AWS account resources, use  CreateAccountAssignment .
    public func createPermissionSet(_ input: CreatePermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePermissionSetResponse {
        return try await self.client.execute(operation: "CreatePermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a principal's access from a specified AWS account using a specified permission set.  After a successful response, call DescribeAccountAssignmentCreationStatus to describe the status of an assignment deletion request.
    public func deleteAccountAssignment(_ input: DeleteAccountAssignmentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccountAssignmentResponse {
        return try await self.client.execute(operation: "DeleteAccountAssignment", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the inline policy from a specified permission set.
    public func deleteInlinePolicyFromPermissionSet(_ input: DeleteInlinePolicyFromPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInlinePolicyFromPermissionSetResponse {
        return try await self.client.execute(operation: "DeleteInlinePolicyFromPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables the attributes-based access control (ABAC) feature for the specified IAM Identity Center instance and deletes all of the attribute mappings that have been configured. Once deleted, any attributes that are received from an identity source and any custom attributes you have previously configured will not be passed. For more information about ABAC, see Attribute-Based Access Control in the IAM Identity Center User Guide.
    public func deleteInstanceAccessControlAttributeConfiguration(_ input: DeleteInstanceAccessControlAttributeConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInstanceAccessControlAttributeConfigurationResponse {
        return try await self.client.execute(operation: "DeleteInstanceAccessControlAttributeConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified permission set.
    public func deletePermissionSet(_ input: DeletePermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePermissionSetResponse {
        return try await self.client.execute(operation: "DeletePermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the permissions boundary from a specified PermissionSet.
    public func deletePermissionsBoundaryFromPermissionSet(_ input: DeletePermissionsBoundaryFromPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePermissionsBoundaryFromPermissionSetResponse {
        return try await self.client.execute(operation: "DeletePermissionsBoundaryFromPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the status of the assignment creation request.
    public func describeAccountAssignmentCreationStatus(_ input: DescribeAccountAssignmentCreationStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountAssignmentCreationStatusResponse {
        return try await self.client.execute(operation: "DescribeAccountAssignmentCreationStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the status of the assignment deletion request.
    public func describeAccountAssignmentDeletionStatus(_ input: DescribeAccountAssignmentDeletionStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountAssignmentDeletionStatusResponse {
        return try await self.client.execute(operation: "DescribeAccountAssignmentDeletionStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the list of IAM Identity Center identity store attributes that have been configured to work with attributes-based access control (ABAC) for the specified IAM Identity Center instance. This will not return attributes configured and sent by an external identity provider. For more information about ABAC, see Attribute-Based Access Control in the IAM Identity Center User Guide.
    public func describeInstanceAccessControlAttributeConfiguration(_ input: DescribeInstanceAccessControlAttributeConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceAccessControlAttributeConfigurationResponse {
        return try await self.client.execute(operation: "DescribeInstanceAccessControlAttributeConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the details of the permission set.
    public func describePermissionSet(_ input: DescribePermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePermissionSetResponse {
        return try await self.client.execute(operation: "DescribePermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the status for the given permission set provisioning request.
    public func describePermissionSetProvisioningStatus(_ input: DescribePermissionSetProvisioningStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePermissionSetProvisioningStatusResponse {
        return try await self.client.execute(operation: "DescribePermissionSetProvisioningStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Detaches the specified customer managed policy from the specified PermissionSet.
    public func detachCustomerManagedPolicyReferenceFromPermissionSet(_ input: DetachCustomerManagedPolicyReferenceFromPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachCustomerManagedPolicyReferenceFromPermissionSetResponse {
        return try await self.client.execute(operation: "DetachCustomerManagedPolicyReferenceFromPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Detaches the attached AWS managed policy ARN from the specified permission set.
    public func detachManagedPolicyFromPermissionSet(_ input: DetachManagedPolicyFromPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachManagedPolicyFromPermissionSetResponse {
        return try await self.client.execute(operation: "DetachManagedPolicyFromPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Obtains the inline policy assigned to the permission set.
    public func getInlinePolicyForPermissionSet(_ input: GetInlinePolicyForPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInlinePolicyForPermissionSetResponse {
        return try await self.client.execute(operation: "GetInlinePolicyForPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Obtains the permissions boundary for a specified PermissionSet.
    public func getPermissionsBoundaryForPermissionSet(_ input: GetPermissionsBoundaryForPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPermissionsBoundaryForPermissionSetResponse {
        return try await self.client.execute(operation: "GetPermissionsBoundaryForPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the status of the AWS account assignment creation requests for a specified IAM Identity Center instance.
    public func listAccountAssignmentCreationStatus(_ input: ListAccountAssignmentCreationStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAccountAssignmentCreationStatusResponse {
        return try await self.client.execute(operation: "ListAccountAssignmentCreationStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the status of the AWS account assignment deletion requests for a specified IAM Identity Center instance.
    public func listAccountAssignmentDeletionStatus(_ input: ListAccountAssignmentDeletionStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAccountAssignmentDeletionStatusResponse {
        return try await self.client.execute(operation: "ListAccountAssignmentDeletionStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the assignee of the specified AWS account with the specified permission set.
    public func listAccountAssignments(_ input: ListAccountAssignmentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAccountAssignmentsResponse {
        return try await self.client.execute(operation: "ListAccountAssignments", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the AWS accounts where the specified permission set is provisioned.
    public func listAccountsForProvisionedPermissionSet(_ input: ListAccountsForProvisionedPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAccountsForProvisionedPermissionSetResponse {
        return try await self.client.execute(operation: "ListAccountsForProvisionedPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all customer managed policies attached to a specified PermissionSet.
    public func listCustomerManagedPolicyReferencesInPermissionSet(_ input: ListCustomerManagedPolicyReferencesInPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCustomerManagedPolicyReferencesInPermissionSetResponse {
        return try await self.client.execute(operation: "ListCustomerManagedPolicyReferencesInPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the IAM Identity Center instances that the caller has access to.
    public func listInstances(_ input: ListInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInstancesResponse {
        return try await self.client.execute(operation: "ListInstances", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the AWS managed policy that is attached to a specified permission set.
    public func listManagedPoliciesInPermissionSet(_ input: ListManagedPoliciesInPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListManagedPoliciesInPermissionSetResponse {
        return try await self.client.execute(operation: "ListManagedPoliciesInPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the status of the permission set provisioning requests for a specified IAM Identity Center instance.
    public func listPermissionSetProvisioningStatus(_ input: ListPermissionSetProvisioningStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPermissionSetProvisioningStatusResponse {
        return try await self.client.execute(operation: "ListPermissionSetProvisioningStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the PermissionSets in an IAM Identity Center instance.
    public func listPermissionSets(_ input: ListPermissionSetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPermissionSetsResponse {
        return try await self.client.execute(operation: "ListPermissionSets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the permission sets that are provisioned to a specified AWS account.
    public func listPermissionSetsProvisionedToAccount(_ input: ListPermissionSetsProvisionedToAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPermissionSetsProvisionedToAccountResponse {
        return try await self.client.execute(operation: "ListPermissionSetsProvisionedToAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags that are attached to a specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The process by which a specified permission set is provisioned to the specified target.
    public func provisionPermissionSet(_ input: ProvisionPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ProvisionPermissionSetResponse {
        return try await self.client.execute(operation: "ProvisionPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches an inline policy to a permission set.  If the permission set is already referenced by one or more account assignments, you will need to call  ProvisionPermissionSet after this action to apply the corresponding IAM policy updates to all assigned accounts.
    public func putInlinePolicyToPermissionSet(_ input: PutInlinePolicyToPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutInlinePolicyToPermissionSetResponse {
        return try await self.client.execute(operation: "PutInlinePolicyToPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches an AWS managed or customer managed policy to the specified PermissionSet as a permissions boundary.
    public func putPermissionsBoundaryToPermissionSet(_ input: PutPermissionsBoundaryToPermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutPermissionsBoundaryToPermissionSetResponse {
        return try await self.client.execute(operation: "PutPermissionsBoundaryToPermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a set of tags with a specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates a set of tags from a specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the IAM Identity Center identity store attributes that you can use with the IAM Identity Center instance for attributes-based access control (ABAC). When using an external identity provider as an identity source, you can pass attributes through the SAML assertion as an alternative to configuring attributes from the IAM Identity Center identity store. If a SAML assertion passes any of these attributes, IAM Identity Center replaces the attribute value with the value from the IAM Identity Center identity store. For more information about ABAC, see Attribute-Based Access Control in the IAM Identity Center User Guide.
    public func updateInstanceAccessControlAttributeConfiguration(_ input: UpdateInstanceAccessControlAttributeConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateInstanceAccessControlAttributeConfigurationResponse {
        return try await self.client.execute(operation: "UpdateInstanceAccessControlAttributeConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing permission set.
    public func updatePermissionSet(_ input: UpdatePermissionSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePermissionSetResponse {
        return try await self.client.execute(operation: "UpdatePermissionSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension SSOAdmin {
    /// Lists the status of the AWS account assignment creation requests for a specified IAM Identity Center instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccountAssignmentCreationStatusPaginator(
        _ input: ListAccountAssignmentCreationStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccountAssignmentCreationStatusRequest, ListAccountAssignmentCreationStatusResponse> {
        return .init(
            input: input,
            command: self.listAccountAssignmentCreationStatus,
            inputKey: \ListAccountAssignmentCreationStatusRequest.nextToken,
            outputKey: \ListAccountAssignmentCreationStatusResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the status of the AWS account assignment deletion requests for a specified IAM Identity Center instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccountAssignmentDeletionStatusPaginator(
        _ input: ListAccountAssignmentDeletionStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccountAssignmentDeletionStatusRequest, ListAccountAssignmentDeletionStatusResponse> {
        return .init(
            input: input,
            command: self.listAccountAssignmentDeletionStatus,
            inputKey: \ListAccountAssignmentDeletionStatusRequest.nextToken,
            outputKey: \ListAccountAssignmentDeletionStatusResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the assignee of the specified AWS account with the specified permission set.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccountAssignmentsPaginator(
        _ input: ListAccountAssignmentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccountAssignmentsRequest, ListAccountAssignmentsResponse> {
        return .init(
            input: input,
            command: self.listAccountAssignments,
            inputKey: \ListAccountAssignmentsRequest.nextToken,
            outputKey: \ListAccountAssignmentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all the AWS accounts where the specified permission set is provisioned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccountsForProvisionedPermissionSetPaginator(
        _ input: ListAccountsForProvisionedPermissionSetRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccountsForProvisionedPermissionSetRequest, ListAccountsForProvisionedPermissionSetResponse> {
        return .init(
            input: input,
            command: self.listAccountsForProvisionedPermissionSet,
            inputKey: \ListAccountsForProvisionedPermissionSetRequest.nextToken,
            outputKey: \ListAccountsForProvisionedPermissionSetResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all customer managed policies attached to a specified PermissionSet.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCustomerManagedPolicyReferencesInPermissionSetPaginator(
        _ input: ListCustomerManagedPolicyReferencesInPermissionSetRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCustomerManagedPolicyReferencesInPermissionSetRequest, ListCustomerManagedPolicyReferencesInPermissionSetResponse> {
        return .init(
            input: input,
            command: self.listCustomerManagedPolicyReferencesInPermissionSet,
            inputKey: \ListCustomerManagedPolicyReferencesInPermissionSetRequest.nextToken,
            outputKey: \ListCustomerManagedPolicyReferencesInPermissionSetResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the IAM Identity Center instances that the caller has access to.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInstancesPaginator(
        _ input: ListInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInstancesRequest, ListInstancesResponse> {
        return .init(
            input: input,
            command: self.listInstances,
            inputKey: \ListInstancesRequest.nextToken,
            outputKey: \ListInstancesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the AWS managed policy that is attached to a specified permission set.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listManagedPoliciesInPermissionSetPaginator(
        _ input: ListManagedPoliciesInPermissionSetRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListManagedPoliciesInPermissionSetRequest, ListManagedPoliciesInPermissionSetResponse> {
        return .init(
            input: input,
            command: self.listManagedPoliciesInPermissionSet,
            inputKey: \ListManagedPoliciesInPermissionSetRequest.nextToken,
            outputKey: \ListManagedPoliciesInPermissionSetResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the status of the permission set provisioning requests for a specified IAM Identity Center instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPermissionSetProvisioningStatusPaginator(
        _ input: ListPermissionSetProvisioningStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPermissionSetProvisioningStatusRequest, ListPermissionSetProvisioningStatusResponse> {
        return .init(
            input: input,
            command: self.listPermissionSetProvisioningStatus,
            inputKey: \ListPermissionSetProvisioningStatusRequest.nextToken,
            outputKey: \ListPermissionSetProvisioningStatusResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the PermissionSets in an IAM Identity Center instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPermissionSetsPaginator(
        _ input: ListPermissionSetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPermissionSetsRequest, ListPermissionSetsResponse> {
        return .init(
            input: input,
            command: self.listPermissionSets,
            inputKey: \ListPermissionSetsRequest.nextToken,
            outputKey: \ListPermissionSetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all the permission sets that are provisioned to a specified AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPermissionSetsProvisionedToAccountPaginator(
        _ input: ListPermissionSetsProvisionedToAccountRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPermissionSetsProvisionedToAccountRequest, ListPermissionSetsProvisionedToAccountResponse> {
        return .init(
            input: input,
            command: self.listPermissionSetsProvisionedToAccount,
            inputKey: \ListPermissionSetsProvisionedToAccountRequest.nextToken,
            outputKey: \ListPermissionSetsProvisionedToAccountResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the tags that are attached to a specified resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTagsForResourceRequest, ListTagsForResourceResponse> {
        return .init(
            input: input,
            command: self.listTagsForResource,
            inputKey: \ListTagsForResourceRequest.nextToken,
            outputKey: \ListTagsForResourceResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
