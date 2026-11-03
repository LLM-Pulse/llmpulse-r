#' Create a new AiModelInsightsSummaryResponseSummaryCitationsByModel
#'
#' @description
#' AiModelInsightsSummaryResponseSummaryCitationsByModel Class
#'
#' @docType class
#' @title AiModelInsightsSummaryResponseSummaryCitationsByModel
#' @description AiModelInsightsSummaryResponseSummaryCitationsByModel Class
#' @format An \code{R6Class} generator object
#' @field total_citations Citations of the brand's URLs across the models integer [optional]
#' @field models  list(\link{AiModelCitationsRow}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelInsightsSummaryResponseSummaryCitationsByModel <- R6::R6Class(
  "AiModelInsightsSummaryResponseSummaryCitationsByModel",
  public = list(
    `total_citations` = NULL,
    `models` = NULL,

    #' @description
    #' Initialize a new AiModelInsightsSummaryResponseSummaryCitationsByModel class.
    #'
    #' @param total_citations Citations of the brand's URLs across the models
    #' @param models models
    #' @param ... Other optional arguments.
    initialize = function(`total_citations` = NULL, `models` = NULL, ...) {
      if (!is.null(`total_citations`)) {
        if (!(is.numeric(`total_citations`) && length(`total_citations`) == 1)) {
          stop(paste("Error! Invalid data for `total_citations`. Must be an integer:", `total_citations`))
        }
        self$`total_citations` <- `total_citations`
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
    #' @return AiModelInsightsSummaryResponseSummaryCitationsByModel as a base R list.
    #' @examples
    #' # convert array of AiModelInsightsSummaryResponseSummaryCitationsByModel (x) to a data frame
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
    #' Convert AiModelInsightsSummaryResponseSummaryCitationsByModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelInsightsSummaryResponseSummaryCitationsByModelObject <- list()
      if (!is.null(self$`total_citations`)) {
        AiModelInsightsSummaryResponseSummaryCitationsByModelObject[["total_citations"]] <-
          self$`total_citations`
      }
      if (!is.null(self$`models`)) {
        AiModelInsightsSummaryResponseSummaryCitationsByModelObject[["models"]] <-
          self$extractSimpleType(self$`models`)
      }
      return(AiModelInsightsSummaryResponseSummaryCitationsByModelObject)
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
    #' Deserialize JSON string into an instance of AiModelInsightsSummaryResponseSummaryCitationsByModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsSummaryResponseSummaryCitationsByModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`total_citations`)) {
        self$`total_citations` <- this_object$`total_citations`
      }
      if (!is.null(this_object$`models`)) {
        self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[AiModelCitationsRow]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelInsightsSummaryResponseSummaryCitationsByModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelInsightsSummaryResponseSummaryCitationsByModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsSummaryResponseSummaryCitationsByModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`total_citations` <- this_object$`total_citations`
      self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[AiModelCitationsRow]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelInsightsSummaryResponseSummaryCitationsByModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelInsightsSummaryResponseSummaryCitationsByModel
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
# AiModelInsightsSummaryResponseSummaryCitationsByModel$unlock()
#
## Below is an example to define the print function
# AiModelInsightsSummaryResponseSummaryCitationsByModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelInsightsSummaryResponseSummaryCitationsByModel$lock()

