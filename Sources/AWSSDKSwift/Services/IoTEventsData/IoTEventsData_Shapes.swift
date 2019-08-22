// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension IoTEventsData {

    public struct BatchPutMessageErrorEntry: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "errorCode", required: false, type: .enum), 
            AWSShapeMember(label: "errorMessage", required: false, type: .string), 
            AWSShapeMember(label: "messageId", required: false, type: .string)
        ]

        /// The code associated with the error.
        public let errorCode: ErrorCode?
        /// More information about the error.
        public let errorMessage: String?
        /// The ID of the message that caused the error. (See the value corresponding to the "messageId" key in the "message" object.)
        public let messageId: String?

        public init(errorCode: ErrorCode? = nil, errorMessage: String? = nil, messageId: String? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.messageId = messageId
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "errorCode"
            case errorMessage = "errorMessage"
            case messageId = "messageId"
        }
    }

    public struct BatchPutMessageRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "messages", required: true, type: .list)
        ]

        /// The list of messages to send. Each message has the following format: '{ "messageId": "string", "inputName": "string", "payload": "string"}' 
        public let messages: [Message]

        public init(messages: [Message]) {
            self.messages = messages
        }

        public func validate(name: String) throws {
            try messages.forEach {
                try $0.validate(name: "\(name).messages[]")
            }
            try validate(messages, name:"messages", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case messages = "messages"
        }
    }

    public struct BatchPutMessageResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "BatchPutMessageErrorEntries", required: false, type: .list)
        ]

        /// A list of any errors encountered when sending the messages.
        public let batchPutMessageErrorEntries: [BatchPutMessageErrorEntry]?

        public init(batchPutMessageErrorEntries: [BatchPutMessageErrorEntry]? = nil) {
            self.batchPutMessageErrorEntries = batchPutMessageErrorEntries
        }

        private enum CodingKeys: String, CodingKey {
            case batchPutMessageErrorEntries = "BatchPutMessageErrorEntries"
        }
    }

    public struct BatchUpdateDetectorErrorEntry: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "errorCode", required: false, type: .enum), 
            AWSShapeMember(label: "errorMessage", required: false, type: .string), 
            AWSShapeMember(label: "messageId", required: false, type: .string)
        ]

        /// The code of the error.
        public let errorCode: ErrorCode?
        /// A message describing the error.
        public let errorMessage: String?
        /// The "messageId" of the update request that caused the error. (The value of the "messageId" in the update request "Detector" object.)
        public let messageId: String?

        public init(errorCode: ErrorCode? = nil, errorMessage: String? = nil, messageId: String? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.messageId = messageId
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "errorCode"
            case errorMessage = "errorMessage"
            case messageId = "messageId"
        }
    }

    public struct BatchUpdateDetectorRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "detectors", required: true, type: .list)
        ]

        /// The list of detectors (instances) to update, along with the values to update.
        public let detectors: [UpdateDetectorRequest]

        public init(detectors: [UpdateDetectorRequest]) {
            self.detectors = detectors
        }

        public func validate(name: String) throws {
            try detectors.forEach {
                try $0.validate(name: "\(name).detectors[]")
            }
            try validate(detectors, name:"detectors", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case detectors = "detectors"
        }
    }

    public struct BatchUpdateDetectorResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "batchUpdateDetectorErrorEntries", required: false, type: .list)
        ]

        /// A list of those detector updates that resulted in errors. (If an error is listed here, the specific update did not occur.)
        public let batchUpdateDetectorErrorEntries: [BatchUpdateDetectorErrorEntry]?

        public init(batchUpdateDetectorErrorEntries: [BatchUpdateDetectorErrorEntry]? = nil) {
            self.batchUpdateDetectorErrorEntries = batchUpdateDetectorErrorEntries
        }

        private enum CodingKeys: String, CodingKey {
            case batchUpdateDetectorErrorEntries = "batchUpdateDetectorErrorEntries"
        }
    }

    public struct DescribeDetectorRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "detectorModelName", location: .uri(locationName: "detectorModelName"), required: true, type: .string), 
            AWSShapeMember(label: "keyValue", location: .querystring(locationName: "keyValue"), required: false, type: .string)
        ]

        /// The name of the detector model whose detectors (instances) you want information about.
        public let detectorModelName: String
        /// A filter used to limit results to detectors (instances) created because of the given key ID.
        public let keyValue: String?

        public init(detectorModelName: String, keyValue: String? = nil) {
            self.detectorModelName = detectorModelName
            self.keyValue = keyValue
        }

        public func validate(name: String) throws {
            try validate(detectorModelName, name:"detectorModelName", parent: name, max: 128)
            try validate(detectorModelName, name:"detectorModelName", parent: name, min: 1)
            try validate(detectorModelName, name:"detectorModelName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try validate(keyValue, name:"keyValue", parent: name, max: 128)
            try validate(keyValue, name:"keyValue", parent: name, min: 1)
            try validate(keyValue, name:"keyValue", parent: name, pattern: "^[a-zA-Z0-9\\-_:]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case detectorModelName = "detectorModelName"
            case keyValue = "keyValue"
        }
    }

    public struct DescribeDetectorResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "detector", required: false, type: .structure)
        ]

        /// Information about the detector (instance).
        public let detector: Detector?

        public init(detector: Detector? = nil) {
            self.detector = detector
        }

        private enum CodingKeys: String, CodingKey {
            case detector = "detector"
        }
    }

    public struct Detector: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "creationTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "detectorModelName", required: false, type: .string), 
            AWSShapeMember(label: "detectorModelVersion", required: false, type: .string), 
            AWSShapeMember(label: "keyValue", required: false, type: .string), 
            AWSShapeMember(label: "lastUpdateTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "state", required: false, type: .structure)
        ]

        /// The time the detector (instance) was created.
        public let creationTime: TimeStamp?
        /// The name of the detector model that created this detector (instance).
        public let detectorModelName: String?
        /// The version of the detector model that created this detector (instance).
        public let detectorModelVersion: String?
        /// The value of the key (identifying the device or system) that caused the creation of this detector (instance).
        public let keyValue: String?
        /// The time the detector (instance) was last updated.
        public let lastUpdateTime: TimeStamp?
        /// The current state of the detector (instance).
        public let state: DetectorState?

        public init(creationTime: TimeStamp? = nil, detectorModelName: String? = nil, detectorModelVersion: String? = nil, keyValue: String? = nil, lastUpdateTime: TimeStamp? = nil, state: DetectorState? = nil) {
            self.creationTime = creationTime
            self.detectorModelName = detectorModelName
            self.detectorModelVersion = detectorModelVersion
            self.keyValue = keyValue
            self.lastUpdateTime = lastUpdateTime
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case creationTime = "creationTime"
            case detectorModelName = "detectorModelName"
            case detectorModelVersion = "detectorModelVersion"
            case keyValue = "keyValue"
            case lastUpdateTime = "lastUpdateTime"
            case state = "state"
        }
    }

    public struct DetectorState: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "stateName", required: true, type: .string), 
            AWSShapeMember(label: "timers", required: true, type: .list), 
            AWSShapeMember(label: "variables", required: true, type: .list)
        ]

        /// The name of the state.
        public let stateName: String
        /// The current state of the detector's timers.
        public let timers: [Timer]
        /// The current values of the detector's variables.
        public let variables: [Variable]

        public init(stateName: String, timers: [Timer], variables: [Variable]) {
            self.stateName = stateName
            self.timers = timers
            self.variables = variables
        }

        private enum CodingKeys: String, CodingKey {
            case stateName = "stateName"
            case timers = "timers"
            case variables = "variables"
        }
    }

    public struct DetectorStateDefinition: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "stateName", required: true, type: .string), 
            AWSShapeMember(label: "timers", required: true, type: .list), 
            AWSShapeMember(label: "variables", required: true, type: .list)
        ]

        /// The name of the new state of the detector (instance).
        public let stateName: String
        /// The new values of the detector's timers. Any timer whose value isn't specified is cleared, and its timeout event won't occur.
        public let timers: [TimerDefinition]
        /// The new values of the detector's variables. Any variable whose value isn't specified is cleared.
        public let variables: [VariableDefinition]

        public init(stateName: String, timers: [TimerDefinition], variables: [VariableDefinition]) {
            self.stateName = stateName
            self.timers = timers
            self.variables = variables
        }

        public func validate(name: String) throws {
            try validate(stateName, name:"stateName", parent: name, max: 128)
            try validate(stateName, name:"stateName", parent: name, min: 1)
            try timers.forEach {
                try $0.validate(name: "\(name).timers[]")
            }
            try variables.forEach {
                try $0.validate(name: "\(name).variables[]")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case stateName = "stateName"
            case timers = "timers"
            case variables = "variables"
        }
    }

    public struct DetectorStateSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "stateName", required: false, type: .string)
        ]

        /// The name of the state.
        public let stateName: String?

        public init(stateName: String? = nil) {
            self.stateName = stateName
        }

        private enum CodingKeys: String, CodingKey {
            case stateName = "stateName"
        }
    }

    public struct DetectorSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "creationTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "detectorModelName", required: false, type: .string), 
            AWSShapeMember(label: "detectorModelVersion", required: false, type: .string), 
            AWSShapeMember(label: "keyValue", required: false, type: .string), 
            AWSShapeMember(label: "lastUpdateTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "state", required: false, type: .structure)
        ]

        /// The time the detector (instance) was created.
        public let creationTime: TimeStamp?
        /// The name of the detector model that created this detector (instance).
        public let detectorModelName: String?
        /// The version of the detector model that created this detector (instance).
        public let detectorModelVersion: String?
        /// The value of the key (identifying the device or system) that caused the creation of this detector (instance).
        public let keyValue: String?
        /// The time the detector (instance) was last updated.
        public let lastUpdateTime: TimeStamp?
        /// The current state of the detector (instance).
        public let state: DetectorStateSummary?

        public init(creationTime: TimeStamp? = nil, detectorModelName: String? = nil, detectorModelVersion: String? = nil, keyValue: String? = nil, lastUpdateTime: TimeStamp? = nil, state: DetectorStateSummary? = nil) {
            self.creationTime = creationTime
            self.detectorModelName = detectorModelName
            self.detectorModelVersion = detectorModelVersion
            self.keyValue = keyValue
            self.lastUpdateTime = lastUpdateTime
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case creationTime = "creationTime"
            case detectorModelName = "detectorModelName"
            case detectorModelVersion = "detectorModelVersion"
            case keyValue = "keyValue"
            case lastUpdateTime = "lastUpdateTime"
            case state = "state"
        }
    }

    public enum ErrorCode: String, CustomStringConvertible, Codable {
        case resourcenotfoundexception = "ResourceNotFoundException"
        case invalidrequestexception = "InvalidRequestException"
        case internalfailureexception = "InternalFailureException"
        case serviceunavailableexception = "ServiceUnavailableException"
        case throttlingexception = "ThrottlingException"
        public var description: String { return self.rawValue }
    }

    public struct ListDetectorsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "detectorModelName", location: .uri(locationName: "detectorModelName"), required: true, type: .string), 
            AWSShapeMember(label: "maxResults", location: .querystring(locationName: "maxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "nextToken", location: .querystring(locationName: "nextToken"), required: false, type: .string), 
            AWSShapeMember(label: "stateName", location: .querystring(locationName: "stateName"), required: false, type: .string)
        ]

        /// The name of the detector model whose detectors (instances) are listed.
        public let detectorModelName: String
        /// The maximum number of results to return at one time.
        public let maxResults: Int?
        /// The token for the next set of results.
        public let nextToken: String?
        /// A filter that limits results to those detectors (instances) in the given state.
        public let stateName: String?

        public init(detectorModelName: String, maxResults: Int? = nil, nextToken: String? = nil, stateName: String? = nil) {
            self.detectorModelName = detectorModelName
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.stateName = stateName
        }

        public func validate(name: String) throws {
            try validate(detectorModelName, name:"detectorModelName", parent: name, max: 128)
            try validate(detectorModelName, name:"detectorModelName", parent: name, min: 1)
            try validate(detectorModelName, name:"detectorModelName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try validate(maxResults, name:"maxResults", parent: name, max: 250)
            try validate(maxResults, name:"maxResults", parent: name, min: 1)
            try validate(stateName, name:"stateName", parent: name, max: 128)
            try validate(stateName, name:"stateName", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case detectorModelName = "detectorModelName"
            case maxResults = "maxResults"
            case nextToken = "nextToken"
            case stateName = "stateName"
        }
    }

    public struct ListDetectorsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "detectorSummaries", required: false, type: .list), 
            AWSShapeMember(label: "nextToken", required: false, type: .string)
        ]

        /// A list of summary information about the detectors (instances).
        public let detectorSummaries: [DetectorSummary]?
        /// A token to retrieve the next set of results, or null if there are no additional results.
        public let nextToken: String?

        public init(detectorSummaries: [DetectorSummary]? = nil, nextToken: String? = nil) {
            self.detectorSummaries = detectorSummaries
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case detectorSummaries = "detectorSummaries"
            case nextToken = "nextToken"
        }
    }

    public struct Message: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "inputName", required: true, type: .string), 
            AWSShapeMember(label: "messageId", required: true, type: .string), 
            AWSShapeMember(label: "payload", required: true, type: .blob)
        ]

        /// The name of the input into which the message payload is transformed.
        public let inputName: String
        /// The ID to assign to the message. Within each batch sent, each "messageId" must be unique.
        public let messageId: String
        /// The payload of the message. This can be a JSON string or a Base-64-encoded string representing binary data (in which case you must decode it).
        public let payload: Data

        public init(inputName: String, messageId: String, payload: Data) {
            self.inputName = inputName
            self.messageId = messageId
            self.payload = payload
        }

        public func validate(name: String) throws {
            try validate(inputName, name:"inputName", parent: name, max: 128)
            try validate(inputName, name:"inputName", parent: name, min: 1)
            try validate(inputName, name:"inputName", parent: name, pattern: "^[a-zA-Z][a-zA-Z0-9_]*$")
            try validate(messageId, name:"messageId", parent: name, max: 64)
            try validate(messageId, name:"messageId", parent: name, min: 1)
            try validate(messageId, name:"messageId", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case inputName = "inputName"
            case messageId = "messageId"
            case payload = "payload"
        }
    }

    public struct Timer: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", required: true, type: .string), 
            AWSShapeMember(label: "timestamp", required: true, type: .timestamp)
        ]

        /// The name of the timer.
        public let name: String
        /// The number of seconds which have elapsed on the timer.
        public let timestamp: TimeStamp

        public init(name: String, timestamp: TimeStamp) {
            self.name = name
            self.timestamp = timestamp
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case timestamp = "timestamp"
        }
    }

    public struct TimerDefinition: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", required: true, type: .string), 
            AWSShapeMember(label: "seconds", required: true, type: .integer)
        ]

        /// The name of the timer.
        public let name: String
        /// The new setting of the timer (the number of seconds before the timer elapses).
        public let seconds: Int

        public init(name: String, seconds: Int) {
            self.name = name
            self.seconds = seconds
        }

        public func validate(name: String) throws {
            try validate(self.name, name:"name", parent: name, max: 128)
            try validate(self.name, name:"name", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case seconds = "seconds"
        }
    }

    public struct UpdateDetectorRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "detectorModelName", required: true, type: .string), 
            AWSShapeMember(label: "keyValue", required: false, type: .string), 
            AWSShapeMember(label: "messageId", required: true, type: .string), 
            AWSShapeMember(label: "state", required: true, type: .structure)
        ]

        /// The name of the detector model that created the detectors (instances).
        public let detectorModelName: String
        /// The value of the input key attribute (identifying the device or system) that caused the creation of this detector (instance).
        public let keyValue: String?
        /// The ID to assign to the detector update "message". Each "messageId" must be unique within each batch sent.
        public let messageId: String
        /// The new state, variable values, and timer settings of the detector (instance).
        public let state: DetectorStateDefinition

        public init(detectorModelName: String, keyValue: String? = nil, messageId: String, state: DetectorStateDefinition) {
            self.detectorModelName = detectorModelName
            self.keyValue = keyValue
            self.messageId = messageId
            self.state = state
        }

        public func validate(name: String) throws {
            try validate(detectorModelName, name:"detectorModelName", parent: name, max: 128)
            try validate(detectorModelName, name:"detectorModelName", parent: name, min: 1)
            try validate(detectorModelName, name:"detectorModelName", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try validate(keyValue, name:"keyValue", parent: name, max: 128)
            try validate(keyValue, name:"keyValue", parent: name, min: 1)
            try validate(keyValue, name:"keyValue", parent: name, pattern: "^[a-zA-Z0-9\\-_:]+$")
            try validate(messageId, name:"messageId", parent: name, max: 64)
            try validate(messageId, name:"messageId", parent: name, min: 1)
            try validate(messageId, name:"messageId", parent: name, pattern: "^[a-zA-Z0-9_-]+$")
            try state.validate(name: "\(name).state")
        }

        private enum CodingKeys: String, CodingKey {
            case detectorModelName = "detectorModelName"
            case keyValue = "keyValue"
            case messageId = "messageId"
            case state = "state"
        }
    }

    public struct Variable: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", required: true, type: .string), 
            AWSShapeMember(label: "value", required: true, type: .string)
        ]

        /// The name of the variable.
        public let name: String
        /// The current value of the variable.
        public let value: String

        public init(name: String, value: String) {
            self.name = name
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case value = "value"
        }
    }

    public struct VariableDefinition: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", required: true, type: .string), 
            AWSShapeMember(label: "value", required: true, type: .string)
        ]

        /// The name of the variable.
        public let name: String
        /// The new value of the variable.
        public let value: String

        public init(name: String, value: String) {
            self.name = name
            self.value = value
        }

        public func validate(name: String) throws {
            try validate(self.name, name:"name", parent: name, max: 128)
            try validate(self.name, name:"name", parent: name, min: 1)
            try validate(self.name, name:"name", parent: name, pattern: "^[a-zA-Z][a-zA-Z0-9_]*$")
            try validate(value, name:"value", parent: name, max: 1024)
            try validate(value, name:"value", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case value = "value"
        }
    }
}
