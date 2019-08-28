// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
 AWS License Manager   This is the AWS License Manager API Reference. It provides descriptions, syntax, and usage examples for each of the actions and data types for License Manager. The topic for each action shows the Query API request parameters and the XML response. You can also view the XML request elements in the WSDL.   Alternatively, you can use one of the AWS SDKs to access an API that's tailored to the programming language or platform that you're using. For more information, see AWS SDKs. 
*/
public struct LicenseManager {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AWSLicenseManager",
            service: "license-manager",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-08-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [LicenseManagerErrorType.self]
        )
    }

    ///  Creates a new license configuration object. A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or VCPU), tenancy (shared tenancy, Amazon EC2 Dedicated Instance, Amazon EC2 Dedicated Host, or any of these), host affinity (how long a VM must be associated with a host), the number of licenses purchased and used.
    public func createLicenseConfiguration(_ input: CreateLicenseConfigurationRequest) throws -> Future<CreateLicenseConfigurationResponse> {
        return try client.send(operation: "CreateLicenseConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing license configuration. This action fails if the configuration is in use.
    public func deleteLicenseConfiguration(_ input: DeleteLicenseConfigurationRequest) throws -> Future<DeleteLicenseConfigurationResponse> {
        return try client.send(operation: "DeleteLicenseConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a detailed description of a license configuration.
    public func getLicenseConfiguration(_ input: GetLicenseConfigurationRequest) throws -> Future<GetLicenseConfigurationResponse> {
        return try client.send(operation: "GetLicenseConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets License Manager settings for a region. Exposes the configured S3 bucket, SNS topic, etc., for inspection. 
    public func getServiceSettings(_ input: GetServiceSettingsRequest) throws -> Future<GetServiceSettingsResponse> {
        return try client.send(operation: "GetServiceSettings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the resource associations for a license configuration. Resource associations need not consume licenses from a license configuration. For example, an AMI or a stopped instance may not consume a license (depending on the license rules). Use this operation to find all resources associated with a license configuration.
    public func listAssociationsForLicenseConfiguration(_ input: ListAssociationsForLicenseConfigurationRequest) throws -> Future<ListAssociationsForLicenseConfigurationResponse> {
        return try client.send(operation: "ListAssociationsForLicenseConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists license configuration objects for an account, each containing the name, description, license type, and other license terms modeled from a license agreement.
    public func listLicenseConfigurations(_ input: ListLicenseConfigurationsRequest) throws -> Future<ListLicenseConfigurationsResponse> {
        return try client.send(operation: "ListLicenseConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the license configuration for a resource.
    public func listLicenseSpecificationsForResource(_ input: ListLicenseSpecificationsForResourceRequest) throws -> Future<ListLicenseSpecificationsForResourceResponse> {
        return try client.send(operation: "ListLicenseSpecificationsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a detailed list of resources.
    public func listResourceInventory(_ input: ListResourceInventoryRequest) throws -> Future<ListResourceInventoryResponse> {
        return try client.send(operation: "ListResourceInventory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists tags attached to a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time. Use this action to audit the current license consumption for any license inventory and configuration.
    public func listUsageForLicenseConfiguration(_ input: ListUsageForLicenseConfigurationRequest) throws -> Future<ListUsageForLicenseConfigurationResponse> {
        return try client.send(operation: "ListUsageForLicenseConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attach one of more tags to any resource.
    public func tagResource(_ input: TagResourceRequest) throws -> Future<TagResourceResponse> {
        return try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Remove tags from a resource.
    public func untagResource(_ input: UntagResourceRequest) throws -> Future<UntagResourceResponse> {
        return try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the attributes of an existing license configuration object. A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (Instances, cores, sockets, VCPUs), tenancy (shared or Dedicated Host), host affinity (how long a VM is associated with a host), the number of licenses purchased and used.
    public func updateLicenseConfiguration(_ input: UpdateLicenseConfigurationRequest) throws -> Future<UpdateLicenseConfigurationResponse> {
        return try client.send(operation: "UpdateLicenseConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or removes license configurations for a specified AWS resource. This operation currently supports updating the license specifications of AMIs, instances, and hosts. Launch templates and AWS CloudFormation templates are not managed from this operation as those resources send the license configurations directly to a resource creation operation, such as RunInstances.
    public func updateLicenseSpecificationsForResource(_ input: UpdateLicenseSpecificationsForResourceRequest) throws -> Future<UpdateLicenseSpecificationsForResourceResponse> {
        return try client.send(operation: "UpdateLicenseSpecificationsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates License Manager service settings.
    public func updateServiceSettings(_ input: UpdateServiceSettingsRequest) throws -> Future<UpdateServiceSettingsResponse> {
        return try client.send(operation: "UpdateServiceSettings", path: "/", httpMethod: "POST", input: input)
    }
}
