#' Create a new AiModelInsightsSummaryResponseSummaryMentionsByModel
#'
#' @description
#' AiModelInsightsSummaryResponseSummaryMentionsByModel Class
#'
#' @docType class
#' @title AiModelInsightsSummaryResponseSummaryMentionsByModel
#' @description AiModelInsightsSummaryResponseSummaryMentionsByModel Class
#' @format An \code{R6Class} generator object
#' @field total_mentions Brand mentions across the models integer [optional]
#' @field models  list(\link{AiModelMentionsRow}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelInsightsSummaryResponseSummaryMentionsByModel <- R6::R6Class(
  "AiModelInsightsSummaryResponseSummaryMentionsByModel",
  public = list(
    `total_mentions` = NULL,
    `models` = NULL,

    #' @description
    #' Initialize a new AiModelInsightsSummaryResponseSummaryMentionsByModel class.
    #'
    #' @param total_mentions Brand mentions across the models
    #' @param models models
    #' @param ... Other optional arguments.
    initialize = function(`total_mentions` = NULL, `models` = NULL, ...) {
      if (!is.null(`total_mentions`)) {
        if (!(is.numeric(`total_mentions`) && length(`total_mentions`) == 1)) {
          stop(paste("Error! Invalid data for `total_mentions`. Must be an integer:", `total_mentions`))
        }
        self$`total_mentions` <- `total_mentions`
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
    #' @return AiModelInsightsSummaryResponseSummaryMentionsByModel as a base R list.
    #' @examples
    #' # convert array of AiModelInsightsSummaryResponseSummaryMentionsByModel (x) to a data frame
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
    #' Convert AiModelInsightsSummaryResponseSummaryMentionsByModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelInsightsSummaryResponseSummaryMentionsByModelObject <- list()
      if (!is.null(self$`total_mentions`)) {
        AiModelInsightsSummaryResponseSummaryMentionsByModelObject[["total_mentions"]] <-
          self$`total_mentions`
      }
      if (!is.null(self$`models`)) {
        AiModelInsightsSummaryResponseSummaryMentionsByModelObject[["models"]] <-
          self$extractSimpleType(self$`models`)
      }
      return(AiModelInsightsSummaryResponseSummaryMentionsByModelObject)
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
    #' Deserialize JSON string into an instance of AiModelInsightsSummaryResponseSummaryMentionsByModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsSummaryResponseSummaryMentionsByModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`total_mentions`)) {
        self$`total_mentions` <- this_object$`total_mentions`
      }
      if (!is.null(this_object$`models`)) {
        self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[AiModelMentionsRow]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelInsightsSummaryResponseSummaryMentionsByModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelInsightsSummaryResponseSummaryMentionsByModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsSummaryResponseSummaryMentionsByModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`total_mentions` <- this_object$`total_mentions`
      self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[AiModelMentionsRow]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelInsightsSummaryResponseSummaryMentionsByModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelInsightsSummaryResponseSummaryMentionsByModel
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
# AiModelInsightsSummaryResponseSummaryMentionsByModel$unlock()
#
## Below is an example to define the print function
# AiModelInsightsSummaryResponseSummaryMentionsByModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelInsightsSummaryResponseSummaryMentionsByModel$lock()

