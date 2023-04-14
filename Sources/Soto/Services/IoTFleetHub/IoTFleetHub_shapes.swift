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

import Foundation
import SotoCore

extension IoTFleetHub {
    // MARK: Enums

    public enum ApplicationState: String, CustomStringConvertible, Codable, Sendable {
        case active = "ACTIVE"
        case createFailed = "CREATE_FAILED"
        case creating = "CREATING"
        case deleteFailed = "DELETE_FAILED"
        case deleting = "DELETING"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct ApplicationSummary: AWSDecodableShape {
        /// The date (in Unix epoch time) when the web application was created.
        public let applicationCreationDate: Int64?
        /// An optional description of the web application.
        public let applicationDescription: String?
        /// The unique Id of the web application.
        public let applicationId: String
        /// The date (in Unix epoch time) when the web application was last updated.
        public let applicationLastUpdateDate: Int64?
        /// The name of the web application.
        public let applicationName: String
        /// The current state of the web application.
        public let applicationState: ApplicationState?
        /// The URL of the web application.
        public let applicationUrl: String

        public init(applicationCreationDate: Int64? = nil, applicationDescription: String? = nil, applicationId: String, applicationLastUpdateDate: Int64? = nil, applicationName: String, applicationState: ApplicationState? = nil, applicationUrl: String) {
            self.applicationCreationDate = applicationCreationDate
            self.applicationDescription = applicationDescription
            self.applicationId = applicationId
            self.applicationLastUpdateDate = applicationLastUpdateDate
            self.applicationName = applicationName
            self.applicationState = applicationState
            self.applicationUrl = applicationUrl
        }

        private enum CodingKeys: String, CodingKey {
            case applicationCreationDate = "applicationCreationDate"
            case applicationDescription = "applicationDescription"
            case applicationId = "applicationId"
            case applicationLastUpdateDate = "applicationLastUpdateDate"
            case applicationName = "applicationName"
            case applicationState = "applicationState"
            case applicationUrl = "applicationUrl"
        }
    }

    public struct CreateApplicationRequest: AWSEncodableShape {
        /// An optional description of the web application.
        public let applicationDescription: String?
        /// The name of the web application.
        public let applicationName: String
        /// A unique case-sensitive identifier that you can provide to ensure the idempotency of the request.  Don't reuse this client token if a new idempotent request is required.
        public let clientToken: String?
        /// The ARN of the role that the web application assumes when it interacts with AWS IoT Core.  The name of the role must be in the form AWSIotFleetHub_random_string .
        public let roleArn: String
        /// A set of key/value pairs that you can use to manage the web application resource.
        public let tags: [String: String]?

