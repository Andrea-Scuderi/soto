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
extension Signer {
    // MARK: Async API Calls

    /// Adds cross-account permissions to a signing profile.
    public func addProfilePermission(_ input: AddProfilePermissionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddProfilePermissionResponse {
        return try await self.client.execute(operation: "AddProfilePermission", path: "/signing-profiles/{profileName}/permissions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the state of an ACTIVE signing profile to CANCELED.
    /// 			A canceled profile is still viewable with the ListSigningProfiles
    /// 			operation, but it cannot perform new signing jobs, and is deleted two years after
    /// 			cancelation.
    public func cancelSigningProfile(_ input: CancelSigningProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "CancelSigningProfile", path: "/signing-profiles/{profileName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a specific code signing job. You specify the job by using
    /// 			the jobId value that is returned by the StartSigningJob
    /// 			operation.
    public func describeSigningJob(_ input: DescribeSigningJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSigningJobResponse {
        return try await self.client.execute(operation: "DescribeSigningJob", path: "/signing-jobs/{jobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information on a specific signing platform.
    public func getSigningPlatform(_ input: GetSigningPlatformRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSigningPlatformResponse {
        return try await self.client.execute(operation: "GetSigningPlatform", path: "/signing-platforms/{platformId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information on a specific signing profile.
    public func getSigningProfile(_ input: GetSigningProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSigningProfileResponse {
        return try await self.client.execute(operation: "GetSigningProfile", path: "/signing-profiles/{profileName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the cross-account permissions associated with a signing profile.
    public func listProfilePermissions(_ input: ListProfilePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProfilePermissionsResponse {
        return try await self.client.execute(operation: "ListProfilePermissions", path: "/signing-profiles/{profileName}/permissions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all your signing jobs. You can use the maxResults parameter to
    /// 			limit the number of signing jobs that are returned in the response. If additional jobs
    /// 			remain to be listed, code signing returns a nextToken value. Use this value in
    /// 			subsequent calls to ListSigningJobs to fetch the remaining values. You can
    /// 			continue calling ListSigningJobs with your maxResults
    /// 			parameter and with new values that code signing returns in the nextToken
    /// 			parameter until all of your signing jobs have been returned.
    public func listSigningJobs(_ input: ListSigningJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSigningJobsResponse {
        return try await self.client.execute(operation: "ListSigningJobs", path: "/signing-jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all signing platforms available in code signing that match the request parameters. If
    /// 			additional jobs remain to be listed, code signing returns a nextToken value. Use
    /// 			this value in subsequent calls to ListSigningJobs to fetch the remaining
    /// 			values. You can continue calling ListSigningJobs with your
    /// 				maxResults parameter and with new values that code signing returns in the
    /// 				nextToken parameter until all of your signing jobs have been
    /// 			returned.
    public func listSigningPlatforms(_ input: ListSigningPlatformsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSigningPlatformsResponse {
        return try await self.client.execute(operation: "ListSigningPlatforms", path: "/signing-platforms", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all available signing profiles in your AWS account. Returns only profiles with
    /// 			an ACTIVE status unless the includeCanceled request field is
    /// 			set to true. If additional jobs remain to be listed, code signing returns a
    /// 				nextToken value. Use this value in subsequent calls to
    /// 				ListSigningJobs to fetch the remaining values. You can continue calling
    /// 				ListSigningJobs with your maxResults parameter and with
    /// 			new values that code signing returns in the nextToken parameter until all of your
    /// 			signing jobs have been returned.
    public func listSigningProfiles(_ input: ListSigningProfilesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSigningProfilesResponse {
        return try await self.client.execute(operation: "ListSigningProfiles", path: "/signing-profiles", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the tags associated with a signing profile resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a signing profile. A signing profile is a code signing template that can be used to
    /// 			carry out a pre-defined signing job. For more information, see http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html
    public func putSigningProfile(_ input: PutSigningProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutSigningProfileResponse {
        return try await self.client.execute(operation: "PutSigningProfile", path: "/signing-profiles/{profileName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes cross-account permissions from a signing profile.
    public func removeProfilePermission(_ input: RemoveProfilePermissionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveProfilePermissionResponse {
        return try await self.client.execute(operation: "RemoveProfilePermission", path: "/signing-profiles/{profileName}/permissions/{statementId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the state of a signing job to REVOKED. This indicates that the signature is no
    /// 			longer valid.
    public func revokeSignature(_ input: RevokeSignatureRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "RevokeSignature", path: "/signing-jobs/{jobId}/revoke", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the state of a signing profile to REVOKED. This indicates that signatures
    /// 			generated using the signing profile after an effective start date are no longer
    /// 			valid.
    public func revokeSigningProfile(_ input: RevokeSigningProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "RevokeSigningProfile", path: "/signing-profiles/{profileName}/revoke", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Initiates a signing job to be performed on the code provided. Signing jobs are
    /// 			viewable by the ListSigningJobs operation for two years after they are
    /// 			performed. Note the following requirements:
    ///
    /// 				            You must create an Amazon S3 source bucket. For more information, see Create a Bucket in the
    /// 						Amazon S3 Getting Started Guide.
    ///
    /// 				           Your S3 source bucket must be version enabled.
    ///
    /// 				           You must create an S3 destination bucket. Code signing uses your S3 destination
    /// 					bucket to write your signed code.
    ///
    /// 				           You specify the name of the source and destination buckets when calling the
    /// 						StartSigningJob operation.
    ///
    /// 				           You must also specify a request token that identifies your request to
    /// 					code signing.
    ///
    /// 		       You can call the DescribeSigningJob and the ListSigningJobs actions after you call
    /// 			StartSigningJob.
    /// 		       For a Java example that shows how to use this action, see http://docs.aws.amazon.com/acm/latest/userguide/
    public func startSigningJob(_ input: StartSigningJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartSigningJobResponse {
        return try await self.client.execute(operation: "StartSigningJob", path: "/signing-jobs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more tags to a signing profile. Tags are labels that you can use to
    /// 			identify and organize your AWS resources. Each tag consists of a key and an optional
    /// 			value. To specify the signing profile, use its Amazon Resource Name (ARN). To specify
    /// 			the tag, use a key-value pair.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from a signing profile. To remove the tags, specify a list of
    /// 			tag keys.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Signer {
    /// Lists all your signing jobs. You can use the maxResults parameter to
    /// 			limit the number of signing jobs that are returned in the response. If additional jobs
    /// 			remain to be listed, code signing returns a nextToken value. Use this value in
    /// 			subsequent calls to ListSigningJobs to fetch the remaining values. You can
    /// 			continue calling ListSigningJobs with your maxResults
    /// 			parameter and with new values that code signing returns in the nextToken
    /// 			parameter until all of your signing jobs have been returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSigningJobsPaginator(
        _ input: ListSigningJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSigningJobsRequest, ListSigningJobsResponse> {
        return .init(
            input: input,
            command: self.listSigningJobs,
            inputKey: \ListSigningJobsRequest.nextToken,
            outputKey: \ListSigningJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all signing platforms available in code signing that match the request parameters. If
    /// 			additional jobs remain to be listed, code signing returns a nextToken value. Use
    /// 			this value in subsequent calls to ListSigningJobs to fetch the remaining
    /// 			values. You can continue calling ListSigningJobs with your
    /// 				maxResults parameter and with new values that code signing returns in the
    /// 				nextToken parameter until all of your signing jobs have been
    /// 			returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSigningPlatformsPaginator(
        _ input: ListSigningPlatformsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSigningPlatformsRequest, ListSigningPlatformsResponse> {
        return .init(
            input: input,
            command: self.listSigningPlatforms,
            inputKey: \ListSigningPlatformsRequest.nextToken,
            outputKey: \ListSigningPlatformsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Lists all available signing profiles in your AWS account. Returns only profiles with
    /// 			an ACTIVE status unless the includeCanceled request field is
    /// 			set to true. If additional jobs remain to be listed, code signing returns a
    /// 				nextToken value. Use this value in subsequent calls to
    /// 				ListSigningJobs to fetch the remaining values. You can continue calling
    /// 				ListSigningJobs with your maxResults parameter and with
    /// 			new values that code signing returns in the nextToken parameter until all of your
    /// 			signing jobs have been returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSigningProfilesPaginator(
        _ input: ListSigningProfilesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSigningProfilesRequest, ListSigningProfilesResponse> {
        return .init(
            input: input,
            command: self.listSigningProfiles,
            inputKey: \ListSigningProfilesRequest.nextToken,
            outputKey: \ListSigningProfilesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Signer {
    public func waitUntilSuccessfulSigningJob(
        _ input: DescribeSigningJobRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("status", expected: "Succeeded")),
                .init(state: .failure, matcher: try! JMESPathMatcher("status", expected: "Failed")),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
            ],
            minDelayTime: .seconds(20),
            command: self.describeSigningJob
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
