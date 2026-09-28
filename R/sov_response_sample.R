#' Create a new SovResponseSample
#'
#' @description
#' The period the current shares were computed on (the last one with mentions), same shape as a periods item; null when the window has no mentions.
#'
#' @docType class
#' @title SovResponseSample
#' @description SovResponseSample Class
#' @format An \code{R6Class} generator object
#' @field date  character [optional]
#' @field mentions  integer [optional]
#' @field partial  character [optional]
#' @field confidence  character [optional]
#' @field margin_of_error  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SovResponseSample <- R6::R6Class(
  "SovResponseSample",
  public = list(
    `date` = NULL,
    `mentions` = NULL,
    `partial` = NULL,
    `confidence` = NULL,
    `margin_of_error` = NULL,

    #' @description
    #' Initialize a new SovResponseSample class.
    #'
    #' @param date date
    #' @param mentions mentions
    #' @param partial partial
    #' @param confidence confidence
    #' @param margin_of_error margin_of_error
    #' @param ... Other optional arguments.
    initialize = function(`date` = NULL, `mentions` = NULL, `partial` = NULL, `confidence` = NULL, `margin_of_error` = NULL, ...) {
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
      if (!is.null(`confidence`)) {
        if (!(is.character(`confidence`) && length(`confidence`) == 1)) {
          stop(paste("Error! Invalid data for `confidence`. Must be a string:", `confidence`))
        }
        self$`confidence` <- `confidence`
      }
      if (!is.null(`margin_of_error`)) {
        self$`margin_of_error` <- `margin_of_error`
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
    #' @return SovResponseSample as a base R list.
    #' @examples
    #' # convert array of SovResponseSample (x) to a data frame
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
    #' Convert SovResponseSample to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SovResponseSampleObject <- list()
      if (!is.null(self$`date`)) {
        SovResponseSampleObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`mentions`)) {
        SovResponseSampleObject[["mentions"]] <-
          self$`mentions`
      }
      if (!is.null(self$`partial`)) {
        SovResponseSampleObject[["partial"]] <-
          self$`partial`
      }
      if (!is.null(self$`confidence`)) {
        SovResponseSampleObject[["confidence"]] <-
          self$`confidence`
      }
      if (!is.null(self$`margin_of_error`)) {
        SovResponseSampleObject[["margin_of_error"]] <-
          self$`margin_of_error`
      }
      return(SovResponseSampleObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SovResponseSample
    #'
    #' @param input_json the JSON input
    #' @return the instance of SovResponseSample
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
      if (!is.null(this_object$`confidence`)) {
        self$`confidence` <- this_object$`confidence`
      }
      if (!is.null(this_object$`margin_of_error`)) {
        self$`margin_of_error` <- this_object$`margin_of_error`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SovResponseSample in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SovResponseSample
    #'
    #' @param input_json the JSON input
    #' @return the instance of SovResponseSample
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`date` <- this_object$`date`
      self$`mentions` <- this_object$`mentions`
      self$`partial` <- this_object$`partial`
      self$`confidence` <- this_object$`confidence`
      self$`margin_of_error` <- this_object$`margin_of_error`
      self
    },

    #' @description
    #' Validate JSON input with respect to SovResponseSample and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SovResponseSample
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
# SovResponseSample$unlock()
#
## Below is an example to define the print function
# SovResponseSample$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SovResponseSample$lock()

