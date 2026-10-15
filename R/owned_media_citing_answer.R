#' Create a new OwnedMediaCitingAnswer
#'
#' @description
#' OwnedMediaCitingAnswer Class
#'
#' @docType class
#' @title OwnedMediaCitingAnswer
#' @description OwnedMediaCitingAnswer Class
#' @format An \code{R6Class} generator object
#' @field answer_id The answer (prompt execution) id, readable with GET /answers/{id} integer [optional]
#' @field prompt_id  integer [optional]
#' @field prompt_text  character [optional]
#' @field model  character [optional]
#' @field country_code  character [optional]
#' @field language_code  character [optional]
#' @field executed_at  character [optional]
#' @field excerpt The start of the answer as plain text (at most 300 characters) character [optional]
#' @field app_url The answer in the app character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaCitingAnswer <- R6::R6Class(
  "OwnedMediaCitingAnswer",
  public = list(
    `answer_id` = NULL,
    `prompt_id` = NULL,
    `prompt_text` = NULL,
    `model` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,
    `executed_at` = NULL,
    `excerpt` = NULL,
    `app_url` = NULL,

    #' @description
    #' Initialize a new OwnedMediaCitingAnswer class.
    #'
    #' @param answer_id The answer (prompt execution) id, readable with GET /answers/{id}
    #' @param prompt_id prompt_id
    #' @param prompt_text prompt_text
    #' @param model model
    #' @param country_code country_code
    #' @param language_code language_code
    #' @param executed_at executed_at
    #' @param excerpt The start of the answer as plain text (at most 300 characters)
    #' @param app_url The answer in the app
    #' @param ... Other optional arguments.
    initialize = function(`answer_id` = NULL, `prompt_id` = NULL, `prompt_text` = NULL, `model` = NULL, `country_code` = NULL, `language_code` = NULL, `executed_at` = NULL, `excerpt` = NULL, `app_url` = NULL, ...) {
      if (!is.null(`answer_id`)) {
        if (!(is.numeric(`answer_id`) && length(`answer_id`) == 1)) {
          stop(paste("Error! Invalid data for `answer_id`. Must be an integer:", `answer_id`))
        }
        self$`answer_id` <- `answer_id`
      }
      if (!is.null(`prompt_id`)) {
        if (!(is.numeric(`prompt_id`) && length(`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", `prompt_id`))
        }
        self$`prompt_id` <- `prompt_id`
      }
      if (!is.null(`prompt_text`)) {
        if (!(is.character(`prompt_text`) && length(`prompt_text`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_text`. Must be a string:", `prompt_text`))
        }
        self$`prompt_text` <- `prompt_text`
      }
      if (!is.null(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
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
      if (!is.null(`executed_at`)) {
        if (!is.character(`executed_at`)) {
          stop(paste("Error! Invalid data for `executed_at`. Must be a string:", `executed_at`))
        }
        self$`executed_at` <- `executed_at`
      }
      if (!is.null(`excerpt`)) {
        if (!(is.character(`excerpt`) && length(`excerpt`) == 1)) {
          stop(paste("Error! Invalid data for `excerpt`. Must be a string:", `excerpt`))
        }
        self$`excerpt` <- `excerpt`
      }
      if (!is.null(`app_url`)) {
        if (!(is.character(`app_url`) && length(`app_url`) == 1)) {
          stop(paste("Error! Invalid data for `app_url`. Must be a string:", `app_url`))
        }
        self$`app_url` <- `app_url`
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
    #' @return OwnedMediaCitingAnswer as a base R list.
    #' @examples
    #' # convert array of OwnedMediaCitingAnswer (x) to a data frame
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
    #' Convert OwnedMediaCitingAnswer to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaCitingAnswerObject <- list()
      if (!is.null(self$`answer_id`)) {
        OwnedMediaCitingAnswerObject[["answer_id"]] <-
          self$`answer_id`
      }
      if (!is.null(self$`prompt_id`)) {
        OwnedMediaCitingAnswerObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`prompt_text`)) {
        OwnedMediaCitingAnswerObject[["prompt_text"]] <-
          self$`prompt_text`
      }
      if (!is.null(self$`model`)) {
        OwnedMediaCitingAnswerObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`country_code`)) {
        OwnedMediaCitingAnswerObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        OwnedMediaCitingAnswerObject[["language_code"]] <-
          self$`language_code`
      }
      if (!is.null(self$`executed_at`)) {
        OwnedMediaCitingAnswerObject[["executed_at"]] <-
          self$`executed_at`
      }
      if (!is.null(self$`excerpt`)) {
        OwnedMediaCitingAnswerObject[["excerpt"]] <-
          self$`excerpt`
      }
      if (!is.null(self$`app_url`)) {
        OwnedMediaCitingAnswerObject[["app_url"]] <-
          self$`app_url`
      }
      return(OwnedMediaCitingAnswerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaCitingAnswer
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaCitingAnswer
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`answer_id`)) {
        self$`answer_id` <- this_object$`answer_id`
      }
      if (!is.null(this_object$`prompt_id`)) {
        self$`prompt_id` <- this_object$`prompt_id`
      }
      if (!is.null(this_object$`prompt_text`)) {
        self$`prompt_text` <- this_object$`prompt_text`
      }
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      if (!is.null(this_object$`executed_at`)) {
        self$`executed_at` <- this_object$`executed_at`
      }
      if (!is.null(this_object$`excerpt`)) {
        self$`excerpt` <- this_object$`excerpt`
      }
      if (!is.null(this_object$`app_url`)) {
        self$`app_url` <- this_object$`app_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaCitingAnswer in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaCitingAnswer
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaCitingAnswer
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`answer_id` <- this_object$`answer_id`
      self$`prompt_id` <- this_object$`prompt_id`
      self$`prompt_text` <- this_object$`prompt_text`
      self$`model` <- this_object$`model`
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self$`executed_at` <- this_object$`executed_at`
      self$`excerpt` <- this_object$`excerpt`
      self$`app_url` <- this_object$`app_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaCitingAnswer and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaCitingAnswer
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
# OwnedMediaCitingAnswer$unlock()
#
## Below is an example to define the print function
# OwnedMediaCitingAnswer$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaCitingAnswer$lock()

