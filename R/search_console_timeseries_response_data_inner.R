#' Create a new SearchConsoleTimeseriesResponseDataInner
#'
#' @description
#' SearchConsoleTimeseriesResponseDataInner Class
#'
#' @docType class
#' @title SearchConsoleTimeseriesResponseDataInner
#' @description SearchConsoleTimeseriesResponseDataInner Class
#' @format An \code{R6Class} generator object
#' @field date  character [optional]
#' @field impressions  integer [optional]
#' @field clicks  integer [optional]
#' @field ctr 0..1 fraction numeric [optional]
#' @field position Impression-weighted average position numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchConsoleTimeseriesResponseDataInner <- R6::R6Class(
  "SearchConsoleTimeseriesResponseDataInner",
  public = list(
    `date` = NULL,
    `impressions` = NULL,
    `clicks` = NULL,
    `ctr` = NULL,
    `position` = NULL,

    #' @description
    #' Initialize a new SearchConsoleTimeseriesResponseDataInner class.
    #'
    #' @param date date
    #' @param impressions impressions
    #' @param clicks clicks
    #' @param ctr 0..1 fraction
    #' @param position Impression-weighted average position
    #' @param ... Other optional arguments.
    initialize = function(`date` = NULL, `impressions` = NULL, `clicks` = NULL, `ctr` = NULL, `position` = NULL, ...) {
      if (!is.null(`date`)) {
        if (!is.character(`date`)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
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
    #' @return SearchConsoleTimeseriesResponseDataInner as a base R list.
    #' @examples
    #' # convert array of SearchConsoleTimeseriesResponseDataInner (x) to a data frame
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
    #' Convert SearchConsoleTimeseriesResponseDataInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchConsoleTimeseriesResponseDataInnerObject <- list()
      if (!is.null(self$`date`)) {
        SearchConsoleTimeseriesResponseDataInnerObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`impressions`)) {
        SearchConsoleTimeseriesResponseDataInnerObject[["impressions"]] <-
          self$`impressions`
      }
      if (!is.null(self$`clicks`)) {
        SearchConsoleTimeseriesResponseDataInnerObject[["clicks"]] <-
          self$`clicks`
      }
      if (!is.null(self$`ctr`)) {
        SearchConsoleTimeseriesResponseDataInnerObject[["ctr"]] <-
          self$`ctr`
      }
      if (!is.null(self$`position`)) {
        SearchConsoleTimeseriesResponseDataInnerObject[["position"]] <-
          self$`position`
      }
      return(SearchConsoleTimeseriesResponseDataInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleTimeseriesResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleTimeseriesResponseDataInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
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
    #' @return SearchConsoleTimeseriesResponseDataInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleTimeseriesResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleTimeseriesResponseDataInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`date` <- this_object$`date`
      self$`impressions` <- this_object$`impressions`
      self$`clicks` <- this_object$`clicks`
      self$`ctr` <- this_object$`ctr`
      self$`position` <- this_object$`position`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchConsoleTimeseriesResponseDataInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchConsoleTimeseriesResponseDataInner
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
# SearchConsoleTimeseriesResponseDataInner$unlock()
#
## Below is an example to define the print function
# SearchConsoleTimeseriesResponseDataInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchConsoleTimeseriesResponseDataInner$lock()

