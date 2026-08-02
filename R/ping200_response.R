#' Create a new Ping200Response
#'
#' @description
#' Ping200Response Class
#'
#' @docType class
#' @title Ping200Response
#' @description Ping200Response Class
#' @format An \code{R6Class} generator object
#' @field ok  character [optional]
#' @field user_id  integer [optional]
#' @field project  \link{Project} [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Ping200Response <- R6::R6Class(
  "Ping200Response",
  public = list(
    `ok` = NULL,
    `user_id` = NULL,
    `project` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new Ping200Response class.
    #'
    #' @param ok ok
    #' @param user_id user_id
    #' @param project project
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`ok` = NULL, `user_id` = NULL, `project` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`ok`)) {
        if (!(is.logical(`ok`) && length(`ok`) == 1)) {
          stop(paste("Error! Invalid data for `ok`. Must be a boolean:", `ok`))
        }
        self$`ok` <- `ok`
      }
      if (!is.null(`user_id`)) {
        if (!(is.numeric(`user_id`) && length(`user_id`) == 1)) {
          stop(paste("Error! Invalid data for `user_id`. Must be an integer:", `user_id`))
        }
        self$`user_id` <- `user_id`
      }
      if (!is.null(`project`)) {
        stopifnot(R6::is.R6(`project`))
        self$`project` <- `project`
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
    #' @return Ping200Response as a base R list.
    #' @examples
    #' # convert array of Ping200Response (x) to a data frame
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
    #' Convert Ping200Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      Ping200ResponseObject <- list()
      if (!is.null(self$`ok`)) {
        Ping200ResponseObject[["ok"]] <-
          self$`ok`
      }
      if (!is.null(self$`user_id`)) {
        Ping200ResponseObject[["user_id"]] <-
          self$`user_id`
      }
      if (!is.null(self$`project`)) {
        Ping200ResponseObject[["project"]] <-
          self$extractSimpleType(self$`project`)
      }
      if (!is.null(self$`request_id`)) {
        Ping200ResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(Ping200ResponseObject)
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
    #' Deserialize JSON string into an instance of Ping200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of Ping200Response
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ok`)) {
        self$`ok` <- this_object$`ok`
      }
      if (!is.null(this_object$`user_id`)) {
        self$`user_id` <- this_object$`user_id`
      }
      if (!is.null(this_object$`project`)) {
        `project_object` <- Project$new()
        `project_object`$fromJSON(jsonlite::toJSON(this_object$`project`, auto_unbox = TRUE, digits = NA))
        self$`project` <- `project_object`
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
    #' @return Ping200Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Ping200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of Ping200Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ok` <- this_object$`ok`
      self$`user_id` <- this_object$`user_id`
      self$`project` <- Project$new()$fromJSON(jsonlite::toJSON(this_object$`project`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to Ping200Response and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Ping200Response
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
# Ping200Response$unlock()
#
## Below is an example to define the print function
# Ping200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Ping200Response$lock()

