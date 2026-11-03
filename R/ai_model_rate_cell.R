#' Create a new AiModelRateCell
#'
#' @description
#' AiModelRateCell Class
#'
#' @docType class
#' @title AiModelRateCell
#' @description AiModelRateCell Class
#' @format An \code{R6Class} generator object
#' @field value numerator as a percentage (0-100) of denominator; null when the model has no answers in the window numeric [optional]
#' @field numerator Mentions of the actor (or answers citing it) in the model's answers integer [optional]
#' @field denominator Answers of the model in the window integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelRateCell <- R6::R6Class(
  "AiModelRateCell",
  public = list(
    `value` = NULL,
    `numerator` = NULL,
    `denominator` = NULL,

    #' @description
    #' Initialize a new AiModelRateCell class.
    #'
    #' @param value numerator as a percentage (0-100) of denominator; null when the model has no answers in the window
    #' @param numerator Mentions of the actor (or answers citing it) in the model's answers
    #' @param denominator Answers of the model in the window
    #' @param ... Other optional arguments.
    initialize = function(`value` = NULL, `numerator` = NULL, `denominator` = NULL, ...) {
      if (!is.null(`value`)) {
        self$`value` <- `value`
      }
      if (!is.null(`numerator`)) {
        if (!(is.numeric(`numerator`) && length(`numerator`) == 1)) {
          stop(paste("Error! Invalid data for `numerator`. Must be an integer:", `numerator`))
        }
        self$`numerator` <- `numerator`
      }
      if (!is.null(`denominator`)) {
        if (!(is.numeric(`denominator`) && length(`denominator`) == 1)) {
          stop(paste("Error! Invalid data for `denominator`. Must be an integer:", `denominator`))
        }
        self$`denominator` <- `denominator`
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
    #' @return AiModelRateCell as a base R list.
    #' @examples
    #' # convert array of AiModelRateCell (x) to a data frame
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
    #' Convert AiModelRateCell to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelRateCellObject <- list()
      if (!is.null(self$`value`)) {
        AiModelRateCellObject[["value"]] <-
          self$`value`
      }
      if (!is.null(self$`numerator`)) {
        AiModelRateCellObject[["numerator"]] <-
          self$`numerator`
      }
      if (!is.null(self$`denominator`)) {
        AiModelRateCellObject[["denominator"]] <-
          self$`denominator`
      }
      return(AiModelRateCellObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelRateCell
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelRateCell
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      if (!is.null(this_object$`numerator`)) {
        self$`numerator` <- this_object$`numerator`
      }
      if (!is.null(this_object$`denominator`)) {
        self$`denominator` <- this_object$`denominator`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelRateCell in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelRateCell
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelRateCell
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`value` <- this_object$`value`
      self$`numerator` <- this_object$`numerator`
      self$`denominator` <- this_object$`denominator`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelRateCell and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelRateCell
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
# AiModelRateCell$unlock()
#
## Below is an example to define the print function
# AiModelRateCell$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelRateCell$lock()

