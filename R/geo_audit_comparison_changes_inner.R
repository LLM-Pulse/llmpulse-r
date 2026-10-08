#' Create a new GeoAuditComparisonChangesInner
#'
#' @description
#' GeoAuditComparisonChangesInner Class
#'
#' @docType class
#' @title GeoAuditComparisonChangesInner
#' @description GeoAuditComparisonChangesInner Class
#' @format An \code{R6Class} generator object
#' @field check_key  character [optional]
#' @field check_title  character [optional]
#' @field subject_key  character [optional]
#' @field subject  character [optional]
#' @field severity  character [optional]
#' @field from_status  character [optional]
#' @field to_status  character [optional]
#' @field change  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoAuditComparisonChangesInner <- R6::R6Class(
  "GeoAuditComparisonChangesInner",
  public = list(
    `check_key` = NULL,
    `check_title` = NULL,
    `subject_key` = NULL,
    `subject` = NULL,
    `severity` = NULL,
    `from_status` = NULL,
    `to_status` = NULL,
    `change` = NULL,

    #' @description
    #' Initialize a new GeoAuditComparisonChangesInner class.
    #'
    #' @param check_key check_key
    #' @param check_title check_title
    #' @param subject_key subject_key
    #' @param subject subject
    #' @param severity severity
    #' @param from_status from_status
    #' @param to_status to_status
    #' @param change change
    #' @param ... Other optional arguments.
    initialize = function(`check_key` = NULL, `check_title` = NULL, `subject_key` = NULL, `subject` = NULL, `severity` = NULL, `from_status` = NULL, `to_status` = NULL, `change` = NULL, ...) {
      if (!is.null(`check_key`)) {
        if (!(is.character(`check_key`) && length(`check_key`) == 1)) {
          stop(paste("Error! Invalid data for `check_key`. Must be a string:", `check_key`))
        }
        self$`check_key` <- `check_key`
      }
      if (!is.null(`check_title`)) {
        if (!(is.character(`check_title`) && length(`check_title`) == 1)) {
          stop(paste("Error! Invalid data for `check_title`. Must be a string:", `check_title`))
        }
        self$`check_title` <- `check_title`
      }
      if (!is.null(`subject_key`)) {
        if (!(is.character(`subject_key`) && length(`subject_key`) == 1)) {
          stop(paste("Error! Invalid data for `subject_key`. Must be a string:", `subject_key`))
        }
        self$`subject_key` <- `subject_key`
      }
      if (!is.null(`subject`)) {
        if (!(is.character(`subject`) && length(`subject`) == 1)) {
          stop(paste("Error! Invalid data for `subject`. Must be a string:", `subject`))
        }
        self$`subject` <- `subject`
      }
      if (!is.null(`severity`)) {
        if (!(is.character(`severity`) && length(`severity`) == 1)) {
          stop(paste("Error! Invalid data for `severity`. Must be a string:", `severity`))
        }
        self$`severity` <- `severity`
      }
      if (!is.null(`from_status`)) {
        if (!(is.character(`from_status`) && length(`from_status`) == 1)) {
          stop(paste("Error! Invalid data for `from_status`. Must be a string:", `from_status`))
        }
        self$`from_status` <- `from_status`
      }
      if (!is.null(`to_status`)) {
        if (!(is.character(`to_status`) && length(`to_status`) == 1)) {
          stop(paste("Error! Invalid data for `to_status`. Must be a string:", `to_status`))
        }
        self$`to_status` <- `to_status`
      }
      if (!is.null(`change`)) {
        if (!(`change` %in% c("new", "fixed", "changed", "appeared", "disappeared", "unchanged"))) {
          stop(paste("Error! \"", `change`, "\" cannot be assigned to `change`. Must be \"new\", \"fixed\", \"changed\", \"appeared\", \"disappeared\", \"unchanged\".", sep = ""))
        }
        if (!(is.character(`change`) && length(`change`) == 1)) {
          stop(paste("Error! Invalid data for `change`. Must be a string:", `change`))
        }
        self$`change` <- `change`
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
    #' @return GeoAuditComparisonChangesInner as a base R list.
    #' @examples
    #' # convert array of GeoAuditComparisonChangesInner (x) to a data frame
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
    #' Convert GeoAuditComparisonChangesInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoAuditComparisonChangesInnerObject <- list()
      if (!is.null(self$`check_key`)) {
        GeoAuditComparisonChangesInnerObject[["check_key"]] <-
          self$`check_key`
      }
      if (!is.null(self$`check_title`)) {
        GeoAuditComparisonChangesInnerObject[["check_title"]] <-
          self$`check_title`
      }
      if (!is.null(self$`subject_key`)) {
        GeoAuditComparisonChangesInnerObject[["subject_key"]] <-
          self$`subject_key`
      }
      if (!is.null(self$`subject`)) {
        GeoAuditComparisonChangesInnerObject[["subject"]] <-
          self$`subject`
      }
      if (!is.null(self$`severity`)) {
        GeoAuditComparisonChangesInnerObject[["severity"]] <-
          self$`severity`
      }
      if (!is.null(self$`from_status`)) {
        GeoAuditComparisonChangesInnerObject[["from_status"]] <-
          self$`from_status`
      }
      if (!is.null(self$`to_status`)) {
        GeoAuditComparisonChangesInnerObject[["to_status"]] <-
          self$`to_status`
      }
      if (!is.null(self$`change`)) {
        GeoAuditComparisonChangesInnerObject[["change"]] <-
          self$`change`
      }
      return(GeoAuditComparisonChangesInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditComparisonChangesInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditComparisonChangesInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`check_key`)) {
        self$`check_key` <- this_object$`check_key`
      }
      if (!is.null(this_object$`check_title`)) {
        self$`check_title` <- this_object$`check_title`
      }
      if (!is.null(this_object$`subject_key`)) {
        self$`subject_key` <- this_object$`subject_key`
      }
      if (!is.null(this_object$`subject`)) {
        self$`subject` <- this_object$`subject`
      }
      if (!is.null(this_object$`severity`)) {
        self$`severity` <- this_object$`severity`
      }
      if (!is.null(this_object$`from_status`)) {
        self$`from_status` <- this_object$`from_status`
      }
      if (!is.null(this_object$`to_status`)) {
        self$`to_status` <- this_object$`to_status`
      }
      if (!is.null(this_object$`change`)) {
        if (!is.null(this_object$`change`) && !(this_object$`change` %in% c("new", "fixed", "changed", "appeared", "disappeared", "unchanged"))) {
          stop(paste("Error! \"", this_object$`change`, "\" cannot be assigned to `change`. Must be \"new\", \"fixed\", \"changed\", \"appeared\", \"disappeared\", \"unchanged\".", sep = ""))
        }
        self$`change` <- this_object$`change`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeoAuditComparisonChangesInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditComparisonChangesInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditComparisonChangesInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`check_key` <- this_object$`check_key`
      self$`check_title` <- this_object$`check_title`
      self$`subject_key` <- this_object$`subject_key`
      self$`subject` <- this_object$`subject`
      self$`severity` <- this_object$`severity`
      self$`from_status` <- this_object$`from_status`
      self$`to_status` <- this_object$`to_status`
      if (!is.null(this_object$`change`) && !(this_object$`change` %in% c("new", "fixed", "changed", "appeared", "disappeared", "unchanged"))) {
        stop(paste("Error! \"", this_object$`change`, "\" cannot be assigned to `change`. Must be \"new\", \"fixed\", \"changed\", \"appeared\", \"disappeared\", \"unchanged\".", sep = ""))
      }
      self$`change` <- this_object$`change`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoAuditComparisonChangesInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoAuditComparisonChangesInner
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
# GeoAuditComparisonChangesInner$unlock()
#
## Below is an example to define the print function
# GeoAuditComparisonChangesInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoAuditComparisonChangesInner$lock()

