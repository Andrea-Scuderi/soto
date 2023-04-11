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
extension LicenseManagerUserSubscriptions {
    // MARK: Async API Calls

    /// Associates the user to an EC2 instance to utilize user-based subscriptions.  Your estimated bill for charges on the number of users and related costs will take 48 hours to appear for billing periods that haven't closed (marked as Pending billing status) in Amazon Web Services Billing. For more information, see Viewing your monthly charges in the Amazon Web Services Billing User Guide.
    public func associateUser(_ input: AssociateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateUserResponse {
        return try await self.client.execute(operation: "AssociateUser", path: "/user/AssociateUser", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deregisters the identity provider from providing user-based subscriptions.
    public func deregisterIdentityProvider(_ input: DeregisterIdentityProviderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeregisterIdentityProviderResponse {
        return try await self.client.execute(operation: "DeregisterIdentityProvider", path: "/identity-provider/DeregisterIdentityProvider", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the user from an EC2 instance providing user-based subscriptions.
    public func disassociateUser(_ input: DisassociateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateUserResponse {
        return try await self.client.execute(operation: "DisassociateUser", path: "/user/DisassociateUser", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the identity providers for user-based subscriptions.
    public func listIdentityProviders(_ input: ListIdentityProvidersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListIdentityProvidersResponse {
        return try await self.client.execute(operation: "ListIdentityProviders", path: "/identity-provider/ListIdentityProviders", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the EC2 instances providing user-based subscriptions.
    public func listInstances(_ input: ListInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInstancesResponse {
        return try await self.client.execute(operation: "ListInstances", path: "/instance/ListInstances", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the user-based subscription products available from an identity provider.
    public func listProductSubscriptions(_ input: ListProductSubscriptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProductSubscriptionsResponse {
        return try await self.client.execute(operation: "ListProductSubscriptions", path: "/user/ListProductSubscriptions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists user associations for an identity provider.
    public func listUserAssociations(_ input: ListUserAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUserAssociationsResponse {
        return try await self.client.execute(operation: "ListUserAssociations", path: "/user/ListUserAssociations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers an identity provider for user-based subscriptions.
    public func registerIdentityProvider(_ input: RegisterIdentityProviderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterIdentityProviderResponse {
        return try await self.client.execute(operation: "RegisterIdentityProvider", path: "/identity-provider/RegisterIdentityProvider", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a product subscription for a user with the specified identity provider.  Your estimated bill for charges on the number of users and related costs will take 48 hours to appear for billing periods that haven't closed (marked as Pending billing status) in Amazon Web Services Billing. For more information, see Viewing your monthly charges in the Amazon Web Services Billing User Guide.
    public func startProductSubscription(_ input: StartProductSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartProductSubscriptionResponse {
        return try await self.client.execute(operation: "StartProductSubscription", path: "/user/StartProductSubscription", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops a product subscription for a user with the specified identity provider.
    public func stopProductSubscription(_ input: StopProductSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopProductSubscriptionResponse {
        return try await self.client.execute(operation: "StopProductSubscription", path: "/user/StopProductSubscription", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates additional product configuration settings for the registered identity provider.
    public func updateIdentityProviderSettings(_ input: UpdateIdentityProviderSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateIdentityProviderSettingsResponse {
        return try await self.client.execute(operation: "UpdateIdentityProviderSettings", path: "/identity-provider/UpdateIdentityProviderSettings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension LicenseManagerUserSubscriptions {
    /// Lists the identity providers for user-based subscriptions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listIdentityProvidersPaginator(
        _ input: ListIdentityProvidersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListIdentityProvidersRequest, ListIdentityProvidersResponse> {
        return .init(
            input: input,
            command: self.listIdentityProviders,
            inputKey: \ListIdentityProvidersRequest.nextToken,
            outputKey: \ListIdentityProvidersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the EC2 instances providing user-based subscriptions.
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

    /// Lists the user-based subscription products available from an identity provider.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProductSubscriptionsPaginator(
        _ input: ListProductSubscriptionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProductSubscriptionsRequest, ListProductSubscriptionsResponse> {
        return .init(
            input: input,
            command: self.listProductSubscriptions,
            inputKey: \ListProductSubscriptionsRequest.nextToken,
            outputKey: \ListProductSubscriptionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists user associations for an identity provider.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUserAssociationsPaginator(
        _ input: ListUserAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUserAssociationsRequest, ListUserAssociationsResponse> {
        return .init(
            input: input,
            command: self.listUserAssociations,
            inputKey: \ListUserAssociationsRequest.nextToken,
            outputKey: \ListUserAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
