#' Create a new SearchConsoleDecayResponseDataInner
#'
#' @description
#' SearchConsoleDecayResponseDataInner Class
#'
#' @docType class
#' @title SearchConsoleDecayResponseDataInner
#' @description SearchConsoleDecayResponseDataInner Class
#' @format An \code{R6Class} generator object
#' @field key The page URL or query character [optional]
#' @field clicks  integer [optional]
#' @field clicks_previous  integer [optional]
#' @field clicks_change clicks minus clicks_previous (negative) integer [optional]
#' @field clicks_change_pct  numeric [optional]
#' @field impressions  integer [optional]
#' @field impressions_previous  integer [optional]
#' @field position Null when the key had no impressions in the window numeric [optional]
#' @field position_previous  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchConsoleDecayResponseDataInner <- R6::R6Class(
  "SearchConsoleDecayResponseDataInner",
  public = list(
    `key` = NULL,
    `clicks` = NULL,
    `clicks_previous` = NULL,
    `clicks_change` = NULL,
    `clicks_change_pct` = NULL,
    `impressions` = NULL,
    `impressions_previous` = NULL,
    `position` = NULL,
    `position_previous` = NULL,

    #' @description
    #' Initialize a new SearchConsoleDecayResponseDataInner class.
    #'
    #' @param key The page URL or query
    #' @param clicks clicks
    #' @param clicks_previous clicks_previous
    #' @param clicks_change clicks minus clicks_previous (negative)
    #' @param clicks_change_pct clicks_change_pct
    #' @param impressions impressions
    #' @param impressions_previous impressions_previous
    #' @param position Null when the key had no impressions in the window
    #' @param position_previous position_previous
    #' @param ... Other optional arguments.
    initialize = function(`key` = NULL, `clicks` = NULL, `clicks_previous` = NULL, `clicks_change` = NULL, `clicks_change_pct` = NULL, `impressions` = NULL, `impressions_previous` = NULL, `position` = NULL, `position_previous` = NULL, ...) {
      if (!is.null(`key`)) {
        if (!(is.character(`key`) && length(`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", `key`))
        }
        self$`key` <- `key`
      }
      if (!is.null(`clicks`)) {
        if (!(is.numeric(`clicks`) && length(`clicks`) == 1)) {
          stop(paste("Error! Invalid data for `clicks`. Must be an integer:", `clicks`))
        }
        self$`clicks` <- `clicks`
      }
      if (!is.null(`clicks_previous`)) {
        if (!(is.numeric(`clicks_previous`) && length(`clicks_previous`) == 1)) {
          stop(paste("Error! Invalid data for `clicks_previous`. Must be an integer:", `clicks_previous`))
        }
        self$`clicks_previous` <- `clicks_previous`
      }
      if (!is.null(`clicks_change`)) {
        if (!(is.numeric(`clicks_change`) && length(`clicks_change`) == 1)) {
          stop(paste("Error! Invalid data for `clicks_change`. Must be an integer:", `clicks_change`))
        }
        self$`clicks_change` <- `clicks_change`
      }
      if (!is.null(`clicks_change_pct`)) {
        self$`clicks_change_pct` <- `clicks_change_pct`
      }
      if (!is.null(`impressions`)) {
        if (!(is.numeric(`impressions`) && length(`impressions`) == 1)) {
          stop(paste("Error! Invalid data for `impressions`. Must be an integer:", `impressions`))
        }
        self$`impressions` <- `impressions`
      }
      if (!is.null(`impressions_previous`)) {
        if (!(is.numeric(`impressions_previous`) && length(`impressions_previous`) == 1)) {
          stop(paste("Error! Invalid data for `impressions_previous`. Must be an integer:", `impressions_previous`))
        }
        self$`impressions_previous` <- `impressions_previous`
      }
      if (!is.null(`position`)) {
        self$`position` <- `position`
      }
      if (!is.null(`position_previous`)) {
        self$`position_previous` <- `position_previous`
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
    #' @return SearchConsoleDecayResponseDataInner as a base R list.
    #' @examples
    #' # convert array of SearchConsoleDecayResponseDataInner (x) to a data frame
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
    #' Convert SearchConsoleDecayResponseDataInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchConsoleDecayResponseDataInnerObject <- list()
      if (!is.null(self$`key`)) {
        SearchConsoleDecayResponseDataInnerObject[["key"]] <-
          self$`key`
      }
      if (!is.null(self$`clicks`)) {
        SearchConsoleDecayResponseDataInnerObject[["clicks"]] <-
          self$`clicks`
      }
      if (!is.null(self$`clicks_previous`)) {
        SearchConsoleDecayResponseDataInnerObject[["clicks_previous"]] <-
          self$`clicks_previous`
      }
      if (!is.null(self$`clicks_change`)) {
        SearchConsoleDecayResponseDataInnerObject[["clicks_change"]] <-
          self$`clicks_change`
      }
      if (!is.null(self$`clicks_change_pct`)) {
        SearchConsoleDecayResponseDataInnerObject[["clicks_change_pct"]] <-
          self$`clicks_change_pct`
      }
      if (!is.null(self$`impressions`)) {
        SearchConsoleDecayResponseDataInnerObject[["impressions"]] <-
          self$`impressions`
      }
      if (!is.null(self$`impressions_previous`)) {
        SearchConsoleDecayResponseDataInnerObject[["impressions_previous"]] <-
          self$`impressions_previous`
      }
      if (!is.null(self$`position`)) {
        SearchConsoleDecayResponseDataInnerObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`position_previous`)) {
        SearchConsoleDecayResponseDataInnerObject[["position_previous"]] <-
          self$`position_previous`
      }
      return(SearchConsoleDecayResponseDataInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleDecayResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleDecayResponseDataInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`key`)) {
        self$`key` <- this_object$`key`
      }
      if (!is.null(this_object$`clicks`)) {
        self$`clicks` <- this_object$`clicks`
      }
      if (!is.null(this_object$`clicks_previous`)) {
        self$`clicks_previous` <- this_object$`clicks_previous`
      }
      if (!is.null(this_object$`clicks_change`)) {
        self$`clicks_change` <- this_object$`clicks_change`
      }
      if (!is.null(this_object$`clicks_change_pct`)) {
        self$`clicks_change_pct` <- this_object$`clicks_change_pct`
      }
      if (!is.null(this_object$`impressions`)) {
        self$`impressions` <- this_object$`impressions`
      }
      if (!is.null(this_object$`impressions_previous`)) {
        self$`impressions_previous` <- this_object$`impressions_previous`
      }
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      if (!is.null(this_object$`position_previous`)) {
        self$`position_previous` <- this_object$`position_previous`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SearchConsoleDecayResponseDataInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleDecayResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleDecayResponseDataInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`key` <- this_object$`key`
      self$`clicks` <- this_object$`clicks`
      self$`clicks_previous` <- this_object$`clicks_previous`
      self$`clicks_change` <- this_object$`clicks_change`
      self$`clicks_change_pct` <- this_object$`clicks_change_pct`
      self$`impressions` <- this_object$`impressions`
      self$`impressions_previous` <- this_object$`impressions_previous`
      self$`position` <- this_object$`position`
      self$`position_previous` <- this_object$`position_previous`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchConsoleDecayResponseDataInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchConsoleDecayResponseDataInner
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
# SearchConsoleDecayResponseDataInner$unlock()
#
## Below is an example to define the print function
# SearchConsoleDecayResponseDataInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchConsoleDecayResponseDataInner$lock()

