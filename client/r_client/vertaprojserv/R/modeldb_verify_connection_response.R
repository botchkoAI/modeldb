# modeldb/ProjectService.proto
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: version not set
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ModeldbVerifyConnectionResponse
#'
#' @description ModeldbVerifyConnectionResponse Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field status  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModeldbVerifyConnectionResponse <- R6::R6Class(
  'ModeldbVerifyConnectionResponse',
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
      ModeldbVerifyConnectionResponseObject <- list()
      if (!is.null(self$`status`)) {
        ModeldbVerifyConnectionResponseObject[['status']] <-
          self$`status`
      }

      ModeldbVerifyConnectionResponseObject
    },
    fromJSON = function(ModeldbVerifyConnectionResponseJson) {
      ModeldbVerifyConnectionResponseObject <- jsonlite::fromJSON(ModeldbVerifyConnectionResponseJson)
      if (!is.null(ModeldbVerifyConnectionResponseObject$`status`)) {
        self$`status` <- ModeldbVerifyConnectionResponseObject$`status`
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
    fromJSONString = function(ModeldbVerifyConnectionResponseJson) {
      ModeldbVerifyConnectionResponseObject <- jsonlite::fromJSON(ModeldbVerifyConnectionResponseJson)
      self$`status` <- ModeldbVerifyConnectionResponseObject$`status`
      self
    }
  )
)

