#' Create a new SearchConsoleBrandSplitResponseUnclassified
#'
#' @description
#' Impressions and clicks neither side counts, mostly anonymized queries Google leaves out of any query filter
#'
#' @docType class
#' @title SearchConsoleBrandSplitResponseUnclassified
#' @description SearchConsoleBrandSplitResponseUnclassified Class
#' @format An \code{R6Class} generator object
#' @field impressions  integer [optional]
#' @field clicks  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchConsoleBrandSplitResponseUnclassified <- R6::R6Class(
  "SearchConsoleBrandSplitResponseUnclassified",
  public = list(
    `impressions` = NULL,
    `clicks` = NULL,

    #' @description
    #' Initialize a new SearchConsoleBrandSplitResponseUnclassified class.
    #'
    #' @param impressions impressions
    #' @param clicks clicks
    #' @param ... Other optional arguments.
    initialize = function(`impressions` = NULL, `clicks` = NULL, ...) {
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
    #' @return SearchConsoleBrandSplitResponseUnclassified as a base R list.
    #' @examples
    #' # convert array of SearchConsoleBrandSplitResponseUnclassified (x) to a data frame
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
    #' Convert SearchConsoleBrandSplitResponseUnclassified to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchConsoleBrandSplitResponseUnclassifiedObject <- list()
      if (!is.null(self$`impressions`)) {
        SearchConsoleBrandSplitResponseUnclassifiedObject[["impressions"]] <-
          self$`impressions`
      }
      if (!is.null(self$`clicks`)) {
        SearchConsoleBrandSplitResponseUnclassifiedObject[["clicks"]] <-
          self$`clicks`
      }
      return(SearchConsoleBrandSplitResponseUnclassifiedObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleBrandSplitResponseUnclassified
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleBrandSplitResponseUnclassified
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`impressions`)) {
        self$`impressions` <- this_object$`impressions`
      }
      if (!is.null(this_object$`clicks`)) {
        self$`clicks` <- this_object$`clicks`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SearchConsoleBrandSplitResponseUnclassified in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleBrandSplitResponseUnclassified
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleBrandSplitResponseUnclassified
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`impressions` <- this_object$`impressions`
      self$`clicks` <- this_object$`clicks`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchConsoleBrandSplitResponseUnclassified and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchConsoleBrandSplitResponseUnclassified
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
# SearchConsoleBrandSplitResponseUnclassified$unlock()
#
## Below is an example to define the print function
# SearchConsoleBrandSplitResponseUnclassified$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchConsoleBrandSplitResponseUnclassified$lock()

