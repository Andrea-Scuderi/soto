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

/// Service object for interacting with AWS Pricing service.
///
/// Amazon Web Services Price List API is a centralized and convenient way to programmatically query Amazon Web Services for services, products, and pricing information. The Amazon Web Services Price List uses standardized product attributes such as Location, Storage Class, and Operating System, and provides prices at the SKU level. You can use the Amazon Web Services Price List to build cost control and scenario planning tools, reconcile billing data, forecast future spend for budgeting purposes, and provide cost benefit analysis that compare your internal workloads with Amazon Web Services. Use GetServices without a service code to retrieve the service codes for all AWS services, then  GetServices with a service code to retrieve the attribute names for  that service. After you have the service code and attribute names, you can use GetAttributeValues to see what values are available for an attribute. With the service code and an attribute name and value,  you can use GetProducts to find specific products that you're interested in, such as  an AmazonEC2 instance, with a Provisioned IOPS  volumeType. Service Endpoint Amazon Web Services Price List service API provides the following two endpoints:   https://api.pricing.us-east-1.amazonaws.com   https://api.pricing.ap-south-1.amazonaws.com
public struct Pricing: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Pricing client
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
            amzTarget: "AWSPriceListService",
            service: "api.pricing",
            signingName: "pricing",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-10-15",
            endpoint: endpoint,
            errorType: PricingErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Returns the metadata for one service or a list of the metadata for all services. Use this without a service code to get the service codes for all services. Use it with a service code, such as AmazonEC2, to get information specific to  that service, such as the attribute  names available for that service. For example, some of the attribute names available for EC2 are  volumeType, maxIopsVolume, operation, locationType, and instanceCapacity10xlarge.
    public func describeServices(_ input: DescribeServicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServicesResponse> {
        return self.client.execute(operation: "DescribeServices", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of attribute values. Attributes are similar to the details  in a Price List API offer file. For a list of available attributes, see  Offer File Definitions in the Billing and Cost Management User Guide.
    public func getAttributeValues(_ input: GetAttributeValuesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAttributeValuesResponse> {
        return self.client.execute(operation: "GetAttributeValues", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all products that match the filter criteria.
    public func getProducts(_ input: GetProductsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProductsResponse> {
        return self.client.execute(operation: "GetProducts", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension Pricing {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Pricing, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension Pricing {
    /// Returns the metadata for one service or a list of the metadata for all services. Use this without a service code to get the service codes for all services. Use it with a service code, such as AmazonEC2, to get information specific to  that service, such as the attribute  names available for that service. For example, some of the attribute names available for EC2 are  volumeType, maxIopsVolume, operation, locationType, and instanceCapacity10xlarge.
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
    public func describeServicesPaginator<Result>(
        _ input: DescribeServicesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeServicesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.describeServices,
            inputKey: \DescribeServicesRequest.nextToken,
            outputKey: \DescribeServicesResponse.nextToken,
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
    public func describeServicesPaginator(
        _ input: DescribeServicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeServicesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.describeServices,
            inputKey: \DescribeServicesRequest.nextToken,
            outputKey: \DescribeServicesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns a list of attribute values. Attributes are similar to the details  in a Price List API offer file. For a list of available attributes, see  Offer File Definitions in the Billing and Cost Management User Guide.
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
    public func getAttributeValuesPaginator<Result>(
        _ input: GetAttributeValuesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetAttributeValuesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.getAttributeValues,
            inputKey: \GetAttributeValuesRequest.nextToken,
            outputKey: \GetAttributeValuesResponse.nextToken,
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
    public func getAttributeValuesPaginator(
        _ input: GetAttributeValuesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetAttributeValuesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.getAttributeValues,
            inputKey: \GetAttributeValuesRequest.nextToken,
            outputKey: \GetAttributeValuesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Returns a list of all products that match the filter criteria.
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
    public func getProductsPaginator<Result>(
        _ input: GetProductsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetProductsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.getProducts,
            inputKey: \GetProductsRequest.nextToken,
            outputKey: \GetProductsResponse.nextToken,
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
    public func getProductsPaginator(
        _ input: GetProductsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetProductsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.getProducts,
            inputKey: \GetProductsRequest.nextToken,
            outputKey: \GetProductsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Pricing.DescribeServicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Pricing.DescribeServicesRequest {
        return .init(
            formatVersion: self.formatVersion,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )
    }
}

extension Pricing.GetAttributeValuesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Pricing.GetAttributeValuesRequest {
        return .init(
            attributeName: self.attributeName,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )
    }
}

extension Pricing.GetProductsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Pricing.GetProductsRequest {
        return .init(
            filters: self.filters,
            formatVersion: self.formatVersion,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )
    }
}
