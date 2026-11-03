#' Create a new AiModelInsightsSummaryResponseSummarySentimentMarketShare
#'
#' @description
#' AiModelInsightsSummaryResponseSummarySentimentMarketShare Class
#'
#' @docType class
#' @title AiModelInsightsSummaryResponseSummarySentimentMarketShare
#' @description AiModelInsightsSummaryResponseSummarySentimentMarketShare Class
#' @format An \code{R6Class} generator object
#' @field actors The project and each competitor with a sentiment verdict in the window (only the competitors given in competitors, when it is given), by total_sentiments descending list(\link{AiModelSentimentMatrixActor}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelInsightsSummaryResponseSummarySentimentMarketShare <- R6::R6Class(
  "AiModelInsightsSummaryResponseSummarySentimentMarketShare",
  public = list(
    `actors` = NULL,

    #' @description
    #' Initialize a new AiModelInsightsSummaryResponseSummarySentimentMarketShare class.
    #'
    #' @param actors The project and each competitor with a sentiment verdict in the window (only the competitors given in competitors, when it is given), by total_sentiments descending
    #' @param ... Other optional arguments.
    initialize = function(`actors` = NULL, ...) {
      if (!is.null(`actors`)) {
        stopifnot(is.vector(`actors`), length(`actors`) != 0)
        sapply(`actors`, function(x) stopifnot(R6::is.R6(x)))
        self$`actors` <- `actors`
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
    #' @return AiModelInsightsSummaryResponseSummarySentimentMarketShare as a base R list.
    #' @examples
    #' # convert array of AiModelInsightsSummaryResponseSummarySentimentMarketShare (x) to a data frame
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
    #' Convert AiModelInsightsSummaryResponseSummarySentimentMarketShare to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelInsightsSummaryResponseSummarySentimentMarketShareObject <- list()
      if (!is.null(self$`actors`)) {
        AiModelInsightsSummaryResponseSummarySentimentMarketShareObject[["actors"]] <-
          self$extractSimpleType(self$`actors`)
      }
      return(AiModelInsightsSummaryResponseSummarySentimentMarketShareObject)
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
    #' Deserialize JSON string into an instance of AiModelInsightsSummaryResponseSummarySentimentMarketShare
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsSummaryResponseSummarySentimentMarketShare
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`actors`)) {
        self$`actors` <- ApiClient$new()$deserializeObj(this_object$`actors`, "array[AiModelSentimentMatrixActor]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelInsightsSummaryResponseSummarySentimentMarketShare in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelInsightsSummaryResponseSummarySentimentMarketShare
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsSummaryResponseSummarySentimentMarketShare
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`actors` <- ApiClient$new()$deserializeObj(this_object$`actors`, "array[AiModelSentimentMatrixActor]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelInsightsSummaryResponseSummarySentimentMarketShare and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelInsightsSummaryResponseSummarySentimentMarketShare
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
# AiModelInsightsSummaryResponseSummarySentimentMarketShare$unlock()
#
## Below is an example to define the print function
# AiModelInsightsSummaryResponseSummarySentimentMarketShare$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelInsightsSummaryResponseSummarySentimentMarketShare$lock()