        public init(applicationDescription: String? = nil, applicationName: String, clientToken: String? = CreateApplicationRequest.idempotencyToken(), roleArn: String, tags: [String: String]? = nil) {
            self.applicationDescription = applicationDescription
            self.applicationName = applicationName
            self.clientToken = clientToken
            self.roleArn = roleArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.applicationDescription, name: "applicationDescription", parent: name, max: 2048)
            try self.validate(self.applicationDescription, name: "applicationDescription", parent: name, min: 1)
            try self.validate(self.applicationDescription, name: "applicationDescription", parent: name, pattern: "^[ -~]*$")
            try self.validate(self.applicationName, name: "applicationName", parent: name, max: 100)
            try self.validate(self.applicationName, name: "applicationName", parent: name, min: 1)
            try self.validate(self.applicationName, name: "applicationName", parent: name, pattern: "^[ -~]*$")
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 64)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "^[a-zA-Z0-9-_]+$")
            try self.validate(self.roleArn, name: "roleArn", parent: name, max: 1600)
            try self.validate(self.roleArn, name: "roleArn", parent: name, min: 1)
            try self.validate(self.roleArn, name: "roleArn", parent: name, pattern: "^arn:[!-~]+$")
            try self.tags?.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, min: 1)
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 50)
            try self.validate(self.tags, name: "tags", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case applicationDescription = "applicationDescription"
            case applicationName = "applicationName"
            case clientToken = "clientToken"
            case roleArn = "roleArn"
            case tags = "tags"
        }
    }

    public struct CreateApplicationResponse: AWSDecodableShape {
        /// The ARN of the web application.
        public let applicationArn: String
        /// The unique Id of the web application.
        public let applicationId: String

        public init(applicationArn: String, applicationId: String) {
            self.applicationArn = applicationArn
            self.applicationId = applicationId
        }

        private enum CodingKeys: String, CodingKey {
            case applicationArn = "applicationArn"
            case applicationId = "applicationId"
        }
    }

    public struct DeleteApplicationRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "applicationId", location: .uri("applicationId")),
            AWSMemberEncoding(label: "clientToken", location: .querystring("clientToken"))
        ]

        /// The unique Id of the web application.
        public let applicationId: String
        /// A unique case-sensitive identifier that you can provide to ensure the idempotency of the request.  Don't reuse this client token if a new idempotent request is required.
        public let clientToken: String?

        public init(applicationId: String, clientToken: String? = DeleteApplicationRequest.idempotencyToken()) {
            self.applicationId = applicationId
            self.clientToken = clientToken
        }

        public func validate(name: String) throws {
            try self.validate(self.applicationId, name: "applicationId", parent: name, max: 36)
            try self.validate(self.applicationId, name: "applicationId", parent: name, min: 36)
            try self.validate(self.applicationId, name: "applicationId", parent: name, pattern: "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$")
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 64)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "^[a-zA-Z0-9-_]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteApplicationResponse: AWSDecodableShape {
        public init() {}
    }

    public struct DescribeApplicationRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "applicationId", location: .uri("applicationId"))
        ]

        /// The unique Id of the web application.
        public let applicationId: String

        public init(applicationId: String) {
            self.applicationId = applicationId
        }

        public func validate(name: String) throws {
            try self.validate(self.applicationId, name: "applicationId", parent: name, max: 36)
            try self.validate(self.applicationId, name: "applicationId", parent: name, min: 36)
            try self.validate(self.applicationId, name: "applicationId", parent: name, pattern: "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeApplicationResponse: AWSDecodableShape {
        /// The ARN of the web application.
        public let applicationArn: String
        /// The date (in Unix epoch time) when the application was created.
        public let applicationCreationDate: Int64
        /// An optional description of the web application.
        public let applicationDescription: String?
        /// The unique Id of the web application.
        public let applicationId: String
        /// The date (in Unix epoch time) when the application was last updated.
        public let applicationLastUpdateDate: Int64
        /// The name of the web application.
        public let applicationName: String
        /// The current state of the web application.
        public let applicationState: ApplicationState
        /// The URL of the web application.
        public let applicationUrl: String
        /// A message indicating why the DescribeApplication API failed.
        public let errorMessage: String?
        /// The ARN of the role that the web application assumes when it interacts with AWS IoT Core.
        public let roleArn: String
        /// The Id of the single sign-on client that you use to authenticate and authorize users on the web application.
        public let ssoClientId: String?
        /// A set of key/value pairs that you can use to manage the web application resource.
        public let tags: [String: String]?

        public init(applicationArn: String, applicationCreationDate: Int64, applicationDescription: String? = nil, applicationId: String, applicationLastUpdateDate: Int64, applicationName: String, applicationState: ApplicationState, applicationUrl: String, errorMessage: String? = nil, roleArn: String, ssoClientId: String? = nil, tags: [String: String]? = nil) {
            self.applicationArn = applicationArn
            self.applicationCreationDate = applicationCreationDate
            self.applicationDescription = applicationDescription
            self.applicationId = applicationId
            self.applicationLastUpdateDate = applicationLastUpdateDate
            self.applicationName = applicationName
            self.applicationState = applicationState
            self.applicationUrl = applicationUrl
            self.errorMessage = errorMessage
            self.roleArn = roleArn
            self.ssoClientId = ssoClientId
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case applicationArn = "applicationArn"
            case applicationCreationDate = "applicationCreationDate"
            case applicationDescription = "applicationDescription"
            case applicationId = "applicationId"
            case applicationLastUpdateDate = "applicationLastUpdateDate"
            case applicationName = "applicationName"
            case applicationState = "applicationState"
            case applicationUrl = "applicationUrl"
            case errorMessage = "errorMessage"
            case roleArn = "roleArn"
            case ssoClientId = "ssoClientId"
            case tags = "tags"
        }
    }

    public struct ListApplicationsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken"))
        ]

        /// A token used to get the next set of results.
        public let nextToken: String?

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 2048)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9+/=]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListApplicationsResponse: AWSDecodableShape {
        /// An array of objects that provide summaries of information about the web applications in the list.
        public let applicationSummaries: [ApplicationSummary]?
        /// A token used to get the next set of results.
        public let nextToken: String?

        public init(applicationSummaries: [ApplicationSummary]? = nil, nextToken: String? = nil) {
            self.applicationSummaries = applicationSummaries
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case applicationSummaries = "applicationSummaries"
            case nextToken = "nextToken"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri("resourceArn"))
        ]

        /// The ARN of the resource.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {
        /// The list of tags assigned to the resource.
        public let tags: [String: String]?

        public init(tags: [String: String]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri("resourceArn"))
        ]

        /// The ARN of the resource.
        public let resourceArn: String
        /// The new or modified tags for the resource.
        public let tags: [String: String]

        public init(resourceArn: String, tags: [String: String]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.tags.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, min: 1)
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 50)
            try self.validate(self.tags, name: "tags", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "tags"
        }
    }

    public struct TagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri("resourceArn")),
            AWSMemberEncoding(label: "tagKeys", location: .querystring("tagKeys"))
        ]

        /// The ARN of the resource.
        public let resourceArn: String
        /// A list of the keys of the tags to be removed from the resource.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
            }
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UntagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UpdateApplicationRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "applicationId", location: .uri("applicationId"))
        ]

        /// An optional description of the web application.
        public let applicationDescription: String?
        /// The unique Id of the web application.
        public let applicationId: String
        /// The name of the web application.
        public let applicationName: String?
        /// A unique case-sensitive identifier that you can provide to ensure the idempotency of the request.  Don't reuse this client token if a new idempotent request is required.
        public let clientToken: String?

        public init(applicationDescription: String? = nil, applicationId: String, applicationName: String? = nil, clientToken: String? = UpdateApplicationRequest.idempotencyToken()) {
            self.applicationDescription = applicationDescription
            self.applicationId = applicationId
            self.applicationName = applicationName
            self.clientToken = clientToken
        }

        public func validate(name: String) throws {
            try self.validate(self.applicationDescription, name: "applicationDescription", parent: name, max: 2048)
            try self.validate(self.applicationDescription, name: "applicationDescription", parent: name, min: 1)
            try self.validate(self.applicationDescription, name: "applicationDescription", parent: name, pattern: "^[ -~]*$")
            try self.validate(self.applicationId, name: "applicationId", parent: name, max: 36)
            try self.validate(self.applicationId, name: "applicationId", parent: name, min: 36)
            try self.validate(self.applicationId, name: "applicationId", parent: name, pattern: "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$")
            try self.validate(self.applicationName, name: "applicationName", parent: name, max: 100)
            try self.validate(self.applicationName, name: "applicationName", parent: name, min: 1)
            try self.validate(self.applicationName, name: "applicationName", parent: name, pattern: "^[ -~]*$")
            try self.validate(self.clientToken, name: "clientToken", parent: name, max: 64)
            try self.validate(self.clientToken, name: "clientToken", parent: name, min: 1)
            try self.validate(self.clientToken, name: "clientToken", parent: name, pattern: "^[a-zA-Z0-9-_]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case applicationDescription = "applicationDescription"
            case applicationName = "applicationName"
            case clientToken = "clientToken"
        }
    }

    public struct UpdateApplicationResponse: AWSDecodableShape {
        public init() {}
    }
}

// MARK: - Errors

/// Error enum for IoTFleetHub
public struct IoTFleetHubErrorType: AWSErrorType {
    enum Code: String {
        case conflictException = "ConflictException"
        case internalFailureException = "InternalFailureException"
        case invalidRequestException = "InvalidRequestException"
        case limitExceededException = "LimitExceededException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize IoTFleetHub
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

    /// The request conflicts with the current state of the resource.
    public static var conflictException: Self { .init(.conflictException) }
    /// An unexpected error has occurred.
    public static var internalFailureException: Self { .init(.internalFailureException) }
    /// The request is not valid.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// A limit has been exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The specified resource does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The rate exceeds the limit.
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension IoTFleetHubErrorType: Equatable {
    public static func == (lhs: IoTFleetHubErrorType, rhs: IoTFleetHubErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension IoTFleetHubErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
