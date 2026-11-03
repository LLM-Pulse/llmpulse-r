#' Create a new AiModelRateMatrix
#'
#' @description
#' Each actor's rate within each model: mentions of the actor (mentions_market_share), or answers citing it (citations_market_share), per answer of the model. Rates are independent, so the actors of a model can add up to more or less than 100.
#'
#' @docType class
#' @title AiModelRateMatrix
#' @description AiModelRateMatrix Class
#' @format An \code{R6Class} generator object
#' @field denominators_by_model Answers of each model in the window, keyed by model named list(integer) [optional]
#' @field actors The project and each competitor with a mention (or citation) in the window (only the competitors given in competitors, when it is given), by total descending list(\link{AiModelRateMatrixActor}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelRateMatrix <- R6::R6Class(
  "AiModelRateMatrix",
  public = list(
    `denominators_by_model` = NULL,
    `actors` = NULL,

    #' @description
    #' Initialize a new AiModelRateMatrix class.
    #'
    #' @param denominators_by_model Answers of each model in the window, keyed by model
    #' @param actors The project and each competitor with a mention (or citation) in the window (only the competitors given in competitors, when it is given), by total descending
    #' @param ... Other optional arguments.
    initialize = function(`denominators_by_model` = NULL, `actors` = NULL, ...) {
      if (!is.null(`denominators_by_model`)) {
        stopifnot(is.vector(`denominators_by_model`), length(`denominators_by_model`) != 0)
        sapply(`denominators_by_model`, function(x) stopifnot(is.character(x)))
        self$`denominators_by_model` <- `denominators_by_model`
      }
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
    #' @return AiModelRateMatrix as a base R list.
    #' @examples
    #' # convert array of AiModelRateMatrix (x) to a data frame
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
    #' Convert AiModelRateMatrix to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelRateMatrixObject <- list()
      if (!is.null(self$`denominators_by_model`)) {
        AiModelRateMatrixObject[["denominators_by_model"]] <-
          self$`denominators_by_model`
      }
      if (!is.null(self$`actors`)) {
        AiModelRateMatrixObject[["actors"]] <-
          self$extractSimpleType(self$`actors`)
      }
      return(AiModelRateMatrixObject)
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
    #' Deserialize JSON string into an instance of AiModelRateMatrix
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelRateMatrix
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`denominators_by_model`)) {
        self$`denominators_by_model` <- ApiClient$new()$deserializeObj(this_object$`denominators_by_model`, "map(integer)", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`actors`)) {
        self$`actors` <- ApiClient$new()$deserializeObj(this_object$`actors`, "array[AiModelRateMatrixActor]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelRateMatrix in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelRateMatrix
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelRateMatrix
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`denominators_by_model` <- ApiClient$new()$deserializeObj(this_object$`denominators_by_model`, "map(integer)", loadNamespace("llmpulse"))
      self$`actors` <- ApiClient$new()$deserializeObj(this_object$`actors`, "array[AiModelRateMatrixActor]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelRateMatrix and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelRateMatrix
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
# AiModelRateMatrix$unlock()
#
## Below is an example to define the print function
# AiModelRateMatrix$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelRateMatrix$lock()

