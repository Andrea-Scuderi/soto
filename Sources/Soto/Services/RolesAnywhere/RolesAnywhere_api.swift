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

@_exported import SotoCore

/// Service object for interacting with AWS RolesAnywhere service.
///
/// AWS Identity and Access Management Roles Anywhere provides a secure way for your workloads such as servers, containers, and applications running outside of AWS to obtain Temporary AWS credentials. Your workloads can use the same IAM policies and roles that you have configured with native AWS applications to access AWS resources. Using IAM Roles Anywhere will eliminate the need to manage long term credentials for workloads running outside of AWS. To use IAM Roles Anywhere customer workloads will need to use X.509 certificates issued by their Certificate Authority (CA) . The Certificate Authority (CA) needs to be registered with IAM Roles Anywhere as a trust anchor to establish trust between customer PKI and IAM Roles Anywhere. Customers who do not manage their own PKI system can use AWS Certificate Manager Private Certificate Authority (ACM PCA) to create a Certificate Authority and use that to establish trust with IAM Roles Anywhere This guide describes the IAM rolesanywhere operations that you can call programmatically. For general information about IAM Roles Anywhere see https://docs.aws.amazon.com/
public struct RolesAnywhere: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the RolesAnywhere client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "rolesanywhere",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            errorType: RolesAnywhereErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a profile. A profile is configuration resource to list the roles that RolesAnywhere service is trusted to assume. In addition, by applying a profile you can intersect permissions with IAM managed policies.  Required permissions:  rolesanywhere:CreateProfile.
    public func createProfile(_ input: CreateProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProfileDetailResponse> {
        return self.client.execute(operation: "CreateProfile", path: "/profiles", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a trust anchor. You establish trust between IAM Roles Anywhere and your certificate authority (CA) by configuring a trust anchor. A Trust Anchor is defined either as a reference to a AWS Certificate Manager Private Certificate Authority (ACM PCA), or by uploading a Certificate Authority (CA) certificate. Your AWS workloads can authenticate with the trust anchor using certificates issued by the trusted Certificate Authority (CA) in exchange for temporary AWS credentials.  Required permissions:  rolesanywhere:CreateTrustAnchor.
    public func createTrustAnchor(_ input: CreateTrustAnchorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TrustAnchorDetailResponse> {
        return self.client.execute(operation: "CreateTrustAnchor", path: "/trustanchors", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a certificate revocation list (CRL).  Required permissions:  rolesanywhere:DeleteCrl.
    public func deleteCrl(_ input: ScalarCrlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CrlDetailResponse> {
        return self.client.execute(operation: "DeleteCrl", path: "/crl/{crlId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a profile.  Required permissions:  rolesanywhere:DeleteProfile.
    public func deleteProfile(_ input: ScalarProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProfileDetailResponse> {
        return self.client.execute(operation: "DeleteProfile", path: "/profile/{profileId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a trust anchor.  Required permissions:  rolesanywhere:DeleteTrustAnchor.
    public func deleteTrustAnchor(_ input: ScalarTrustAnchorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TrustAnchorDetailResponse> {
        return self.client.execute(operation: "DeleteTrustAnchor", path: "/trustanchor/{trustAnchorId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables a certificate revocation list (CRL).  Required permissions:  rolesanywhere:DisableCrl.
    public func disableCrl(_ input: ScalarCrlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CrlDetailResponse> {
        return self.client.execute(operation: "DisableCrl", path: "/crl/{crlId}/disable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables a profile. When disabled, CreateSession requests with this profile fail.  Required permissions:  rolesanywhere:DisableProfile.
    public func disableProfile(_ input: ScalarProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProfileDetailResponse> {
        return self.client.execute(operation: "DisableProfile", path: "/profile/{profileId}/disable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables a trust anchor. When disabled, CreateSession requests specifying this trust anchor are unauthorized.  Required permissions:  rolesanywhere:DisableTrustAnchor.
    public func disableTrustAnchor(_ input: ScalarTrustAnchorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TrustAnchorDetailResponse> {
        return self.client.execute(operation: "DisableTrustAnchor", path: "/trustanchor/{trustAnchorId}/disable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables a certificate revocation list (CRL). When enabled, certificates stored in the CRL are unauthorized to receive session credentials.  Required permissions:  rolesanywhere:EnableCrl.
    public func enableCrl(_ input: ScalarCrlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CrlDetailResponse> {
        return self.client.execute(operation: "EnableCrl", path: "/crl/{crlId}/enable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables the roles in a profile to receive session credentials in CreateSession.   Required permissions:  rolesanywhere:EnableProfile.
    public func enableProfile(_ input: ScalarProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProfileDetailResponse> {
        return self.client.execute(operation: "EnableProfile", path: "/profile/{profileId}/enable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables a trust anchor. When enabled, certificates in the trust anchor chain are authorized for trust validation.   Required permissions:  rolesanywhere:EnableTrustAnchor.
    public func enableTrustAnchor(_ input: ScalarTrustAnchorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TrustAnchorDetailResponse> {
        return self.client.execute(operation: "EnableTrustAnchor", path: "/trustanchor/{trustAnchorId}/enable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a certificate revocation list (CRL).  Required permissions:  rolesanywhere:GetCrl.
    public func getCrl(_ input: ScalarCrlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CrlDetailResponse> {
        return self.client.execute(operation: "GetCrl", path: "/crl/{crlId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a profile.  Required permissions:  rolesanywhere:GetProfile.
    public func getProfile(_ input: ScalarProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProfileDetailResponse> {
        return self.client.execute(operation: "GetProfile", path: "/profile/{profileId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a Subject. A Subject associates a certificate identity with authentication attempts by CreateSession. The Subject resources stores audit information such as status of the last authentication attempt, the certificate data used in the attempt, and the last time the associated identity attempted authentication.   Required permissions:  rolesanywhere:GetSubject.
    public func getSubject(_ input: ScalarSubjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubjectDetailResponse> {
        return self.client.execute(operation: "GetSubject", path: "/subject/{subjectId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a trust anchor.  Required permissions:  rolesanywhere:GetTrustAnchor.
    public func getTrustAnchor(_ input: ScalarTrustAnchorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TrustAnchorDetailResponse> {
        return self.client.execute(operation: "GetTrustAnchor", path: "/trustanchor/{trustAnchorId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports the certificate revocation list (CRL). CRl is a list of certificates that have been revoked by the issuing certificate Authority (CA). IAM Roles Anywhere validates against the crl list before issuing credentials.   Required permissions:  rolesanywhere:ImportCrl.
    public func importCrl(_ input: ImportCrlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CrlDetailResponse> {
        return self.client.execute(operation: "ImportCrl", path: "/crls", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all Crls in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListCrls.
    public func listCrls(_ input: ListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListCrlsResponse> {
        return self.client.execute(operation: "ListCrls", path: "/crls", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all profiles in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListProfiles.
    public func listProfiles(_ input: ListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProfilesResponse> {
        return self.client.execute(operation: "ListProfiles", path: "/profiles", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the subjects in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListSubjects.
    public func listSubjects(_ input: ListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSubjectsResponse> {
        return self.client.execute(operation: "ListSubjects", path: "/subjects", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags attached to the resource.  Required permissions:  rolesanywhere:ListTagsForResource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/ListTagsForResource", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the trust anchors in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListTrustAnchors.
    public func listTrustAnchors(_ input: ListRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTrustAnchorsResponse> {
        return self.client.execute(operation: "ListTrustAnchors", path: "/trustanchors", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches tags to a resource.  Required permissions:  rolesanywhere:TagResource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/TagResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from the resource.  Required permissions:  rolesanywhere:UntagResource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/UntagResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the certificate revocation list (CRL). CRl is a list of certificates that have been revoked by the issuing certificate Authority (CA). IAM Roles Anywhere validates against the crl list before issuing credentials.  Required permissions:  rolesanywhere:UpdateCrl.
    public func updateCrl(_ input: UpdateCrlRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CrlDetailResponse> {
        return self.client.execute(operation: "UpdateCrl", path: "/crl/{crlId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the profile. A profile is configuration resource to list the roles that RolesAnywhere service is trusted to assume. In addition, by applying a profile you can scope-down permissions with IAM managed policies.  Required permissions:  rolesanywhere:UpdateProfile.
    public func updateProfile(_ input: UpdateProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProfileDetailResponse> {
        return self.client.execute(operation: "UpdateProfile", path: "/profile/{profileId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the trust anchor.You establish trust between IAM Roles Anywhere and your certificate authority (CA) by configuring a trust anchor. A Trust Anchor is defined either as a reference to a AWS Certificate Manager Private Certificate Authority (ACM PCA), or by uploading a Certificate Authority (CA) certificate. Your AWS workloads can authenticate with the trust anchor using certificates issued by the trusted Certificate Authority (CA) in exchange for temporary AWS credentials.  Required permissions:  rolesanywhere:UpdateTrustAnchor.
    public func updateTrustAnchor(_ input: UpdateTrustAnchorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TrustAnchorDetailResponse> {
        return self.client.execute(operation: "UpdateTrustAnchor", path: "/trustanchor/{trustAnchorId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension RolesAnywhere {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: RolesAnywhere, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension RolesAnywhere {
    /// Lists all Crls in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListCrls.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listCrlsPaginator<Result>(
        _ input: ListRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCrlsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listCrls,
            inputKey: \ListRequest.nextToken,
            outputKey: \ListCrlsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listCrlsPaginator(
        _ input: ListRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCrlsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listCrls,
            inputKey: \ListRequest.nextToken,
            outputKey: \ListCrlsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Lists all profiles in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListProfiles.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listProfilesPaginator<Result>(
        _ input: ListRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListProfilesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listProfiles,
            inputKey: \ListRequest.nextToken,
            outputKey: \ListProfilesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listProfilesPaginator(
        _ input: ListRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListProfilesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listProfiles,
            inputKey: \ListRequest.nextToken,
            outputKey: \ListProfilesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Lists the subjects in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListSubjects.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSubjectsPaginator<Result>(
        _ input: ListRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSubjectsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listSubjects,
            inputKey: \ListRequest.nextToken,
            outputKey: \ListSubjectsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSubjectsPaginator(
        _ input: ListRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSubjectsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listSubjects,
            inputKey: \ListRequest.nextToken,
            outputKey: \ListSubjectsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Lists the trust anchors in the authenticated account and Amazon Web Services Region.  Required permissions:  rolesanywhere:ListTrustAnchors.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listTrustAnchorsPaginator<Result>(
        _ input: ListRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListTrustAnchorsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listTrustAnchors,
            inputKey: \ListRequest.nextToken,
            outputKey: \ListTrustAnchorsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listTrustAnchorsPaginator(
        _ input: ListRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTrustAnchorsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listTrustAnchors,
            inputKey: \ListRequest.nextToken,
            outputKey: \ListTrustAnchorsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension RolesAnywhere.ListRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> RolesAnywhere.ListRequest {
        return .init(
            nextToken: token,
            pageSize: self.pageSize
        )
    }
}
