#' Create a new TimeseriesResponse
#'
#' @description
#' TimeseriesResponse Class
#'
#' @docType class
#' @title TimeseriesResponse
#' @description TimeseriesResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field from  character [optional]
#' @field to  character [optional]
#' @field granularity  character [optional]
#' @field filters  object [optional]
#' @field series  named list(list(\link{TimeseriesSeries})) [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TimeseriesResponse <- R6::R6Class(
  "TimeseriesResponse",
  public = list(
    `project_id` = NULL,
    `from` = NULL,
    `to` = NULL,
    `granularity` = NULL,
    `filters` = NULL,
    `series` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new TimeseriesResponse class.
    #'
    #' @param project_id project_id
    #' @param from from
    #' @param to to
    #' @param granularity granularity
    #' @param filters filters
    #' @param series series
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `from` = NULL, `to` = NULL, `granularity` = NULL, `filters` = NULL, `series` = NULL, `request_id` = NULL, ...) {
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
        self$`filters` <- `filters`
      }
      if (!is.null(`series`)) {
        stopifnot(is.vector(`series`), length(`series`) != 0)
        sapply(`series`, function(x) stopifnot(R6::is.R6(x)))
        self$`series` <- `series`
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
    #' @return TimeseriesResponse as a base R list.
    #' @examples
    #' # convert array of TimeseriesResponse (x) to a data frame
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
    #' Convert TimeseriesResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TimeseriesResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        TimeseriesResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`from`)) {
        TimeseriesResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        TimeseriesResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`granularity`)) {
        TimeseriesResponseObject[["granularity"]] <-
          self$`granularity`
      }
      if (!is.null(self$`filters`)) {
        TimeseriesResponseObject[["filters"]] <-
          self$`filters`
      }
      if (!is.null(self$`series`)) {
        TimeseriesResponseObject[["series"]] <-
          self$extractSimpleType(self$`series`)
      }
      if (!is.null(self$`request_id`)) {
        TimeseriesResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(TimeseriesResponseObject)
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
    #' Deserialize JSON string into an instance of TimeseriesResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TimeseriesResponse
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
        self$`filters` <- this_object$`filters`
      }
      if (!is.null(this_object$`series`)) {
        self$`series` <- ApiClient$new()$deserializeObj(this_object$`series`, "map(array[TimeseriesSeries])", loadNamespace("llmpulse"))
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
    #' @return TimeseriesResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TimeseriesResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TimeseriesResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`granularity` <- this_object$`granularity`
      self$`filters` <- this_object$`filters`
      self$`series` <- ApiClient$new()$deserializeObj(this_object$`series`, "map(array[TimeseriesSeries])", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to TimeseriesResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TimeseriesResponse
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
# TimeseriesResponse$unlock()
#
## Below is an example to define the print function
# TimeseriesResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TimeseriesResponse$lock()

