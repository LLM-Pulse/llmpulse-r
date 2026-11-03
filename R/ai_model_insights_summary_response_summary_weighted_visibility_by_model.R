#' Create a new AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel
#'
#' @description
#' AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel Class
#'
#' @docType class
#' @title AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel
#' @description AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel Class
#' @format An \code{R6Class} generator object
#' @field total_weighted_visibility_score The brand's AI Visibility Score points across the models; 0 when it has none numeric [optional]
#' @field models  list(\link{AiModelWeightedVisibilityRow}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel <- R6::R6Class(
  "AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel",
  public = list(
    `total_weighted_visibility_score` = NULL,
    `models` = NULL,

    #' @description
    #' Initialize a new AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel class.
    #'
    #' @param total_weighted_visibility_score The brand's AI Visibility Score points across the models; 0 when it has none
    #' @param models models
    #' @param ... Other optional arguments.
    initialize = function(`total_weighted_visibility_score` = NULL, `models` = NULL, ...) {
      if (!is.null(`total_weighted_visibility_score`)) {
        self$`total_weighted_visibility_score` <- `total_weighted_visibility_score`
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
    #' @return AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel as a base R list.
    #' @examples
    #' # convert array of AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel (x) to a data frame
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
    #' Convert AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModelObject <- list()
      if (!is.null(self$`total_weighted_visibility_score`)) {
        AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModelObject[["total_weighted_visibility_score"]] <-
          self$`total_weighted_visibility_score`
      }
      if (!is.null(self$`models`)) {
        AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModelObject[["models"]] <-
          self$extractSimpleType(self$`models`)
      }
      return(AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModelObject)
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
    #' Deserialize JSON string into an instance of AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`total_weighted_visibility_score`)) {
        self$`total_weighted_visibility_score` <- this_object$`total_weighted_visibility_score`
      }
      if (!is.null(this_object$`models`)) {
        self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[AiModelWeightedVisibilityRow]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`total_weighted_visibility_score` <- this_object$`total_weighted_visibility_score`
      self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[AiModelWeightedVisibilityRow]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel
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
# AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel$unlock()
#
## Below is an example to define the print function
# AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel$lock()

