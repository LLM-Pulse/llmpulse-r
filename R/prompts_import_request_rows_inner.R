#' Create a new PromptsImportRequestRowsInner
#'
#' @description
#' PromptsImportRequestRowsInner Class
#'
#' @docType class
#' @title PromptsImportRequestRowsInner
#' @description PromptsImportRequestRowsInner Class
#' @format An \code{R6Class} generator object
#' @field prompt  character
#' @field country_code ISO 3166-1 alpha-2 code or country name (default the project country) character [optional]
#' @field language_code ISO language code or language name (default the project language) character [optional]
#' @field tags Tag names for this prompt, created when missing list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptsImportRequestRowsInner <- R6::R6Class(
  "PromptsImportRequestRowsInner",
  public = list(
    `prompt` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,
    `tags` = NULL,

    #' @description
    #' Initialize a new PromptsImportRequestRowsInner class.
    #'
    #' @param prompt prompt
    #' @param country_code ISO 3166-1 alpha-2 code or country name (default the project country)
    #' @param language_code ISO language code or language name (default the project language)
    #' @param tags Tag names for this prompt, created when missing
    #' @param ... Other optional arguments.
    initialize = function(`prompt`, `country_code` = NULL, `language_code` = NULL, `tags` = NULL, ...) {
      if (!missing(`prompt`)) {
        if (!(is.character(`prompt`) && length(`prompt`) == 1)) {
          stop(paste("Error! Invalid data for `prompt`. Must be a string:", `prompt`))
        }
        self$`prompt` <- `prompt`
      }
      if (!is.null(`country_code`)) {
        if (!(is.character(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", `country_code`))
        }
        self$`country_code` <- `country_code`
      }
      if (!is.null(`language_code`)) {
        if (!(is.character(`language_code`) && length(`language_code`) == 1)) {
          stop(paste("Error! Invalid data for `language_code`. Must be a string:", `language_code`))
        }
        self$`language_code` <- `language_code`
      }
      if (!is.null(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
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
    #' @return PromptsImportRequestRowsInner as a base R list.
    #' @examples
    #' # convert array of PromptsImportRequestRowsInner (x) to a data frame
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
    #' Convert PromptsImportRequestRowsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptsImportRequestRowsInnerObject <- list()
      if (!is.null(self$`prompt`)) {
        PromptsImportRequestRowsInnerObject[["prompt"]] <-
          self$`prompt`
      }
      if (!is.null(self$`country_code`)) {
        PromptsImportRequestRowsInnerObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        PromptsImportRequestRowsInnerObject[["language_code"]] <-
          self$`language_code`
      }
      if (!is.null(self$`tags`)) {
        PromptsImportRequestRowsInnerObject[["tags"]] <-
          self$`tags`
      }
      return(PromptsImportRequestRowsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptsImportRequestRowsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptsImportRequestRowsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`prompt`)) {
        self$`prompt` <- this_object$`prompt`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PromptsImportRequestRowsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptsImportRequestRowsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptsImportRequestRowsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`prompt` <- this_object$`prompt`
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptsImportRequestRowsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `prompt`
      if (!is.null(input_json$`prompt`)) {
        if (!(is.character(input_json$`prompt`) && length(input_json$`prompt`) == 1)) {
          stop(paste("Error! Invalid data for `prompt`. Must be a string:", input_json$`prompt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportRequestRowsInner: the required field `prompt` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptsImportRequestRowsInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `prompt` is null
      if (is.null(self$`prompt`)) {
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
      # check if the required `prompt` is null
      if (is.null(self$`prompt`)) {
        invalid_fields["prompt"] <- "Non-nullable required field `prompt` cannot be null."
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
# PromptsImportRequestRowsInner$unlock()
#
## Below is an example to define the print function
# PromptsImportRequestRowsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptsImportRequestRowsInner$lock()

