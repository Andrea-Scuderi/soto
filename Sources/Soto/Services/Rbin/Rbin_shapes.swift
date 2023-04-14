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

extension Rbin {
    // MARK: Enums

    public enum LockState: String, CustomStringConvertible, Codable, Sendable {
        case locked = "locked"
        case pendingUnlock = "pending_unlock"
        case unlocked = "unlocked"
        public var description: String { return self.rawValue }
    }

    public enum ResourceType: String, CustomStringConvertible, Codable, Sendable {
        case ebsSnapshot = "EBS_SNAPSHOT"
        case ec2Image = "EC2_IMAGE"
        public var description: String { return self.rawValue }
    }

    public enum RetentionPeriodUnit: String, CustomStringConvertible, Codable, Sendable {
        case days = "DAYS"
        public var description: String { return self.rawValue }
    }

    public enum RuleStatus: String, CustomStringConvertible, Codable, Sendable {
        case available = "available"
        case pending = "pending"
        public var description: String { return self.rawValue }
    }

    public enum UnlockDelayUnit: String, CustomStringConvertible, Codable, Sendable {
        case days = "DAYS"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct CreateRuleRequest: AWSEncodableShape {
        /// The retention rule description.
        public let description: String?
        /// Information about the retention rule lock configuration.
        public let lockConfiguration: LockConfiguration?
        /// Specifies the resource tags to use to identify resources that are to be retained by a  tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that  have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have  any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule. You can add the same tag key and value pair to a maximum or five retention rules. To create a Region-level retention rule, omit this parameter. A Region-level retention rule  does not have any resource tags specified. It retains all deleted resources of the specified  resource type in the Region in which the rule is created, even if the resources are not tagged.
        public let resourceTags: [ResourceTag]?
        /// The resource type to be retained by the retention rule. Currently, only Amazon EBS snapshots  and EBS-backed AMIs are supported. To retain snapshots, specify EBS_SNAPSHOT. To  retain EBS-backed AMIs, specify EC2_IMAGE.
        public let resourceType: ResourceType
        /// Information about the retention period for which the retention rule is to retain resources.
        public let retentionPeriod: RetentionPeriod
        /// Information about the tags to assign to the retention rule.
        public let tags: [Tag]?

        public init(description: String? = nil, lockConfiguration: LockConfiguration? = nil, resourceTags: [ResourceTag]? = nil, resourceType: ResourceType, retentionPeriod: RetentionPeriod, tags: [Tag]? = nil) {
            self.description = description
            self.lockConfiguration = lockConfiguration
            self.resourceTags = resourceTags
            self.resourceType = resourceType
            self.retentionPeriod = retentionPeriod
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.description, name: "description", parent: name, pattern: "^[\\S ]{0,255}$")
            try self.lockConfiguration?.validate(name: "\(name).lockConfiguration")
            try self.resourceTags?.forEach {
                try $0.validate(name: "\(name).resourceTags[]")
            }
            try self.validate(self.resourceTags, name: "resourceTags", parent: name, max: 50)
            try self.retentionPeriod.validate(name: "\(name).retentionPeriod")
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 200)
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case lockConfiguration = "LockConfiguration"
            case resourceTags = "ResourceTags"
            case resourceType = "ResourceType"
            case retentionPeriod = "RetentionPeriod"
            case tags = "Tags"
        }
    }

    public struct CreateRuleResponse: AWSDecodableShape {
        /// The retention rule description.
        public let description: String?
        /// The unique ID of the retention rule.
        public let identifier: String?
        /// Information about the retention rule lock configuration.
        public let lockConfiguration: LockConfiguration?
        /// The lock state for the retention rule.    locked - The retention rule is locked and can't be modified or deleted.    pending_unlock - The retention rule has been unlocked but it is still within  the unlock delay period. The retention rule can be modified or deleted only after the unlock  delay period has expired.    unlocked - The retention rule is unlocked and it can be modified or deleted by  any user with the required permissions.    null - The retention rule has never been locked. Once a retention rule has  been locked, it can transition between the locked and unlocked states  only; it can never transition back to null.
        public let lockState: LockState?
        /// Information about the resource tags used to identify resources that are retained by the retention  rule.
        public let resourceTags: [ResourceTag]?
        /// The resource type retained by the retention rule.
        public let resourceType: ResourceType?
        public let retentionPeriod: RetentionPeriod?
        /// The state of the retention rule. Only retention rules that are in the available  state retain resources.
        public let status: RuleStatus?
        /// Information about the tags assigned to the retention rule.
        public let tags: [Tag]?

        public init(description: String? = nil, identifier: String? = nil, lockConfiguration: LockConfiguration? = nil, lockState: LockState? = nil, resourceTags: [ResourceTag]? = nil, resourceType: ResourceType? = nil, retentionPeriod: RetentionPeriod? = nil, status: RuleStatus? = nil, tags: [Tag]? = nil) {
            self.description = description
            self.identifier = identifier
            self.lockConfiguration = lockConfiguration
            self.lockState = lockState
            self.resourceTags = resourceTags
            self.resourceType = resourceType
            self.retentionPeriod = retentionPeriod
            self.status = status
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case identifier = "Identifier"
            case lockConfiguration = "LockConfiguration"
            case lockState = "LockState"
            case resourceTags = "ResourceTags"
            case resourceType = "ResourceType"
            case retentionPeriod = "RetentionPeriod"
            case status = "Status"
            case tags = "Tags"
        }
    }

    public struct DeleteRuleRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "identifier", location: .uri("Identifier"))
        ]

        /// The unique ID of the retention rule.
        public let identifier: String

        public init(identifier: String) {
            self.identifier = identifier
        }

        public func validate(name: String) throws {
            try self.validate(self.identifier, name: "identifier", parent: name, pattern: "^[0-9a-zA-Z]{11}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteRuleResponse: AWSDecodableShape {
        public init() {}
    }

    public struct GetRuleRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "identifier", location: .uri("Identifier"))
        ]

        /// The unique ID of the retention rule.
        public let identifier: String

        public init(identifier: String) {
            self.identifier = identifier
        }

        public func validate(name: String) throws {
            try self.validate(self.identifier, name: "identifier", parent: name, pattern: "^[0-9a-zA-Z]{11}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetRuleResponse: AWSDecodableShape {
        /// The retention rule description.
        public let description: String?
        /// The unique ID of the retention rule.
        public let identifier: String?
        /// Information about the retention rule lock configuration.
        public let lockConfiguration: LockConfiguration?
        /// The date and time at which the unlock delay is set to expire. Only returned  for retention rules that have been unlocked and that are still within the unlock  delay period.
        public let lockEndTime: Date?
        /// The lock state for the retention rule.    locked - The retention rule is locked and can't be modified or deleted.    pending_unlock - The retention rule has been unlocked but it is still within  the unlock delay period. The retention rule can be modified or deleted only after the unlock  delay period has expired.    unlocked - The retention rule is unlocked and it can be modified or deleted by  any user with the required permissions.    null - The retention rule has never been locked. Once a retention rule has  been locked, it can transition between the locked and unlocked states  only; it can never transition back to null.
        public let lockState: LockState?
        /// Information about the resource tags used to identify resources that are retained by the retention  rule.
        public let resourceTags: [ResourceTag]?
        /// The resource type retained by the retention rule.
        public let resourceType: ResourceType?
        /// Information about the retention period for which the retention rule is to retain resources.
        public let retentionPeriod: RetentionPeriod?
        /// The state of the retention rule. Only retention rules that are in the available  state retain resources.
        public let status: RuleStatus?

        public init(description: String? = nil, identifier: String? = nil, lockConfiguration: LockConfiguration? = nil, lockEndTime: Date? = nil, lockState: LockState? = nil, resourceTags: [ResourceTag]? = nil, resourceType: ResourceType? = nil, retentionPeriod: RetentionPeriod? = nil, status: RuleStatus? = nil) {
            self.description = description
            self.identifier = identifier
            self.lockConfiguration = lockConfiguration
            self.lockEndTime = lockEndTime
            self.lockState = lockState
            self.resourceTags = resourceTags
            self.resourceType = resourceType
            self.retentionPeriod = retentionPeriod
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case identifier = "Identifier"
            case lockConfiguration = "LockConfiguration"
            case lockEndTime = "LockEndTime"
            case lockState = "LockState"
            case resourceTags = "ResourceTags"
            case resourceType = "ResourceType"
            case retentionPeriod = "RetentionPeriod"
            case status = "Status"
        }
    }

    public struct ListRulesRequest: AWSEncodableShape {
        /// The lock state of the retention rules to list. Only retention rules with the specified  lock state are returned.
        public let lockState: LockState?
        /// The maximum number of results to return with a single call.
        /// 	To retrieve the remaining results, make another call with the returned NextToken value.
        public let maxResults: Int?
        /// The token for the next page of results.
        public let nextToken: String?
        /// Information about the resource tags used to identify resources that are retained by the retention  rule.
        public let resourceTags: [ResourceTag]?
        /// The resource type retained by the retention rule. Only retention rules that retain  the specified resource type are listed. Currently, only Amazon EBS snapshots and EBS-backed  AMIs are supported. To list retention rules that retain snapshots, specify  EBS_SNAPSHOT. To list retention rules that retain EBS-backed AMIs, specify  EC2_IMAGE.
        public let resourceType: ResourceType

        public init(lockState: LockState? = nil, maxResults: Int? = nil, nextToken: String? = nil, resourceTags: [ResourceTag]? = nil, resourceType: ResourceType) {
            self.lockState = lockState
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.resourceTags = resourceTags
            self.resourceType = resourceType
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 1000)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^[A-Za-z0-9+/=]{1,2048}$")
            try self.resourceTags?.forEach {
                try $0.validate(name: "\(name).resourceTags[]")
            }
            try self.validate(self.resourceTags, name: "resourceTags", parent: name, max: 50)
        }

        private enum CodingKeys: String, CodingKey {
            case lockState = "LockState"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case resourceTags = "ResourceTags"
            case resourceType = "ResourceType"
        }
    }

    public struct ListRulesResponse: AWSDecodableShape {
        /// The token to use to retrieve the next page of results. This value is null when there are no more results to return.
        public let nextToken: String?
        /// Information about the retention rules.
        public let rules: [RuleSummary]?

        public init(nextToken: String? = nil, rules: [RuleSummary]? = nil) {
            self.nextToken = nextToken
            self.rules = rules
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case rules = "Rules"
        }
    }

    public struct ListTagsForResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri("ResourceArn"))
        ]

        /// The Amazon Resource Name (ARN) of the retention rule.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:aws(-[a-z]{1,3}){0,2}:rbin:[a-z\\-0-9]{0,63}:[0-9]{12}:rule/[0-9a-zA-Z]{11}{0,1011}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListTagsForResourceResponse: AWSDecodableShape {
        /// Information about the tags assigned to the retention rule.
        public let tags: [Tag]?

        public init(tags: [Tag]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct LockConfiguration: AWSEncodableShape & AWSDecodableShape {
        /// Information about the retention rule unlock delay.
        public let unlockDelay: UnlockDelay

        public init(unlockDelay: UnlockDelay) {
            self.unlockDelay = unlockDelay
        }

        public func validate(name: String) throws {
            try self.unlockDelay.validate(name: "\(name).unlockDelay")
        }

        private enum CodingKeys: String, CodingKey {
            case unlockDelay = "UnlockDelay"
        }
    }

    public struct LockRuleRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "identifier", location: .uri("Identifier"))
        ]

        /// The unique ID of the retention rule.
        public let identifier: String
        /// Information about the retention rule lock configuration.
        public let lockConfiguration: LockConfiguration

        public init(identifier: String, lockConfiguration: LockConfiguration) {
            self.identifier = identifier
            self.lockConfiguration = lockConfiguration
        }

        public func validate(name: String) throws {
            try self.validate(self.identifier, name: "identifier", parent: name, pattern: "^[0-9a-zA-Z]{11}$")
            try self.lockConfiguration.validate(name: "\(name).lockConfiguration")
        }

        private enum CodingKeys: String, CodingKey {
            case lockConfiguration = "LockConfiguration"
        }
    }

    public struct LockRuleResponse: AWSDecodableShape {
        /// The retention rule description.
        public let description: String?
        /// The unique ID of the retention rule.
        public let identifier: String?
        /// Information about the retention rule lock configuration.
        public let lockConfiguration: LockConfiguration?
        /// The lock state for the retention rule.    locked - The retention rule is locked and can't be modified or deleted.    pending_unlock - The retention rule has been unlocked but it is still within  the unlock delay period. The retention rule can be modified or deleted only after the unlock  delay period has expired.    unlocked - The retention rule is unlocked and it can be modified or deleted by  any user with the required permissions.    null - The retention rule has never been locked. Once a retention rule has  been locked, it can transition between the locked and unlocked states  only; it can never transition back to null.
        public let lockState: LockState?
        /// Information about the resource tags used to identify resources that are retained by the retention  rule.
        public let resourceTags: [ResourceTag]?
        /// The resource type retained by the retention rule.
        public let resourceType: ResourceType?
        public let retentionPeriod: RetentionPeriod?
        /// The state of the retention rule. Only retention rules that are in the available  state retain resources.
        public let status: RuleStatus?

        public init(description: String? = nil, identifier: String? = nil, lockConfiguration: LockConfiguration? = nil, lockState: LockState? = nil, resourceTags: [ResourceTag]? = nil, resourceType: ResourceType? = nil, retentionPeriod: RetentionPeriod? = nil, status: RuleStatus? = nil) {
            self.description = description
            self.identifier = identifier
            self.lockConfiguration = lockConfiguration
            self.lockState = lockState
            self.resourceTags = resourceTags
            self.resourceType = resourceType
            self.retentionPeriod = retentionPeriod
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case identifier = "Identifier"
            case lockConfiguration = "LockConfiguration"
            case lockState = "LockState"
            case resourceTags = "ResourceTags"
            case resourceType = "ResourceType"
            case retentionPeriod = "RetentionPeriod"
            case status = "Status"
        }
    }

    public struct ResourceTag: AWSEncodableShape & AWSDecodableShape {
        /// The tag key.
        public let resourceTagKey: String
        /// The tag value.
        public let resourceTagValue: String?

        public init(resourceTagKey: String, resourceTagValue: String? = nil) {
            self.resourceTagKey = resourceTagKey
            self.resourceTagValue = resourceTagValue
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceTagKey, name: "resourceTagKey", parent: name, pattern: "^[\\S\\s]{1,128}$")
            try self.validate(self.resourceTagValue, name: "resourceTagValue", parent: name, pattern: "^[\\S\\s]{0,256}$")
        }

        private enum CodingKeys: String, CodingKey {
            case resourceTagKey = "ResourceTagKey"
            case resourceTagValue = "ResourceTagValue"
        }
    }

    public struct RetentionPeriod: AWSEncodableShape & AWSDecodableShape {
        /// The unit of time in which the retention period is measured. Currently, only DAYS  is supported.
        public let retentionPeriodUnit: RetentionPeriodUnit
        /// The period value for which the retention rule is to retain resources. The period is measured using  the unit specified for RetentionPeriodUnit.
        public let retentionPeriodValue: Int

        public init(retentionPeriodUnit: RetentionPeriodUnit, retentionPeriodValue: Int) {
            self.retentionPeriodUnit = retentionPeriodUnit
            self.retentionPeriodValue = retentionPeriodValue
        }

        public func validate(name: String) throws {
            try self.validate(self.retentionPeriodValue, name: "retentionPeriodValue", parent: name, max: 3650)
            try self.validate(self.retentionPeriodValue, name: "retentionPeriodValue", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case retentionPeriodUnit = "RetentionPeriodUnit"
            case retentionPeriodValue = "RetentionPeriodValue"
        }
    }

    public struct RuleSummary: AWSDecodableShape {
        /// The retention rule description.
        public let description: String?
        /// The unique ID of the retention rule.
        public let identifier: String?
        /// The lock state for the retention rule.    locked - The retention rule is locked and can't be modified or deleted.    pending_unlock - The retention rule has been unlocked but it is still within  the unlock delay period. The retention rule can be modified or deleted only after the unlock  delay period has expired.    unlocked - The retention rule is unlocked and it can be modified or deleted by  any user with the required permissions.    null - The retention rule has never been locked. Once a retention rule has  been locked, it can transition between the locked and unlocked states  only; it can never transition back to null.
        public let lockState: LockState?
        /// Information about the retention period for which the retention rule is to retain resources.
        public let retentionPeriod: RetentionPeriod?

        public init(description: String? = nil, identifier: String? = nil, lockState: LockState? = nil, retentionPeriod: RetentionPeriod? = nil) {
            self.description = description
            self.identifier = identifier
            self.lockState = lockState
            self.retentionPeriod = retentionPeriod
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case identifier = "Identifier"
            case lockState = "LockState"
            case retentionPeriod = "RetentionPeriod"
        }
    }

    public struct Tag: AWSEncodableShape & AWSDecodableShape {
        /// The tag key.
        public let key: String
        /// The tag value.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 128)
            try self.validate(self.key, name: "key", parent: name, min: 1)
            try self.validate(self.key, name: "key", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
            try self.validate(self.value, name: "value", parent: name, max: 256)
            try self.validate(self.value, name: "value", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct TagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri("ResourceArn"))
        ]

        /// The Amazon Resource Name (ARN) of the retention rule.
        public let resourceArn: String
        /// Information about the tags to assign to the retention rule.
        public let tags: [Tag]

        public init(resourceArn: String, tags: [Tag]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:aws(-[a-z]{1,3}){0,2}:rbin:[a-z\\-0-9]{0,63}:[0-9]{12}:rule/[0-9a-zA-Z]{11}{0,1011}$")
            try self.tags.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.validate(self.tags, name: "tags", parent: name, max: 200)
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct TagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UnlockDelay: AWSEncodableShape & AWSDecodableShape {
        /// The unit of time in which to measure the unlock delay. Currently, the unlock delay can  be measure only in days.
        public let unlockDelayUnit: UnlockDelayUnit
        /// The unlock delay period, measured in the unit specified for  UnlockDelayUnit.
        public let unlockDelayValue: Int

        public init(unlockDelayUnit: UnlockDelayUnit, unlockDelayValue: Int) {
            self.unlockDelayUnit = unlockDelayUnit
            self.unlockDelayValue = unlockDelayValue
        }

        public func validate(name: String) throws {
            try self.validate(self.unlockDelayValue, name: "unlockDelayValue", parent: name, max: 30)
            try self.validate(self.unlockDelayValue, name: "unlockDelayValue", parent: name, min: 7)
        }

        private enum CodingKeys: String, CodingKey {
            case unlockDelayUnit = "UnlockDelayUnit"
            case unlockDelayValue = "UnlockDelayValue"
        }
    }

    public struct UnlockRuleRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "identifier", location: .uri("Identifier"))
        ]

        /// The unique ID of the retention rule.
        public let identifier: String

        public init(identifier: String) {
            self.identifier = identifier
        }

        public func validate(name: String) throws {
            try self.validate(self.identifier, name: "identifier", parent: name, pattern: "^[0-9a-zA-Z]{11}$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UnlockRuleResponse: AWSDecodableShape {
        /// The retention rule description.
        public let description: String?
        /// The unique ID of the retention rule.
        public let identifier: String?
        /// Information about the retention rule lock configuration.
        public let lockConfiguration: LockConfiguration?
        /// The date and time at which the unlock delay is set to expire. Only returned  for retention rules that have been unlocked and that are still within the unlock  delay period.
        public let lockEndTime: Date?
        /// The lock state for the retention rule.    locked - The retention rule is locked and can't be modified or deleted.    pending_unlock - The retention rule has been unlocked but it is still within  the unlock delay period. The retention rule can be modified or deleted only after the unlock  delay period has expired.    unlocked - The retention rule is unlocked and it can be modified or deleted by  any user with the required permissions.    null - The retention rule has never been locked. Once a retention rule has  been locked, it can transition between the locked and unlocked states  only; it can never transition back to null.
        public let lockState: LockState?
        /// Information about the resource tags used to identify resources that are retained by the retention  rule.
        public let resourceTags: [ResourceTag]?
        /// The resource type retained by the retention rule.
        public let resourceType: ResourceType?
        public let retentionPeriod: RetentionPeriod?
        /// The state of the retention rule. Only retention rules that are in the available  state retain resources.
        public let status: RuleStatus?

        public init(description: String? = nil, identifier: String? = nil, lockConfiguration: LockConfiguration? = nil, lockEndTime: Date? = nil, lockState: LockState? = nil, resourceTags: [ResourceTag]? = nil, resourceType: ResourceType? = nil, retentionPeriod: RetentionPeriod? = nil, status: RuleStatus? = nil) {
            self.description = description
            self.identifier = identifier
            self.lockConfiguration = lockConfiguration
            self.lockEndTime = lockEndTime
            self.lockState = lockState
            self.resourceTags = resourceTags
            self.resourceType = resourceType
            self.retentionPeriod = retentionPeriod
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case identifier = "Identifier"
            case lockConfiguration = "LockConfiguration"
            case lockEndTime = "LockEndTime"
            case lockState = "LockState"
            case resourceTags = "ResourceTags"
            case resourceType = "ResourceType"
            case retentionPeriod = "RetentionPeriod"
            case status = "Status"
        }
    }

    public struct UntagResourceRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "resourceArn", location: .uri("ResourceArn")),
            AWSMemberEncoding(label: "tagKeys", location: .querystring("tagKeys"))
        ]

        /// The Amazon Resource Name (ARN) of the retention rule.
        public let resourceArn: String
        /// The tag keys of the tags to unassign. All tags that have the specified tag key are unassigned.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:aws(-[a-z]{1,3}){0,2}:rbin:[a-z\\-0-9]{0,63}:[0-9]{12}:rule/[0-9a-zA-Z]{11}{0,1011}$")
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
            }
            try self.validate(self.tagKeys, name: "tagKeys", parent: name, max: 200)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UntagResourceResponse: AWSDecodableShape {
        public init() {}
    }

    public struct UpdateRuleRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "identifier", location: .uri("Identifier"))
        ]

        /// The retention rule description.
        public let description: String?
        /// The unique ID of the retention rule.
        public let identifier: String
        /// Specifies the resource tags to use to identify resources that are to be retained by a  tag-level retention rule. For tag-level retention rules, only deleted resources, of the specified resource type, that  have one or more of the specified tag key and value pairs are retained. If a resource is deleted, but it does not have  any of the specified tag key and value pairs, it is immediately deleted without being retained by the retention rule. You can add the same tag key and value pair to a maximum or five retention rules. To create a Region-level retention rule, omit this parameter. A Region-level retention rule  does not have any resource tags specified. It retains all deleted resources of the specified  resource type in the Region in which the rule is created, even if the resources are not tagged.
        public let resourceTags: [ResourceTag]?
        ///  This parameter is currently not supported. You can't update a retention rule's resource type  after creation.
        public let resourceType: ResourceType?
        /// Information about the retention period for which the retention rule is to retain resources.
        public let retentionPeriod: RetentionPeriod?

        public init(description: String? = nil, identifier: String, resourceTags: [ResourceTag]? = nil, resourceType: ResourceType? = nil, retentionPeriod: RetentionPeriod? = nil) {
            self.description = description
            self.identifier = identifier
            self.resourceTags = resourceTags
            self.resourceType = resourceType
            self.retentionPeriod = retentionPeriod
        }

        public func validate(name: String) throws {
            try self.validate(self.description, name: "description", parent: name, pattern: "^[\\S ]{0,255}$")
            try self.validate(self.identifier, name: "identifier", parent: name, pattern: "^[0-9a-zA-Z]{11}$")
            try self.resourceTags?.forEach {
                try $0.validate(name: "\(name).resourceTags[]")
            }
            try self.validate(self.resourceTags, name: "resourceTags", parent: name, max: 50)
            try self.retentionPeriod?.validate(name: "\(name).retentionPeriod")
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case resourceTags = "ResourceTags"
            case resourceType = "ResourceType"
            case retentionPeriod = "RetentionPeriod"
        }
    }

    public struct UpdateRuleResponse: AWSDecodableShape {
        /// The retention rule description.
        public let description: String?
        /// The unique ID of the retention rule.
        public let identifier: String?
        /// The date and time at which the unlock delay is set to expire. Only returned  for retention rules that have been unlocked and that are still within the unlock  delay period.
        public let lockEndTime: Date?
        /// The lock state for the retention rule.    locked - The retention rule is locked and can't be modified or deleted.    pending_unlock - The retention rule has been unlocked but it is still within  the unlock delay period. The retention rule can be modified or deleted only after the unlock  delay period has expired.    unlocked - The retention rule is unlocked and it can be modified or deleted by  any user with the required permissions.    null - The retention rule has never been locked. Once a retention rule has  been locked, it can transition between the locked and unlocked states  only; it can never transition back to null.
        public let lockState: LockState?
        /// Information about the resource tags used to identify resources that are retained by the retention  rule.
        public let resourceTags: [ResourceTag]?
        /// The resource type retained by the retention rule.
        public let resourceType: ResourceType?
        public let retentionPeriod: RetentionPeriod?
        /// The state of the retention rule. Only retention rules that are in the available  state retain resources.
        public let status: RuleStatus?

        public init(description: String? = nil, identifier: String? = nil, lockEndTime: Date? = nil, lockState: LockState? = nil, resourceTags: [ResourceTag]? = nil, resourceType: ResourceType? = nil, retentionPeriod: RetentionPeriod? = nil, status: RuleStatus? = nil) {
            self.description = description
            self.identifier = identifier
            self.lockEndTime = lockEndTime
            self.lockState = lockState
            self.resourceTags = resourceTags
            self.resourceType = resourceType
            self.retentionPeriod = retentionPeriod
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case identifier = "Identifier"
            case lockEndTime = "LockEndTime"
            case lockState = "LockState"
            case resourceTags = "ResourceTags"
            case resourceType = "ResourceType"
            case retentionPeriod = "RetentionPeriod"
            case status = "Status"
        }
    }
}

// MARK: - Errors

/// Error enum for Rbin
public struct RbinErrorType: AWSErrorType {
    enum Code: String {
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Rbin
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

    /// The specified retention rule lock request can't be completed.
    public static var conflictException: Self { .init(.conflictException) }
    /// The service could not respond to the request due to an internal problem.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The specified resource was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request would cause a service quota for the number of tags per resource to be exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// One or more of the parameters in the request is not valid.
    public static var validationException: Self { .init(.validationException) }
}

extension RbinErrorType: Equatable {
    public static func == (lhs: RbinErrorType, rhs: RbinErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension RbinErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
