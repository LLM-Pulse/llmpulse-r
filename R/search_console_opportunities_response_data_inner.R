#' Create a new SearchConsoleOpportunitiesResponseDataInner
#'
#' @description
#' SearchConsoleOpportunitiesResponseDataInner Class
#'
#' @docType class
#' @title SearchConsoleOpportunitiesResponseDataInner
#' @description SearchConsoleOpportunitiesResponseDataInner Class
#' @format An \code{R6Class} generator object
#' @field query  character [optional]
#' @field impressions  integer [optional]
#' @field clicks  integer [optional]
#' @field ctr 0..1 fraction numeric [optional]
#' @field position Impression-weighted average position numeric [optional]
#' @field potential_clicks Clicks a move into the top 3 would add at top_ctr (never negative); null when top_ctr is null integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchConsoleOpportunitiesResponseDataInner <- R6::R6Class(
  "SearchConsoleOpportunitiesResponseDataInner",
  public = list(
    `query` = NULL,
    `impressions` = NULL,
    `clicks` = NULL,
    `ctr` = NULL,
    `position` = NULL,
    `potential_clicks` = NULL,

    #' @description
    #' Initialize a new SearchConsoleOpportunitiesResponseDataInner class.
    #'
    #' @param query query
    #' @param impressions impressions
    #' @param clicks clicks
    #' @param ctr 0..1 fraction
    #' @param position Impression-weighted average position
    #' @param potential_clicks Clicks a move into the top 3 would add at top_ctr (never negative); null when top_ctr is null
    #' @param ... Other optional arguments.
    initialize = function(`query` = NULL, `impressions` = NULL, `clicks` = NULL, `ctr` = NULL, `position` = NULL, `potential_clicks` = NULL, ...) {
      if (!is.null(`query`)) {
        if (!(is.character(`query`) && length(`query`) == 1)) {
          stop(paste("Error! Invalid data for `query`. Must be a string:", `query`))
        }
        self$`query` <- `query`
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
      if (!is.null(`potential_clicks`)) {
        if (!(is.numeric(`potential_clicks`) && length(`potential_clicks`) == 1)) {
          stop(paste("Error! Invalid data for `potential_clicks`. Must be an integer:", `potential_clicks`))
        }
        self$`potential_clicks` <- `potential_clicks`
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
    #' @return SearchConsoleOpportunitiesResponseDataInner as a base R list.
    #' @examples
    #' # convert array of SearchConsoleOpportunitiesResponseDataInner (x) to a data frame
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
    #' Convert SearchConsoleOpportunitiesResponseDataInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchConsoleOpportunitiesResponseDataInnerObject <- list()
      if (!is.null(self$`query`)) {
        SearchConsoleOpportunitiesResponseDataInnerObject[["query"]] <-
          self$`query`
      }
      if (!is.null(self$`impressions`)) {
        SearchConsoleOpportunitiesResponseDataInnerObject[["impressions"]] <-
          self$`impressions`
      }
      if (!is.null(self$`clicks`)) {
        SearchConsoleOpportunitiesResponseDataInnerObject[["clicks"]] <-
          self$`clicks`
      }
      if (!is.null(self$`ctr`)) {
        SearchConsoleOpportunitiesResponseDataInnerObject[["ctr"]] <-
          self$`ctr`
      }
      if (!is.null(self$`position`)) {
        SearchConsoleOpportunitiesResponseDataInnerObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`potential_clicks`)) {
        SearchConsoleOpportunitiesResponseDataInnerObject[["potential_clicks"]] <-
          self$`potential_clicks`
      }
      return(SearchConsoleOpportunitiesResponseDataInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleOpportunitiesResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleOpportunitiesResponseDataInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`query`)) {
        self$`query` <- this_object$`query`
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
      if (!is.null(this_object$`potential_clicks`)) {
        self$`potential_clicks` <- this_object$`potential_clicks`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SearchConsoleOpportunitiesResponseDataInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleOpportunitiesResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleOpportunitiesResponseDataInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`query` <- this_object$`query`
      self$`impressions` <- this_object$`impressions`
      self$`clicks` <- this_object$`clicks`
      self$`ctr` <- this_object$`ctr`
      self$`position` <- this_object$`position`
      self$`potential_clicks` <- this_object$`potential_clicks`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchConsoleOpportunitiesResponseDataInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchConsoleOpportunitiesResponseDataInner
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
# SearchConsoleOpportunitiesResponseDataInner$unlock()
#
## Below is an example to define the print function
# SearchConsoleOpportunitiesResponseDataInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchConsoleOpportunitiesResponseDataInner$lock()

