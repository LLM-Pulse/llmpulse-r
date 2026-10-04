#' Create a new CatalogPromptSuggestionsAcceptResponseAcceptedInner
#'
#' @description
#' CatalogPromptSuggestionsAcceptResponseAcceptedInner Class
#'
#' @docType class
#' @title CatalogPromptSuggestionsAcceptResponseAcceptedInner
#' @description CatalogPromptSuggestionsAcceptResponseAcceptedInner Class
#' @format An \code{R6Class} generator object
#' @field suggestion_id  integer
#' @field prompt_id  integer
#' @field collection_id The collection named after the product; null when the product has no title or the team member cannot create tags integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CatalogPromptSuggestionsAcceptResponseAcceptedInner <- R6::R6Class(
  "CatalogPromptSuggestionsAcceptResponseAcceptedInner",
  public = list(
    `suggestion_id` = NULL,
    `prompt_id` = NULL,
    `collection_id` = NULL,

    #' @description
    #' Initialize a new CatalogPromptSuggestionsAcceptResponseAcceptedInner class.
    #'
    #' @param suggestion_id suggestion_id
    #' @param prompt_id prompt_id
    #' @param collection_id The collection named after the product; null when the product has no title or the team member cannot create tags
    #' @param ... Other optional arguments.
    initialize = function(`suggestion_id`, `prompt_id`, `collection_id`, ...) {
      if (!missing(`suggestion_id`)) {
        if (!(is.numeric(`suggestion_id`) && length(`suggestion_id`) == 1)) {
          stop(paste("Error! Invalid data for `suggestion_id`. Must be an integer:", `suggestion_id`))
        }
        self$`suggestion_id` <- `suggestion_id`
      }
      if (!missing(`prompt_id`)) {
        if (!(is.numeric(`prompt_id`) && length(`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", `prompt_id`))
        }
        self$`prompt_id` <- `prompt_id`
      }
      if (!missing(`collection_id`)) {
        if (!(is.numeric(`collection_id`) && length(`collection_id`) == 1)) {
          stop(paste("Error! Invalid data for `collection_id`. Must be an integer:", `collection_id`))
        }
        self$`collection_id` <- `collection_id`
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
    #' @return CatalogPromptSuggestionsAcceptResponseAcceptedInner as a base R list.
    #' @examples
    #' # convert array of CatalogPromptSuggestionsAcceptResponseAcceptedInner (x) to a data frame
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
    #' Convert CatalogPromptSuggestionsAcceptResponseAcceptedInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CatalogPromptSuggestionsAcceptResponseAcceptedInnerObject <- list()
      if (!is.null(self$`suggestion_id`)) {
        CatalogPromptSuggestionsAcceptResponseAcceptedInnerObject[["suggestion_id"]] <-
          self$`suggestion_id`
      }
      if (!is.null(self$`prompt_id`)) {
        CatalogPromptSuggestionsAcceptResponseAcceptedInnerObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`collection_id`)) {
        CatalogPromptSuggestionsAcceptResponseAcceptedInnerObject[["collection_id"]] <-
          self$`collection_id`
      }
      return(CatalogPromptSuggestionsAcceptResponseAcceptedInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CatalogPromptSuggestionsAcceptResponseAcceptedInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestionsAcceptResponseAcceptedInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`suggestion_id`)) {
        self$`suggestion_id` <- this_object$`suggestion_id`
      }
      if (!is.null(this_object$`prompt_id`)) {
        self$`prompt_id` <- this_object$`prompt_id`
      }
      if (!is.null(this_object$`collection_id`)) {
        self$`collection_id` <- this_object$`collection_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CatalogPromptSuggestionsAcceptResponseAcceptedInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CatalogPromptSuggestionsAcceptResponseAcceptedInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestionsAcceptResponseAcceptedInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`suggestion_id` <- this_object$`suggestion_id`
      self$`prompt_id` <- this_object$`prompt_id`
      self$`collection_id` <- this_object$`collection_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CatalogPromptSuggestionsAcceptResponseAcceptedInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `suggestion_id`
      if (!is.null(input_json$`suggestion_id`)) {
        if (!(is.numeric(input_json$`suggestion_id`) && length(input_json$`suggestion_id`) == 1)) {
          stop(paste("Error! Invalid data for `suggestion_id`. Must be an integer:", input_json$`suggestion_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsAcceptResponseAcceptedInner: the required field `suggestion_id` is missing."))
      }
      # check the required field `prompt_id`
      if (!is.null(input_json$`prompt_id`)) {
        if (!(is.numeric(input_json$`prompt_id`) && length(input_json$`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", input_json$`prompt_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsAcceptResponseAcceptedInner: the required field `prompt_id` is missing."))
      }
      # check the required field `collection_id`
      if (!is.null(input_json$`collection_id`)) {
        if (!(is.numeric(input_json$`collection_id`) && length(input_json$`collection_id`) == 1)) {
          stop(paste("Error! Invalid data for `collection_id`. Must be an integer:", input_json$`collection_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsAcceptResponseAcceptedInner: the required field `collection_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CatalogPromptSuggestionsAcceptResponseAcceptedInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `suggestion_id` is null
      if (is.null(self$`suggestion_id`)) {
        return(FALSE)
      }

      # check if the required `prompt_id` is null
      if (is.null(self$`prompt_id`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `suggestion_id` is null
      if (is.null(self$`suggestion_id`)) {
        invalid_fields["suggestion_id"] <- "Non-nullable required field `suggestion_id` cannot be null."
      }

      # check if the required `prompt_id` is null
      if (is.null(self$`prompt_id`)) {
        invalid_fields["prompt_id"] <- "Non-nullable required field `prompt_id` cannot be null."
      }

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
# CatalogPromptSuggestionsAcceptResponseAcceptedInner$unlock()
#
## Below is an example to define the print function
# CatalogPromptSuggestionsAcceptResponseAcceptedInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CatalogPromptSuggestionsAcceptResponseAcceptedInner$lock()

