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
extension SecurityLake {
    // MARK: Async API Calls

    /// Adds a natively supported Amazon Web Service as an Amazon Security Lake source. Enables source types for member accounts in required Amazon Web Services Regions, based on the parameters you specify. You can choose any source type in any Region for either accounts that are part of a trusted organization or standalone accounts. At least one of the three dimensions is a mandatory input to this API. However, you can supply any combination of the three dimensions to this API.  By default, a dimension refers to the entire set. When you don't provide a dimension, Security Lake assumes that the missing dimension refers to the entire set. This is overridden when you supply any one of the inputs. For instance, when you do not specify members, the API enables all Security Lake member accounts for all sources. Similarly, when you do not specify Regions, Security Lake is enabled for all the Regions where Security Lake is available as a service. You can use this API only to enable natively supported Amazon Web Services as a source. Use CreateCustomLogSource to enable data collection from a custom source.
    public func createAwsLogSource(_ input: CreateAwsLogSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAwsLogSourceResponse {
        return try await self.client.execute(operation: "CreateAwsLogSource", path: "/v1/logsources/aws", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a third-party custom source in Amazon Security Lake, from the Amazon Web Services Region where you want to create a custom source. Security Lake can collect logs and events from third-party custom sources. After creating the appropriate IAM role to invoke Glue crawler, use this API to add a custom source name in Security Lake. This operation creates a partition in the Amazon S3 bucket for Security Lake as the target location for log files from the custom source in addition to an associated Glue table and an Glue crawler.
    public func createCustomLogSource(_ input: CreateCustomLogSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomLogSourceResponse {
        return try await self.client.execute(operation: "CreateCustomLogSource", path: "/v1/logsources/custom", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Initializes an Amazon Security Lake instance with the provided (or default) configuration. You can enable Security Lake in Amazon Web Services Regions with customized settings before enabling log collection in Regions. You can either use the enableAll parameter to specify all Regions or specify the Regions where you want to enable Security Lake. To specify particular Regions, use the Regions parameter and then configure these Regions using the configurations parameter. If you have already enabled Security Lake in a Region when you call this command, the command will update the Region if you provide new configuration parameters. If you have not already enabled Security Lake in the Region when you call this API, it will set up the data lake in the Region with the specified configurations. When you enable Security Lake, it starts ingesting security data after the CreateAwsLogSource call. This includes ingesting security data from sources, storing data, and making data accessible to subscribers. Security Lake also enables all the existing settings and resources that it stores or maintains for your Amazon Web Services account in the current Region, including security log and event data. For more information, see the Amazon Security Lake User Guide.
    public func createDatalake(_ input: CreateDatalakeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatalakeResponse {
        return try await self.client.execute(operation: "CreateDatalake", path: "/v1/datalake", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Automatically enables Amazon Security Lake for new member accounts in your organization. Security Lake is not automatically enabled for any existing member accounts in your organization.
    public func createDatalakeAutoEnable(_ input: CreateDatalakeAutoEnableRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatalakeAutoEnableResponse {
        return try await self.client.execute(operation: "CreateDatalakeAutoEnable", path: "/v1/datalake/autoenable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Designates the Amazon Security Lake delegated administrator account for the organization. This API can only be called by the organization management account. The organization management account cannot be the delegated administrator account.
    public func createDatalakeDelegatedAdmin(_ input: CreateDatalakeDelegatedAdminRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatalakeDelegatedAdminResponse {
        return try await self.client.execute(operation: "CreateDatalakeDelegatedAdmin", path: "/v1/datalake/delegate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates the specified notification subscription in Amazon Security Lake for the organization you specify.
    public func createDatalakeExceptionsSubscription(_ input: CreateDatalakeExceptionsSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatalakeExceptionsSubscriptionResponse {
        return try await self.client.execute(operation: "CreateDatalakeExceptionsSubscription", path: "/v1/datalake/exceptions/subscription", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a subscription permission for accounts that are already enabled in Amazon Security Lake. You can create a subscriber with access to data in the current Amazon Web Services Region.
    public func createSubscriber(_ input: CreateSubscriberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubscriberResponse {
        return try await self.client.execute(operation: "CreateSubscriber", path: "/v1/subscribers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Notifies the subscriber when new data is written to the data lake for the sources that the subscriber consumes in Security Lake.
    public func createSubscriptionNotificationConfiguration(_ input: CreateSubscriptionNotificationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubscriptionNotificationConfigurationResponse {
        return try await self.client.execute(operation: "CreateSubscriptionNotificationConfiguration", path: "/subscription-notifications/{subscriptionId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a natively supported Amazon Web Service as an Amazon Security Lake source. When you remove the source, Security Lake stops collecting data from that source, and subscribers can no longer consume new data from the source. Subscribers can still consume data that Security Lake collected from the source before disablement. You can choose any source type in any Amazon Web Services Region for either accounts that are part of a trusted organization or standalone accounts. At least one of the three dimensions is a mandatory input to this API. However, you can supply any combination of the three dimensions to this API.  By default, a dimension refers to the entire set. This is overridden when you supply any one of the inputs. For instance, when you do not specify members, the API disables all Security Lake member accounts for sources. Similarly, when you do not specify Regions, Security Lake is disabled for all the Regions where Security Lake is available as a service. When you don't provide a dimension, Security Lake  assumes that the missing dimension refers to the entire set. For example, if you don't provide specific accounts, the API applies to the entire set of accounts in your organization.
    public func deleteAwsLogSource(_ input: DeleteAwsLogSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAwsLogSourceResponse {
        return try await self.client.execute(operation: "DeleteAwsLogSource", path: "/v1/logsources/aws/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a custom log source from Amazon Security Lake.
    public func deleteCustomLogSource(_ input: DeleteCustomLogSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomLogSourceResponse {
        return try await self.client.execute(operation: "DeleteCustomLogSource", path: "/v1/logsources/custom", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// When you delete Amazon Security Lake from your account, Security Lake is disabled in all Amazon Web Services Regions. Also, this API automatically takes steps to remove the account from Security Lake .  This operation disables security data collection from sources, deletes data stored, and stops making data accessible to subscribers. Security Lake also deletes all the existing settings and resources that it stores or maintains for your Amazon Web Services account in the current Region, including security log and event data. The DeleteDatalake operation does not delete the Amazon S3 bucket, which is owned by your Amazon Web Services account. For more information, see the Amazon Security Lake User Guide.
    public func deleteDatalake(_ input: DeleteDatalakeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDatalakeResponse {
        return try await self.client.execute(operation: "DeleteDatalake", path: "/v1/datalake", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Automatically deletes Amazon Security Lake to stop collecting security data. When you delete Amazon Security Lake from your account, Security Lake is disabled in all Regions. Also, this API automatically takes steps to remove the account from Security Lake .  This operation disables security data collection from sources, deletes data stored, and stops making data accessible to subscribers. Security Lake also deletes all the existing settings and resources that it stores or maintains for your Amazon Web Services account in the current Region, including security log and event data. The DeleteDatalake operation does not delete the Amazon S3 bucket, which is owned by your Amazon Web Services account. For more information, see the Amazon Security Lake User Guide.
    public func deleteDatalakeAutoEnable(_ input: DeleteDatalakeAutoEnableRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDatalakeAutoEnableResponse {
        return try await self.client.execute(operation: "DeleteDatalakeAutoEnable", path: "/v1/datalake/autoenable/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the Amazon Security Lake delegated administrator account for the organization. This API can only be called by the organization management account. The organization management account cannot be the delegated administrator account.
    public func deleteDatalakeDelegatedAdmin(_ input: DeleteDatalakeDelegatedAdminRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDatalakeDelegatedAdminResponse {
        return try await self.client.execute(operation: "DeleteDatalakeDelegatedAdmin", path: "/v1/datalake/delegate/{account}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified notification subscription in Amazon Security Lake for the organization you specify.
    public func deleteDatalakeExceptionsSubscription(_ input: DeleteDatalakeExceptionsSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDatalakeExceptionsSubscriptionResponse {
        return try await self.client.execute(operation: "DeleteDatalakeExceptionsSubscription", path: "/v1/datalake/exceptions/subscription", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the subscription permission for accounts that are already enabled in Amazon Security Lake. You can delete a subscriber and remove access to data in the current Amazon Web Services Region.
    public func deleteSubscriber(_ input: DeleteSubscriberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSubscriberResponse {
        return try await self.client.execute(operation: "DeleteSubscriber", path: "/v1/subscribers", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified notification subscription in Amazon Security Lake for the organization you specify.
    public func deleteSubscriptionNotificationConfiguration(_ input: DeleteSubscriptionNotificationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSubscriptionNotificationConfigurationResponse {
        return try await self.client.execute(operation: "DeleteSubscriptionNotificationConfiguration", path: "/subscription-notifications/{subscriptionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the Amazon Security Lake configuration object for the specified Amazon Web Services account ID. You can use the GetDatalake API to know whether Security Lake is enabled for the current Region. This API does not take input parameters.
    public func getDatalake(_ input: GetDatalakeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDatalakeResponse {
        return try await self.client.execute(operation: "GetDatalake", path: "/v1/datalake", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the configuration that will be automatically set up for accounts added to the organization after the organization has onboarded to Amazon Security Lake. This API does not take input parameters.
    public func getDatalakeAutoEnable(_ input: GetDatalakeAutoEnableRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDatalakeAutoEnableResponse {
        return try await self.client.execute(operation: "GetDatalakeAutoEnable", path: "/v1/datalake/autoenable", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the expiration period and time-to-live (TTL) for which the exception message will remain. Exceptions are stored by default, for 2 weeks from when a record was created in Amazon Security Lake. This API does not take input parameters.
    public func getDatalakeExceptionsExpiry(_ input: GetDatalakeExceptionsExpiryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDatalakeExceptionsExpiryResponse {
        return try await self.client.execute(operation: "GetDatalakeExceptionsExpiry", path: "/v1/datalake/exceptions/expiry", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the details of exception notifications for the account in Amazon Security Lake.
    public func getDatalakeExceptionsSubscription(_ input: GetDatalakeExceptionsSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDatalakeExceptionsSubscriptionResponse {
        return try await self.client.execute(operation: "GetDatalakeExceptionsSubscription", path: "/v1/datalake/exceptions/subscription", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a snapshot of the current Region, including whether Amazon Security Lake is enabled for those accounts and which sources Security Lake is collecting data from.
    public func getDatalakeStatus(_ input: GetDatalakeStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDatalakeStatusResponse {
        return try await self.client.execute(operation: "GetDatalakeStatus", path: "/v1/datalake/status", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the subscription information for the specified subscription ID. You can get information about a specific subscriber.
    public func getSubscriber(_ input: GetSubscriberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSubscriberResponse {
        return try await self.client.execute(operation: "GetSubscriber", path: "/v1/subscribers/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the Amazon Security Lake exceptions that you can use to find the source of problems and fix them.
    public func listDatalakeExceptions(_ input: ListDatalakeExceptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDatalakeExceptionsResponse {
        return try await self.client.execute(operation: "ListDatalakeExceptions", path: "/v1/datalake/exceptions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the log sources in the current Amazon Web Services Region.
    public func listLogSources(_ input: ListLogSourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLogSourcesResponse {
        return try await self.client.execute(operation: "ListLogSources", path: "/v1/logsources/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all subscribers for the specific Amazon Security Lake account ID. You can retrieve a list of subscriptions associated with a specific organization or Amazon Web Services account.
    public func listSubscribers(_ input: ListSubscribersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSubscribersResponse {
        return try await self.client.execute(operation: "ListSubscribers", path: "/v1/subscribers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Specifies where to store your security data and for how long. You can add a rollup Region to consolidate data from multiple Amazon Web Services Regions.
    public func updateDatalake(_ input: UpdateDatalakeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDatalakeResponse {
        return try await self.client.execute(operation: "UpdateDatalake", path: "/v1/datalake", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update the expiration period for the exception message to your preferred time, and control the time-to-live (TTL) for the exception message to remain. Exceptions are stored by default for 2 weeks from when a record was created in Amazon Security Lake.
    public func updateDatalakeExceptionsExpiry(_ input: UpdateDatalakeExceptionsExpiryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDatalakeExceptionsExpiryResponse {
        return try await self.client.execute(operation: "UpdateDatalakeExceptionsExpiry", path: "/v1/datalake/exceptions/expiry", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified notification subscription in Amazon Security Lake for the organization you specify.
    public func updateDatalakeExceptionsSubscription(_ input: UpdateDatalakeExceptionsSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDatalakeExceptionsSubscriptionResponse {
        return try await self.client.execute(operation: "UpdateDatalakeExceptionsSubscription", path: "/v1/datalake/exceptions/subscription", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing subscription for the given Amazon Security Lake account ID. You can update a subscriber by changing the sources that the subscriber consumes data from.
    public func updateSubscriber(_ input: UpdateSubscriberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSubscriberResponse {
        return try await self.client.execute(operation: "UpdateSubscriber", path: "/v1/subscribers/{id}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new subscription notification or adds the existing subscription notification setting for the specified subscription ID.
    public func updateSubscriptionNotificationConfiguration(_ input: UpdateSubscriptionNotificationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSubscriptionNotificationConfigurationResponse {
        return try await self.client.execute(operation: "UpdateSubscriptionNotificationConfiguration", path: "/subscription-notifications/{subscriptionId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension SecurityLake {
    /// Retrieves a snapshot of the current Region, including whether Amazon Security Lake is enabled for those accounts and which sources Security Lake is collecting data from.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getDatalakeStatusPaginator(
        _ input: GetDatalakeStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetDatalakeStatusRequest, GetDatalakeStatusResponse> {
        return .init(
            input: input,
            command: self.getDatalakeStatus,
            inputKey: \GetDatalakeStatusRequest.nextToken,
            outputKey: \GetDatalakeStatusResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the Amazon Security Lake exceptions that you can use to find the source of problems and fix them.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatalakeExceptionsPaginator(
        _ input: ListDatalakeExceptionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatalakeExceptionsRequest, ListDatalakeExceptionsResponse> {
        return .init(
            input: input,
            command: self.listDatalakeExceptions,
            inputKey: \ListDatalakeExceptionsRequest.nextToken,
            outputKey: \ListDatalakeExceptionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Retrieves the log sources in the current Amazon Web Services Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listLogSourcesPaginator(
        _ input: ListLogSourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListLogSourcesRequest, ListLogSourcesResponse> {
        return .init(
            input: input,
            command: self.listLogSources,
            inputKey: \ListLogSourcesRequest.nextToken,
            outputKey: \ListLogSourcesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// List all subscribers for the specific Amazon Security Lake account ID. You can retrieve a list of subscriptions associated with a specific organization or Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSubscribersPaginator(
        _ input: ListSubscribersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSubscribersRequest, ListSubscribersResponse> {
        return .init(
            input: input,
            command: self.listSubscribers,
            inputKey: \ListSubscribersRequest.nextToken,
            outputKey: \ListSubscribersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}
