#' Create a new GeoAuditIssue
#'
#' @description
#' GeoAuditIssue Class
#'
#' @docType class
#' @title GeoAuditIssue
#' @description GeoAuditIssue Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field check_key  character [optional]
#' @field check_title  character [optional]
#' @field subject_key  character [optional]
#' @field subject  character [optional]
#' @field severity  character [optional]
#' @field state  character [optional]
#' @field badge How the latest comparable run moved the issue character [optional]
#' @field accepted  character [optional]
#' @field accepted_at  character [optional]
#' @field regression_count  integer [optional]
#' @field evidence  object [optional]
#' @field updated_at  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoAuditIssue <- R6::R6Class(
  "GeoAuditIssue",
  public = list(
    `id` = NULL,
    `check_key` = NULL,
    `check_title` = NULL,
    `subject_key` = NULL,
    `subject` = NULL,
    `severity` = NULL,
    `state` = NULL,
    `badge` = NULL,
    `accepted` = NULL,
    `accepted_at` = NULL,
    `regression_count` = NULL,
    `evidence` = NULL,
    `updated_at` = NULL,

    #' @description
    #' Initialize a new GeoAuditIssue class.
    #'
    #' @param id id
    #' @param check_key check_key
    #' @param check_title check_title
    #' @param subject_key subject_key
    #' @param subject subject
    #' @param severity severity
    #' @param state state
    #' @param badge How the latest comparable run moved the issue
    #' @param accepted accepted
    #' @param accepted_at accepted_at
    #' @param regression_count regression_count
    #' @param evidence evidence
    #' @param updated_at updated_at
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `check_key` = NULL, `check_title` = NULL, `subject_key` = NULL, `subject` = NULL, `severity` = NULL, `state` = NULL, `badge` = NULL, `accepted` = NULL, `accepted_at` = NULL, `regression_count` = NULL, `evidence` = NULL, `updated_at` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
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
      if (!is.null(`state`)) {
        if (!(`state` %in% c("open", "fixed", "gone"))) {
          stop(paste("Error! \"", `state`, "\" cannot be assigned to `state`. Must be \"open\", \"fixed\", \"gone\".", sep = ""))
        }
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
      if (!is.null(`badge`)) {
        if (!(`badge` %in% c("new", "persisting", "regressed", "fixed", "gone"))) {
          stop(paste("Error! \"", `badge`, "\" cannot be assigned to `badge`. Must be \"new\", \"persisting\", \"regressed\", \"fixed\", \"gone\".", sep = ""))
        }
        if (!(is.character(`badge`) && length(`badge`) == 1)) {
          stop(paste("Error! Invalid data for `badge`. Must be a string:", `badge`))
        }
        self$`badge` <- `badge`
      }
      if (!is.null(`accepted`)) {
        if (!(is.logical(`accepted`) && length(`accepted`) == 1)) {
          stop(paste("Error! Invalid data for `accepted`. Must be a boolean:", `accepted`))
        }
        self$`accepted` <- `accepted`
      }
      if (!is.null(`accepted_at`)) {
        if (!is.character(`accepted_at`)) {
          stop(paste("Error! Invalid data for `accepted_at`. Must be a string:", `accepted_at`))
        }
        self$`accepted_at` <- `accepted_at`
      }
      if (!is.null(`regression_count`)) {
        if (!(is.numeric(`regression_count`) && length(`regression_count`) == 1)) {
          stop(paste("Error! Invalid data for `regression_count`. Must be an integer:", `regression_count`))
        }
        self$`regression_count` <- `regression_count`
      }
      if (!is.null(`evidence`)) {
        self$`evidence` <- `evidence`
      }
      if (!is.null(`updated_at`)) {
        if (!is.character(`updated_at`)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
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
    #' @return GeoAuditIssue as a base R list.
    #' @examples
    #' # convert array of GeoAuditIssue (x) to a data frame
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
    #' Convert GeoAuditIssue to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoAuditIssueObject <- list()
      if (!is.null(self$`id`)) {
        GeoAuditIssueObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`check_key`)) {
        GeoAuditIssueObject[["check_key"]] <-
          self$`check_key`
      }
      if (!is.null(self$`check_title`)) {
        GeoAuditIssueObject[["check_title"]] <-
          self$`check_title`
      }
      if (!is.null(self$`subject_key`)) {
        GeoAuditIssueObject[["subject_key"]] <-
          self$`subject_key`
      }
      if (!is.null(self$`subject`)) {
        GeoAuditIssueObject[["subject"]] <-
          self$`subject`
      }
      if (!is.null(self$`severity`)) {
        GeoAuditIssueObject[["severity"]] <-
          self$`severity`
      }
      if (!is.null(self$`state`)) {
        GeoAuditIssueObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`badge`)) {
        GeoAuditIssueObject[["badge"]] <-
          self$`badge`
      }
      if (!is.null(self$`accepted`)) {
        GeoAuditIssueObject[["accepted"]] <-
          self$`accepted`
      }
      if (!is.null(self$`accepted_at`)) {
        GeoAuditIssueObject[["accepted_at"]] <-
          self$`accepted_at`
      }
      if (!is.null(self$`regression_count`)) {
        GeoAuditIssueObject[["regression_count"]] <-
          self$`regression_count`
      }
      if (!is.null(self$`evidence`)) {
        GeoAuditIssueObject[["evidence"]] <-
          self$`evidence`
      }
      if (!is.null(self$`updated_at`)) {
        GeoAuditIssueObject[["updated_at"]] <-
          self$`updated_at`
      }
      return(GeoAuditIssueObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditIssue
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditIssue
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
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
      if (!is.null(this_object$`state`)) {
        if (!is.null(this_object$`state`) && !(this_object$`state` %in% c("open", "fixed", "gone"))) {
          stop(paste("Error! \"", this_object$`state`, "\" cannot be assigned to `state`. Must be \"open\", \"fixed\", \"gone\".", sep = ""))
        }
        self$`state` <- this_object$`state`
      }
      if (!is.null(this_object$`badge`)) {
        if (!is.null(this_object$`badge`) && !(this_object$`badge` %in% c("new", "persisting", "regressed", "fixed", "gone"))) {
          stop(paste("Error! \"", this_object$`badge`, "\" cannot be assigned to `badge`. Must be \"new\", \"persisting\", \"regressed\", \"fixed\", \"gone\".", sep = ""))
        }
        self$`badge` <- this_object$`badge`
      }
      if (!is.null(this_object$`accepted`)) {
        self$`accepted` <- this_object$`accepted`
      }
      if (!is.null(this_object$`accepted_at`)) {
        self$`accepted_at` <- this_object$`accepted_at`
      }
      if (!is.null(this_object$`regression_count`)) {
        self$`regression_count` <- this_object$`regression_count`
      }
      if (!is.null(this_object$`evidence`)) {
        self$`evidence` <- this_object$`evidence`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeoAuditIssue in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditIssue
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditIssue
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`check_key` <- this_object$`check_key`
      self$`check_title` <- this_object$`check_title`
      self$`subject_key` <- this_object$`subject_key`
      self$`subject` <- this_object$`subject`
      self$`severity` <- this_object$`severity`
      if (!is.null(this_object$`state`) && !(this_object$`state` %in% c("open", "fixed", "gone"))) {
        stop(paste("Error! \"", this_object$`state`, "\" cannot be assigned to `state`. Must be \"open\", \"fixed\", \"gone\".", sep = ""))
      }
      self$`state` <- this_object$`state`
      if (!is.null(this_object$`badge`) && !(this_object$`badge` %in% c("new", "persisting", "regressed", "fixed", "gone"))) {
        stop(paste("Error! \"", this_object$`badge`, "\" cannot be assigned to `badge`. Must be \"new\", \"persisting\", \"regressed\", \"fixed\", \"gone\".", sep = ""))
      }
      self$`badge` <- this_object$`badge`
      self$`accepted` <- this_object$`accepted`
      self$`accepted_at` <- this_object$`accepted_at`
      self$`regression_count` <- this_object$`regression_count`
      self$`evidence` <- this_object$`evidence`
      self$`updated_at` <- this_object$`updated_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoAuditIssue and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoAuditIssue
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
# GeoAuditIssue$unlock()
#
## Below is an example to define the print function
# GeoAuditIssue$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoAuditIssue$lock()

