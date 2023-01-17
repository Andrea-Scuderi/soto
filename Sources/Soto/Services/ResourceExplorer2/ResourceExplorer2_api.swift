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

/// Service object for interacting with AWS ResourceExplorer2 service.
///
/// Amazon Web Services Resource Explorer is a resource search and discovery service. By using Resource Explorer, you can explore your resources using an internet search engine-like experience. Examples of resources include Amazon Relational Database Service (Amazon RDS) instances, Amazon Simple Storage Service (Amazon S3) buckets, or Amazon DynamoDB tables. You can search for your resources using resource metadata like names, tags, and IDs. Resource Explorer can search across all of the Amazon Web Services Regions in your account in which you turn the service on, to simplify your cross-Region workloads. Resource Explorer scans the resources in each of the Amazon Web Services Regions in your Amazon Web Services account in which you turn on Resource Explorer. Resource Explorer creates and maintains an index in each Region, with the details of that Region's resources. You can search across all of the indexed Regions in your account by designating one of your Amazon Web Services Regions to contain the aggregator index for the account. When you promote a local index in a Region to become the aggregator index for the account, Resource Explorer automatically replicates the index information from all local indexes in the other Regions to the aggregator index. Therefore, the Region with the aggregator index has a copy of all resource information for all Regions in the account where you turned on Resource Explorer. As a result, views in the aggregator index Region include resources from all of the indexed Regions in your account. For more information about Amazon Web Services Resource Explorer, including how to enable and configure the service, see the Amazon Web Services Resource Explorer User Guide.
public struct ResourceExplorer2: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ResourceExplorer2 client
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
            service: "resource-explorer-2",
            serviceProtocol: .restjson,
            apiVersion: "2022-07-28",
            endpoint: endpoint,
            serviceEndpoints: [
                "af-south-1": "resource-explorer-2.af-south-1.api.aws",
                "ap-east-1": "resource-explorer-2.ap-east-1.api.aws",
                "ap-northeast-1": "resource-explorer-2.ap-northeast-1.api.aws",
                "ap-northeast-2": "resource-explorer-2.ap-northeast-2.api.aws",
                "ap-northeast-3": "resource-explorer-2.ap-northeast-3.api.aws",
                "ap-south-1": "resource-explorer-2.ap-south-1.api.aws",
                "ap-south-2": "resource-explorer-2.ap-south-2.api.aws",
                "ap-southeast-1": "resource-explorer-2.ap-southeast-1.api.aws",
                "ap-southeast-2": "resource-explorer-2.ap-southeast-2.api.aws",
                "ca-central-1": "resource-explorer-2.ca-central-1.api.aws",
                "cn-north-1": "resource-explorer-2.cn-north-1.api.amazonwebservices.com.cn",
                "cn-northwest-1": "resource-explorer-2.cn-northwest-1.api.amazonwebservices.com.cn",
                "eu-central-1": "resource-explorer-2.eu-central-1.api.aws",
                "eu-central-2": "resource-explorer-2.eu-central-2.api.aws",
                "eu-north-1": "resource-explorer-2.eu-north-1.api.aws",
                "eu-west-1": "resource-explorer-2.eu-west-1.api.aws",
                "eu-west-2": "resource-explorer-2.eu-west-2.api.aws",
                "eu-west-3": "resource-explorer-2.eu-west-3.api.aws",
                "sa-east-1": "resource-explorer-2.sa-east-1.api.aws",
                "us-east-1": "resource-explorer-2.us-east-1.api.aws",
                "us-east-2": "resource-explorer-2.us-east-2.api.aws",
                "us-gov-east-1": "resource-explorer-2.us-gov-east-1.api.aws",
                "us-gov-west-1": "resource-explorer-2.us-gov-west-1.api.aws",
                "us-west-1": "resource-explorer-2.us-west-1.api.aws",
                "us-west-2": "resource-explorer-2.us-west-2.api.aws"
            ],
            variantEndpoints: [
                [.fips]: .init(endpoints: [
                    "af-south-1": "resource-explorer-2-fips.af-south-1.api.aws",
                    "ap-east-1": "resource-explorer-2-fips.ap-east-1.api.aws",
                    "ap-northeast-1": "resource-explorer-2-fips.ap-northeast-1.api.aws",
                    "ap-northeast-2": "resource-explorer-2-fips.ap-northeast-2.api.aws",
                    "ap-northeast-3": "resource-explorer-2-fips.ap-northeast-3.api.aws",
                    "ap-south-1": "resource-explorer-2-fips.ap-south-1.api.aws",
                    "ap-south-2": "resource-explorer-2-fips.ap-south-2.api.aws",
                    "ap-southeast-1": "resource-explorer-2-fips.ap-southeast-1.api.aws",
                    "ap-southeast-2": "resource-explorer-2-fips.ap-southeast-2.api.aws",
                    "ca-central-1": "resource-explorer-2-fips.ca-central-1.api.aws",
                    "cn-north-1": "resource-explorer-2-fips.cn-north-1.api.amazonwebservices.com.cn",
                    "cn-northwest-1": "resource-explorer-2-fips.cn-northwest-1.api.amazonwebservices.com.cn",
                    "eu-central-1": "resource-explorer-2-fips.eu-central-1.api.aws",
                    "eu-central-2": "resource-explorer-2-fips.eu-central-2.api.aws",
                    "eu-north-1": "resource-explorer-2-fips.eu-north-1.api.aws",
                    "eu-west-1": "resource-explorer-2-fips.eu-west-1.api.aws",
                    "eu-west-2": "resource-explorer-2-fips.eu-west-2.api.aws",
                    "eu-west-3": "resource-explorer-2-fips.eu-west-3.api.aws",
                    "sa-east-1": "resource-explorer-2-fips.sa-east-1.api.aws",
                    "us-east-1": "resource-explorer-2-fips.us-east-1.api.aws",
                    "us-east-2": "resource-explorer-2-fips.us-east-2.api.aws",
                    "us-gov-east-1": "resource-explorer-2-fips.us-gov-east-1.api.aws",
                    "us-gov-west-1": "resource-explorer-2-fips.us-gov-west-1.api.aws",
                    "us-west-1": "resource-explorer-2-fips.us-west-1.api.aws",
                    "us-west-2": "resource-explorer-2-fips.us-west-2.api.aws"
                ])
            ],
            errorType: ResourceExplorer2ErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Sets the specified view as the default for the Amazon Web Services Region in which you call this operation. When a user performs a Search that doesn't explicitly specify which view to use, then Amazon Web Services Resource Explorer automatically chooses this default view for searches performed in this Amazon Web Services Region. If an Amazon Web Services Region doesn't have a default view  configured, then users must explicitly specify a view with every Search  operation performed in that Region.
    public func associateDefaultView(_ input: AssociateDefaultViewInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateDefaultViewOutput> {
        return self.client.execute(operation: "AssociateDefaultView", path: "/AssociateDefaultView", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves details about a list of views.
    public func batchGetView(_ input: BatchGetViewInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchGetViewOutput> {
        return self.client.execute(operation: "BatchGetView", path: "/BatchGetView", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Turns on Amazon Web Services Resource Explorer in the Amazon Web Services Region in which you called this operation by creating an index. Resource Explorer begins discovering the resources in this Region and stores the details about the resources in the index so that they can be queried by using the Search operation. You can create only one index in a Region.  This operation creates only a local index. To promote the local index in one Amazon Web Services Region into the aggregator index for the Amazon Web Services account, use the UpdateIndexType operation. For more information, see Turning on cross-Region search by creating an aggregator index in the Amazon Web Services Resource Explorer User Guide.  For more details about what happens when you turn on Resource Explorer in an Amazon Web Services Region, see Turn on Resource Explorer to index your resources in an Amazon Web Services Region in the Amazon Web Services Resource Explorer User Guide. If this is the first Amazon Web Services Region in which you've created an index for Resource Explorer, then this operation also creates a service-linked role in your Amazon Web Services account that allows Resource Explorer to enumerate your resources to populate the index.    Action: resource-explorer-2:CreateIndex   Resource: The ARN of the index (as it will exist after the operation completes) in the Amazon Web Services Region and account in which you're trying to create the index. Use the wildcard character (*) at the end of the string to match the eventual UUID. For example, the following Resource element restricts the role or user to creating an index in only the us-east-2 Region of the specified account.  "Resource": "arn:aws:resource-explorer-2:us-west-2:&lt;account-id&gt;:index/*"  Alternatively, you can use "Resource": "*" to allow the role or user to create an index in any Region.    Action: iam:CreateServiceLinkedRole   Resource: No specific resource (*).  This permission is required only the first time you create an index to turn on Resource Explorer in the account. Resource Explorer uses this to create the service-linked role needed to index the resources in your account. Resource Explorer uses the same service-linked role for all additional indexes you create afterwards.
    public func createIndex(_ input: CreateIndexInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateIndexOutput> {
        return self.client.execute(operation: "CreateIndex", path: "/CreateIndex", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a view that users can query by using the Search operation. Results from queries that you make using this view include only resources that match the view's Filters. For more information about Amazon Web Services Resource Explorer views, see Managing views in the Amazon Web Services Resource Explorer User Guide. Only the principals with an IAM identity-based policy that grants Allow to the Search action on a Resource with the Amazon resource name (ARN) of this view can Search using views you create with this operation.
    public func createView(_ input: CreateViewInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateViewOutput> {
        return self.client.execute(operation: "CreateView", path: "/CreateView", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified index and turns off Amazon Web Services Resource Explorer in the specified Amazon Web Services Region. When you delete an index, Resource Explorer stops discovering and indexing resources in that Region. Resource Explorer also deletes all views in that Region. These actions occur as asynchronous background tasks. You can check to see when the actions are complete by using the GetIndex operation and checking the Status response value.  If the index you delete is the aggregator index for the Amazon Web Services account, you must wait 24 hours before you can promote another local index to be the aggregator index for the account. Users can't perform account-wide searches using Resource Explorer until another aggregator index is configured.
    public func deleteIndex(_ input: DeleteIndexInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIndexOutput> {
        return self.client.execute(operation: "DeleteIndex", path: "/DeleteIndex", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified view. If the specified view is the default view for its Amazon Web Services Region, then all Search operations in that Region must explicitly specify the view to use until you configure a new default by calling the AssociateDefaultView operation.
    public func deleteView(_ input: DeleteViewInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteViewOutput> {
        return self.client.execute(operation: "DeleteView", path: "/DeleteView", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// After you call this operation, the affected Amazon Web Services Region no longer has a default view. All Search operations in that Region must explicitly specify a view or the operation fails. You can configure a new default by calling the AssociateDefaultView operation. If an Amazon Web Services Region doesn't have a default view  configured, then users must explicitly specify a view with every Search  operation performed in that Region.
    @discardableResult public func disassociateDefaultView(logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DisassociateDefaultView", path: "/DisassociateDefaultView", httpMethod: .POST, serviceConfig: self.config, logger: logger, on: eventLoop)
    }

    /// Retrieves the Amazon Resource Name (ARN) of the view that is the default for the Amazon Web Services Region in which you call this operation. You can then call GetView to retrieve the details of that view.
    public func getDefaultView(logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDefaultViewOutput> {
        return self.client.execute(operation: "GetDefaultView", path: "/GetDefaultView", httpMethod: .POST, serviceConfig: self.config, logger: logger, on: eventLoop)
    }

    /// Retrieves details about the Amazon Web Services Resource Explorer index in the Amazon Web Services Region in which you invoked the operation.
    public func getIndex(logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetIndexOutput> {
        return self.client.execute(operation: "GetIndex", path: "/GetIndex", httpMethod: .POST, serviceConfig: self.config, logger: logger, on: eventLoop)
    }

    /// Retrieves details of the specified view.
    public func getView(_ input: GetViewInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetViewOutput> {
        return self.client.execute(operation: "GetView", path: "/GetView", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of all of the indexes in Amazon Web Services Regions that are currently collecting resource information for Amazon Web Services Resource Explorer.
    public func listIndexes(_ input: ListIndexesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListIndexesOutput> {
        return self.client.execute(operation: "ListIndexes", path: "/ListIndexes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of all resource types currently supported by Amazon Web Services Resource Explorer.
    public func listSupportedResourceTypes(_ input: ListSupportedResourceTypesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSupportedResourceTypesOutput> {
        return self.client.execute(operation: "ListSupportedResourceTypes", path: "/ListSupportedResourceTypes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags that are attached to the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceOutput> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the Amazon resource names (ARNs) of the views available in the Amazon Web Services Region in which you call this operation.  Always check the NextToken response parameter
    /// for a null value when calling a paginated operation. These operations can
    /// occasionally return an empty set of results even when there are more results available. The
    /// NextToken response parameter value is null only
    /// when there are no more results to display.
    public func listViews(_ input: ListViewsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListViewsOutput> {
        return self.client.execute(operation: "ListViews", path: "/ListViews", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Searches for resources and displays details about all resources that match the specified criteria. You must specify a query string. All search queries must use a view. If you don't explicitly specify a view, then Amazon Web Services Resource Explorer uses the default view for the Amazon Web Services Region in which you call this operation. The results are the logical intersection of the results that match both the QueryString parameter supplied to this operation and the SearchFilter parameter attached to the view. For the complete syntax supported by the QueryString parameter, see Search query syntax reference for Resource Explorer. If your search results are empty, or are missing results that you think should be there, see Troubleshooting Resource Explorer search.
    public func search(_ input: SearchInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchOutput> {
        return self.client.execute(operation: "Search", path: "/Search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds one or more tag key and value pairs to an Amazon Web Services Resource Explorer view or index.
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceOutput> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tag key and value pairs from an Amazon Web Services Resource Explorer view or index.
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceOutput> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Changes the type of the index from one of the following types to the other. For more information about indexes and the role they perform in Amazon Web Services Resource Explorer, see Turning on cross-Region search by creating an aggregator index in the Amazon Web Services Resource Explorer User Guide.     AGGREGATOR index type  The index contains information about resources from all Amazon Web Services Regions in the Amazon Web Services account in which you've created a Resource Explorer index. Resource information from all other Regions is replicated to this Region's index. When you change the index type to AGGREGATOR, Resource Explorer turns on replication of all discovered resource information from the other Amazon Web Services Regions in your account to this index. You can then, from this Region only, perform resource search queries that span all Amazon Web Services Regions in the Amazon Web Services account. Turning on replication from all other Regions is performed by asynchronous background tasks. You can check the status of the asynchronous tasks by using the GetIndex operation. When the asynchronous tasks complete, the Status response of that operation changes from UPDATING to ACTIVE. After that, you can start to see results from other Amazon Web Services Regions in query results. However, it can take several hours for replication from all other Regions to complete.  You can have only one aggregator index per Amazon Web Services account. Before you can promote a different index to be the aggregator index for the account, you must first demote the existing aggregator index to type LOCAL.      LOCAL index type  The index contains information about resources in only the Amazon Web Services Region in which the index exists. If an aggregator index in another Region exists, then information in this local index is replicated to the aggregator index. When you change the index type to LOCAL, Resource Explorer turns off the replication of resource information from all other Amazon Web Services Regions in the Amazon Web Services account to this Region. The aggregator index remains in the UPDATING state until all replication with other Regions successfully stops. You can check the status of the asynchronous task by using the GetIndex operation. When Resource Explorer successfully stops all replication with other Regions, the Status response of that operation changes from UPDATING to ACTIVE. Separately, the resource information from other Regions that was previously stored in the index is deleted within 30 days by another background task. Until that asynchronous task completes, some results from other Regions can continue to appear in search results.  After you demote an aggregator index to a local index, you must wait 24 hours before you can promote another index to be the new aggregator index for the account.
    public func updateIndexType(_ input: UpdateIndexTypeInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateIndexTypeOutput> {
        return self.client.execute(operation: "UpdateIndexType", path: "/UpdateIndexType", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies some of the details of a view. You can change the filter string and the list of included properties. You can't change the name of the view.
    public func updateView(_ input: UpdateViewInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateViewOutput> {
        return self.client.execute(operation: "UpdateView", path: "/UpdateView", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension ResourceExplorer2 {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ResourceExplorer2, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension ResourceExplorer2 {
    /// Retrieves a list of all of the indexes in Amazon Web Services Regions that are currently collecting resource information for Amazon Web Services Resource Explorer.
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
    public func listIndexesPaginator<Result>(
        _ input: ListIndexesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListIndexesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listIndexes,
            inputKey: \ListIndexesInput.nextToken,
            outputKey: \ListIndexesOutput.nextToken,
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
    public func listIndexesPaginator(
        _ input: ListIndexesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListIndexesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listIndexes,
            inputKey: \ListIndexesInput.nextToken,
            outputKey: \ListIndexesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Retrieves a list of all resource types currently supported by Amazon Web Services Resource Explorer.
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
    public func listSupportedResourceTypesPaginator<Result>(
        _ input: ListSupportedResourceTypesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSupportedResourceTypesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listSupportedResourceTypes,
            inputKey: \ListSupportedResourceTypesInput.nextToken,
            outputKey: \ListSupportedResourceTypesOutput.nextToken,
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
    public func listSupportedResourceTypesPaginator(
        _ input: ListSupportedResourceTypesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSupportedResourceTypesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listSupportedResourceTypes,
            inputKey: \ListSupportedResourceTypesInput.nextToken,
            outputKey: \ListSupportedResourceTypesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Lists the Amazon resource names (ARNs) of the views available in the Amazon Web Services Region in which you call this operation.  Always check the NextToken response parameter
    /// for a null value when calling a paginated operation. These operations can
    /// occasionally return an empty set of results even when there are more results available. The
    /// NextToken response parameter value is null only
    /// when there are no more results to display.
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
    public func listViewsPaginator<Result>(
        _ input: ListViewsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListViewsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listViews,
            inputKey: \ListViewsInput.nextToken,
            outputKey: \ListViewsOutput.nextToken,
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
    public func listViewsPaginator(
        _ input: ListViewsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListViewsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listViews,
            inputKey: \ListViewsInput.nextToken,
            outputKey: \ListViewsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Searches for resources and displays details about all resources that match the specified criteria. You must specify a query string. All search queries must use a view. If you don't explicitly specify a view, then Amazon Web Services Resource Explorer uses the default view for the Amazon Web Services Region in which you call this operation. The results are the logical intersection of the results that match both the QueryString parameter supplied to this operation and the SearchFilter parameter attached to the view. For the complete syntax supported by the QueryString parameter, see Search query syntax reference for Resource Explorer. If your search results are empty, or are missing results that you think should be there, see Troubleshooting Resource Explorer search.
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
    public func searchPaginator<Result>(
        _ input: SearchInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, SearchOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.search,
            inputKey: \SearchInput.nextToken,
            outputKey: \SearchOutput.nextToken,
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
    public func searchPaginator(
        _ input: SearchInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (SearchOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.search,
            inputKey: \SearchInput.nextToken,
            outputKey: \SearchOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ResourceExplorer2.ListIndexesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceExplorer2.ListIndexesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            regions: self.regions,
            type: self.type
        )
    }
}

extension ResourceExplorer2.ListSupportedResourceTypesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceExplorer2.ListSupportedResourceTypesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ResourceExplorer2.ListViewsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceExplorer2.ListViewsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ResourceExplorer2.SearchInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceExplorer2.SearchInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            queryString: self.queryString,
            viewArn: self.viewArn
        )
    }
}
