#' Create a new AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel
#'
#' @description
#' AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel Class
#'
#' @docType class
#' @title AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel
#' @description AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel Class
#' @format An \code{R6Class} generator object
#' @field total_sentiments Brand sentiment verdicts across the models integer [optional]
#' @field models  list(\link{AiModelSentimentRow}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel <- R6::R6Class(
  "AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel",
  public = list(
    `total_sentiments` = NULL,
    `models` = NULL,

    #' @description
    #' Initialize a new AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel class.
    #'
    #' @param total_sentiments Brand sentiment verdicts across the models
    #' @param models models
    #' @param ... Other optional arguments.
    initialize = function(`total_sentiments` = NULL, `models` = NULL, ...) {
      if (!is.null(`total_sentiments`)) {
        if (!(is.numeric(`total_sentiments`) && length(`total_sentiments`) == 1)) {
          stop(paste("Error! Invalid data for `total_sentiments`. Must be an integer:", `total_sentiments`))
        }
        self$`total_sentiments` <- `total_sentiments`
      }
      if (!is.null(`models`)) {
        stopifnot(is.vector(`models`), length(`models`) != 0)
        sapply(`models`, function(x) stopifnot(R6::is.R6(x)))
        self$`models` <- `models`
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
    #' @return AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel as a base R list.
    #' @examples
    #' # convert array of AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel (x) to a data frame
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
    #' Convert AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModelObject <- list()
      if (!is.null(self$`total_sentiments`)) {
        AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModelObject[["total_sentiments"]] <-
          self$`total_sentiments`
      }
      if (!is.null(self$`models`)) {
        AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModelObject[["models"]] <-
          self$extractSimpleType(self$`models`)
      }
      return(AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModelObject)
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
    #' Deserialize JSON string into an instance of AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`total_sentiments`)) {
        self$`total_sentiments` <- this_object$`total_sentiments`
      }
      if (!is.null(this_object$`models`)) {
        self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[AiModelSentimentRow]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`total_sentiments` <- this_object$`total_sentiments`
      self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[AiModelSentimentRow]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel
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
# AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel$unlock()
#
## Below is an example to define the print function
# AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel$lock()

