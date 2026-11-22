#' Create a new BingWebmasterListResponseDataInner
#'
#' @description
#' BingWebmasterListResponseDataInner Class
#'
#' @docType class
#' @title BingWebmasterListResponseDataInner
#' @description BingWebmasterListResponseDataInner Class
#' @format An \code{R6Class} generator object
#' @field key The page URL or the query character [optional]
#' @field impressions  integer [optional]
#' @field clicks  integer [optional]
#' @field ctr 0..1 fraction numeric [optional]
#' @field avg_impression_position Average position when shown, weighted by impressions (lower is better) numeric [optional]
#' @field avg_click_position Average position when clicked, weighted by clicks. Null without clicks. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BingWebmasterListResponseDataInner <- R6::R6Class(
  "BingWebmasterListResponseDataInner",
  public = list(
    `key` = NULL,
    `impressions` = NULL,
    `clicks` = NULL,
    `ctr` = NULL,
    `avg_impression_position` = NULL,
    `avg_click_position` = NULL,

    #' @description
    #' Initialize a new BingWebmasterListResponseDataInner class.
    #'
    #' @param key The page URL or the query
    #' @param impressions impressions
    #' @param clicks clicks
    #' @param ctr 0..1 fraction
    #' @param avg_impression_position Average position when shown, weighted by impressions (lower is better)
    #' @param avg_click_position Average position when clicked, weighted by clicks. Null without clicks.
    #' @param ... Other optional arguments.
    initialize = function(`key` = NULL, `impressions` = NULL, `clicks` = NULL, `ctr` = NULL, `avg_impression_position` = NULL, `avg_click_position` = NULL, ...) {
      if (!is.null(`key`)) {
        if (!(is.character(`key`) && length(`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", `key`))
        }
        self$`key` <- `key`
      }
      if (!is.null(`impressions`)) {
        if (!(is.numeric(`impressions`) && length(`impressions`) == 1)) {
          stop(paste("Error! Invalid data for `impressions`. Must be an integer:", `impressions`))
        }
        self$`impressions` <- `impressions`
      }
      if (!is.null(`clicks`)) {
        if (!(is.numeric(`clicks`) && length(`clicks`) == 1)) {
          stop(paste("Error! Invalid data for `clicks`. Must be an integer:", `clicks`))
        }
        self$`clicks` <- `clicks`
      }
      if (!is.null(`ctr`)) {
        self$`ctr` <- `ctr`
      }
      if (!is.null(`avg_impression_position`)) {
        self$`avg_impression_position` <- `avg_impression_position`
      }
      if (!is.null(`avg_click_position`)) {
        self$`avg_click_position` <- `avg_click_position`
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
    #' @return BingWebmasterListResponseDataInner as a base R list.
    #' @examples
    #' # convert array of BingWebmasterListResponseDataInner (x) to a data frame
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
    #' Convert BingWebmasterListResponseDataInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BingWebmasterListResponseDataInnerObject <- list()
      if (!is.null(self$`key`)) {
        BingWebmasterListResponseDataInnerObject[["key"]] <-
          self$`key`
      }
      if (!is.null(self$`impressions`)) {
        BingWebmasterListResponseDataInnerObject[["impressions"]] <-
          self$`impressions`
      }
      if (!is.null(self$`clicks`)) {
        BingWebmasterListResponseDataInnerObject[["clicks"]] <-
          self$`clicks`
      }
      if (!is.null(self$`ctr`)) {
        BingWebmasterListResponseDataInnerObject[["ctr"]] <-
          self$`ctr`
      }
      if (!is.null(self$`avg_impression_position`)) {
        BingWebmasterListResponseDataInnerObject[["avg_impression_position"]] <-
          self$`avg_impression_position`
      }
      if (!is.null(self$`avg_click_position`)) {
        BingWebmasterListResponseDataInnerObject[["avg_click_position"]] <-
          self$`avg_click_position`
      }
      return(BingWebmasterListResponseDataInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BingWebmasterListResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of BingWebmasterListResponseDataInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`key`)) {
        self$`key` <- this_object$`key`
      }
      if (!is.null(this_object$`impressions`)) {
        self$`impressions` <- this_object$`impressions`
      }
      if (!is.null(this_object$`clicks`)) {
        self$`clicks` <- this_object$`clicks`
      }
      if (!is.null(this_object$`ctr`)) {
        self$`ctr` <- this_object$`ctr`
      }
      if (!is.null(this_object$`avg_impression_position`)) {
        self$`avg_impression_position` <- this_object$`avg_impression_position`
      }
      if (!is.null(this_object$`avg_click_position`)) {
        self$`avg_click_position` <- this_object$`avg_click_position`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BingWebmasterListResponseDataInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BingWebmasterListResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of BingWebmasterListResponseDataInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`key` <- this_object$`key`
      self$`impressions` <- this_object$`impressions`
      self$`clicks` <- this_object$`clicks`
      self$`ctr` <- this_object$`ctr`
      self$`avg_impression_position` <- this_object$`avg_impression_position`
      self$`avg_click_position` <- this_object$`avg_click_position`
      self
    },

    #' @description
    #' Validate JSON input with respect to BingWebmasterListResponseDataInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BingWebmasterListResponseDataInner
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
# BingWebmasterListResponseDataInner$unlock()
#
## Below is an example to define the print function
# BingWebmasterListResponseDataInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BingWebmasterListResponseDataInner$lock()

