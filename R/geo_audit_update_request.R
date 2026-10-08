#' Create a new GeoAuditUpdateRequest
#'
#' @description
#' GeoAuditUpdateRequest Class
#'
#' @docType class
#' @title GeoAuditUpdateRequest
#' @description GeoAuditUpdateRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field cadence  character [optional]
#' @field schedule_day Weekly: 0 (Sunday) to 6. Monthly: 1 to 28. integer [optional]
#' @field schedule_hour Hour of the day, 0 to 23, in the audit time zone integer [optional]
#' @field status paused stops scheduled runs, active resumes them, archived is the same as DELETE character [optional]
#' @field email_alerts  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoAuditUpdateRequest <- R6::R6Class(
  "GeoAuditUpdateRequest",
  public = list(
    `project_id` = NULL,
    `cadence` = NULL,
    `schedule_day` = NULL,
    `schedule_hour` = NULL,
    `status` = NULL,
    `email_alerts` = NULL,

    #' @description
    #' Initialize a new GeoAuditUpdateRequest class.
    #'
    #' @param project_id project_id
    #' @param cadence cadence
    #' @param schedule_day Weekly: 0 (Sunday) to 6. Monthly: 1 to 28.
    #' @param schedule_hour Hour of the day, 0 to 23, in the audit time zone
    #' @param status paused stops scheduled runs, active resumes them, archived is the same as DELETE
    #' @param email_alerts email_alerts
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `cadence` = NULL, `schedule_day` = NULL, `schedule_hour` = NULL, `status` = NULL, `email_alerts` = NULL, ...) {
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`cadence`)) {
        if (!(`cadence` %in% c("once", "weekly", "monthly"))) {
          stop(paste("Error! \"", `cadence`, "\" cannot be assigned to `cadence`. Must be \"once\", \"weekly\", \"monthly\".", sep = ""))
        }
        if (!(is.character(`cadence`) && length(`cadence`) == 1)) {
          stop(paste("Error! Invalid data for `cadence`. Must be a string:", `cadence`))
        }
        self$`cadence` <- `cadence`
      }
      if (!is.null(`schedule_day`)) {
        if (!(is.numeric(`schedule_day`) && length(`schedule_day`) == 1)) {
          stop(paste("Error! Invalid data for `schedule_day`. Must be an integer:", `schedule_day`))
        }
        self$`schedule_day` <- `schedule_day`
      }
      if (!is.null(`schedule_hour`)) {
        if (!(is.numeric(`schedule_hour`) && length(`schedule_hour`) == 1)) {
          stop(paste("Error! Invalid data for `schedule_hour`. Must be an integer:", `schedule_hour`))
        }
        self$`schedule_hour` <- `schedule_hour`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("active", "paused", "archived"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"active\", \"paused\", \"archived\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`email_alerts`)) {
        if (!(is.logical(`email_alerts`) && length(`email_alerts`) == 1)) {
          stop(paste("Error! Invalid data for `email_alerts`. Must be a boolean:", `email_alerts`))
        }
        self$`email_alerts` <- `email_alerts`
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
    #' @return GeoAuditUpdateRequest as a base R list.
    #' @examples
    #' # convert array of GeoAuditUpdateRequest (x) to a data frame
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
    #' Convert GeoAuditUpdateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoAuditUpdateRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        GeoAuditUpdateRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`cadence`)) {
        GeoAuditUpdateRequestObject[["cadence"]] <-
          self$`cadence`
      }
      if (!is.null(self$`schedule_day`)) {
        GeoAuditUpdateRequestObject[["schedule_day"]] <-
          self$`schedule_day`
      }
      if (!is.null(self$`schedule_hour`)) {
        GeoAuditUpdateRequestObject[["schedule_hour"]] <-
          self$`schedule_hour`
      }
      if (!is.null(self$`status`)) {
        GeoAuditUpdateRequestObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`email_alerts`)) {
        GeoAuditUpdateRequestObject[["email_alerts"]] <-
          self$`email_alerts`
      }
      return(GeoAuditUpdateRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditUpdateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`cadence`)) {
        if (!is.null(this_object$`cadence`) && !(this_object$`cadence` %in% c("once", "weekly", "monthly"))) {
          stop(paste("Error! \"", this_object$`cadence`, "\" cannot be assigned to `cadence`. Must be \"once\", \"weekly\", \"monthly\".", sep = ""))
        }
        self$`cadence` <- this_object$`cadence`
      }
      if (!is.null(this_object$`schedule_day`)) {
        self$`schedule_day` <- this_object$`schedule_day`
      }
      if (!is.null(this_object$`schedule_hour`)) {
        self$`schedule_hour` <- this_object$`schedule_hour`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("active", "paused", "archived"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"active\", \"paused\", \"archived\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`email_alerts`)) {
        self$`email_alerts` <- this_object$`email_alerts`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeoAuditUpdateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditUpdateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`cadence`) && !(this_object$`cadence` %in% c("once", "weekly", "monthly"))) {
        stop(paste("Error! \"", this_object$`cadence`, "\" cannot be assigned to `cadence`. Must be \"once\", \"weekly\", \"monthly\".", sep = ""))
      }
      self$`cadence` <- this_object$`cadence`
      self$`schedule_day` <- this_object$`schedule_day`
      self$`schedule_hour` <- this_object$`schedule_hour`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("active", "paused", "archived"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"active\", \"paused\", \"archived\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`email_alerts` <- this_object$`email_alerts`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoAuditUpdateRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoAuditUpdateRequest
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
# GeoAuditUpdateRequest$unlock()
#
## Below is an example to define the print function
# GeoAuditUpdateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoAuditUpdateRequest$lock()

