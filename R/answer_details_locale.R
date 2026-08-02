#' Create a new AnswerDetailsLocale
#'
#' @description
#' AnswerDetailsLocale Class
#'
#' @docType class
#' @title AnswerDetailsLocale
#' @description AnswerDetailsLocale Class
#' @format An \code{R6Class} generator object
#' @field country_code  character [optional]
#' @field language_code  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnswerDetailsLocale <- R6::R6Class(
  "AnswerDetailsLocale",
  public = list(
    `country_code` = NULL,
    `language_code` = NULL,

    #' @description
    #' Initialize a new AnswerDetailsLocale class.
    #'
    #' @param country_code country_code
    #' @param language_code language_code
    #' @param ... Other optional arguments.
    initialize = function(`country_code` = NULL, `language_code` = NULL, ...) {
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
    #' @return AnswerDetailsLocale as a base R list.
    #' @examples
    #' # convert array of AnswerDetailsLocale (x) to a data frame
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
    #' Convert AnswerDetailsLocale to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnswerDetailsLocaleObject <- list()
      if (!is.null(self$`country_code`)) {
        AnswerDetailsLocaleObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        AnswerDetailsLocaleObject[["language_code"]] <-
          self$`language_code`
      }
      return(AnswerDetailsLocaleObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AnswerDetailsLocale
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnswerDetailsLocale
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnswerDetailsLocale in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnswerDetailsLocale
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnswerDetailsLocale
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self
    },

    #' @description
    #' Validate JSON input with respect to AnswerDetailsLocale and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnswerDetailsLocale
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
# AnswerDetailsLocale$unlock()
#
## Below is an example to define the print function
# AnswerDetailsLocale$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnswerDetailsLocale$lock()

