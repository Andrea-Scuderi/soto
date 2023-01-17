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
extension SMS {
    // MARK: Async API Calls

    /// Creates an application. An application consists of one or more server groups. Each server group contain one or more servers.
    public func createApp(_ input: CreateAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppResponse {
        return try await self.client.execute(operation: "CreateApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a replication job. The replication job schedules periodic replication runs to replicate your server to Amazon Web Services. Each replication run creates an Amazon Machine Image (AMI).
    public func createReplicationJob(_ input: CreateReplicationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReplicationJobResponse {
        return try await self.client.execute(operation: "CreateReplicationJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified application. Optionally deletes the launched stack associated with the application and all Server Migration Service replication jobs for servers in the application.
    public func deleteApp(_ input: DeleteAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppResponse {
        return try await self.client.execute(operation: "DeleteApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the launch configuration for the specified application.
    public func deleteAppLaunchConfiguration(_ input: DeleteAppLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppLaunchConfigurationResponse {
        return try await self.client.execute(operation: "DeleteAppLaunchConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the replication configuration for the specified application.
    public func deleteAppReplicationConfiguration(_ input: DeleteAppReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppReplicationConfigurationResponse {
        return try await self.client.execute(operation: "DeleteAppReplicationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the validation configuration for the specified application.
    public func deleteAppValidationConfiguration(_ input: DeleteAppValidationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppValidationConfigurationResponse {
        return try await self.client.execute(operation: "DeleteAppValidationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified replication job. After you delete a replication job, there are no further replication runs. Amazon Web Services deletes the contents of the Amazon S3 bucket used to store Server Migration Service artifacts. The AMIs created by the replication runs are not deleted.
    public func deleteReplicationJob(_ input: DeleteReplicationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReplicationJobResponse {
        return try await self.client.execute(operation: "DeleteReplicationJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes all servers from your server catalog.
    public func deleteServerCatalog(_ input: DeleteServerCatalogRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServerCatalogResponse {
        return try await self.client.execute(operation: "DeleteServerCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the specified connector from Server Migration Service. After you disassociate a connector, it is no longer available to support replication jobs.
    public func disassociateConnector(_ input: DisassociateConnectorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateConnectorResponse {
        return try await self.client.execute(operation: "DisassociateConnector", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Generates a target change set for a currently launched stack and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    public func generateChangeSet(_ input: GenerateChangeSetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateChangeSetResponse {
        return try await self.client.execute(operation: "GenerateChangeSet", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Generates an CloudFormation template based on the current launch configuration and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
    public func generateTemplate(_ input: GenerateTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateTemplateResponse {
        return try await self.client.execute(operation: "GenerateTemplate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve information about the specified application.
    public func getApp(_ input: GetAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAppResponse {
        return try await self.client.execute(operation: "GetApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the application launch configuration associated with the specified application.
    public func getAppLaunchConfiguration(_ input: GetAppLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAppLaunchConfigurationResponse {
        return try await self.client.execute(operation: "GetAppLaunchConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the application replication configuration associated with the specified application.
    public func getAppReplicationConfiguration(_ input: GetAppReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAppReplicationConfigurationResponse {
        return try await self.client.execute(operation: "GetAppReplicationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about a configuration for validating an application.
    public func getAppValidationConfiguration(_ input: GetAppValidationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAppValidationConfigurationResponse {
        return try await self.client.execute(operation: "GetAppValidationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves output from validating an application.
    public func getAppValidationOutput(_ input: GetAppValidationOutputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAppValidationOutputResponse {
        return try await self.client.execute(operation: "GetAppValidationOutput", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the connectors registered with the Server Migration Service.
    public func getConnectors(_ input: GetConnectorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetConnectorsResponse {
        return try await self.client.execute(operation: "GetConnectors", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the specified replication job or all of your replication jobs.
    public func getReplicationJobs(_ input: GetReplicationJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetReplicationJobsResponse {
        return try await self.client.execute(operation: "GetReplicationJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the replication runs for the specified replication job.
    public func getReplicationRuns(_ input: GetReplicationRunsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetReplicationRunsResponse {
        return try await self.client.execute(operation: "GetReplicationRuns", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the servers in your server catalog. Before you can describe your servers, you must import them using ImportServerCatalog.
    public func getServers(_ input: GetServersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetServersResponse {
        return try await self.client.execute(operation: "GetServers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows application import from Migration Hub.
    public func importAppCatalog(_ input: ImportAppCatalogRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportAppCatalogResponse {
        return try await self.client.execute(operation: "ImportAppCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gathers a complete list of on-premises servers. Connectors must be installed and monitoring all servers to import. This call returns immediately, but might take additional time to retrieve all the servers.
    public func importServerCatalog(_ input: ImportServerCatalogRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportServerCatalogResponse {
        return try await self.client.execute(operation: "ImportServerCatalog", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Launches the specified application as a stack in CloudFormation.
    public func launchApp(_ input: LaunchAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LaunchAppResponse {
        return try await self.client.execute(operation: "LaunchApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves summaries for all applications.
    public func listApps(_ input: ListAppsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAppsResponse {
        return try await self.client.execute(operation: "ListApps", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information to Server Migration Service about whether application validation is successful.
    public func notifyAppValidationOutput(_ input: NotifyAppValidationOutputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> NotifyAppValidationOutputResponse {
        return try await self.client.execute(operation: "NotifyAppValidationOutput", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates the launch configuration for the specified application.
    public func putAppLaunchConfiguration(_ input: PutAppLaunchConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutAppLaunchConfigurationResponse {
        return try await self.client.execute(operation: "PutAppLaunchConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates the replication configuration for the specified application.
    public func putAppReplicationConfiguration(_ input: PutAppReplicationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutAppReplicationConfigurationResponse {
        return try await self.client.execute(operation: "PutAppReplicationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates a validation configuration for the specified application.
    public func putAppValidationConfiguration(_ input: PutAppValidationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutAppValidationConfigurationResponse {
        return try await self.client.execute(operation: "PutAppValidationConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts replicating the specified application by creating replication jobs for each server in the application.
    public func startAppReplication(_ input: StartAppReplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartAppReplicationResponse {
        return try await self.client.execute(operation: "StartAppReplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an on-demand replication run for the specified application.
    public func startOnDemandAppReplication(_ input: StartOnDemandAppReplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartOnDemandAppReplicationResponse {
        return try await self.client.execute(operation: "StartOnDemandAppReplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an on-demand replication run for the specified replication job. This replication run starts immediately. This replication run is in addition to the ones already scheduled. There is a limit on the number of on-demand replications runs that you can request in a 24-hour period.
    public func startOnDemandReplicationRun(_ input: StartOnDemandReplicationRunRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartOnDemandReplicationRunResponse {
        return try await self.client.execute(operation: "StartOnDemandReplicationRun", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops replicating the specified application by deleting the replication job for each server in the application.
    public func stopAppReplication(_ input: StopAppReplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopAppReplicationResponse {
        return try await self.client.execute(operation: "StopAppReplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Terminates the stack for the specified application.
    public func terminateApp(_ input: TerminateAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateAppResponse {
        return try await self.client.execute(operation: "TerminateApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified application.
    public func updateApp(_ input: UpdateAppRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAppResponse {
        return try await self.client.execute(operation: "UpdateApp", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified settings for the specified replication job.
    public func updateReplicationJob(_ input: UpdateReplicationJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateReplicationJobResponse {
        return try await self.client.execute(operation: "UpdateReplicationJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension SMS {
    /// Describes the connectors registered with the Server Migration Service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getConnectorsPaginator(
        _ input: GetConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetConnectorsRequest, GetConnectorsResponse> {
        return .init(
            input: input,
            command: self.getConnectors,
            inputKey: \GetConnectorsRequest.nextToken,
            outputKey: \GetConnectorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Describes the specified replication job or all of your replication jobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getReplicationJobsPaginator(
        _ input: GetReplicationJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetReplicationJobsRequest, GetReplicationJobsResponse> {
        return .init(
            input: input,
            command: self.getReplicationJobs,
            inputKey: \GetReplicationJobsRequest.nextToken,
            outputKey: \GetReplicationJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Describes the replication runs for the specified replication job.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getReplicationRunsPaginator(
        _ input: GetReplicationRunsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetReplicationRunsRequest, GetReplicationRunsResponse> {
        return .init(
            input: input,
            command: self.getReplicationRuns,
            inputKey: \GetReplicationRunsRequest.nextToken,
            outputKey: \GetReplicationRunsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    /// Describes the servers in your server catalog. Before you can describe your servers, you must import them using ImportServerCatalog.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getServersPaginator(
        _ input: GetServersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetServersRequest, GetServersResponse> {
        return .init(
            input: input,
            command: self.getServers,
            inputKey: \GetServersRequest.nextToken,
            outputKey: \GetServersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)
