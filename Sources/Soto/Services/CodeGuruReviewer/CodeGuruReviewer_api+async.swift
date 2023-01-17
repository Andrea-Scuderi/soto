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
extension CodeGuruReviewer {
    // MARK: Async API Calls

    /// Use to associate an Amazon Web Services CodeCommit repository or a repository managed by Amazon Web Services CodeStar Connections with Amazon CodeGuru Reviewer. When you associate a repository, CodeGuru Reviewer reviews source code changes in the repository's pull requests and provides automatic recommendations. You can view recommendations using the CodeGuru Reviewer console. For more information, see Recommendations in Amazon CodeGuru Reviewer in the Amazon CodeGuru Reviewer User Guide.
    ///  If you associate a CodeCommit or S3 repository, it must be in the same Amazon Web Services Region and Amazon Web Services account where its CodeGuru Reviewer code reviews are configured.
    ///  Bitbucket and GitHub Enterprise Server repositories are managed by Amazon Web Services CodeStar Connections to connect to CodeGuru Reviewer. For more information, see Associate a repository in the Amazon CodeGuru Reviewer User Guide.
    ///   You cannot use the CodeGuru Reviewer SDK or the Amazon Web Services CLI to associate a GitHub repository with Amazon CodeGuru Reviewer. To associate a GitHub repository, use the console. For more information, see Getting started with CodeGuru Reviewer in the CodeGuru Reviewer User Guide.
    public func associateRepository(_ input: AssociateRepositoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateRepositoryResponse {
        return try await self.client.execute(operation: "AssociateRepository", path: "/associations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use to create a code review with a CodeReviewType of RepositoryAnalysis. This type of code review analyzes all code under a specified branch in an associated repository. PullRequest code reviews are automatically triggered by a pull request.
    public func createCodeReview(_ input: CreateCodeReviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCodeReviewResponse {
        return try await self.client.execute(operation: "CreateCodeReview", path: "/codereviews", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the metadata associated with the code review along with its status.
    public func describeCodeReview(_ input: DescribeCodeReviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodeReviewResponse {
        return try await self.client.execute(operation: "DescribeCodeReview", path: "/codereviews/{CodeReviewArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the customer feedback for a CodeGuru Reviewer recommendation.
    public func describeRecommendationFeedback(_ input: DescribeRecommendationFeedbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecommendationFeedbackResponse {
        return try await self.client.execute(operation: "DescribeRecommendationFeedback", path: "/feedback/{CodeReviewArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a RepositoryAssociation object that contains information about the requested repository association.
    public func describeRepositoryAssociation(_ input: DescribeRepositoryAssociationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepositoryAssociationResponse {
        return try await self.client.execute(operation: "DescribeRepositoryAssociation", path: "/associations/{AssociationArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the association between Amazon CodeGuru Reviewer and a repository.
    public func disassociateRepository(_ input: DisassociateRepositoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateRepositoryResponse {
        return try await self.client.execute(operation: "DisassociateRepository", path: "/associations/{AssociationArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the code reviews that the customer has created in the past 90 days.
    public func listCodeReviews(_ input: ListCodeReviewsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCodeReviewsResponse {
        return try await self.client.execute(operation: "ListCodeReviews", path: "/codereviews", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of RecommendationFeedbackSummary objects that contain customer recommendation feedback for all CodeGuru Reviewer users.
    public func listRecommendationFeedback(_ input: ListRecommendationFeedbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRecommendationFeedbackResponse {
        return try await self.client.execute(operation: "ListRecommendationFeedback", path: "/feedback/{CodeReviewArn}/RecommendationFeedback", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the list of all recommendations for a completed code review.
    public func listRecommendations(_ input: ListRecommendationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRecommendationsResponse {
        return try await self.client.execute(operation: "ListRecommendations", path: "/codereviews/{CodeReviewArn}/Recommendations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of RepositoryAssociationSummary objects that contain summary information about a repository association. You can filter the returned list by ProviderType, Name, State, and Owner.
    public func listRepositoryAssociations(_ input: ListRepositoryAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRepositoryAssociationsResponse {
        return try await self.client.execute(operation: "ListRepositoryAssociations", path: "/associations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the list of tags associated with an associated repository resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stores customer feedback for a CodeGuru Reviewer recommendation. When this API is called again with different reactions the previous feedback is overwritten.
    public func putRecommendationFeedback(_ input: PutRecommendationFeedbackRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutRecommendationFeedbackResponse {
        return try await self.client.execute(operation: "PutRecommendationFeedback", path: "/feedback", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more tags to an associated repository.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag from an associated repository.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CodeGuruReviewer {
    /// Lists all the code reviews that the customer has created in the past 90 days.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCodeReviewsPaginator(
        _ input: ListCodeReviewsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCodeReviewsRequest, ListCodeReviewsResponse> {
        return .init(
            input: input,
            command: self.listCodeReviews,
            inputKey: \ListCodeReviewsRequest.nextToken,
            outputKey: \ListCodeReviewsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns a list of RecommendationFeedbackSummary objects that contain customer recommendation feedback for all CodeGuru Reviewer users.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRecommendationFeedbackPaginator(
        _ input: ListRecommendationFeedbackRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRecommendationFeedbackRequest, ListRecommendationFeedbackResponse> {
        return .init(
            input: input,
            command: self.listRecommendationFeedback,
            inputKey: \ListRecommendationFeedbackRequest.nextToken,
            outputKey: \ListRecommendationFeedbackResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns the list of all recommendations for a completed code review.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRecommendationsPaginator(
        _ input: ListRecommendationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRecommendationsRequest, ListRecommendationsResponse> {
        return .init(
            input: input,
            command: self.listRecommendations,
            inputKey: \ListRecommendationsRequest.nextToken,
            outputKey: \ListRecommendationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Returns a list of RepositoryAssociationSummary objects that contain summary information about a repository association. You can filter the returned list by ProviderType, Name, State, and Owner.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRepositoryAssociationsPaginator(
        _ input: ListRepositoryAssociationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRepositoryAssociationsRequest, ListRepositoryAssociationsResponse> {
        return .init(
            input: input,
            command: self.listRepositoryAssociations,
            inputKey: \ListRepositoryAssociationsRequest.nextToken,
            outputKey: \ListRepositoryAssociationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

// MARK: Waiters

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CodeGuruReviewer {
    public func waitUntilCodeReviewCompleted(
        _ input: DescribeCodeReviewRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("codeReview.state", expected: "Completed")),
                .init(state: .failure, matcher: try! JMESPathMatcher("codeReview.state", expected: "Failed")),
                .init(state: .retry, matcher: try! JMESPathMatcher("codeReview.state", expected: "Pending")),
            ],
            minDelayTime: .seconds(10),
            command: self.describeCodeReview
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilRepositoryAssociationSucceeded(
        _ input: DescribeRepositoryAssociationRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("repositoryAssociation.state", expected: "Associated")),
                .init(state: .failure, matcher: try! JMESPathMatcher("repositoryAssociation.state", expected: "Failed")),
                .init(state: .retry, matcher: try! JMESPathMatcher("repositoryAssociation.state", expected: "Associating")),
            ],
            minDelayTime: .seconds(10),
            command: self.describeRepositoryAssociation
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
