#' Create a new AgentTrafficResponse
#'
#' @description
#' AgentTrafficResponse Class
#'
#' @docType class
#' @title AgentTrafficResponse
#' @description AgentTrafficResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field from  character [optional]
#' @field to  character [optional]
#' @field group_by  character [optional]
#' @field granularity  character [optional]
#' @field totals  named list(integer) [optional]
#' @field timeseries  named list(named list(integer)) [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AgentTrafficResponse <- R6::R6Class(
  "AgentTrafficResponse",
  public = list(
    `project_id` = NULL,
    `from` = NULL,
    `to` = NULL,
    `group_by` = NULL,
    `granularity` = NULL,
    `totals` = NULL,
    `timeseries` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new AgentTrafficResponse class.
    #'
    #' @param project_id project_id
    #' @param from from
    #' @param to to
    #' @param group_by group_by
    #' @param granularity granularity
    #' @param totals totals
    #' @param timeseries timeseries
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `from` = NULL, `to` = NULL, `group_by` = NULL, `granularity` = NULL, `totals` = NULL, `timeseries` = NULL, `request_id` = NULL, ...) {
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
      if (!is.null(`group_by`)) {
        if (!(`group_by` %in% c("bot", "company"))) {
          stop(paste("Error! \"", `group_by`, "\" cannot be assigned to `group_by`. Must be \"bot\", \"company\".", sep = ""))
        }
        if (!(is.character(`group_by`) && length(`group_by`) == 1)) {
          stop(paste("Error! Invalid data for `group_by`. Must be a string:", `group_by`))
        }
        self$`group_by` <- `group_by`
      }
      if (!is.null(`granularity`)) {
        if (!(`granularity` %in% c("day", "week", "month"))) {
          stop(paste("Error! \"", `granularity`, "\" cannot be assigned to `granularity`. Must be \"day\", \"week\", \"month\".", sep = ""))
        }
        if (!(is.character(`granularity`) && length(`granularity`) == 1)) {
          stop(paste("Error! Invalid data for `granularity`. Must be a string:", `granularity`))
        }
        self$`granularity` <- `granularity`
      }
      if (!is.null(`totals`)) {
        stopifnot(is.vector(`totals`), length(`totals`) != 0)
        sapply(`totals`, function(x) stopifnot(is.character(x)))
        self$`totals` <- `totals`
      }
      if (!is.null(`timeseries`)) {
        stopifnot(is.vector(`timeseries`), length(`timeseries`) != 0)
        sapply(`timeseries`, function(x) stopifnot(R6::is.R6(x)))
        self$`timeseries` <- `timeseries`
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
    #' @return AgentTrafficResponse as a base R list.
    #' @examples
    #' # convert array of AgentTrafficResponse (x) to a data frame
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
    #' Convert AgentTrafficResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AgentTrafficResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        AgentTrafficResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`from`)) {
        AgentTrafficResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        AgentTrafficResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`group_by`)) {
        AgentTrafficResponseObject[["group_by"]] <-
          self$`group_by`
      }
      if (!is.null(self$`granularity`)) {
        AgentTrafficResponseObject[["granularity"]] <-
          self$`granularity`
      }
      if (!is.null(self$`totals`)) {
        AgentTrafficResponseObject[["totals"]] <-
          self$`totals`
      }
      if (!is.null(self$`timeseries`)) {
        AgentTrafficResponseObject[["timeseries"]] <-
          self$extractSimpleType(self$`timeseries`)
      }
      if (!is.null(self$`request_id`)) {
        AgentTrafficResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(AgentTrafficResponseObject)
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
    #' Deserialize JSON string into an instance of AgentTrafficResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AgentTrafficResponse
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
      if (!is.null(this_object$`group_by`)) {
        if (!is.null(this_object$`group_by`) && !(this_object$`group_by` %in% c("bot", "company"))) {
          stop(paste("Error! \"", this_object$`group_by`, "\" cannot be assigned to `group_by`. Must be \"bot\", \"company\".", sep = ""))
        }
        self$`group_by` <- this_object$`group_by`
      }
      if (!is.null(this_object$`granularity`)) {
        if (!is.null(this_object$`granularity`) && !(this_object$`granularity` %in% c("day", "week", "month"))) {
          stop(paste("Error! \"", this_object$`granularity`, "\" cannot be assigned to `granularity`. Must be \"day\", \"week\", \"month\".", sep = ""))
        }
        self$`granularity` <- this_object$`granularity`
      }
      if (!is.null(this_object$`totals`)) {
        self$`totals` <- ApiClient$new()$deserializeObj(this_object$`totals`, "map(integer)", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`timeseries`)) {
        self$`timeseries` <- ApiClient$new()$deserializeObj(this_object$`timeseries`, "map(map(integer))", loadNamespace("llmpulse"))
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
    #' @return AgentTrafficResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AgentTrafficResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AgentTrafficResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      if (!is.null(this_object$`group_by`) && !(this_object$`group_by` %in% c("bot", "company"))) {
        stop(paste("Error! \"", this_object$`group_by`, "\" cannot be assigned to `group_by`. Must be \"bot\", \"company\".", sep = ""))
      }
      self$`group_by` <- this_object$`group_by`
      if (!is.null(this_object$`granularity`) && !(this_object$`granularity` %in% c("day", "week", "month"))) {
        stop(paste("Error! \"", this_object$`granularity`, "\" cannot be assigned to `granularity`. Must be \"day\", \"week\", \"month\".", sep = ""))
      }
      self$`granularity` <- this_object$`granularity`
      self$`totals` <- ApiClient$new()$deserializeObj(this_object$`totals`, "map(integer)", loadNamespace("llmpulse"))
      self$`timeseries` <- ApiClient$new()$deserializeObj(this_object$`timeseries`, "map(map(integer))", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to AgentTrafficResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AgentTrafficResponse
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
# AgentTrafficResponse$unlock()
#
## Below is an example to define the print function
# AgentTrafficResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AgentTrafficResponse$lock()

