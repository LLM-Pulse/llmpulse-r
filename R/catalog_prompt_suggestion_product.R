#' Create a new CatalogPromptSuggestionProduct
#'
#' @description
#' The catalog product the suggestion was written for
#'
#' @docType class
#' @title CatalogPromptSuggestionProduct
#' @description CatalogPromptSuggestionProduct Class
#' @format An \code{R6Class} generator object
#' @field external_id The store's product id, e.g. gid://shopify/Product/1 character [optional]
#' @field handle  character [optional]
#' @field title  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CatalogPromptSuggestionProduct <- R6::R6Class(
  "CatalogPromptSuggestionProduct",
  public = list(
    `external_id` = NULL,
    `handle` = NULL,
    `title` = NULL,

    #' @description
    #' Initialize a new CatalogPromptSuggestionProduct class.
    #'
    #' @param external_id The store's product id, e.g. gid://shopify/Product/1
    #' @param handle handle
    #' @param title title
    #' @param ... Other optional arguments.
    initialize = function(`external_id` = NULL, `handle` = NULL, `title` = NULL, ...) {
      if (!is.null(`external_id`)) {
        if (!(is.character(`external_id`) && length(`external_id`) == 1)) {
          stop(paste("Error! Invalid data for `external_id`. Must be a string:", `external_id`))
        }
        self$`external_id` <- `external_id`
      }
      if (!is.null(`handle`)) {
        if (!(is.character(`handle`) && length(`handle`) == 1)) {
          stop(paste("Error! Invalid data for `handle`. Must be a string:", `handle`))
        }
        self$`handle` <- `handle`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
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
    #' @return CatalogPromptSuggestionProduct as a base R list.
    #' @examples
    #' # convert array of CatalogPromptSuggestionProduct (x) to a data frame
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
    #' Convert CatalogPromptSuggestionProduct to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CatalogPromptSuggestionProductObject <- list()
      if (!is.null(self$`external_id`)) {
        CatalogPromptSuggestionProductObject[["external_id"]] <-
          self$`external_id`
      }
      if (!is.null(self$`handle`)) {
        CatalogPromptSuggestionProductObject[["handle"]] <-
          self$`handle`
      }
      if (!is.null(self$`title`)) {
        CatalogPromptSuggestionProductObject[["title"]] <-
          self$`title`
      }
      return(CatalogPromptSuggestionProductObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CatalogPromptSuggestionProduct
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestionProduct
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`external_id`)) {
        self$`external_id` <- this_object$`external_id`
      }
      if (!is.null(this_object$`handle`)) {
        self$`handle` <- this_object$`handle`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CatalogPromptSuggestionProduct in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CatalogPromptSuggestionProduct
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestionProduct
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`external_id` <- this_object$`external_id`
      self$`handle` <- this_object$`handle`
      self$`title` <- this_object$`title`
      self
    },

    #' @description
    #' Validate JSON input with respect to CatalogPromptSuggestionProduct and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CatalogPromptSuggestionProduct
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
# CatalogPromptSuggestionProduct$unlock()
#
## Below is an example to define the print function
# CatalogPromptSuggestionProduct$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CatalogPromptSuggestionProduct$lock()

