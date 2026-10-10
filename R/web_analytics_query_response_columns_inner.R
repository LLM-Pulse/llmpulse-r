#' Create a new WebAnalyticsQueryResponseColumnsInner
#'
#' @description
#' WebAnalyticsQueryResponseColumnsInner Class
#'
#' @docType class
#' @title WebAnalyticsQueryResponseColumnsInner
#' @description WebAnalyticsQueryResponseColumnsInner Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field kind dimension or metric, when the provider says. character [optional]
#' @field type The provider's column type, when it says (PostHog). character [optional]
#' @field label The provider's display label, when it sends one (Piano). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WebAnalyticsQueryResponseColumnsInner <- R6::R6Class(
  "WebAnalyticsQueryResponseColumnsInner",
  public = list(
    `name` = NULL,
    `kind` = NULL,
    `type` = NULL,
    `label` = NULL,

    #' @description
    #' Initialize a new WebAnalyticsQueryResponseColumnsInner class.
    #'
    #' @param name name
    #' @param kind dimension or metric, when the provider says.
    #' @param type The provider's column type, when it says (PostHog).
    #' @param label The provider's display label, when it sends one (Piano).
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `kind` = NULL, `type` = NULL, `label` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`kind`)) {
        if (!(is.character(`kind`) && length(`kind`) == 1)) {
          stop(paste("Error! Invalid data for `kind`. Must be a string:", `kind`))
        }
        self$`kind` <- `kind`
      }
      if (!is.null(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
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
    #' @return WebAnalyticsQueryResponseColumnsInner as a base R list.
    #' @examples
    #' # convert array of WebAnalyticsQueryResponseColumnsInner (x) to a data frame
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
    #' Convert WebAnalyticsQueryResponseColumnsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WebAnalyticsQueryResponseColumnsInnerObject <- list()
      if (!is.null(self$`name`)) {
        WebAnalyticsQueryResponseColumnsInnerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`kind`)) {
        WebAnalyticsQueryResponseColumnsInnerObject[["kind"]] <-
          self$`kind`
      }
      if (!is.null(self$`type`)) {
        WebAnalyticsQueryResponseColumnsInnerObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`label`)) {
        WebAnalyticsQueryResponseColumnsInnerObject[["label"]] <-
          self$`label`
      }
      return(WebAnalyticsQueryResponseColumnsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of WebAnalyticsQueryResponseColumnsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebAnalyticsQueryResponseColumnsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`kind`)) {
        self$`kind` <- this_object$`kind`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return WebAnalyticsQueryResponseColumnsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WebAnalyticsQueryResponseColumnsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebAnalyticsQueryResponseColumnsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`kind` <- this_object$`kind`
      self$`type` <- this_object$`type`
      self$`label` <- this_object$`label`
      self
    },

    #' @description
    #' Validate JSON input with respect to WebAnalyticsQueryResponseColumnsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WebAnalyticsQueryResponseColumnsInner
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
# WebAnalyticsQueryResponseColumnsInner$unlock()
#
## Below is an example to define the print function
# WebAnalyticsQueryResponseColumnsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WebAnalyticsQueryResponseColumnsInner$lock()

