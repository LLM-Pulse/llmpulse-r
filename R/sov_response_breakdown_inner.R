#' Create a new SovResponseBreakdownInner
#'
#' @description
#' SovResponseBreakdownInner Class
#'
#' @docType class
#' @title SovResponseBreakdownInner
#' @description SovResponseBreakdownInner Class
#' @format An \code{R6Class} generator object
#' @field rank  integer [optional]
#' @field actor  \link{Actor} [optional]
#' @field share  numeric [optional]
#' @field others  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SovResponseBreakdownInner <- R6::R6Class(
  "SovResponseBreakdownInner",
  public = list(
    `rank` = NULL,
    `actor` = NULL,
    `share` = NULL,
    `others` = NULL,

    #' @description
    #' Initialize a new SovResponseBreakdownInner class.
    #'
    #' @param rank rank
    #' @param actor actor
    #' @param share share
    #' @param others others
    #' @param ... Other optional arguments.
    initialize = function(`rank` = NULL, `actor` = NULL, `share` = NULL, `others` = NULL, ...) {
      if (!is.null(`rank`)) {
        if (!(is.numeric(`rank`) && length(`rank`) == 1)) {
          stop(paste("Error! Invalid data for `rank`. Must be an integer:", `rank`))
        }
        self$`rank` <- `rank`
      }
      if (!is.null(`actor`)) {
        stopifnot(R6::is.R6(`actor`))
        self$`actor` <- `actor`
      }
      if (!is.null(`share`)) {
        self$`share` <- `share`
      }
      if (!is.null(`others`)) {
        if (!(is.logical(`others`) && length(`others`) == 1)) {
          stop(paste("Error! Invalid data for `others`. Must be a boolean:", `others`))
        }
        self$`others` <- `others`
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
    #' @return SovResponseBreakdownInner as a base R list.
    #' @examples
    #' # convert array of SovResponseBreakdownInner (x) to a data frame
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
    #' Convert SovResponseBreakdownInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SovResponseBreakdownInnerObject <- list()
      if (!is.null(self$`rank`)) {
        SovResponseBreakdownInnerObject[["rank"]] <-
          self$`rank`
      }
      if (!is.null(self$`actor`)) {
        SovResponseBreakdownInnerObject[["actor"]] <-
          self$extractSimpleType(self$`actor`)
      }
      if (!is.null(self$`share`)) {
        SovResponseBreakdownInnerObject[["share"]] <-
          self$`share`
      }
      if (!is.null(self$`others`)) {
        SovResponseBreakdownInnerObject[["others"]] <-
          self$`others`
      }
      return(SovResponseBreakdownInnerObject)
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
    #' Deserialize JSON string into an instance of SovResponseBreakdownInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SovResponseBreakdownInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`rank`)) {
        self$`rank` <- this_object$`rank`
      }
      if (!is.null(this_object$`actor`)) {
        `actor_object` <- Actor$new()
        `actor_object`$fromJSON(jsonlite::toJSON(this_object$`actor`, auto_unbox = TRUE, digits = NA))
        self$`actor` <- `actor_object`
      }
      if (!is.null(this_object$`share`)) {
        self$`share` <- this_object$`share`
      }
      if (!is.null(this_object$`others`)) {
        self$`others` <- this_object$`others`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SovResponseBreakdownInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SovResponseBreakdownInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SovResponseBreakdownInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`rank` <- this_object$`rank`
      self$`actor` <- Actor$new()$fromJSON(jsonlite::toJSON(this_object$`actor`, auto_unbox = TRUE, digits = NA))
      self$`share` <- this_object$`share`
      self$`others` <- this_object$`others`
      self
    },

    #' @description
    #' Validate JSON input with respect to SovResponseBreakdownInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SovResponseBreakdownInner
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
# SovResponseBreakdownInner$unlock()
#
## Below is an example to define the print function
# SovResponseBreakdownInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SovResponseBreakdownInner$lock()

