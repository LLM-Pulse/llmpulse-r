#' Create a new SovResponseCurrentInner
#'
#' @description
#' SovResponseCurrentInner Class
#'
#' @docType class
#' @title SovResponseCurrentInner
#' @description SovResponseCurrentInner Class
#' @format An \code{R6Class} generator object
#' @field actor  \link{Actor} [optional]
#' @field share  numeric [optional]
#' @field previous_share The actor's share in the last complete bucket before the current one; null without complete history. numeric [optional]
#' @field avg_share Mean share across complete buckets with data (partial buckets excluded); null without complete history. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SovResponseCurrentInner <- R6::R6Class(
  "SovResponseCurrentInner",
  public = list(
    `actor` = NULL,
    `share` = NULL,
    `previous_share` = NULL,
    `avg_share` = NULL,

    #' @description
    #' Initialize a new SovResponseCurrentInner class.
    #'
    #' @param actor actor
    #' @param share share
    #' @param previous_share The actor's share in the last complete bucket before the current one; null without complete history.
    #' @param avg_share Mean share across complete buckets with data (partial buckets excluded); null without complete history.
    #' @param ... Other optional arguments.
    initialize = function(`actor` = NULL, `share` = NULL, `previous_share` = NULL, `avg_share` = NULL, ...) {
      if (!is.null(`actor`)) {
        stopifnot(R6::is.R6(`actor`))
        self$`actor` <- `actor`
      }
      if (!is.null(`share`)) {
        self$`share` <- `share`
      }
      if (!is.null(`previous_share`)) {
        self$`previous_share` <- `previous_share`
      }
      if (!is.null(`avg_share`)) {
        self$`avg_share` <- `avg_share`
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
    #' @return SovResponseCurrentInner as a base R list.
    #' @examples
    #' # convert array of SovResponseCurrentInner (x) to a data frame
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
    #' Convert SovResponseCurrentInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SovResponseCurrentInnerObject <- list()
      if (!is.null(self$`actor`)) {
        SovResponseCurrentInnerObject[["actor"]] <-
          self$extractSimpleType(self$`actor`)
      }
      if (!is.null(self$`share`)) {
        SovResponseCurrentInnerObject[["share"]] <-
          self$`share`
      }
      if (!is.null(self$`previous_share`)) {
        SovResponseCurrentInnerObject[["previous_share"]] <-
          self$`previous_share`
      }
      if (!is.null(self$`avg_share`)) {
        SovResponseCurrentInnerObject[["avg_share"]] <-
          self$`avg_share`
      }
      return(SovResponseCurrentInnerObject)
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
    #' Deserialize JSON string into an instance of SovResponseCurrentInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SovResponseCurrentInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`actor`)) {
        `actor_object` <- Actor$new()
        `actor_object`$fromJSON(jsonlite::toJSON(this_object$`actor`, auto_unbox = TRUE, digits = NA))
        self$`actor` <- `actor_object`
      }
      if (!is.null(this_object$`share`)) {
        self$`share` <- this_object$`share`
      }
      if (!is.null(this_object$`previous_share`)) {
        self$`previous_share` <- this_object$`previous_share`
      }
      if (!is.null(this_object$`avg_share`)) {
        self$`avg_share` <- this_object$`avg_share`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SovResponseCurrentInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SovResponseCurrentInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SovResponseCurrentInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`actor` <- Actor$new()$fromJSON(jsonlite::toJSON(this_object$`actor`, auto_unbox = TRUE, digits = NA))
      self$`share` <- this_object$`share`
      self$`previous_share` <- this_object$`previous_share`
      self$`avg_share` <- this_object$`avg_share`
      self
    },

    #' @description
    #' Validate JSON input with respect to SovResponseCurrentInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SovResponseCurrentInner
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
# SovResponseCurrentInner$unlock()
#
## Below is an example to define the print function
# SovResponseCurrentInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SovResponseCurrentInner$lock()

