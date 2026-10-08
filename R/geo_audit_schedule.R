#' Create a new GeoAuditSchedule
#'
#' @description
#' Present for weekly and monthly audits. day is 0 (Sunday) to 6 for weekly audits and 1 to 28 for monthly ones; hour is in timezone.
#'
#' @docType class
#' @title GeoAuditSchedule
#' @description GeoAuditSchedule Class
#' @format An \code{R6Class} generator object
#' @field day  integer [optional]
#' @field hour  integer [optional]
#' @field timezone  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoAuditSchedule <- R6::R6Class(
  "GeoAuditSchedule",
  public = list(
    `day` = NULL,
    `hour` = NULL,
    `timezone` = NULL,

    #' @description
    #' Initialize a new GeoAuditSchedule class.
    #'
    #' @param day day
    #' @param hour hour
    #' @param timezone timezone
    #' @param ... Other optional arguments.
    initialize = function(`day` = NULL, `hour` = NULL, `timezone` = NULL, ...) {
      if (!is.null(`day`)) {
        if (!(is.numeric(`day`) && length(`day`) == 1)) {
          stop(paste("Error! Invalid data for `day`. Must be an integer:", `day`))
        }
        self$`day` <- `day`
      }
      if (!is.null(`hour`)) {
        if (!(is.numeric(`hour`) && length(`hour`) == 1)) {
          stop(paste("Error! Invalid data for `hour`. Must be an integer:", `hour`))
        }
        self$`hour` <- `hour`
      }
      if (!is.null(`timezone`)) {
        if (!(is.character(`timezone`) && length(`timezone`) == 1)) {
          stop(paste("Error! Invalid data for `timezone`. Must be a string:", `timezone`))
        }
        self$`timezone` <- `timezone`
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
    #' @return GeoAuditSchedule as a base R list.
    #' @examples
    #' # convert array of GeoAuditSchedule (x) to a data frame
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
    #' Convert GeoAuditSchedule to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoAuditScheduleObject <- list()
      if (!is.null(self$`day`)) {
        GeoAuditScheduleObject[["day"]] <-
          self$`day`
      }
      if (!is.null(self$`hour`)) {
        GeoAuditScheduleObject[["hour"]] <-
          self$`hour`
      }
      if (!is.null(self$`timezone`)) {
        GeoAuditScheduleObject[["timezone"]] <-
          self$`timezone`
      }
      return(GeoAuditScheduleObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditSchedule
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditSchedule
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`day`)) {
        self$`day` <- this_object$`day`
      }
      if (!is.null(this_object$`hour`)) {
        self$`hour` <- this_object$`hour`
      }
      if (!is.null(this_object$`timezone`)) {
        self$`timezone` <- this_object$`timezone`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeoAuditSchedule in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditSchedule
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditSchedule
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`day` <- this_object$`day`
      self$`hour` <- this_object$`hour`
      self$`timezone` <- this_object$`timezone`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoAuditSchedule and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoAuditSchedule
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
# GeoAuditSchedule$unlock()
#
## Below is an example to define the print function
# GeoAuditSchedule$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoAuditSchedule$lock()

