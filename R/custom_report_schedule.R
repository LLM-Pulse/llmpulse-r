#' Create a new CustomReportSchedule
#'
#' @description
#' CustomReportSchedule Class
#'
#' @docType class
#' @title CustomReportSchedule
#' @description CustomReportSchedule Class
#' @format An \code{R6Class} generator object
#' @field enabled  character
#' @field day_of_week 0 (Sunday) to 6 (Saturday) integer [optional]
#' @field hour  integer [optional]
#' @field timezone  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomReportSchedule <- R6::R6Class(
  "CustomReportSchedule",
  public = list(
    `enabled` = NULL,
    `day_of_week` = NULL,
    `hour` = NULL,
    `timezone` = NULL,

    #' @description
    #' Initialize a new CustomReportSchedule class.
    #'
    #' @param enabled enabled
    #' @param day_of_week 0 (Sunday) to 6 (Saturday)
    #' @param hour hour
    #' @param timezone timezone
    #' @param ... Other optional arguments.
    initialize = function(`enabled`, `day_of_week` = NULL, `hour` = NULL, `timezone` = NULL, ...) {
      if (!missing(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!is.null(`day_of_week`)) {
        if (!(is.numeric(`day_of_week`) && length(`day_of_week`) == 1)) {
          stop(paste("Error! Invalid data for `day_of_week`. Must be an integer:", `day_of_week`))
        }
        self$`day_of_week` <- `day_of_week`
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
    #' @return CustomReportSchedule as a base R list.
    #' @examples
    #' # convert array of CustomReportSchedule (x) to a data frame
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
    #' Convert CustomReportSchedule to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomReportScheduleObject <- list()
      if (!is.null(self$`enabled`)) {
        CustomReportScheduleObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`day_of_week`)) {
        CustomReportScheduleObject[["day_of_week"]] <-
          self$`day_of_week`
      }
      if (!is.null(self$`hour`)) {
        CustomReportScheduleObject[["hour"]] <-
          self$`hour`
      }
      if (!is.null(self$`timezone`)) {
        CustomReportScheduleObject[["timezone"]] <-
          self$`timezone`
      }
      return(CustomReportScheduleObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomReportSchedule
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportSchedule
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`day_of_week`)) {
        self$`day_of_week` <- this_object$`day_of_week`
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
    #' @return CustomReportSchedule in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomReportSchedule
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportSchedule
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`enabled` <- this_object$`enabled`
      self$`day_of_week` <- this_object$`day_of_week`
      self$`hour` <- this_object$`hour`
      self$`timezone` <- this_object$`timezone`
      self
    },

    #' @description
    #' Validate JSON input with respect to CustomReportSchedule and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `enabled`
      if (!is.null(input_json$`enabled`)) {
        if (!(is.logical(input_json$`enabled`) && length(input_json$`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", input_json$`enabled`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSchedule: the required field `enabled` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CustomReportSchedule
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `enabled` is null
      if (is.null(self$`enabled`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `enabled` is null
      if (is.null(self$`enabled`)) {
        invalid_fields["enabled"] <- "Non-nullable required field `enabled` cannot be null."
      }

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
# CustomReportSchedule$unlock()
#
## Below is an example to define the print function
# CustomReportSchedule$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CustomReportSchedule$lock()

