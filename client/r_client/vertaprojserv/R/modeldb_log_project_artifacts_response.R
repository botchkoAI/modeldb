# modeldb/ProjectService.proto
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: version not set
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ModeldbLogProjectArtifactsResponse
#'
#' @description ModeldbLogProjectArtifactsResponse Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field project  \link{ModeldbProject} [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModeldbLogProjectArtifactsResponse <- R6::R6Class(
  'ModeldbLogProjectArtifactsResponse',
  public = list(
    `project` = NULL,
    initialize = function(
        `project`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`project`)) {
        stopifnot(R6::is.R6(`project`))
        self$`project` <- `project`
      }
    },
    toJSON = function() {
      ModeldbLogProjectArtifactsResponseObject <- list()
      if (!is.null(self$`project`)) {
        ModeldbLogProjectArtifactsResponseObject[['project']] <-
          self$`project`$toJSON()
      }

      ModeldbLogProjectArtifactsResponseObject
    },
    fromJSON = function(ModeldbLogProjectArtifactsResponseJson) {
      ModeldbLogProjectArtifactsResponseObject <- jsonlite::fromJSON(ModeldbLogProjectArtifactsResponseJson)
      if (!is.null(ModeldbLogProjectArtifactsResponseObject$`project`)) {
        projectObject <- ModeldbProject$new()
        projectObject$fromJSON(jsonlite::toJSON(ModeldbLogProjectArtifactsResponseObject$project, auto_unbox = TRUE, digits = NA))
        self$`project` <- projectObject
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`project`)) {
        sprintf(
        '"project":
        %s
        ',
        jsonlite::toJSON(self$`project`$toJSON(), auto_unbox=TRUE, digits = NA)
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ModeldbLogProjectArtifactsResponseJson) {
      ModeldbLogProjectArtifactsResponseObject <- jsonlite::fromJSON(ModeldbLogProjectArtifactsResponseJson)
      self$`project` <- ModeldbProject$new()$fromJSON(jsonlite::toJSON(ModeldbLogProjectArtifactsResponseObject$project, auto_unbox = TRUE, digits = NA))
      self
    }
  )
)

