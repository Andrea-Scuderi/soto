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
extension Route53Domains {
    // MARK: Async API Calls

    /// Accepts the transfer of a domain from another Amazon Web Services account to the
    /// 				currentAmazon Web Services account. You initiate a transfer between Amazon Web Services accounts using TransferDomainToAnotherAwsAccount. If you use the CLI command at accept-domain-transfer-from-another-aws-account, use JSON format as input
    /// 			instead of text because otherwise CLI will throw an error from domain
    /// 			transfer input that includes single quotes. Use either ListOperations or GetOperationDetail to determine whether the operation succeeded. GetOperationDetail provides additional information, for example,
    /// 				Domain Transfer from Aws Account 111122223333 has been cancelled.
    public func acceptDomainTransferFromAnotherAwsAccount(_ input: AcceptDomainTransferFromAnotherAwsAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptDomainTransferFromAnotherAwsAccountResponse {
        return try await self.client.execute(operation: "AcceptDomainTransferFromAnotherAwsAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a delegation signer (DS) record in the registry zone for this domain
    /// 			name. Note that creating DS record at the registry impacts DNSSEC validation of your DNS
    /// 			records. This action may render your domain name unavailable on the internet if the
    /// 			steps are completed in the wrong order, or with incorrect timing. For more information
    /// 			about DNSSEC signing, see Configuring DNSSEC
    /// 				signing in the Route 53 developer
    /// 			guide.
    public func associateDelegationSignerToDomain(_ input: AssociateDelegationSignerToDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateDelegationSignerToDomainResponse {
        return try await self.client.execute(operation: "AssociateDelegationSignerToDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels the transfer of a domain from the current Amazon Web Services account to
    /// 			another Amazon Web Services account. You initiate a transfer betweenAmazon Web Services accounts using TransferDomainToAnotherAwsAccount.   You must cancel the transfer before the other Amazon Web Services account accepts
    /// 				the transfer using AcceptDomainTransferFromAnotherAwsAccount.  Use either ListOperations or GetOperationDetail to determine whether the operation succeeded. GetOperationDetail provides additional information, for example,
    /// 				Domain Transfer from Aws Account 111122223333 has been cancelled.
    public func cancelDomainTransferToAnotherAwsAccount(_ input: CancelDomainTransferToAnotherAwsAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelDomainTransferToAnotherAwsAccountResponse {
        return try await self.client.execute(operation: "CancelDomainTransferToAnotherAwsAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation checks the availability of one domain name. Note that if the
    /// 			availability status of a domain is pending, you must submit another request to determine
    /// 			the availability of the domain name.
    public func checkDomainAvailability(_ input: CheckDomainAvailabilityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckDomainAvailabilityResponse {
        return try await self.client.execute(operation: "CheckDomainAvailability", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Checks whether a domain name can be transferred to Amazon Route 53.
    public func checkDomainTransferability(_ input: CheckDomainTransferabilityRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckDomainTransferabilityResponse {
        return try await self.client.execute(operation: "CheckDomainTransferability", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation deletes the specified domain. This action is permanent. For more
    /// 			information, see Deleting a domain name
    /// 				registration. To transfer the domain registration to another registrar, use the transfer process
    /// 			that’s provided by the registrar to which you want to transfer the registration.
    /// 			Otherwise, the following apply:   You can’t get a refund for the cost of a deleted domain registration.   The registry for the top-level domain might hold the domain name for a brief
    /// 					time before releasing it for other users to register (varies by registry).
    /// 				   When the registration has been deleted, we'll send you a confirmation to the
    /// 					registrant contact. The email will come from
    /// 						noreply@domainnameverification.net or
    /// 						noreply@registrar.amazon.com.
    public func deleteDomain(_ input: DeleteDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainResponse {
        return try await self.client.execute(operation: "DeleteDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation deletes the specified tags for a domain. All tag operations are eventually consistent; subsequent operations might not
    /// 			immediately represent all issued operations.
    public func deleteTagsForDomain(_ input: DeleteTagsForDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTagsForDomainResponse {
        return try await self.client.execute(operation: "DeleteTagsForDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation disables automatic renewal of domain registration for the specified
    /// 			domain.
    public func disableDomainAutoRenew(_ input: DisableDomainAutoRenewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableDomainAutoRenewResponse {
        return try await self.client.execute(operation: "DisableDomainAutoRenew", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation removes the transfer lock on the domain (specifically the
    /// 				clientTransferProhibited status) to allow domain transfers. We
    /// 			recommend you refrain from performing this action unless you intend to transfer the
    /// 			domain to a different registrar. Successful submission returns an operation ID that you
    /// 			can use to track the progress and completion of the action. If the request is not
    /// 			completed successfully, the domain registrant will be notified by email.
    public func disableDomainTransferLock(_ input: DisableDomainTransferLockRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableDomainTransferLockResponse {
        return try await self.client.execute(operation: "DisableDomainTransferLock", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a delegation signer (DS) record in the registry zone for this domain
    /// 			name.
    public func disassociateDelegationSignerFromDomain(_ input: DisassociateDelegationSignerFromDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateDelegationSignerFromDomainResponse {
        return try await self.client.execute(operation: "DisassociateDelegationSignerFromDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation configures Amazon Route 53 to automatically renew the specified domain
    /// 			before the domain registration expires. The cost of renewing your domain registration is
    /// 			billed to your Amazon Web Services account. The period during which you can renew a domain name varies by TLD. For a list of TLDs
    /// 			and their renewal policies, see Domains That You Can
    /// 				Register with Amazon Route 53 in the Amazon Route 53 Developer
    /// 				Guide. Route 53 requires that you renew before the end of the renewal
    /// 			period so we can complete processing before the deadline.
    public func enableDomainAutoRenew(_ input: EnableDomainAutoRenewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableDomainAutoRenewResponse {
        return try await self.client.execute(operation: "EnableDomainAutoRenew", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation sets the transfer lock on the domain (specifically the
    /// 				clientTransferProhibited status) to prevent domain transfers.
    /// 			Successful submission returns an operation ID that you can use to track the progress and
    /// 			completion of the action. If the request is not completed successfully, the domain
    /// 			registrant will be notified by email.
    public func enableDomainTransferLock(_ input: EnableDomainTransferLockRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableDomainTransferLockResponse {
        return try await self.client.execute(operation: "EnableDomainTransferLock", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// For operations that require confirmation that the email address for the registrant
    /// 			contact is valid, such as registering a new domain, this operation returns information
    /// 			about whether the registrant contact has responded. If you want us to resend the email, use the
    /// 				ResendContactReachabilityEmail operation.
    public func getContactReachabilityStatus(_ input: GetContactReachabilityStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetContactReachabilityStatusResponse {
        return try await self.client.execute(operation: "GetContactReachabilityStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation returns detailed information about a specified domain that is
    /// 			associated with the current Amazon Web Services account. Contact information for the
    /// 			domain is also returned as part of the output.
    public func getDomainDetail(_ input: GetDomainDetailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDomainDetailResponse {
        return try await self.client.execute(operation: "GetDomainDetail", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The GetDomainSuggestions operation returns a list of suggested domain names.
    public func getDomainSuggestions(_ input: GetDomainSuggestionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDomainSuggestionsResponse {
        return try await self.client.execute(operation: "GetDomainSuggestions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation returns the current status of an operation that is not
    /// 			completed.
    public func getOperationDetail(_ input: GetOperationDetailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetOperationDetailResponse {
        return try await self.client.execute(operation: "GetOperationDetail", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation returns all the domain names registered with Amazon Route 53 for the
    /// 			current Amazon Web Services account if no filtering conditions are used.
    public func listDomains(_ input: ListDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainsResponse {
        return try await self.client.execute(operation: "ListDomains", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about all of the operations that return an operation ID and that
    /// 			have ever been performed on domains that were registered by the current account.  This command runs only in the us-east-1 Region.
    public func listOperations(_ input: ListOperationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOperationsResponse {
        return try await self.client.execute(operation: "ListOperations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the following prices for either all the TLDs supported by Route 53, or
    /// 			the specified TLD:   Registration   Transfer   Owner change   Domain renewal   Domain restoration
    public func listPrices(_ input: ListPricesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPricesResponse {
        return try await self.client.execute(operation: "ListPrices", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation returns all of the tags that are associated with the specified
    /// 			domain. All tag operations are eventually consistent; subsequent operations might not
    /// 			immediately represent all issued operations.
    public func listTagsForDomain(_ input: ListTagsForDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForDomainResponse {
        return try await self.client.execute(operation: "ListTagsForDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Moves a domain from Amazon Web Services to another registrar.  Supported actions:   Changes the IPS tags of a .uk domain, and pushes it to transit. Transit means
    /// 					that the domain is ready to be transferred to another registrar.
    public func pushDomain(_ input: PushDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "PushDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation registers a domain. Domains are registered either by Amazon Registrar
    /// 			(for .com, .net, and .org domains) or by our registrar associate, Gandi (for all other
    /// 			domains). For some top-level domains (TLDs), this operation requires extra
    /// 			parameters. When you register a domain, Amazon Route 53 does the following:   Creates a Route 53 hosted zone that has the same name as the domain. Route 53
    /// 					assigns four name servers to your hosted zone and automatically updates your
    /// 					domain registration with the names of these name servers.   Enables auto renew, so your domain registration will renew automatically each
    /// 					year. We'll notify you in advance of the renewal date so you can choose whether
    /// 					to renew the registration.   Optionally enables privacy protection, so WHOIS queries return contact
    /// 					information either for Amazon Registrar (for .com, .net, and .org domains) or
    /// 					for our registrar associate, Gandi (for all other TLDs). If you don't enable
    /// 					privacy protection, WHOIS queries return the information that you entered for
    /// 					the administrative, registrant, and technical contacts.  You must specify the same privacy setting for the administrative,
    /// 						registrant, and technical contacts.    If registration is successful, returns an operation ID that you can use to
    /// 					track the progress and completion of the action. If the request is not completed
    /// 					successfully, the domain registrant is notified by email.   Charges your Amazon Web Services account an amount based on the top-level
    /// 					domain. For more information, see Amazon Route 53 Pricing.
    public func registerDomain(_ input: RegisterDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterDomainResponse {
        return try await self.client.execute(operation: "RegisterDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Rejects the transfer of a domain from another Amazon Web Services account to the
    /// 			current Amazon Web Services account. You initiate a transfer betweenAmazon Web Services accounts using TransferDomainToAnotherAwsAccount.  Use either ListOperations or GetOperationDetail to determine whether the operation succeeded. GetOperationDetail provides additional information, for example,
    /// 				Domain Transfer from Aws Account 111122223333 has been cancelled.
    public func rejectDomainTransferFromAnotherAwsAccount(_ input: RejectDomainTransferFromAnotherAwsAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RejectDomainTransferFromAnotherAwsAccountResponse {
        return try await self.client.execute(operation: "RejectDomainTransferFromAnotherAwsAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation renews a domain for the specified number of years. The cost of renewing
    /// 			your domain is billed to your Amazon Web Services account. We recommend that you renew your domain several weeks before the expiration date. Some
    /// 			TLD registries delete domains before the expiration date if you haven't renewed far
    /// 			enough in advance. For more information about renewing domain registration, see Renewing
    /// 				Registration for a Domain in the Amazon Route 53 Developer
    /// 				Guide.
    public func renewDomain(_ input: RenewDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewDomainResponse {
        return try await self.client.execute(operation: "RenewDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// For operations that require confirmation that the email address for the registrant
    /// 			contact is valid, such as registering a new domain, this operation resends the
    /// 			confirmation email to the current email address for the registrant contact.
    public func resendContactReachabilityEmail(_ input: ResendContactReachabilityEmailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResendContactReachabilityEmailResponse {
        return try await self.client.execute(operation: "ResendContactReachabilityEmail", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Resend the form of authorization email for this operation.
    public func resendOperationAuthorization(_ input: ResendOperationAuthorizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "ResendOperationAuthorization", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation returns the authorization code for the domain. To transfer a domain to
    /// 			another registrar, you provide this value to the new registrar.
    public func retrieveDomainAuthCode(_ input: RetrieveDomainAuthCodeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RetrieveDomainAuthCodeResponse {
        return try await self.client.execute(operation: "RetrieveDomainAuthCode", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Transfers a domain from another registrar to Amazon Route 53. When the transfer is
    /// 			complete, the domain is registered either with Amazon Registrar (for .com, .net, and
    /// 			.org domains) or with our registrar associate, Gandi (for all other TLDs). For more information about transferring domains, see the following topics:   For transfer requirements, a detailed procedure, and information about viewing
    /// 					the status of a domain that you're transferring to Route 53, see Transferring Registration for a Domain to Amazon Route 53 in the
    /// 						Amazon Route 53 Developer Guide.   For information about how to transfer a domain from one Amazon Web Services account to another, see TransferDomainToAnotherAwsAccount.    For information about how to transfer a domain to another domain registrar,
    /// 					see Transferring a Domain from Amazon Route 53 to Another Registrar in
    /// 					the Amazon Route 53 Developer Guide.   If the registrar for your domain is also the DNS service provider for the domain, we
    /// 			highly recommend that you transfer your DNS service to Route 53 or to another DNS
    /// 			service provider before you transfer your registration. Some registrars provide free DNS
    /// 			service when you purchase a domain registration. When you transfer the registration, the
    /// 			previous registrar will not renew your domain registration and could end your DNS
    /// 			service at any time.  If the registrar for your domain is also the DNS service provider for the domain
    /// 				and you don't transfer DNS service to another provider, your website, email, and the
    /// 				web applications associated with the domain might become unavailable.  If the transfer is successful, this method returns an operation ID that you can use to
    /// 			track the progress and completion of the action. If the transfer doesn't complete
    /// 			successfully, the domain registrant will be notified by email.
    public func transferDomain(_ input: TransferDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TransferDomainResponse {
        return try await self.client.execute(operation: "TransferDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Transfers a domain from the current Amazon Web Services account to another Amazon Web Services account. Note the following:   The Amazon Web Services account that you're transferring the domain to must
    /// 					accept the transfer. If the other account doesn't accept the transfer within 3
    /// 					days, we cancel the transfer. See AcceptDomainTransferFromAnotherAwsAccount.    You can cancel the transfer before the other account accepts it. See CancelDomainTransferToAnotherAwsAccount.    The other account can reject the transfer. See RejectDomainTransferFromAnotherAwsAccount.     When you transfer a domain from one Amazon Web Services account to another, Route
    /// 				53 doesn't transfer the hosted zone that is associated with the domain. DNS
    /// 				resolution isn't affected if the domain and the hosted zone are owned by separate
    /// 				accounts, so transferring the hosted zone is optional. For information about
    /// 				transferring the hosted zone to another Amazon Web Services account, see Migrating a
    /// 					Hosted Zone to a Different Amazon Web Services Account in the
    /// 					Amazon Route 53 Developer Guide.  Use either ListOperations or GetOperationDetail to determine whether the operation succeeded. GetOperationDetail provides additional information, for example,
    /// 				Domain Transfer from Aws Account 111122223333 has been cancelled.
    public func transferDomainToAnotherAwsAccount(_ input: TransferDomainToAnotherAwsAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TransferDomainToAnotherAwsAccountResponse {
        return try await self.client.execute(operation: "TransferDomainToAnotherAwsAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation updates the contact information for a particular domain. You must
    /// 			specify information for at least one contact: registrant, administrator, or
    /// 			technical. If the update is successful, this method returns an operation ID that you can use to
    /// 			track the progress and completion of the operation. If the request is not completed
    /// 			successfully, the domain registrant will be notified by email.
    public func updateDomainContact(_ input: UpdateDomainContactRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDomainContactResponse {
        return try await self.client.execute(operation: "UpdateDomainContact", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation updates the specified domain contact's privacy setting. When privacy
    /// 			protection is enabled, contact information such as email address is replaced either with
    /// 			contact information for Amazon Registrar (for .com, .net, and .org domains) or with
    /// 			contact information for our registrar associate, Gandi.  You must specify the same privacy setting for the administrative, registrant, and
    /// 				technical contacts.  This operation affects only the contact information for the specified contact type
    /// 			(administrative, registrant, or technical). If the request succeeds, Amazon Route 53
    /// 			returns an operation ID that you can use with GetOperationDetail to track the progress and completion of the action. If
    /// 			the request doesn't complete successfully, the domain registrant will be notified by
    /// 			email.  By disabling the privacy service via API, you consent to the publication of the
    /// 				contact information provided for this domain via the public WHOIS database. You
    /// 				certify that you are the registrant of this domain name and have the authority to
    /// 				make this decision. You may withdraw your consent at any time by enabling privacy
    /// 				protection using either UpdateDomainContactPrivacy or the Route 53
    /// 				console. Enabling privacy protection removes the contact information provided for
    /// 				this domain from the WHOIS database. For more information on our privacy practices,
    /// 				see https://aws.amazon.com/privacy/.
    public func updateDomainContactPrivacy(_ input: UpdateDomainContactPrivacyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDomainContactPrivacyResponse {
        return try await self.client.execute(operation: "UpdateDomainContactPrivacy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation replaces the current set of name servers for the domain with the
    /// 			specified set of name servers. If you use Amazon Route 53 as your DNS service, specify
    /// 			the four name servers in the delegation set for the hosted zone for the domain. If successful, this operation returns an operation ID that you can use to track the
    /// 			progress and completion of the action. If the request is not completed successfully, the
    /// 			domain registrant will be notified by email.
    public func updateDomainNameservers(_ input: UpdateDomainNameserversRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDomainNameserversResponse {
        return try await self.client.execute(operation: "UpdateDomainNameservers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation adds or updates tags for a specified domain. All tag operations are eventually consistent; subsequent operations might not
    /// 			immediately represent all issued operations.
    public func updateTagsForDomain(_ input: UpdateTagsForDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTagsForDomainResponse {
        return try await self.client.execute(operation: "UpdateTagsForDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns all the domain-related billing records for the current Amazon Web Services account for a specified period
    public func viewBilling(_ input: ViewBillingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ViewBillingResponse {
        return try await self.client.execute(operation: "ViewBilling", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Route53Domains {
    /// This operation returns all the domain names registered with Amazon Route 53 for the
    /// 			current Amazon Web Services account if no filtering conditions are used.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDomainsPaginator(
        _ input: ListDomainsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDomainsRequest, ListDomainsResponse> {
        return .init(
            input: input,
            command: self.listDomains,
            inputKey: \ListDomainsRequest.marker,
            outputKey: \ListDomainsResponse.nextPageMarker,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns information about all of the operations that return an operation ID and that
    /// 			have ever been performed on domains that were registered by the current account.  This command runs only in the us-east-1 Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOperationsPaginator(
        _ input: ListOperationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOperationsRequest, ListOperationsResponse> {
        return .init(
            input: input,
            command: self.listOperations,
            inputKey: \ListOperationsRequest.marker,
            outputKey: \ListOperationsResponse.nextPageMarker,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists the following prices for either all the TLDs supported by Route 53, or
    /// 			the specified TLD:   Registration   Transfer   Owner change   Domain renewal   Domain restoration
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPricesPaginator(
        _ input: ListPricesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPricesRequest, ListPricesResponse> {
        return .init(
            input: input,
            command: self.listPrices,
            inputKey: \ListPricesRequest.marker,
            outputKey: \ListPricesResponse.nextPageMarker,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns all the domain-related billing records for the current Amazon Web Services account for a specified period
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func viewBillingPaginator(
        _ input: ViewBillingRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ViewBillingRequest, ViewBillingResponse> {
        return .init(
            input: input,
            command: self.viewBilling,
            inputKey: \ViewBillingRequest.marker,
            outputKey: \ViewBillingResponse.nextPageMarker,
            logger: logger,
            on: eventLoop
        )
    }
}
