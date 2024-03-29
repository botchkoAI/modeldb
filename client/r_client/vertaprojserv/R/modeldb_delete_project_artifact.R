# modeldb/ProjectService.proto
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: version not set
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ModeldbDeleteProjectArtifact
#'
#' @description ModeldbDeleteProjectArtifact Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field id  character [optional]
#'
#' @field key  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModeldbDeleteProjectArtifact <- R6::R6Class(
  'ModeldbDeleteProjectArtifact',
  public = list(
    `id` = NULL,
    `key` = NULL,
    initialize = function(
        `id`=NULL, `key`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!is.null(`key`)) {
        stopifnot(is.character(`key`), length(`key`) == 1)
        self$`key` <- `key`
      }
    },
    toJSON = function() {
      ModeldbDeleteProjectArtifactObject <- list()
      if (!is.null(self$`id`)) {
        ModeldbDeleteProjectArtifactObject[['id']] <-
          self$`id`
      }
      if (!is.null(self$`key`)) {
        ModeldbDeleteProjectArtifactObject[['key']] <-
          self$`key`
      }

      ModeldbDeleteProjectArtifactObject
    },
    fromJSON = function(ModeldbDeleteProjectArtifactJson) {
      ModeldbDeleteProjectArtifactObject <- jsonlite::fromJSON(ModeldbDeleteProjectArtifactJson)
      if (!is.null(ModeldbDeleteProjectArtifactObject$`id`)) {
        self$`id` <- ModeldbDeleteProjectArtifactObject$`id`
      }
      if (!is.null(ModeldbDeleteProjectArtifactObject$`key`)) {
        self$`key` <- ModeldbDeleteProjectArtifactObject$`key`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
        sprintf(
        '"id":
          "%s"
                ',
        self$`id`
        )},
        if (!is.null(self$`key`)) {
        sprintf(
        '"key":
          "%s"
                ',
        self$`key`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ModeldbDeleteProjectArtifactJson) {
      ModeldbDeleteProjectArtifactObject <- jsonlite::fromJSON(ModeldbDeleteProjectArtifactJson)
      self$`id` <- ModeldbDeleteProjectArtifactObject$`id`
      self$`key` <- ModeldbDeleteProjectArtifactObject$`key`
      self
    }
  )
)

