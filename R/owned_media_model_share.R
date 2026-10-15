#' Create a new OwnedMediaModelShare
#'
#' @description
#' OwnedMediaModelShare Class
#'
#' @docType class
#' @title OwnedMediaModelShare
#' @description OwnedMediaModelShare Class
#' @format An \code{R6Class} generator object
#' @field model  character [optional]
#' @field citations  integer [optional]
#' @field share_pct  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaModelShare <- R6::R6Class(
  "OwnedMediaModelShare",
  public = list(
    `model` = NULL,
    `citations` = NULL,
    `share_pct` = NULL,

    #' @description
    #' Initialize a new OwnedMediaModelShare class.
    #'
    #' @param model model
    #' @param citations citations
    #' @param share_pct share_pct
    #' @param ... Other optional arguments.
    initialize = function(`model` = NULL, `citations` = NULL, `share_pct` = NULL, ...) {
      if (!is.null(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!is.null(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
      }
      if (!is.null(`share_pct`)) {
        self$`share_pct` <- `share_pct`
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
    #' @return OwnedMediaModelShare as a base R list.
    #' @examples
    #' # convert array of OwnedMediaModelShare (x) to a data frame
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
    #' Convert OwnedMediaModelShare to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaModelShareObject <- list()
      if (!is.null(self$`model`)) {
        OwnedMediaModelShareObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`citations`)) {
        OwnedMediaModelShareObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`share_pct`)) {
        OwnedMediaModelShareObject[["share_pct"]] <-
          self$`share_pct`
      }
      return(OwnedMediaModelShareObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaModelShare
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaModelShare
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      if (!is.null(this_object$`share_pct`)) {
        self$`share_pct` <- this_object$`share_pct`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaModelShare in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaModelShare
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaModelShare
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`model` <- this_object$`model`
      self$`citations` <- this_object$`citations`
      self$`share_pct` <- this_object$`share_pct`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaModelShare and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaModelShare
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
# OwnedMediaModelShare$unlock()
#
## Below is an example to define the print function
# OwnedMediaModelShare$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaModelShare$lock()

