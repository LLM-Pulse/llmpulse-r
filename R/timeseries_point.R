#' Create a new TimeseriesPoint
#'
#' @description
#' TimeseriesPoint Class
#'
#' @docType class
#' @title TimeseriesPoint
#' @description TimeseriesPoint Class
#' @format An \code{R6Class} generator object
#' @field date  character [optional]
#' @field value  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TimeseriesPoint <- R6::R6Class(
  "TimeseriesPoint",
  public = list(
    `date` = NULL,
    `value` = NULL,

    #' @description
    #' Initialize a new TimeseriesPoint class.
    #'
    #' @param date date
    #' @param value value
    #' @param ... Other optional arguments.
    initialize = function(`date` = NULL, `value` = NULL, ...) {
      if (!is.null(`date`)) {
        if (!is.character(`date`)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
      }
      if (!is.null(`value`)) {
        self$`value` <- `value`
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
    #' @return TimeseriesPoint as a base R list.
    #' @examples
    #' # convert array of TimeseriesPoint (x) to a data frame
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
    #' Convert TimeseriesPoint to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TimeseriesPointObject <- list()
      if (!is.null(self$`date`)) {
        TimeseriesPointObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`value`)) {
        TimeseriesPointObject[["value"]] <-
          self$`value`
      }
      return(TimeseriesPointObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TimeseriesPoint
    #'
    #' @param input_json the JSON input
    #' @return the instance of TimeseriesPoint
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TimeseriesPoint in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TimeseriesPoint
    #'
    #' @param input_json the JSON input
    #' @return the instance of TimeseriesPoint
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`date` <- this_object$`date`
      self$`value` <- this_object$`value`
      self
    },

    #' @description
    #' Validate JSON input with respect to TimeseriesPoint and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TimeseriesPoint
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
# TimeseriesPoint$unlock()
#
## Below is an example to define the print function
# TimeseriesPoint$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TimeseriesPoint$lock()

