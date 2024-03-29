# modeldb/ProjectService.proto
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: version not set
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ModeldbDeleteProjectsResponse
#'
#' @description ModeldbDeleteProjectsResponse Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field status  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModeldbDeleteProjectsResponse <- R6::R6Class(
  'ModeldbDeleteProjectsResponse',
  public = list(
    `status` = NULL,
    initialize = function(
        `status`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`status`)) {
        self$`status` <- `status`
      }
    },
    toJSON = function() {
      ModeldbDeleteProjectsResponseObject <- list()
      if (!is.null(self$`status`)) {
        ModeldbDeleteProjectsResponseObject[['status']] <-
          self$`status`
      }

      ModeldbDeleteProjectsResponseObject
    },
    fromJSON = function(ModeldbDeleteProjectsResponseJson) {
      ModeldbDeleteProjectsResponseObject <- jsonlite::fromJSON(ModeldbDeleteProjectsResponseJson)
      if (!is.null(ModeldbDeleteProjectsResponseObject$`status`)) {
        self$`status` <- ModeldbDeleteProjectsResponseObject$`status`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`status`)) {
        sprintf(
        '"status":
          "%s"
                ',
        self$`status`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ModeldbDeleteProjectsResponseJson) {
      ModeldbDeleteProjectsResponseObject <- jsonlite::fromJSON(ModeldbDeleteProjectsResponseJson)
      self$`status` <- ModeldbDeleteProjectsResponseObject$`status`
      self
    }
  )
)

