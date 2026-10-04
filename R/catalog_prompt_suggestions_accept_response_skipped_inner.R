#' Create a new CatalogPromptSuggestionsAcceptResponseSkippedInner
#'
#' @description
#' CatalogPromptSuggestionsAcceptResponseSkippedInner Class
#'
#' @docType class
#' @title CatalogPromptSuggestionsAcceptResponseSkippedInner
#' @description CatalogPromptSuggestionsAcceptResponseSkippedInner Class
#' @format An \code{R6Class} generator object
#' @field suggestion_id  integer
#' @field reason accepted or rejected (the suggestion was no longer pending), or pending_deletion character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CatalogPromptSuggestionsAcceptResponseSkippedInner <- R6::R6Class(
  "CatalogPromptSuggestionsAcceptResponseSkippedInner",
  public = list(
    `suggestion_id` = NULL,
    `reason` = NULL,

    #' @description
    #' Initialize a new CatalogPromptSuggestionsAcceptResponseSkippedInner class.
    #'
    #' @param suggestion_id suggestion_id
    #' @param reason accepted or rejected (the suggestion was no longer pending), or pending_deletion
    #' @param ... Other optional arguments.
    initialize = function(`suggestion_id`, `reason`, ...) {
      if (!missing(`suggestion_id`)) {
        if (!(is.numeric(`suggestion_id`) && length(`suggestion_id`) == 1)) {
          stop(paste("Error! Invalid data for `suggestion_id`. Must be an integer:", `suggestion_id`))
        }
        self$`suggestion_id` <- `suggestion_id`
      }
      if (!missing(`reason`)) {
        if (!(is.character(`reason`) && length(`reason`) == 1)) {
          stop(paste("Error! Invalid data for `reason`. Must be a string:", `reason`))
        }
        self$`reason` <- `reason`
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
    #' @return CatalogPromptSuggestionsAcceptResponseSkippedInner as a base R list.
    #' @examples
    #' # convert array of CatalogPromptSuggestionsAcceptResponseSkippedInner (x) to a data frame
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
    #' Convert CatalogPromptSuggestionsAcceptResponseSkippedInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CatalogPromptSuggestionsAcceptResponseSkippedInnerObject <- list()
      if (!is.null(self$`suggestion_id`)) {
        CatalogPromptSuggestionsAcceptResponseSkippedInnerObject[["suggestion_id"]] <-
          self$`suggestion_id`
      }
      if (!is.null(self$`reason`)) {
        CatalogPromptSuggestionsAcceptResponseSkippedInnerObject[["reason"]] <-
          self$`reason`
      }
      return(CatalogPromptSuggestionsAcceptResponseSkippedInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CatalogPromptSuggestionsAcceptResponseSkippedInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestionsAcceptResponseSkippedInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`suggestion_id`)) {
        self$`suggestion_id` <- this_object$`suggestion_id`
      }
      if (!is.null(this_object$`reason`)) {
        self$`reason` <- this_object$`reason`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CatalogPromptSuggestionsAcceptResponseSkippedInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CatalogPromptSuggestionsAcceptResponseSkippedInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestionsAcceptResponseSkippedInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`suggestion_id` <- this_object$`suggestion_id`
      self$`reason` <- this_object$`reason`
      self
    },

    #' @description
    #' Validate JSON input with respect to CatalogPromptSuggestionsAcceptResponseSkippedInner and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsAcceptResponseSkippedInner: the required field `suggestion_id` is missing."))
      }
      # check the required field `reason`
      if (!is.null(input_json$`reason`)) {
        if (!(is.character(input_json$`reason`) && length(input_json$`reason`) == 1)) {
          stop(paste("Error! Invalid data for `reason`. Must be a string:", input_json$`reason`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsAcceptResponseSkippedInner: the required field `reason` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CatalogPromptSuggestionsAcceptResponseSkippedInner
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

      # check if the required `reason` is null
      if (is.null(self$`reason`)) {
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

      # check if the required `reason` is null
      if (is.null(self$`reason`)) {
        invalid_fields["reason"] <- "Non-nullable required field `reason` cannot be null."
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
# CatalogPromptSuggestionsAcceptResponseSkippedInner$unlock()
#
## Below is an example to define the print function
# CatalogPromptSuggestionsAcceptResponseSkippedInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CatalogPromptSuggestionsAcceptResponseSkippedInner$lock()

