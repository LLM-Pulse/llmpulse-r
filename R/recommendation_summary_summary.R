#' Create a new RecommendationSummarySummary
#'
#' @description
#' Empty until the generation completes
#'
#' @docType class
#' @title RecommendationSummarySummary
#' @description RecommendationSummarySummary Class
#' @format An \code{R6Class} generator object
#' @field total_recommendations  integer [optional]
#' @field high_priority_count  integer [optional]
#' @field categories  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RecommendationSummarySummary <- R6::R6Class(
  "RecommendationSummarySummary",
  public = list(
    `total_recommendations` = NULL,
    `high_priority_count` = NULL,
    `categories` = NULL,

    #' @description
    #' Initialize a new RecommendationSummarySummary class.
    #'
    #' @param total_recommendations total_recommendations
    #' @param high_priority_count high_priority_count
    #' @param categories categories
    #' @param ... Other optional arguments.
    initialize = function(`total_recommendations` = NULL, `high_priority_count` = NULL, `categories` = NULL, ...) {
      if (!is.null(`total_recommendations`)) {
        if (!(is.numeric(`total_recommendations`) && length(`total_recommendations`) == 1)) {
          stop(paste("Error! Invalid data for `total_recommendations`. Must be an integer:", `total_recommendations`))
        }
        self$`total_recommendations` <- `total_recommendations`
      }
      if (!is.null(`high_priority_count`)) {
        if (!(is.numeric(`high_priority_count`) && length(`high_priority_count`) == 1)) {
          stop(paste("Error! Invalid data for `high_priority_count`. Must be an integer:", `high_priority_count`))
        }
        self$`high_priority_count` <- `high_priority_count`
      }
      if (!is.null(`categories`)) {
        stopifnot(is.vector(`categories`), length(`categories`) != 0)
        sapply(`categories`, function(x) stopifnot(is.character(x)))
        self$`categories` <- `categories`
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
    #' @return RecommendationSummarySummary as a base R list.
    #' @examples
    #' # convert array of RecommendationSummarySummary (x) to a data frame
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
    #' Convert RecommendationSummarySummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RecommendationSummarySummaryObject <- list()
      if (!is.null(self$`total_recommendations`)) {
        RecommendationSummarySummaryObject[["total_recommendations"]] <-
          self$`total_recommendations`
      }
      if (!is.null(self$`high_priority_count`)) {
        RecommendationSummarySummaryObject[["high_priority_count"]] <-
          self$`high_priority_count`
      }
      if (!is.null(self$`categories`)) {
        RecommendationSummarySummaryObject[["categories"]] <-
          self$`categories`
      }
      return(RecommendationSummarySummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RecommendationSummarySummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecommendationSummarySummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`total_recommendations`)) {
        self$`total_recommendations` <- this_object$`total_recommendations`
      }
      if (!is.null(this_object$`high_priority_count`)) {
        self$`high_priority_count` <- this_object$`high_priority_count`
      }
      if (!is.null(this_object$`categories`)) {
        self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[character]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RecommendationSummarySummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RecommendationSummarySummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecommendationSummarySummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`total_recommendations` <- this_object$`total_recommendations`
      self$`high_priority_count` <- this_object$`high_priority_count`
      self$`categories` <- ApiClient$new()$deserializeObj(this_object$`categories`, "array[character]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to RecommendationSummarySummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RecommendationSummarySummary
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
# RecommendationSummarySummary$unlock()
#
## Below is an example to define the print function
# RecommendationSummarySummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RecommendationSummarySummary$lock()

