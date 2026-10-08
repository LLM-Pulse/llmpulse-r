#' Create a new SovResponse
#'
#' @description
#' SovResponse Class
#'
#' @docType class
#' @title SovResponse
#' @description SovResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field from  character [optional]
#' @field to  character [optional]
#' @field granularity day, week or month character [optional]
#' @field filters  \link{MetricsFiltersEcho} [optional]
#' @field periods Per-bucket sample size and completeness: mentions is the total the shares were computed on (1-3 mentions produce the 100/50/33.33 low-sample patterns); partial marks buckets still collecting data or clipped by the requested window; confidence and margin_of_error read the sample size. list(\link{SovResponsePeriodsInner}) [optional]
#' @field sample  \link{SovResponseSample} [optional]
#' @field over_time  list(\link{SovResponseOverTimeInner}) [optional]
#' @field current  list(\link{SovResponseCurrentInner}) [optional]
#' @field breakdown  list(\link{SovResponseBreakdownInner}) [optional]
#' @field others Actors ranked fifth and below, folded into the Others share of breakdown list(\link{SovResponseOthersInner}) [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SovResponse <- R6::R6Class(
  "SovResponse",
  public = list(
    `project_id` = NULL,
    `from` = NULL,
    `to` = NULL,
    `granularity` = NULL,
    `filters` = NULL,
    `periods` = NULL,
    `sample` = NULL,
    `over_time` = NULL,
    `current` = NULL,
    `breakdown` = NULL,
    `others` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new SovResponse class.
    #'
    #' @param project_id project_id
    #' @param from from
    #' @param to to
    #' @param granularity day, week or month
    #' @param filters filters
    #' @param periods Per-bucket sample size and completeness: mentions is the total the shares were computed on (1-3 mentions produce the 100/50/33.33 low-sample patterns); partial marks buckets still collecting data or clipped by the requested window; confidence and margin_of_error read the sample size.
    #' @param sample sample
    #' @param over_time over_time
    #' @param current current
    #' @param breakdown breakdown
    #' @param others Actors ranked fifth and below, folded into the Others share of breakdown
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `from` = NULL, `to` = NULL, `granularity` = NULL, `filters` = NULL, `periods` = NULL, `sample` = NULL, `over_time` = NULL, `current` = NULL, `breakdown` = NULL, `others` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`from`)) {
        if (!is.character(`from`)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!is.null(`to`)) {
        if (!is.character(`to`)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!is.null(`granularity`)) {
        if (!(is.character(`granularity`) && length(`granularity`) == 1)) {
          stop(paste("Error! Invalid data for `granularity`. Must be a string:", `granularity`))
        }
        self$`granularity` <- `granularity`
      }
      if (!is.null(`filters`)) {
        stopifnot(R6::is.R6(`filters`))
        self$`filters` <- `filters`
      }
      if (!is.null(`periods`)) {
        stopifnot(is.vector(`periods`), length(`periods`) != 0)
        sapply(`periods`, function(x) stopifnot(R6::is.R6(x)))
        self$`periods` <- `periods`
      }
      if (!is.null(`sample`)) {
        stopifnot(R6::is.R6(`sample`))
        self$`sample` <- `sample`
      }
      if (!is.null(`over_time`)) {
        stopifnot(is.vector(`over_time`), length(`over_time`) != 0)
        sapply(`over_time`, function(x) stopifnot(R6::is.R6(x)))
        self$`over_time` <- `over_time`
      }
      if (!is.null(`current`)) {
        stopifnot(is.vector(`current`), length(`current`) != 0)
        sapply(`current`, function(x) stopifnot(R6::is.R6(x)))
        self$`current` <- `current`
      }
      if (!is.null(`breakdown`)) {
        stopifnot(is.vector(`breakdown`), length(`breakdown`) != 0)
        sapply(`breakdown`, function(x) stopifnot(R6::is.R6(x)))
        self$`breakdown` <- `breakdown`
      }
      if (!is.null(`others`)) {
        stopifnot(is.vector(`others`), length(`others`) != 0)
        sapply(`others`, function(x) stopifnot(R6::is.R6(x)))
        self$`others` <- `others`
      }
      if (!is.null(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
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
    #' @return SovResponse as a base R list.
    #' @examples
    #' # convert array of SovResponse (x) to a data frame
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
    #' Convert SovResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SovResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        SovResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`from`)) {
        SovResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        SovResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`granularity`)) {
        SovResponseObject[["granularity"]] <-
          self$`granularity`
      }
      if (!is.null(self$`filters`)) {
        SovResponseObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`periods`)) {
        SovResponseObject[["periods"]] <-
          self$extractSimpleType(self$`periods`)
      }
      if (!is.null(self$`sample`)) {
        SovResponseObject[["sample"]] <-
          self$extractSimpleType(self$`sample`)
      }
      if (!is.null(self$`over_time`)) {
        SovResponseObject[["over_time"]] <-
          self$extractSimpleType(self$`over_time`)
      }
      if (!is.null(self$`current`)) {
        SovResponseObject[["current"]] <-
          self$extractSimpleType(self$`current`)
      }
      if (!is.null(self$`breakdown`)) {
        SovResponseObject[["breakdown"]] <-
          self$extractSimpleType(self$`breakdown`)
      }
      if (!is.null(self$`others`)) {
        SovResponseObject[["others"]] <-
          self$extractSimpleType(self$`others`)
      }
      if (!is.null(self$`request_id`)) {
        SovResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(SovResponseObject)
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
    #' Deserialize JSON string into an instance of SovResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SovResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`granularity`)) {
        self$`granularity` <- this_object$`granularity`
      }
      if (!is.null(this_object$`filters`)) {
        `filters_object` <- MetricsFiltersEcho$new()
        `filters_object`$fromJSON(jsonlite::toJSON(this_object$`filters`, auto_unbox = TRUE, digits = NA))
        self$`filters` <- `filters_object`
      }
      if (!is.null(this_object$`periods`)) {
        self$`periods` <- ApiClient$new()$deserializeObj(this_object$`periods`, "array[SovResponsePeriodsInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`sample`)) {
        `sample_object` <- SovResponseSample$new()
        `sample_object`$fromJSON(jsonlite::toJSON(this_object$`sample`, auto_unbox = TRUE, digits = NA))
        self$`sample` <- `sample_object`
      }
      if (!is.null(this_object$`over_time`)) {
        self$`over_time` <- ApiClient$new()$deserializeObj(this_object$`over_time`, "array[SovResponseOverTimeInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`current`)) {
        self$`current` <- ApiClient$new()$deserializeObj(this_object$`current`, "array[SovResponseCurrentInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`breakdown`)) {
        self$`breakdown` <- ApiClient$new()$deserializeObj(this_object$`breakdown`, "array[SovResponseBreakdownInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`others`)) {
        self$`others` <- ApiClient$new()$deserializeObj(this_object$`others`, "array[SovResponseOthersInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`request_id`)) {
        self$`request_id` <- this_object$`request_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SovResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SovResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SovResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`granularity` <- this_object$`granularity`
      self$`filters` <- MetricsFiltersEcho$new()$fromJSON(jsonlite::toJSON(this_object$`filters`, auto_unbox = TRUE, digits = NA))
      self$`periods` <- ApiClient$new()$deserializeObj(this_object$`periods`, "array[SovResponsePeriodsInner]", loadNamespace("llmpulse"))
      self$`sample` <- SovResponseSample$new()$fromJSON(jsonlite::toJSON(this_object$`sample`, auto_unbox = TRUE, digits = NA))
      self$`over_time` <- ApiClient$new()$deserializeObj(this_object$`over_time`, "array[SovResponseOverTimeInner]", loadNamespace("llmpulse"))
      self$`current` <- ApiClient$new()$deserializeObj(this_object$`current`, "array[SovResponseCurrentInner]", loadNamespace("llmpulse"))
      self$`breakdown` <- ApiClient$new()$deserializeObj(this_object$`breakdown`, "array[SovResponseBreakdownInner]", loadNamespace("llmpulse"))
      self$`others` <- ApiClient$new()$deserializeObj(this_object$`others`, "array[SovResponseOthersInner]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to SovResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SovResponse
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
# SovResponse$unlock()
#
## Below is an example to define the print function
# SovResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SovResponse$lock()

