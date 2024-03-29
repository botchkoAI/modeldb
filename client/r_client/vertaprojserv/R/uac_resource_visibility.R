# modeldb/ProjectService.proto
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: version not set
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title UacResourceVisibility
#'
#' @description UacResourceVisibility Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UacResourceVisibility <- R6::R6Class(
    "UacResourceVisibility",
    public = list(
        initialize = function(...) {
            local.optional.var <- list(...)
            val <- unlist(local.optional.var)
            enumvec <- .parse_uacResourceVisibility()

            stopifnot(length(val) == 1L)

            if (!val %in% enumvec)
                stop("Use one of the valid values: ",
                    paste0(enumvec, collapse = ", "))
            private$value <- val
        },
        toJSON = function() {
            jsonlite::toJSON(private$value, auto_unbox = TRUE)
        },
        fromJSON = function(UacResourceVisibilityJson) {
            private$value <- jsonlite::fromJSON(UacResourceVisibilityJson,
                simplifyVector = FALSE)
            self
        },
        toJSONString = function() {
            as.character(jsonlite::toJSON(private$value,
                auto_unbox = TRUE))
        },
        fromJSONString = function(UacResourceVisibilityJson) {
            private$value <- jsonlite::fromJSON(UacResourceVisibilityJson,
                simplifyVector = FALSE)
            self
        }
    ),
    private = list(
        value = NULL
    )
)

# add to utils.R
.parse_uacResourceVisibility <- function(vals) {
    res <- gsub("^\\[|\\]$", "",
        "[UNKNOWN, ORG_DEFAULT, ORG_CUSTOM, PRIVATE, WORKSPACE_DEFAULT]"
    )
    unlist(strsplit(res, ", "))
}


