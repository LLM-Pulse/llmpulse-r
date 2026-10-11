#' Create a new SearchConsoleSummaryResponseBreakdownInner
#'
#' @description
#' SearchConsoleSummaryResponseBreakdownInner Class
#'
#' @docType class
#' @title SearchConsoleSummaryResponseBreakdownInner
#' @description SearchConsoleSummaryResponseBreakdownInner Class
#' @format An \code{R6Class} generator object
#' @field value  character [optional]
#' @field impressions  integer [optional]
#' @field clicks  integer [optional]
#' @field ctr 0..1 fraction numeric [optional]
#' @field position Impression-weighted average position numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchConsoleSummaryResponseBreakdownInner <- R6::R6Class(
  "SearchConsoleSummaryResponseBreakdownInner",
  public = list(
    `value` = NULL,
    `impressions` = NULL,
    `clicks` = NULL,
    `ctr` = NULL,
    `position` = NULL,

    #' @description
    #' Initialize a new SearchConsoleSummaryResponseBreakdownInner class.
    #'
    #' @param value value
    #' @param impressions impressions
    #' @param clicks clicks
    #' @param ctr 0..1 fraction
    #' @param position Impression-weighted average position
    #' @param ... Other optional arguments.
    initialize = function(`value` = NULL, `impressions` = NULL, `clicks` = NULL, `ctr` = NULL, `position` = NULL, ...) {
      if (!is.null(`value`)) {
        if (!(is.character(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", `value`))
        }
        self$`value` <- `value`
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
      if (!is.null(`position`)) {
        self$`position` <- `position`
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
    #' @return SearchConsoleSummaryResponseBreakdownInner as a base R list.
    #' @examples
    #' # convert array of SearchConsoleSummaryResponseBreakdownInner (x) to a data frame
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
    #' Convert SearchConsoleSummaryResponseBreakdownInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchConsoleSummaryResponseBreakdownInnerObject <- list()
      if (!is.null(self$`value`)) {
        SearchConsoleSummaryResponseBreakdownInnerObject[["value"]] <-
          self$`value`
      }
      if (!is.null(self$`impressions`)) {
        SearchConsoleSummaryResponseBreakdownInnerObject[["impressions"]] <-
          self$`impressions`
      }
      if (!is.null(self$`clicks`)) {
        SearchConsoleSummaryResponseBreakdownInnerObject[["clicks"]] <-
          self$`clicks`
      }
      if (!is.null(self$`ctr`)) {
        SearchConsoleSummaryResponseBreakdownInnerObject[["ctr"]] <-
          self$`ctr`
      }
      if (!is.null(self$`position`)) {
        SearchConsoleSummaryResponseBreakdownInnerObject[["position"]] <-
          self$`position`
      }
      return(SearchConsoleSummaryResponseBreakdownInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleSummaryResponseBreakdownInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleSummaryResponseBreakdownInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
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
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SearchConsoleSummaryResponseBreakdownInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleSummaryResponseBreakdownInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleSummaryResponseBreakdownInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`value` <- this_object$`value`
      self$`impressions` <- this_object$`impressions`
      self$`clicks` <- this_object$`clicks`
      self$`ctr` <- this_object$`ctr`
      self$`position` <- this_object$`position`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchConsoleSummaryResponseBreakdownInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchConsoleSummaryResponseBreakdownInner
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
# SearchConsoleSummaryResponseBreakdownInner$unlock()
#
## Below is an example to define the print function
# SearchConsoleSummaryResponseBreakdownInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchConsoleSummaryResponseBreakdownInner$lock()

