#' Create a new GeoAlertEventsInner
#'
#' @description
#' GeoAlertEventsInner Class
#'
#' @docType class
#' @title GeoAlertEventsInner
#' @description GeoAlertEventsInner Class
#' @format An \code{R6Class} generator object
#' @field kind  character [optional]
#' @field check_key  character [optional]
#' @field subject_key  character [optional]
#' @field severity  character [optional]
#' @field message  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoAlertEventsInner <- R6::R6Class(
  "GeoAlertEventsInner",
  public = list(
    `kind` = NULL,
    `check_key` = NULL,
    `subject_key` = NULL,
    `severity` = NULL,
    `message` = NULL,

    #' @description
    #' Initialize a new GeoAlertEventsInner class.
    #'
    #' @param kind kind
    #' @param check_key check_key
    #' @param subject_key subject_key
    #' @param severity severity
    #' @param message message
    #' @param ... Other optional arguments.
    initialize = function(`kind` = NULL, `check_key` = NULL, `subject_key` = NULL, `severity` = NULL, `message` = NULL, ...) {
      if (!is.null(`kind`)) {
        if (!(`kind` %in% c("new_critical", "regression", "recovered", "score_drop", "unreachable", "paused"))) {
          stop(paste("Error! \"", `kind`, "\" cannot be assigned to `kind`. Must be \"new_critical\", \"regression\", \"recovered\", \"score_drop\", \"unreachable\", \"paused\".", sep = ""))
        }
        if (!(is.character(`kind`) && length(`kind`) == 1)) {
          stop(paste("Error! Invalid data for `kind`. Must be a string:", `kind`))
        }
        self$`kind` <- `kind`
      }
      if (!is.null(`check_key`)) {
        if (!(is.character(`check_key`) && length(`check_key`) == 1)) {
          stop(paste("Error! Invalid data for `check_key`. Must be a string:", `check_key`))
        }
        self$`check_key` <- `check_key`
      }
      if (!is.null(`subject_key`)) {
        if (!(is.character(`subject_key`) && length(`subject_key`) == 1)) {
          stop(paste("Error! Invalid data for `subject_key`. Must be a string:", `subject_key`))
        }
        self$`subject_key` <- `subject_key`
      }
      if (!is.null(`severity`)) {
        if (!(is.character(`severity`) && length(`severity`) == 1)) {
          stop(paste("Error! Invalid data for `severity`. Must be a string:", `severity`))
        }
        self$`severity` <- `severity`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
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
    #' @return GeoAlertEventsInner as a base R list.
    #' @examples
    #' # convert array of GeoAlertEventsInner (x) to a data frame
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
    #' Convert GeoAlertEventsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoAlertEventsInnerObject <- list()
      if (!is.null(self$`kind`)) {
        GeoAlertEventsInnerObject[["kind"]] <-
          self$`kind`
      }
      if (!is.null(self$`check_key`)) {
        GeoAlertEventsInnerObject[["check_key"]] <-
          self$`check_key`
      }
      if (!is.null(self$`subject_key`)) {
        GeoAlertEventsInnerObject[["subject_key"]] <-
          self$`subject_key`
      }
      if (!is.null(self$`severity`)) {
        GeoAlertEventsInnerObject[["severity"]] <-
          self$`severity`
      }
      if (!is.null(self$`message`)) {
        GeoAlertEventsInnerObject[["message"]] <-
          self$`message`
      }
      return(GeoAlertEventsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAlertEventsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAlertEventsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`kind`)) {
        if (!is.null(this_object$`kind`) && !(this_object$`kind` %in% c("new_critical", "regression", "recovered", "score_drop", "unreachable", "paused"))) {
          stop(paste("Error! \"", this_object$`kind`, "\" cannot be assigned to `kind`. Must be \"new_critical\", \"regression\", \"recovered\", \"score_drop\", \"unreachable\", \"paused\".", sep = ""))
        }
        self$`kind` <- this_object$`kind`
      }
      if (!is.null(this_object$`check_key`)) {
        self$`check_key` <- this_object$`check_key`
      }
      if (!is.null(this_object$`subject_key`)) {
        self$`subject_key` <- this_object$`subject_key`
      }
      if (!is.null(this_object$`severity`)) {
        self$`severity` <- this_object$`severity`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeoAlertEventsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAlertEventsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAlertEventsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`kind`) && !(this_object$`kind` %in% c("new_critical", "regression", "recovered", "score_drop", "unreachable", "paused"))) {
        stop(paste("Error! \"", this_object$`kind`, "\" cannot be assigned to `kind`. Must be \"new_critical\", \"regression\", \"recovered\", \"score_drop\", \"unreachable\", \"paused\".", sep = ""))
      }
      self$`kind` <- this_object$`kind`
      self$`check_key` <- this_object$`check_key`
      self$`subject_key` <- this_object$`subject_key`
      self$`severity` <- this_object$`severity`
      self$`message` <- this_object$`message`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoAlertEventsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoAlertEventsInner
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
# GeoAlertEventsInner$unlock()
#
## Below is an example to define the print function
# GeoAlertEventsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoAlertEventsInner$lock()

