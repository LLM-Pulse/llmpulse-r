#' Create a new OwnedMediaPlatformRollupWeeklyInner
#'
#' @description
#' OwnedMediaPlatformRollupWeeklyInner Class
#'
#' @docType class
#' @title OwnedMediaPlatformRollupWeeklyInner
#' @description OwnedMediaPlatformRollupWeeklyInner Class
#' @format An \code{R6Class} generator object
#' @field week  character [optional]
#' @field citations  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaPlatformRollupWeeklyInner <- R6::R6Class(
  "OwnedMediaPlatformRollupWeeklyInner",
  public = list(
    `week` = NULL,
    `citations` = NULL,

    #' @description
    #' Initialize a new OwnedMediaPlatformRollupWeeklyInner class.
    #'
    #' @param week week
    #' @param citations citations
    #' @param ... Other optional arguments.
    initialize = function(`week` = NULL, `citations` = NULL, ...) {
      if (!is.null(`week`)) {
        if (!is.character(`week`)) {
          stop(paste("Error! Invalid data for `week`. Must be a string:", `week`))
        }
        self$`week` <- `week`
      }
      if (!is.null(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
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
    #' @return OwnedMediaPlatformRollupWeeklyInner as a base R list.
    #' @examples
    #' # convert array of OwnedMediaPlatformRollupWeeklyInner (x) to a data frame
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
    #' Convert OwnedMediaPlatformRollupWeeklyInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaPlatformRollupWeeklyInnerObject <- list()
      if (!is.null(self$`week`)) {
        OwnedMediaPlatformRollupWeeklyInnerObject[["week"]] <-
          self$`week`
      }
      if (!is.null(self$`citations`)) {
        OwnedMediaPlatformRollupWeeklyInnerObject[["citations"]] <-
          self$`citations`
      }
      return(OwnedMediaPlatformRollupWeeklyInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaPlatformRollupWeeklyInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaPlatformRollupWeeklyInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`week`)) {
        self$`week` <- this_object$`week`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaPlatformRollupWeeklyInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaPlatformRollupWeeklyInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaPlatformRollupWeeklyInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`week` <- this_object$`week`
      self$`citations` <- this_object$`citations`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaPlatformRollupWeeklyInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaPlatformRollupWeeklyInner
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
# OwnedMediaPlatformRollupWeeklyInner$unlock()
#
## Below is an example to define the print function
# OwnedMediaPlatformRollupWeeklyInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaPlatformRollupWeeklyInner$lock()

