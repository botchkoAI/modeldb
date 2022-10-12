# R API client for openapi

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project. By using the [OpenAPI spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: version not set
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RClientCodegen

## Installation

### Prerequisites

Install the dependencies

```R
install.packages("jsonlite")
install.packages("httr")
install.packages("base64enc")
```

### Build the package

```sh
git clone https://github.com/GIT_USER_ID/GIT_REPO_ID
cd GIT_REPO_ID
R CMD build .
R CMD check openapi_1.0.0.tar.gz --no-manual
R CMD INSTALL openapi_1.0.0.tar.gz
```

### Install the package

```R
install.packages("openapi")
```

To install directly from Github, use `devtools`:
```R
install.packages("devtools")
library(devtools)
install_github("GIT_USER_ID/GIT_REPO_ID")
```

### Usage

```R
library(openapi)
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ProjectServiceApi* | [**ProjectServiceAddProjectAttributes**](docs/ProjectServiceApi.md#ProjectServiceAddProjectAttributes) | **POST** /project/addProjectAttributes | 
*ProjectServiceApi* | [**ProjectServiceAddProjectTag**](docs/ProjectServiceApi.md#ProjectServiceAddProjectTag) | **POST** /project/addProjectTag | 
*ProjectServiceApi* | [**ProjectServiceAddProjectTags**](docs/ProjectServiceApi.md#ProjectServiceAddProjectTags) | **POST** /project/addProjectTags | 
*ProjectServiceApi* | [**ProjectServiceCreateProject**](docs/ProjectServiceApi.md#ProjectServiceCreateProject) | **POST** /project/createProject | 
*ProjectServiceApi* | [**ProjectServiceDeepCopyProject**](docs/ProjectServiceApi.md#ProjectServiceDeepCopyProject) | **POST** /project/deepCopyProject | 
*ProjectServiceApi* | [**ProjectServiceDeleteArtifact**](docs/ProjectServiceApi.md#ProjectServiceDeleteArtifact) | **DELETE** /project/deleteArtifact | 
*ProjectServiceApi* | [**ProjectServiceDeleteProject**](docs/ProjectServiceApi.md#ProjectServiceDeleteProject) | **DELETE** /project/deleteProject | 
*ProjectServiceApi* | [**ProjectServiceDeleteProjectAttributes**](docs/ProjectServiceApi.md#ProjectServiceDeleteProjectAttributes) | **DELETE** /project/deleteProjectAttributes | 
*ProjectServiceApi* | [**ProjectServiceDeleteProjectTag**](docs/ProjectServiceApi.md#ProjectServiceDeleteProjectTag) | **DELETE** /project/deleteProjectTag | 
*ProjectServiceApi* | [**ProjectServiceDeleteProjectTags**](docs/ProjectServiceApi.md#ProjectServiceDeleteProjectTags) | **DELETE** /project/deleteProjectTags | 
*ProjectServiceApi* | [**ProjectServiceDeleteProjects**](docs/ProjectServiceApi.md#ProjectServiceDeleteProjects) | **DELETE** /project/deleteProjects | 
*ProjectServiceApi* | [**ProjectServiceFindProjects**](docs/ProjectServiceApi.md#ProjectServiceFindProjects) | **POST** /project/findProjects | queries
*ProjectServiceApi* | [**ProjectServiceGetArtifacts**](docs/ProjectServiceApi.md#ProjectServiceGetArtifacts) | **GET** /project/getArtifacts | 
*ProjectServiceApi* | [**ProjectServiceGetProjectAttributes**](docs/ProjectServiceApi.md#ProjectServiceGetProjectAttributes) | **GET** /project/getProjectAttributes | 
*ProjectServiceApi* | [**ProjectServiceGetProjectById**](docs/ProjectServiceApi.md#ProjectServiceGetProjectById) | **GET** /project/getProjectById | 
*ProjectServiceApi* | [**ProjectServiceGetProjectByName**](docs/ProjectServiceApi.md#ProjectServiceGetProjectByName) | **GET** /project/getProjectByName | 
*ProjectServiceApi* | [**ProjectServiceGetProjectCodeVersion**](docs/ProjectServiceApi.md#ProjectServiceGetProjectCodeVersion) | **GET** /project/getProjectCodeVersion | 
*ProjectServiceApi* | [**ProjectServiceGetProjectDatasetCount**](docs/ProjectServiceApi.md#ProjectServiceGetProjectDatasetCount) | **GET** /project/getProjectDatasetCount | 
*ProjectServiceApi* | [**ProjectServiceGetProjectReadme**](docs/ProjectServiceApi.md#ProjectServiceGetProjectReadme) | **GET** /project/getProjectReadme | 
*ProjectServiceApi* | [**ProjectServiceGetProjectShortName**](docs/ProjectServiceApi.md#ProjectServiceGetProjectShortName) | **GET** /project/getProjectShortName | 
*ProjectServiceApi* | [**ProjectServiceGetProjectTags**](docs/ProjectServiceApi.md#ProjectServiceGetProjectTags) | **GET** /project/getProjectTags | 
*ProjectServiceApi* | [**ProjectServiceGetProjects**](docs/ProjectServiceApi.md#ProjectServiceGetProjects) | **GET** /project/getProjects | 
*ProjectServiceApi* | [**ProjectServiceGetSummary**](docs/ProjectServiceApi.md#ProjectServiceGetSummary) | **GET** /project/getSummary | 
*ProjectServiceApi* | [**ProjectServiceGetUrlForArtifact**](docs/ProjectServiceApi.md#ProjectServiceGetUrlForArtifact) | **POST** /project/getUrlForArtifact | artifacts
*ProjectServiceApi* | [**ProjectServiceLogArtifacts**](docs/ProjectServiceApi.md#ProjectServiceLogArtifacts) | **POST** /project/logArtifacts | artifacts
*ProjectServiceApi* | [**ProjectServiceLogProjectCodeVersion**](docs/ProjectServiceApi.md#ProjectServiceLogProjectCodeVersion) | **POST** /project/logProjectCodeVersion | code version
*ProjectServiceApi* | [**ProjectServiceSetProjectReadme**](docs/ProjectServiceApi.md#ProjectServiceSetProjectReadme) | **POST** /project/setProjectReadme | 
*ProjectServiceApi* | [**ProjectServiceSetProjectShortName**](docs/ProjectServiceApi.md#ProjectServiceSetProjectShortName) | **POST** /project/setProjectShortName | 
*ProjectServiceApi* | [**ProjectServiceUpdateProjectAttributes**](docs/ProjectServiceApi.md#ProjectServiceUpdateProjectAttributes) | **POST** /project/updateProjectAttributes | 
*ProjectServiceApi* | [**ProjectServiceUpdateProjectDescription**](docs/ProjectServiceApi.md#ProjectServiceUpdateProjectDescription) | **POST** /project/updateProjectDescription | 
*ProjectServiceApi* | [**ProjectServiceUpdateProjectName**](docs/ProjectServiceApi.md#ProjectServiceUpdateProjectName) | **POST** /project/updateProjectName | 
*ProjectServiceApi* | [**ProjectServiceVerifyConnection**](docs/ProjectServiceApi.md#ProjectServiceVerifyConnection) | **GET** /project/verifyConnection | 


## Documentation for Models

 - [ArtifactTypeEnumArtifactType](docs/ArtifactTypeEnumArtifactType.md)
 - [CollaboratorTypeEnumCollaboratorType](docs/CollaboratorTypeEnumCollaboratorType.md)
 - [CommonArtifact](docs/CommonArtifact.md)
 - [CommonKeyValue](docs/CommonKeyValue.md)
 - [CommonKeyValueQuery](docs/CommonKeyValueQuery.md)
 - [ModeldbAddProjectAttributes](docs/ModeldbAddProjectAttributes.md)
 - [ModeldbAddProjectAttributesResponse](docs/ModeldbAddProjectAttributesResponse.md)
 - [ModeldbAddProjectTag](docs/ModeldbAddProjectTag.md)
 - [ModeldbAddProjectTagResponse](docs/ModeldbAddProjectTagResponse.md)
 - [ModeldbAddProjectTags](docs/ModeldbAddProjectTags.md)
 - [ModeldbAddProjectTagsResponse](docs/ModeldbAddProjectTagsResponse.md)
 - [ModeldbCodeVersion](docs/ModeldbCodeVersion.md)
 - [ModeldbCreateProject](docs/ModeldbCreateProject.md)
 - [ModeldbCreateProjectResponse](docs/ModeldbCreateProjectResponse.md)
 - [ModeldbDeepCopyProject](docs/ModeldbDeepCopyProject.md)
 - [ModeldbDeepCopyProjectResponse](docs/ModeldbDeepCopyProjectResponse.md)
 - [ModeldbDeleteProject](docs/ModeldbDeleteProject.md)
 - [ModeldbDeleteProjectArtifact](docs/ModeldbDeleteProjectArtifact.md)
 - [ModeldbDeleteProjectArtifactResponse](docs/ModeldbDeleteProjectArtifactResponse.md)
 - [ModeldbDeleteProjectAttributes](docs/ModeldbDeleteProjectAttributes.md)
 - [ModeldbDeleteProjectAttributesResponse](docs/ModeldbDeleteProjectAttributesResponse.md)
 - [ModeldbDeleteProjectResponse](docs/ModeldbDeleteProjectResponse.md)
 - [ModeldbDeleteProjectTag](docs/ModeldbDeleteProjectTag.md)
 - [ModeldbDeleteProjectTagResponse](docs/ModeldbDeleteProjectTagResponse.md)
 - [ModeldbDeleteProjectTags](docs/ModeldbDeleteProjectTags.md)
 - [ModeldbDeleteProjectTagsResponse](docs/ModeldbDeleteProjectTagsResponse.md)
 - [ModeldbDeleteProjects](docs/ModeldbDeleteProjects.md)
 - [ModeldbDeleteProjectsResponse](docs/ModeldbDeleteProjectsResponse.md)
 - [ModeldbFindProjects](docs/ModeldbFindProjects.md)
 - [ModeldbFindProjectsResponse](docs/ModeldbFindProjectsResponse.md)
 - [ModeldbGetArtifactsResponse](docs/ModeldbGetArtifactsResponse.md)
 - [ModeldbGetAttributesResponse](docs/ModeldbGetAttributesResponse.md)
 - [ModeldbGetProjectByIdResponse](docs/ModeldbGetProjectByIdResponse.md)
 - [ModeldbGetProjectByNameResponse](docs/ModeldbGetProjectByNameResponse.md)
 - [ModeldbGetProjectCodeVersionResponse](docs/ModeldbGetProjectCodeVersionResponse.md)
 - [ModeldbGetProjectDatasetCountResponse](docs/ModeldbGetProjectDatasetCountResponse.md)
 - [ModeldbGetProjectReadmeResponse](docs/ModeldbGetProjectReadmeResponse.md)
 - [ModeldbGetProjectShortNameResponse](docs/ModeldbGetProjectShortNameResponse.md)
 - [ModeldbGetProjectsResponse](docs/ModeldbGetProjectsResponse.md)
 - [ModeldbGetSummaryResponse](docs/ModeldbGetSummaryResponse.md)
 - [ModeldbGetTagsResponse](docs/ModeldbGetTagsResponse.md)
 - [ModeldbGetUrlForArtifact](docs/ModeldbGetUrlForArtifact.md)
 - [ModeldbGetUrlForArtifactResponse](docs/ModeldbGetUrlForArtifactResponse.md)
 - [ModeldbGitSnapshot](docs/ModeldbGitSnapshot.md)
 - [ModeldbLastModifiedExperimentRunSummary](docs/ModeldbLastModifiedExperimentRunSummary.md)
 - [ModeldbLogProjectArtifacts](docs/ModeldbLogProjectArtifacts.md)
 - [ModeldbLogProjectArtifactsResponse](docs/ModeldbLogProjectArtifactsResponse.md)
 - [ModeldbLogProjectCodeVersion](docs/ModeldbLogProjectCodeVersion.md)
 - [ModeldbLogProjectCodeVersionResponse](docs/ModeldbLogProjectCodeVersionResponse.md)
 - [ModeldbMetricsSummary](docs/ModeldbMetricsSummary.md)
 - [ModeldbProject](docs/ModeldbProject.md)
 - [ModeldbProjectVisibility](docs/ModeldbProjectVisibility.md)
 - [ModeldbSetProjectReadme](docs/ModeldbSetProjectReadme.md)
 - [ModeldbSetProjectReadmeResponse](docs/ModeldbSetProjectReadmeResponse.md)
 - [ModeldbSetProjectShortName](docs/ModeldbSetProjectShortName.md)
 - [ModeldbSetProjectShortNameResponse](docs/ModeldbSetProjectShortNameResponse.md)
 - [ModeldbUpdateProjectAttributes](docs/ModeldbUpdateProjectAttributes.md)
 - [ModeldbUpdateProjectAttributesResponse](docs/ModeldbUpdateProjectAttributesResponse.md)
 - [ModeldbUpdateProjectDescription](docs/ModeldbUpdateProjectDescription.md)
 - [ModeldbUpdateProjectDescriptionResponse](docs/ModeldbUpdateProjectDescriptionResponse.md)
 - [ModeldbUpdateProjectName](docs/ModeldbUpdateProjectName.md)
 - [ModeldbUpdateProjectNameResponse](docs/ModeldbUpdateProjectNameResponse.md)
 - [ModeldbVerifyConnectionResponse](docs/ModeldbVerifyConnectionResponse.md)
 - [OperatorEnumOperator](docs/OperatorEnumOperator.md)
 - [ProtobufAny](docs/ProtobufAny.md)
 - [ProtobufNullValue](docs/ProtobufNullValue.md)
 - [RuntimeError](docs/RuntimeError.md)
 - [TernaryEnumTernary](docs/TernaryEnumTernary.md)
 - [UacCollaboratorPermissions](docs/UacCollaboratorPermissions.md)
 - [UacResourceVisibility](docs/UacResourceVisibility.md)
 - [ValueTypeEnumValueType](docs/ValueTypeEnumValueType.md)
 - [WorkspaceTypeEnumWorkspaceType](docs/WorkspaceTypeEnumWorkspaceType.md)


## Documentation for Authorization

 All endpoints do not require authorization.



## Author


