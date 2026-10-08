#' Create a new GeoAuditComparison
#'
#' @description
#' GeoAuditComparison Class
#'
#' @docType class
#' @title GeoAuditComparison
#' @description GeoAuditComparison Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field from_run  \link{GeoAuditRun} [optional]
#' @field to_run  \link{GeoAuditRun} [optional]
#' @field comparable  character [optional]
#' @field score_delta  numeric [optional]
#' @field metric_deltas  named list(numeric) [optional]
#' @field counts  named list(integer) [optional]
#' @field changes  list(\link{GeoAuditComparisonChangesInner}) [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoAuditComparison <- R6::R6Class(
  "GeoAuditComparison",
  public = list(
    `project_id` = NULL,
    `from_run` = NULL,
    `to_run` = NULL,
    `comparable` = NULL,
    `score_delta` = NULL,
    `metric_deltas` = NULL,
    `counts` = NULL,
    `changes` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new GeoAuditComparison class.
    #'
    #' @param project_id project_id
    #' @param from_run from_run
    #' @param to_run to_run
    #' @param comparable comparable
    #' @param score_delta score_delta
    #' @param metric_deltas metric_deltas
    #' @param counts counts
    #' @param changes changes
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `from_run` = NULL, `to_run` = NULL, `comparable` = NULL, `score_delta` = NULL, `metric_deltas` = NULL, `counts` = NULL, `changes` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`from_run`)) {
        stopifnot(R6::is.R6(`from_run`))
        self$`from_run` <- `from_run`
      }
      if (!is.null(`to_run`)) {
        stopifnot(R6::is.R6(`to_run`))
        self$`to_run` <- `to_run`
      }
      if (!is.null(`comparable`)) {
        if (!(is.logical(`comparable`) && length(`comparable`) == 1)) {
          stop(paste("Error! Invalid data for `comparable`. Must be a boolean:", `comparable`))
        }
        self$`comparable` <- `comparable`
      }
      if (!is.null(`score_delta`)) {
        self$`score_delta` <- `score_delta`
      }
      if (!is.null(`metric_deltas`)) {
        stopifnot(is.vector(`metric_deltas`), length(`metric_deltas`) != 0)
        sapply(`metric_deltas`, function(x) stopifnot(is.character(x)))
        self$`metric_deltas` <- `metric_deltas`
      }
      if (!is.null(`counts`)) {
        stopifnot(is.vector(`counts`), length(`counts`) != 0)
        sapply(`counts`, function(x) stopifnot(is.character(x)))
        self$`counts` <- `counts`
      }
      if (!is.null(`changes`)) {
        stopifnot(is.vector(`changes`), length(`changes`) != 0)
        sapply(`changes`, function(x) stopifnot(R6::is.R6(x)))
        self$`changes` <- `changes`
      }
      if (!is.null(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return GeoAuditComparison as a base R list.
    #' @examples
    #' # convert array of GeoAuditComparison (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert GeoAuditComparison to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoAuditComparisonObject <- list()
      if (!is.null(self$`project_id`)) {
        GeoAuditComparisonObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`from_run`)) {
        GeoAuditComparisonObject[["from_run"]] <-
          self$extractSimpleType(self$`from_run`)
      }
      if (!is.null(self$`to_run`)) {
        GeoAuditComparisonObject[["to_run"]] <-
          self$extractSimpleType(self$`to_run`)
      }
      if (!is.null(self$`comparable`)) {
        GeoAuditComparisonObject[["comparable"]] <-
          self$`comparable`
      }
      if (!is.null(self$`score_delta`)) {
        GeoAuditComparisonObject[["score_delta"]] <-
          self$`score_delta`
      }
      if (!is.null(self$`metric_deltas`)) {
        GeoAuditComparisonObject[["metric_deltas"]] <-
          self$`metric_deltas`
      }
      if (!is.null(self$`counts`)) {
        GeoAuditComparisonObject[["counts"]] <-
          self$`counts`
      }
      if (!is.null(self$`changes`)) {
        GeoAuditComparisonObject[["changes"]] <-
          self$extractSimpleType(self$`changes`)
      }
      if (!is.null(self$`request_id`)) {
        GeoAuditComparisonObject[["request_id"]] <-
          self$`request_id`
      }
      return(GeoAuditComparisonObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditComparison
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditComparison
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`from_run`)) {
        `from_run_object` <- GeoAuditRun$new()
        `from_run_object`$fromJSON(jsonlite::toJSON(this_object$`from_run`, auto_unbox = TRUE, digits = NA))
        self$`from_run` <- `from_run_object`
      }
      if (!is.null(this_object$`to_run`)) {
        `to_run_object` <- GeoAuditRun$new()
        `to_run_object`$fromJSON(jsonlite::toJSON(this_object$`to_run`, auto_unbox = TRUE, digits = NA))
        self$`to_run` <- `to_run_object`
      }
      if (!is.null(this_object$`comparable`)) {
        self$`comparable` <- this_object$`comparable`
      }
      if (!is.null(this_object$`score_delta`)) {
        self$`score_delta` <- this_object$`score_delta`
      }
      if (!is.null(this_object$`metric_deltas`)) {
        self$`metric_deltas` <- ApiClient$new()$deserializeObj(this_object$`metric_deltas`, "map(numeric)", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`counts`)) {
        self$`counts` <- ApiClient$new()$deserializeObj(this_object$`counts`, "map(integer)", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`changes`)) {
        self$`changes` <- ApiClient$new()$deserializeObj(this_object$`changes`, "array[GeoAuditComparisonChangesInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`request_id`)) {
        self$`request_id` <- this_object$`request_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeoAuditComparison in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditComparison
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditComparison
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`from_run` <- GeoAuditRun$new()$fromJSON(jsonlite::toJSON(this_object$`from_run`, auto_unbox = TRUE, digits = NA))
      self$`to_run` <- GeoAuditRun$new()$fromJSON(jsonlite::toJSON(this_object$`to_run`, auto_unbox = TRUE, digits = NA))
      self$`comparable` <- this_object$`comparable`
      self$`score_delta` <- this_object$`score_delta`
      self$`metric_deltas` <- ApiClient$new()$deserializeObj(this_object$`metric_deltas`, "map(numeric)", loadNamespace("llmpulse"))
      self$`counts` <- ApiClient$new()$deserializeObj(this_object$`counts`, "map(integer)", loadNamespace("llmpulse"))
      self$`changes` <- ApiClient$new()$deserializeObj(this_object$`changes`, "array[GeoAuditComparisonChangesInner]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoAuditComparison and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoAuditComparison
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# GeoAuditComparison$unlock()
#
## Below is an example to define the print function
# GeoAuditComparison$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoAuditComparison$lock()

