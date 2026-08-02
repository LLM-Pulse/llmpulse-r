#' Create a new SovResponsePeriodsInner
#'
#' @description
#' SovResponsePeriodsInner Class
#'
#' @docType class
#' @title SovResponsePeriodsInner
#' @description SovResponsePeriodsInner Class
#' @format An \code{R6Class} generator object
#' @field date  character [optional]
#' @field mentions  integer [optional]
#' @field partial  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SovResponsePeriodsInner <- R6::R6Class(
  "SovResponsePeriodsInner",
  public = list(
    `date` = NULL,
    `mentions` = NULL,
    `partial` = NULL,

    #' @description
    #' Initialize a new SovResponsePeriodsInner class.
    #'
    #' @param date date
    #' @param mentions mentions
    #' @param partial partial
    #' @param ... Other optional arguments.
    initialize = function(`date` = NULL, `mentions` = NULL, `partial` = NULL, ...) {
      if (!is.null(`date`)) {
        if (!is.character(`date`)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
      }
      if (!is.null(`mentions`)) {
        if (!(is.numeric(`mentions`) && length(`mentions`) == 1)) {
          stop(paste("Error! Invalid data for `mentions`. Must be an integer:", `mentions`))
        }
        self$`mentions` <- `mentions`
      }
      if (!is.null(`partial`)) {
        if (!(is.logical(`partial`) && length(`partial`) == 1)) {
          stop(paste("Error! Invalid data for `partial`. Must be a boolean:", `partial`))
        }
        self$`partial` <- `partial`
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
    #' @return SovResponsePeriodsInner as a base R list.
    #' @examples
    #' # convert array of SovResponsePeriodsInner (x) to a data frame
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
    #' Convert SovResponsePeriodsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SovResponsePeriodsInnerObject <- list()
      if (!is.null(self$`date`)) {
        SovResponsePeriodsInnerObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`mentions`)) {
        SovResponsePeriodsInnerObject[["mentions"]] <-
          self$`mentions`
      }
      if (!is.null(self$`partial`)) {
        SovResponsePeriodsInnerObject[["partial"]] <-
          self$`partial`
      }
      return(SovResponsePeriodsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SovResponsePeriodsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SovResponsePeriodsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`mentions`)) {
        self$`mentions` <- this_object$`mentions`
      }
      if (!is.null(this_object$`partial`)) {
        self$`partial` <- this_object$`partial`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SovResponsePeriodsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SovResponsePeriodsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SovResponsePeriodsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`date` <- this_object$`date`
      self$`mentions` <- this_object$`mentions`
      self$`partial` <- this_object$`partial`
      self
    },

    #' @description
    #' Validate JSON input with respect to SovResponsePeriodsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SovResponsePeriodsInner
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
# SovResponsePeriodsInner$unlock()
#
## Below is an example to define the print function
# SovResponsePeriodsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SovResponsePeriodsInner$lock()

