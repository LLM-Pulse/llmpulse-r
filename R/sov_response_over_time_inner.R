#' Create a new SovResponseOverTimeInner
#'
#' @description
#' SovResponseOverTimeInner Class
#'
#' @docType class
#' @title SovResponseOverTimeInner
#' @description SovResponseOverTimeInner Class
#' @format An \code{R6Class} generator object
#' @field actor  \link{Actor} [optional]
#' @field data  list(\link{TimeseriesPoint}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SovResponseOverTimeInner <- R6::R6Class(
  "SovResponseOverTimeInner",
  public = list(
    `actor` = NULL,
    `data` = NULL,

    #' @description
    #' Initialize a new SovResponseOverTimeInner class.
    #'
    #' @param actor actor
    #' @param data data
    #' @param ... Other optional arguments.
    initialize = function(`actor` = NULL, `data` = NULL, ...) {
      if (!is.null(`actor`)) {
        stopifnot(R6::is.R6(`actor`))
        self$`actor` <- `actor`
      }
      if (!is.null(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
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
    #' @return SovResponseOverTimeInner as a base R list.
    #' @examples
    #' # convert array of SovResponseOverTimeInner (x) to a data frame
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
    #' Convert SovResponseOverTimeInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SovResponseOverTimeInnerObject <- list()
      if (!is.null(self$`actor`)) {
        SovResponseOverTimeInnerObject[["actor"]] <-
          self$extractSimpleType(self$`actor`)
      }
      if (!is.null(self$`data`)) {
        SovResponseOverTimeInnerObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      return(SovResponseOverTimeInnerObject)
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
    #' Deserialize JSON string into an instance of SovResponseOverTimeInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SovResponseOverTimeInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`actor`)) {
        `actor_object` <- Actor$new()
        `actor_object`$fromJSON(jsonlite::toJSON(this_object$`actor`, auto_unbox = TRUE, digits = NA))
        self$`actor` <- `actor_object`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[TimeseriesPoint]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SovResponseOverTimeInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SovResponseOverTimeInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SovResponseOverTimeInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`actor` <- Actor$new()$fromJSON(jsonlite::toJSON(this_object$`actor`, auto_unbox = TRUE, digits = NA))
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[TimeseriesPoint]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to SovResponseOverTimeInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SovResponseOverTimeInner
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
# SovResponseOverTimeInner$unlock()
#
## Below is an example to define the print function
# SovResponseOverTimeInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SovResponseOverTimeInner$lock()

