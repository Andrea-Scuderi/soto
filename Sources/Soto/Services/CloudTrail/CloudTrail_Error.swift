//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
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

/// Error enum for CloudTrail
public struct CloudTrailErrorType: AWSErrorType {
    enum Code: String {
        case accountHasOngoingImportException = "AccountHasOngoingImportException"
        case channelARNInvalidException = "ChannelARNInvalidException"
        case channelNotFoundException = "ChannelNotFoundException"
        case cloudTrailARNInvalidException = "CloudTrailARNInvalidException"
        case cloudTrailAccessNotEnabledException = "CloudTrailAccessNotEnabledException"
        case cloudTrailInvalidClientTokenIdException = "CloudTrailInvalidClientTokenIdException"
        case cloudWatchLogsDeliveryUnavailableException = "CloudWatchLogsDeliveryUnavailableException"
        case conflictException = "ConflictException"
        case eventDataStoreARNInvalidException = "EventDataStoreARNInvalidException"
        case eventDataStoreAlreadyExistsException = "EventDataStoreAlreadyExistsException"
        case eventDataStoreHasOngoingImportException = "EventDataStoreHasOngoingImportException"
        case eventDataStoreMaxLimitExceededException = "EventDataStoreMaxLimitExceededException"
        case eventDataStoreNotFoundException = "EventDataStoreNotFoundException"
        case eventDataStoreTerminationProtectedException = "EventDataStoreTerminationProtectedException"
        case importNotFoundException = "ImportNotFoundException"
        case inactiveEventDataStoreException = "InactiveEventDataStoreException"
        case inactiveQueryException = "InactiveQueryException"
        case insightNotEnabledException = "InsightNotEnabledException"
        case insufficientDependencyServiceAccessPermissionException = "InsufficientDependencyServiceAccessPermissionException"
        case insufficientEncryptionPolicyException = "InsufficientEncryptionPolicyException"
        case insufficientS3BucketPolicyException = "InsufficientS3BucketPolicyException"
        case insufficientSnsTopicPolicyException = "InsufficientSnsTopicPolicyException"
        case invalidCloudWatchLogsLogGroupArnException = "InvalidCloudWatchLogsLogGroupArnException"
        case invalidCloudWatchLogsRoleArnException = "InvalidCloudWatchLogsRoleArnException"
        case invalidDateRangeException = "InvalidDateRangeException"
        case invalidEventCategoryException = "InvalidEventCategoryException"
        case invalidEventDataStoreCategoryException = "InvalidEventDataStoreCategoryException"
        case invalidEventDataStoreStatusException = "InvalidEventDataStoreStatusException"
        case invalidEventSelectorsException = "InvalidEventSelectorsException"
        case invalidHomeRegionException = "InvalidHomeRegionException"
        case invalidImportSourceException = "InvalidImportSourceException"
        case invalidInsightSelectorsException = "InvalidInsightSelectorsException"
        case invalidKmsKeyIdException = "InvalidKmsKeyIdException"
        case invalidLookupAttributesException = "InvalidLookupAttributesException"
        case invalidMaxResultsException = "InvalidMaxResultsException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidParameterCombinationException = "InvalidParameterCombinationException"
        case invalidParameterException = "InvalidParameterException"
        case invalidQueryStatementException = "InvalidQueryStatementException"
        case invalidQueryStatusException = "InvalidQueryStatusException"
        case invalidS3BucketNameException = "InvalidS3BucketNameException"
        case invalidS3PrefixException = "InvalidS3PrefixException"
        case invalidSnsTopicNameException = "InvalidSnsTopicNameException"
        case invalidTagParameterException = "InvalidTagParameterException"
        case invalidTimeRangeException = "InvalidTimeRangeException"
        case invalidTokenException = "InvalidTokenException"
        case invalidTrailNameException = "InvalidTrailNameException"
        case kmsException = "KmsException"
        case kmsKeyDisabledException = "KmsKeyDisabledException"
        case kmsKeyNotFoundException = "KmsKeyNotFoundException"
        case maxConcurrentQueriesException = "MaxConcurrentQueriesException"
        case maximumNumberOfTrailsExceededException = "MaximumNumberOfTrailsExceededException"
        case notOrganizationMasterAccountException = "NotOrganizationMasterAccountException"
        case operationNotPermittedException = "OperationNotPermittedException"
        case organizationNotInAllFeaturesModeException = "OrganizationNotInAllFeaturesModeException"
        case organizationsNotInUseException = "OrganizationsNotInUseException"
        case queryIdNotFoundException = "QueryIdNotFoundException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case resourceTypeNotSupportedException = "ResourceTypeNotSupportedException"
        case s3BucketDoesNotExistException = "S3BucketDoesNotExistException"
        case tagsLimitExceededException = "TagsLimitExceededException"
        case trailAlreadyExistsException = "TrailAlreadyExistsException"
        case trailNotFoundException = "TrailNotFoundException"
        case trailNotProvidedException = "TrailNotProvidedException"
        case unsupportedOperationException = "UnsupportedOperationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CloudTrail
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    ///  This exception is thrown when you start a new import and a  previous import is still in progress.
    public static var accountHasOngoingImportException: Self { .init(.accountHasOngoingImportException) }
    /// This exception is thrown when the specified value of ChannelARN is not valid.
    public static var channelARNInvalidException: Self { .init(.channelARNInvalidException) }
    ///  The specified channel was not found.
    public static var channelNotFoundException: Self { .init(.channelNotFoundException) }
    /// This exception is thrown when an operation is called with a trail ARN that is not valid. The following is the format of a trail ARN.  arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail
    public static var cloudTrailARNInvalidException: Self { .init(.cloudTrailARNInvalidException) }
    /// This exception is thrown when trusted access has not been enabled between CloudTrail and Organizations. For more information,  see Enabling Trusted Access with Other Amazon Web Services Services and Prepare For Creating a Trail For Your Organization.
    public static var cloudTrailAccessNotEnabledException: Self { .init(.cloudTrailAccessNotEnabledException) }
    /// This exception is thrown when a call results in the InvalidClientTokenId error code.  This can occur when you are creating or updating a trail to send notifications to an Amazon SNS topic that  is in a suspended Amazon Web Services account.
    public static var cloudTrailInvalidClientTokenIdException: Self { .init(.cloudTrailInvalidClientTokenIdException) }
    /// Cannot set a CloudWatch Logs delivery for this region.
    public static var cloudWatchLogsDeliveryUnavailableException: Self { .init(.cloudWatchLogsDeliveryUnavailableException) }
    /// This exception is thrown when the specified resource is not ready for an operation.  This can occur when you try to run an operation on a resource before CloudTrail has time to fully load the resource.  If this exception occurs, wait a few minutes, and then try the operation again.
    public static var conflictException: Self { .init(.conflictException) }
    /// The specified event data store ARN is not valid or does not map to an event data store in your account.
    public static var eventDataStoreARNInvalidException: Self { .init(.eventDataStoreARNInvalidException) }
    /// An event data store with that name already exists.
    public static var eventDataStoreAlreadyExistsException: Self { .init(.eventDataStoreAlreadyExistsException) }
    ///  This exception is thrown when you try to update or delete an event data store that currently has an import in progress.
    public static var eventDataStoreHasOngoingImportException: Self { .init(.eventDataStoreHasOngoingImportException) }
    /// Your account has used the maximum number of event data stores.
    public static var eventDataStoreMaxLimitExceededException: Self { .init(.eventDataStoreMaxLimitExceededException) }
    /// The specified event data store was not found.
    public static var eventDataStoreNotFoundException: Self { .init(.eventDataStoreNotFoundException) }
    /// The event data store cannot be deleted because termination protection is enabled for it.
    public static var eventDataStoreTerminationProtectedException: Self { .init(.eventDataStoreTerminationProtectedException) }
    ///  The specified import was not found.
    public static var importNotFoundException: Self { .init(.importNotFoundException) }
    /// The event data store is inactive.
    public static var inactiveEventDataStoreException: Self { .init(.inactiveEventDataStoreException) }
    /// The specified query cannot be canceled because it is in the FINISHED, FAILED, TIMED_OUT, or CANCELLED state.
    public static var inactiveQueryException: Self { .init(.inactiveQueryException) }
    /// If you run GetInsightSelectors on a trail that does not have Insights events enabled, the operation throws the exception InsightNotEnabledException.
    public static var insightNotEnabledException: Self { .init(.insightNotEnabledException) }
    /// This exception is thrown when the IAM user or role that is used to create  the organization resource lacks one or more required permissions for  creating an organization resource in a required service.
    public static var insufficientDependencyServiceAccessPermissionException: Self { .init(.insufficientDependencyServiceAccessPermissionException) }
    /// This exception is thrown when the policy on the S3 bucket or KMS key does not have sufficient permissions for the operation.
    public static var insufficientEncryptionPolicyException: Self { .init(.insufficientEncryptionPolicyException) }
    /// This exception is thrown when the policy on the S3 bucket is not sufficient.
    public static var insufficientS3BucketPolicyException: Self { .init(.insufficientS3BucketPolicyException) }
    /// This exception is thrown when the policy on the Amazon SNS topic is not sufficient.
    public static var insufficientSnsTopicPolicyException: Self { .init(.insufficientSnsTopicPolicyException) }
    /// This exception is thrown when the provided CloudWatch Logs log group is not valid.
    public static var invalidCloudWatchLogsLogGroupArnException: Self { .init(.invalidCloudWatchLogsLogGroupArnException) }
    /// This exception is thrown when the provided role is not valid.
    public static var invalidCloudWatchLogsRoleArnException: Self { .init(.invalidCloudWatchLogsRoleArnException) }
    /// A date range for the query was specified that is not valid. Be sure that the start time is chronologically   before the end time. For more information  about writing a query, see Create  or edit a query in the CloudTrail User Guide.
    public static var invalidDateRangeException: Self { .init(.invalidDateRangeException) }
    /// Occurs if an event category that is not valid is specified as a value of EventCategory.
    public static var invalidEventCategoryException: Self { .init(.invalidEventCategoryException) }
    /// This exception is thrown when event categories of specified event data stores are not valid.
    public static var invalidEventDataStoreCategoryException: Self { .init(.invalidEventDataStoreCategoryException) }
    /// The event data store is not in a status that supports the operation.
    public static var invalidEventDataStoreStatusException: Self { .init(.invalidEventDataStoreStatusException) }
    /// This exception is thrown when the PutEventSelectors operation is called with a number of event  selectors, advanced event selectors, or data resources that is not valid. The combination of event selectors or advanced event selectors and  data resources is not valid. A trail can have up to 5 event selectors. If a trail uses advanced event selectors, a maximum  of 500 total values for all conditions in all advanced event selectors is allowed. A trail is limited to 250 data resources. These data resources can be distributed across event selectors, but the overall total cannot exceed 250. You can:   Specify a valid number of event selectors (1 to 5) for a trail.   Specify a valid number of data resources (1 to 250) for an event selector.  The limit of number of resources on an individual event selector is configurable up to 250.  However, this upper limit is allowed only if the total number of data resources does not  exceed 250 across all event selectors for a trail.   Specify up to 500 values for all conditions in all advanced event selectors for a trail.   Specify a valid value for a parameter. For example, specifying the ReadWriteType  parameter with a value of read-only is not valid.
    public static var invalidEventSelectorsException: Self { .init(.invalidEventSelectorsException) }
    /// This exception is thrown when an operation is called on a trail from a region other than the region in which the trail was created.
    public static var invalidHomeRegionException: Self { .init(.invalidHomeRegionException) }
    ///  This exception is thrown when the provided source S3 bucket is not valid for import.
    public static var invalidImportSourceException: Self { .init(.invalidImportSourceException) }
    /// The formatting or syntax of the InsightSelectors JSON statement in your PutInsightSelectors or GetInsightSelectors request  is not valid, or the specified insight type in the InsightSelectors statement is not a valid insight type.
    public static var invalidInsightSelectorsException: Self { .init(.invalidInsightSelectorsException) }
    /// This exception is thrown when the KMS key ARN is not valid.
    public static var invalidKmsKeyIdException: Self { .init(.invalidKmsKeyIdException) }
    /// Occurs when a lookup attribute is specified that is not valid.
    public static var invalidLookupAttributesException: Self { .init(.invalidLookupAttributesException) }
    /// This exception is thrown if the limit specified is not valid.
    public static var invalidMaxResultsException: Self { .init(.invalidMaxResultsException) }
    /// A token that is not valid, or a token that was previously used in a request with different parameters. This exception is thrown if the token is not valid.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// This exception is thrown when the combination of parameters provided is not valid.
    public static var invalidParameterCombinationException: Self { .init(.invalidParameterCombinationException) }
    /// The request includes a parameter that is not valid.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// The query that was submitted has validation errors, or uses incorrect syntax or unsupported keywords. For more information  about writing a query, see Create  or edit a query in the CloudTrail User Guide.
    public static var invalidQueryStatementException: Self { .init(.invalidQueryStatementException) }
    /// The query status is not valid for the operation.
    public static var invalidQueryStatusException: Self { .init(.invalidQueryStatusException) }
    /// This exception is thrown when the provided S3 bucket name is not valid.
    public static var invalidS3BucketNameException: Self { .init(.invalidS3BucketNameException) }
    /// This exception is thrown when the provided S3 prefix is not valid.
    public static var invalidS3PrefixException: Self { .init(.invalidS3PrefixException) }
    /// This exception is thrown when the provided SNS topic name is not valid.
    public static var invalidSnsTopicNameException: Self { .init(.invalidSnsTopicNameException) }
    /// This exception is thrown when the specified tag key or values are not valid.  It can also occur if there are duplicate tags or too many tags on the resource.
    public static var invalidTagParameterException: Self { .init(.invalidTagParameterException) }
    /// Occurs if the timestamp values are not valid. Either the start time occurs after the end time, or the time range is outside the range of possible values.
    public static var invalidTimeRangeException: Self { .init(.invalidTimeRangeException) }
    /// Reserved for future use.
    public static var invalidTokenException: Self { .init(.invalidTokenException) }
    /// This exception is thrown when the provided trail name is not valid. Trail names must meet the following requirements:   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)   Start with a letter or number, and end with a letter or number   Be between 3 and 128 characters   Have no adjacent periods, underscores or dashes. Names like my-_namespace and my--namespace are not valid.   Not be in IP address format (for example, 192.168.5.4)
    public static var invalidTrailNameException: Self { .init(.invalidTrailNameException) }
    /// This exception is thrown when there is an issue with the specified KMS key and the trail can’t be updated.
    public static var kmsException: Self { .init(.kmsException) }
    /// This exception is no longer in use.
    public static var kmsKeyDisabledException: Self { .init(.kmsKeyDisabledException) }
    /// This exception is thrown when the KMS key does not exist, when the S3 bucket and the KMS key are not in the same region, or when the KMS key associated with the Amazon SNS topic either does not exist or is not in the same region.
    public static var kmsKeyNotFoundException: Self { .init(.kmsKeyNotFoundException) }
    /// You are already running the maximum number of concurrent queries. Wait a minute for some queries to finish, and then  run the query again.
    public static var maxConcurrentQueriesException: Self { .init(.maxConcurrentQueriesException) }
    /// This exception is thrown when the maximum number of trails is reached.
    public static var maximumNumberOfTrailsExceededException: Self { .init(.maximumNumberOfTrailsExceededException) }
    /// This exception is thrown when the Amazon Web Services account making the request to create  or update an organization trail or event data store is not the management account for an  organization in Organizations. For more information, see  Prepare For Creating a Trail For Your Organization or Create an event data store.
    public static var notOrganizationMasterAccountException: Self { .init(.notOrganizationMasterAccountException) }
    /// This exception is thrown when the requested operation is not permitted.
    public static var operationNotPermittedException: Self { .init(.operationNotPermittedException) }
    /// This exception is thrown when Organizations is not configured to support all  features. All features must be enabled in Organizations to support creating an organization trail or event data store.
    public static var organizationNotInAllFeaturesModeException: Self { .init(.organizationNotInAllFeaturesModeException) }
    /// This exception is thrown when the request is made from an Amazon Web Services account that is not a member of an organization.  To make this request, sign in using the credentials of an account that belongs to an organization.
    public static var organizationsNotInUseException: Self { .init(.organizationsNotInUseException) }
    /// The query ID does not exist or does not map to a query.
    public static var queryIdNotFoundException: Self { .init(.queryIdNotFoundException) }
    /// This exception is thrown when the specified resource is not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// This exception is thrown when the specified resource type is not supported by CloudTrail.
    public static var resourceTypeNotSupportedException: Self { .init(.resourceTypeNotSupportedException) }
    /// This exception is thrown when the specified S3 bucket does not exist.
    public static var s3BucketDoesNotExistException: Self { .init(.s3BucketDoesNotExistException) }
    /// The number of tags per trail has exceeded the permitted amount. Currently, the limit is 50.
    public static var tagsLimitExceededException: Self { .init(.tagsLimitExceededException) }
    /// This exception is thrown when the specified trail already exists.
    public static var trailAlreadyExistsException: Self { .init(.trailAlreadyExistsException) }
    /// This exception is thrown when the trail with the given name is not found.
    public static var trailNotFoundException: Self { .init(.trailNotFoundException) }
    /// This exception is no longer in use.
    public static var trailNotProvidedException: Self { .init(.trailNotProvidedException) }
    /// This exception is thrown when the requested operation is not supported.
    public static var unsupportedOperationException: Self { .init(.unsupportedOperationException) }
}

extension CloudTrailErrorType: Equatable {
    public static func == (lhs: CloudTrailErrorType, rhs: CloudTrailErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CloudTrailErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
