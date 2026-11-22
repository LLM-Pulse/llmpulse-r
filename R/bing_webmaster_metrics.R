#' Create a new BingWebmasterMetrics
#'
#' @description
#' Bing reports no average position in its daily totals.
#'
#' @docType class
#' @title BingWebmasterMetrics
#' @description BingWebmasterMetrics Class
#' @format An \code{R6Class} generator object
#' @field impressions  integer [optional]
#' @field clicks  integer [optional]
#' @field ctr 0..1 fraction numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BingWebmasterMetrics <- R6::R6Class(
  "BingWebmasterMetrics",
  public = list(
    `impressions` = NULL,
    `clicks` = NULL,
    `ctr` = NULL,

    #' @description
    #' Initialize a new BingWebmasterMetrics class.
    #'
    #' @param impressions impressions
    #' @param clicks clicks
    #' @param ctr 0..1 fraction
    #' @param ... Other optional arguments.
    initialize = function(`impressions` = NULL, `clicks` = NULL, `ctr` = NULL, ...) {
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
    #' @return BingWebmasterMetrics as a base R list.
    #' @examples
    #' # convert array of BingWebmasterMetrics (x) to a data frame
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
    #' Convert BingWebmasterMetrics to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BingWebmasterMetricsObject <- list()
      if (!is.null(self$`impressions`)) {
        BingWebmasterMetricsObject[["impressions"]] <-
          self$`impressions`
      }
      if (!is.null(self$`clicks`)) {
        BingWebmasterMetricsObject[["clicks"]] <-
          self$`clicks`
      }
      if (!is.null(self$`ctr`)) {
        BingWebmasterMetricsObject[["ctr"]] <-
          self$`ctr`
      }
      return(BingWebmasterMetricsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BingWebmasterMetrics
    #'
    #' @param input_json the JSON input
    #' @return the instance of BingWebmasterMetrics
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`impressions`)) {
        self$`impressions` <- this_object$`impressions`
      }
      if (!is.null(this_object$`clicks`)) {
        self$`clicks` <- this_object$`clicks`
      }
      if (!is.null(this_object$`ctr`)) {
        self$`ctr` <- this_object$`ctr`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BingWebmasterMetrics in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BingWebmasterMetrics
    #'
    #' @param input_json the JSON input
    #' @return the instance of BingWebmasterMetrics
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`impressions` <- this_object$`impressions`
      self$`clicks` <- this_object$`clicks`
      self$`ctr` <- this_object$`ctr`
      self
    },

    #' @description
    #' Validate JSON input with respect to BingWebmasterMetrics and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BingWebmasterMetrics
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
# BingWebmasterMetrics$unlock()
#
## Below is an example to define the print function
# BingWebmasterMetrics$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BingWebmasterMetrics$lock()

