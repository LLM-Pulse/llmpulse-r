#' Create a new SearchConsoleAiVisibilityGapsResponseDataInner
#'
#' @description
#' SearchConsoleAiVisibilityGapsResponseDataInner Class
#'
#' @docType class
#' @title SearchConsoleAiVisibilityGapsResponseDataInner
#' @description SearchConsoleAiVisibilityGapsResponseDataInner Class
#' @format An \code{R6Class} generator object
#' @field query  character [optional]
#' @field impressions  integer [optional]
#' @field clicks  integer [optional]
#' @field ctr 0..1 fraction numeric [optional]
#' @field position Impression-weighted average position numeric [optional]
#' @field prompt_id The project's prompt with the same text as the query; null when no prompt matches integer [optional]
#' @field responses AI answers the matching prompt got in the window over the account's enabled models; null when no prompt matches integer [optional]
#' @field brand_visibility Brand Visibility of the matching prompt in the window, percent (0-100) of its AI answers that mention the brand, over the account's enabled models; null when no prompt matches or it has no answer numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchConsoleAiVisibilityGapsResponseDataInner <- R6::R6Class(
  "SearchConsoleAiVisibilityGapsResponseDataInner",
  public = list(
    `query` = NULL,
    `impressions` = NULL,
    `clicks` = NULL,
    `ctr` = NULL,
    `position` = NULL,
    `prompt_id` = NULL,
    `responses` = NULL,
    `brand_visibility` = NULL,

    #' @description
    #' Initialize a new SearchConsoleAiVisibilityGapsResponseDataInner class.
    #'
    #' @param query query
    #' @param impressions impressions
    #' @param clicks clicks
    #' @param ctr 0..1 fraction
    #' @param position Impression-weighted average position
    #' @param prompt_id The project's prompt with the same text as the query; null when no prompt matches
    #' @param responses AI answers the matching prompt got in the window over the account's enabled models; null when no prompt matches
    #' @param brand_visibility Brand Visibility of the matching prompt in the window, percent (0-100) of its AI answers that mention the brand, over the account's enabled models; null when no prompt matches or it has no answer
    #' @param ... Other optional arguments.
    initialize = function(`query` = NULL, `impressions` = NULL, `clicks` = NULL, `ctr` = NULL, `position` = NULL, `prompt_id` = NULL, `responses` = NULL, `brand_visibility` = NULL, ...) {
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
      if (!is.null(`prompt_id`)) {
        if (!(is.numeric(`prompt_id`) && length(`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", `prompt_id`))
        }
        self$`prompt_id` <- `prompt_id`
      }
      if (!is.null(`responses`)) {
        if (!(is.numeric(`responses`) && length(`responses`) == 1)) {
          stop(paste("Error! Invalid data for `responses`. Must be an integer:", `responses`))
        }
        self$`responses` <- `responses`
      }
      if (!is.null(`brand_visibility`)) {
        self$`brand_visibility` <- `brand_visibility`
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
    #' @return SearchConsoleAiVisibilityGapsResponseDataInner as a base R list.
    #' @examples
    #' # convert array of SearchConsoleAiVisibilityGapsResponseDataInner (x) to a data frame
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
    #' Convert SearchConsoleAiVisibilityGapsResponseDataInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchConsoleAiVisibilityGapsResponseDataInnerObject <- list()
      if (!is.null(self$`query`)) {
        SearchConsoleAiVisibilityGapsResponseDataInnerObject[["query"]] <-
          self$`query`
      }
      if (!is.null(self$`impressions`)) {
        SearchConsoleAiVisibilityGapsResponseDataInnerObject[["impressions"]] <-
          self$`impressions`
      }
      if (!is.null(self$`clicks`)) {
        SearchConsoleAiVisibilityGapsResponseDataInnerObject[["clicks"]] <-
          self$`clicks`
      }
      if (!is.null(self$`ctr`)) {
        SearchConsoleAiVisibilityGapsResponseDataInnerObject[["ctr"]] <-
          self$`ctr`
      }
      if (!is.null(self$`position`)) {
        SearchConsoleAiVisibilityGapsResponseDataInnerObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`prompt_id`)) {
        SearchConsoleAiVisibilityGapsResponseDataInnerObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`responses`)) {
        SearchConsoleAiVisibilityGapsResponseDataInnerObject[["responses"]] <-
          self$`responses`
      }
      if (!is.null(self$`brand_visibility`)) {
        SearchConsoleAiVisibilityGapsResponseDataInnerObject[["brand_visibility"]] <-
          self$`brand_visibility`
      }
      return(SearchConsoleAiVisibilityGapsResponseDataInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleAiVisibilityGapsResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleAiVisibilityGapsResponseDataInner
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
      if (!is.null(this_object$`prompt_id`)) {
        self$`prompt_id` <- this_object$`prompt_id`
      }
      if (!is.null(this_object$`responses`)) {
        self$`responses` <- this_object$`responses`
      }
      if (!is.null(this_object$`brand_visibility`)) {
        self$`brand_visibility` <- this_object$`brand_visibility`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SearchConsoleAiVisibilityGapsResponseDataInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleAiVisibilityGapsResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleAiVisibilityGapsResponseDataInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`query` <- this_object$`query`
      self$`impressions` <- this_object$`impressions`
      self$`clicks` <- this_object$`clicks`
      self$`ctr` <- this_object$`ctr`
      self$`position` <- this_object$`position`
      self$`prompt_id` <- this_object$`prompt_id`
      self$`responses` <- this_object$`responses`
      self$`brand_visibility` <- this_object$`brand_visibility`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchConsoleAiVisibilityGapsResponseDataInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchConsoleAiVisibilityGapsResponseDataInner
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
# SearchConsoleAiVisibilityGapsResponseDataInner$unlock()
#
## Below is an example to define the print function
# SearchConsoleAiVisibilityGapsResponseDataInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchConsoleAiVisibilityGapsResponseDataInner$lock()

