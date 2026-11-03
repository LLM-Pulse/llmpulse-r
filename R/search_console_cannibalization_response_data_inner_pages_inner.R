#' Create a new SearchConsoleCannibalizationResponseDataInnerPagesInner
#'
#' @description
#' SearchConsoleCannibalizationResponseDataInnerPagesInner Class
#'
#' @docType class
#' @title SearchConsoleCannibalizationResponseDataInnerPagesInner
#' @description SearchConsoleCannibalizationResponseDataInnerPagesInner Class
#' @format An \code{R6Class} generator object
#' @field page  character [optional]
#' @field share The page's fraction (0..1) of the query's impressions numeric [optional]
#' @field impressions  integer [optional]
#' @field clicks  integer [optional]
#' @field ctr 0..1 fraction numeric [optional]
#' @field position Impression-weighted average position numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchConsoleCannibalizationResponseDataInnerPagesInner <- R6::R6Class(
  "SearchConsoleCannibalizationResponseDataInnerPagesInner",
  public = list(
    `page` = NULL,
    `share` = NULL,
    `impressions` = NULL,
    `clicks` = NULL,
    `ctr` = NULL,
    `position` = NULL,

    #' @description
    #' Initialize a new SearchConsoleCannibalizationResponseDataInnerPagesInner class.
    #'
    #' @param page page
    #' @param share The page's fraction (0..1) of the query's impressions
    #' @param impressions impressions
    #' @param clicks clicks
    #' @param ctr 0..1 fraction
    #' @param position Impression-weighted average position
    #' @param ... Other optional arguments.
    initialize = function(`page` = NULL, `share` = NULL, `impressions` = NULL, `clicks` = NULL, `ctr` = NULL, `position` = NULL, ...) {
      if (!is.null(`page`)) {
        if (!(is.character(`page`) && length(`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be a string:", `page`))
        }
        self$`page` <- `page`
      }
      if (!is.null(`share`)) {
        self$`share` <- `share`
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
    #' @return SearchConsoleCannibalizationResponseDataInnerPagesInner as a base R list.
    #' @examples
    #' # convert array of SearchConsoleCannibalizationResponseDataInnerPagesInner (x) to a data frame
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
    #' Convert SearchConsoleCannibalizationResponseDataInnerPagesInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchConsoleCannibalizationResponseDataInnerPagesInnerObject <- list()
      if (!is.null(self$`page`)) {
        SearchConsoleCannibalizationResponseDataInnerPagesInnerObject[["page"]] <-
          self$`page`
      }
      if (!is.null(self$`share`)) {
        SearchConsoleCannibalizationResponseDataInnerPagesInnerObject[["share"]] <-
          self$`share`
      }
      if (!is.null(self$`impressions`)) {
        SearchConsoleCannibalizationResponseDataInnerPagesInnerObject[["impressions"]] <-
          self$`impressions`
      }
      if (!is.null(self$`clicks`)) {
        SearchConsoleCannibalizationResponseDataInnerPagesInnerObject[["clicks"]] <-
          self$`clicks`
      }
      if (!is.null(self$`ctr`)) {
        SearchConsoleCannibalizationResponseDataInnerPagesInnerObject[["ctr"]] <-
          self$`ctr`
      }
      if (!is.null(self$`position`)) {
        SearchConsoleCannibalizationResponseDataInnerPagesInnerObject[["position"]] <-
          self$`position`
      }
      return(SearchConsoleCannibalizationResponseDataInnerPagesInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleCannibalizationResponseDataInnerPagesInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleCannibalizationResponseDataInnerPagesInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`page`)) {
        self$`page` <- this_object$`page`
      }
      if (!is.null(this_object$`share`)) {
        self$`share` <- this_object$`share`
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
    #' @return SearchConsoleCannibalizationResponseDataInnerPagesInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleCannibalizationResponseDataInnerPagesInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleCannibalizationResponseDataInnerPagesInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`page` <- this_object$`page`
      self$`share` <- this_object$`share`
      self$`impressions` <- this_object$`impressions`
      self$`clicks` <- this_object$`clicks`
      self$`ctr` <- this_object$`ctr`
      self$`position` <- this_object$`position`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchConsoleCannibalizationResponseDataInnerPagesInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchConsoleCannibalizationResponseDataInnerPagesInner
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
# SearchConsoleCannibalizationResponseDataInnerPagesInner$unlock()
#
## Below is an example to define the print function
# SearchConsoleCannibalizationResponseDataInnerPagesInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchConsoleCannibalizationResponseDataInnerPagesInner$lock()

