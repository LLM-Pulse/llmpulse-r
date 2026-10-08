#' Create a new GeoAlert
#'
#' @description
#' GeoAlert Class
#'
#' @docType class
#' @title GeoAlert
#' @description GeoAlert Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field audit_id  character [optional]
#' @field audit_type  character [optional]
#' @field target  character [optional]
#' @field run_sequence  integer [optional]
#' @field severity  character [optional]
#' @field events  list(\link{GeoAlertEventsInner}) [optional]
#' @field created_at  character [optional]
#' @field app_url  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoAlert <- R6::R6Class(
  "GeoAlert",
  public = list(
    `id` = NULL,
    `audit_id` = NULL,
    `audit_type` = NULL,
    `target` = NULL,
    `run_sequence` = NULL,
    `severity` = NULL,
    `events` = NULL,
    `created_at` = NULL,
    `app_url` = NULL,

    #' @description
    #' Initialize a new GeoAlert class.
    #'
    #' @param id id
    #' @param audit_id audit_id
    #' @param audit_type audit_type
    #' @param target target
    #' @param run_sequence run_sequence
    #' @param severity severity
    #' @param events events
    #' @param created_at created_at
    #' @param app_url app_url
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `audit_id` = NULL, `audit_type` = NULL, `target` = NULL, `run_sequence` = NULL, `severity` = NULL, `events` = NULL, `created_at` = NULL, `app_url` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`audit_id`)) {
        if (!(is.character(`audit_id`) && length(`audit_id`) == 1)) {
          stop(paste("Error! Invalid data for `audit_id`. Must be a string:", `audit_id`))
        }
        self$`audit_id` <- `audit_id`
      }
      if (!is.null(`audit_type`)) {
        if (!(is.character(`audit_type`) && length(`audit_type`) == 1)) {
          stop(paste("Error! Invalid data for `audit_type`. Must be a string:", `audit_type`))
        }
        self$`audit_type` <- `audit_type`
      }
      if (!is.null(`target`)) {
        if (!(is.character(`target`) && length(`target`) == 1)) {
          stop(paste("Error! Invalid data for `target`. Must be a string:", `target`))
        }
        self$`target` <- `target`
      }
      if (!is.null(`run_sequence`)) {
        if (!(is.numeric(`run_sequence`) && length(`run_sequence`) == 1)) {
          stop(paste("Error! Invalid data for `run_sequence`. Must be an integer:", `run_sequence`))
        }
        self$`run_sequence` <- `run_sequence`
      }
      if (!is.null(`severity`)) {
        if (!(is.character(`severity`) && length(`severity`) == 1)) {
          stop(paste("Error! Invalid data for `severity`. Must be a string:", `severity`))
        }
        self$`severity` <- `severity`
      }
      if (!is.null(`events`)) {
        stopifnot(is.vector(`events`), length(`events`) != 0)
        sapply(`events`, function(x) stopifnot(R6::is.R6(x)))
        self$`events` <- `events`
      }
      if (!is.null(`created_at`)) {
        if (!is.character(`created_at`)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!is.null(`app_url`)) {
        if (!(is.character(`app_url`) && length(`app_url`) == 1)) {
          stop(paste("Error! Invalid data for `app_url`. Must be a string:", `app_url`))
        }
        self$`app_url` <- `app_url`
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
    #' @return GeoAlert as a base R list.
    #' @examples
    #' # convert array of GeoAlert (x) to a data frame
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
    #' Convert GeoAlert to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoAlertObject <- list()
      if (!is.null(self$`id`)) {
        GeoAlertObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`audit_id`)) {
        GeoAlertObject[["audit_id"]] <-
          self$`audit_id`
      }
      if (!is.null(self$`audit_type`)) {
        GeoAlertObject[["audit_type"]] <-
          self$`audit_type`
      }
      if (!is.null(self$`target`)) {
        GeoAlertObject[["target"]] <-
          self$`target`
      }
      if (!is.null(self$`run_sequence`)) {
        GeoAlertObject[["run_sequence"]] <-
          self$`run_sequence`
      }
      if (!is.null(self$`severity`)) {
        GeoAlertObject[["severity"]] <-
          self$`severity`
      }
      if (!is.null(self$`events`)) {
        GeoAlertObject[["events"]] <-
          self$extractSimpleType(self$`events`)
      }
      if (!is.null(self$`created_at`)) {
        GeoAlertObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`app_url`)) {
        GeoAlertObject[["app_url"]] <-
          self$`app_url`
      }
      return(GeoAlertObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAlert
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAlert
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`audit_id`)) {
        self$`audit_id` <- this_object$`audit_id`
      }
      if (!is.null(this_object$`audit_type`)) {
        self$`audit_type` <- this_object$`audit_type`
      }
      if (!is.null(this_object$`target`)) {
        self$`target` <- this_object$`target`
      }
      if (!is.null(this_object$`run_sequence`)) {
        self$`run_sequence` <- this_object$`run_sequence`
      }
      if (!is.null(this_object$`severity`)) {
        self$`severity` <- this_object$`severity`
      }
      if (!is.null(this_object$`events`)) {
        self$`events` <- ApiClient$new()$deserializeObj(this_object$`events`, "array[GeoAlertEventsInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`app_url`)) {
        self$`app_url` <- this_object$`app_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeoAlert in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAlert
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAlert
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`audit_id` <- this_object$`audit_id`
      self$`audit_type` <- this_object$`audit_type`
      self$`target` <- this_object$`target`
      self$`run_sequence` <- this_object$`run_sequence`
      self$`severity` <- this_object$`severity`
      self$`events` <- ApiClient$new()$deserializeObj(this_object$`events`, "array[GeoAlertEventsInner]", loadNamespace("llmpulse"))
      self$`created_at` <- this_object$`created_at`
      self$`app_url` <- this_object$`app_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoAlert and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoAlert
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
# GeoAlert$unlock()
#
## Below is an example to define the print function
# GeoAlert$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoAlert$lock()

