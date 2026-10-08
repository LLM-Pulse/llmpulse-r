#' Create a new GeoAuditFinding
#'
#' @description
#' GeoAuditFinding Class
#'
#' @docType class
#' @title GeoAuditFinding
#' @description GeoAuditFinding Class
#' @format An \code{R6Class} generator object
#' @field check_key Stable key of the check within its audit type character [optional]
#' @field check_title  character [optional]
#' @field subject_key What the check is about (site for site-wide checks, a bot slug for robots.txt bot checks) character [optional]
#' @field subject  character [optional]
#' @field status  character [optional]
#' @field severity  character [optional]
#' @field evidence  object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoAuditFinding <- R6::R6Class(
  "GeoAuditFinding",
  public = list(
    `check_key` = NULL,
    `check_title` = NULL,
    `subject_key` = NULL,
    `subject` = NULL,
    `status` = NULL,
    `severity` = NULL,
    `evidence` = NULL,

    #' @description
    #' Initialize a new GeoAuditFinding class.
    #'
    #' @param check_key Stable key of the check within its audit type
    #' @param check_title check_title
    #' @param subject_key What the check is about (site for site-wide checks, a bot slug for robots.txt bot checks)
    #' @param subject subject
    #' @param status status
    #' @param severity severity
    #' @param evidence evidence
    #' @param ... Other optional arguments.
    initialize = function(`check_key` = NULL, `check_title` = NULL, `subject_key` = NULL, `subject` = NULL, `status` = NULL, `severity` = NULL, `evidence` = NULL, ...) {
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
      if (!is.null(`status`)) {
        if (!(`status` %in% c("pass", "warn", "fail", "info", "not_applicable", "unknown"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"pass\", \"warn\", \"fail\", \"info\", \"not_applicable\", \"unknown\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`severity`)) {
        if (!(`severity` %in% c("critical", "high", "medium", "low", "info"))) {
          stop(paste("Error! \"", `severity`, "\" cannot be assigned to `severity`. Must be \"critical\", \"high\", \"medium\", \"low\", \"info\".", sep = ""))
        }
        if (!(is.character(`severity`) && length(`severity`) == 1)) {
          stop(paste("Error! Invalid data for `severity`. Must be a string:", `severity`))
        }
        self$`severity` <- `severity`
      }
      if (!is.null(`evidence`)) {
        self$`evidence` <- `evidence`
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
    #' @return GeoAuditFinding as a base R list.
    #' @examples
    #' # convert array of GeoAuditFinding (x) to a data frame
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
    #' Convert GeoAuditFinding to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoAuditFindingObject <- list()
      if (!is.null(self$`check_key`)) {
        GeoAuditFindingObject[["check_key"]] <-
          self$`check_key`
      }
      if (!is.null(self$`check_title`)) {
        GeoAuditFindingObject[["check_title"]] <-
          self$`check_title`
      }
      if (!is.null(self$`subject_key`)) {
        GeoAuditFindingObject[["subject_key"]] <-
          self$`subject_key`
      }
      if (!is.null(self$`subject`)) {
        GeoAuditFindingObject[["subject"]] <-
          self$`subject`
      }
      if (!is.null(self$`status`)) {
        GeoAuditFindingObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`severity`)) {
        GeoAuditFindingObject[["severity"]] <-
          self$`severity`
      }
      if (!is.null(self$`evidence`)) {
        GeoAuditFindingObject[["evidence"]] <-
          self$`evidence`
      }
      return(GeoAuditFindingObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditFinding
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditFinding
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
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("pass", "warn", "fail", "info", "not_applicable", "unknown"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"pass\", \"warn\", \"fail\", \"info\", \"not_applicable\", \"unknown\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`severity`)) {
        if (!is.null(this_object$`severity`) && !(this_object$`severity` %in% c("critical", "high", "medium", "low", "info"))) {
          stop(paste("Error! \"", this_object$`severity`, "\" cannot be assigned to `severity`. Must be \"critical\", \"high\", \"medium\", \"low\", \"info\".", sep = ""))
        }
        self$`severity` <- this_object$`severity`
      }
      if (!is.null(this_object$`evidence`)) {
        self$`evidence` <- this_object$`evidence`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeoAuditFinding in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditFinding
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditFinding
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`check_key` <- this_object$`check_key`
      self$`check_title` <- this_object$`check_title`
      self$`subject_key` <- this_object$`subject_key`
      self$`subject` <- this_object$`subject`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("pass", "warn", "fail", "info", "not_applicable", "unknown"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"pass\", \"warn\", \"fail\", \"info\", \"not_applicable\", \"unknown\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      if (!is.null(this_object$`severity`) && !(this_object$`severity` %in% c("critical", "high", "medium", "low", "info"))) {
        stop(paste("Error! \"", this_object$`severity`, "\" cannot be assigned to `severity`. Must be \"critical\", \"high\", \"medium\", \"low\", \"info\".", sep = ""))
      }
      self$`severity` <- this_object$`severity`
      self$`evidence` <- this_object$`evidence`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoAuditFinding and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoAuditFinding
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
# GeoAuditFinding$unlock()
#
## Below is an example to define the print function
# GeoAuditFinding$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoAuditFinding$lock()

