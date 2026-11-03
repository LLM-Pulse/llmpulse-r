#' Create a new AiModelInsightsFiltersEcho
#'
#' @description
#' The filters the summary was computed with, as the server resolved them. A filter that was not given is left out, except granularity and competitors.
#'
#' @docType class
#' @title AiModelInsightsFiltersEcho
#' @description AiModelInsightsFiltersEcho Class
#' @format An \code{R6Class} generator object
#' @field from  character [optional]
#' @field to  character [optional]
#' @field granularity day, week or month; day when not given character [optional]
#' @field country_code Comma-separated country codes character [optional]
#' @field language_code Comma-separated language codes character [optional]
#' @field collection_id Comma-separated collection ids character [optional]
#' @field prompt_type Comma-separated prompt types character [optional]
#' @field brand_kind  character [optional]
#' @field competitors Competitor ids from the competitors parameter; empty when it was not given list(integer) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelInsightsFiltersEcho <- R6::R6Class(
  "AiModelInsightsFiltersEcho",
  public = list(
    `from` = NULL,
    `to` = NULL,
    `granularity` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,
    `collection_id` = NULL,
    `prompt_type` = NULL,
    `brand_kind` = NULL,
    `competitors` = NULL,

    #' @description
    #' Initialize a new AiModelInsightsFiltersEcho class.
    #'
    #' @param from from
    #' @param to to
    #' @param granularity day, week or month; day when not given
    #' @param country_code Comma-separated country codes
    #' @param language_code Comma-separated language codes
    #' @param collection_id Comma-separated collection ids
    #' @param prompt_type Comma-separated prompt types
    #' @param brand_kind brand_kind
    #' @param competitors Competitor ids from the competitors parameter; empty when it was not given
    #' @param ... Other optional arguments.
    initialize = function(`from` = NULL, `to` = NULL, `granularity` = NULL, `country_code` = NULL, `language_code` = NULL, `collection_id` = NULL, `prompt_type` = NULL, `brand_kind` = NULL, `competitors` = NULL, ...) {
      if (!is.null(`from`)) {
        if (!is.character(`from`)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!is.null(`to`)) {
        if (!is.character(`to`)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!is.null(`granularity`)) {
        if (!(is.character(`granularity`) && length(`granularity`) == 1)) {
          stop(paste("Error! Invalid data for `granularity`. Must be a string:", `granularity`))
        }
        self$`granularity` <- `granularity`
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
      if (!is.null(`collection_id`)) {
        if (!(is.character(`collection_id`) && length(`collection_id`) == 1)) {
          stop(paste("Error! Invalid data for `collection_id`. Must be a string:", `collection_id`))
        }
        self$`collection_id` <- `collection_id`
      }
      if (!is.null(`prompt_type`)) {
        if (!(is.character(`prompt_type`) && length(`prompt_type`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_type`. Must be a string:", `prompt_type`))
        }
        self$`prompt_type` <- `prompt_type`
      }
      if (!is.null(`brand_kind`)) {
        if (!(is.character(`brand_kind`) && length(`brand_kind`) == 1)) {
          stop(paste("Error! Invalid data for `brand_kind`. Must be a string:", `brand_kind`))
        }
        self$`brand_kind` <- `brand_kind`
      }
      if (!is.null(`competitors`)) {
        stopifnot(is.vector(`competitors`), length(`competitors`) != 0)
        sapply(`competitors`, function(x) stopifnot(is.character(x)))
        self$`competitors` <- `competitors`
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
    #' @return AiModelInsightsFiltersEcho as a base R list.
    #' @examples
    #' # convert array of AiModelInsightsFiltersEcho (x) to a data frame
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
    #' Convert AiModelInsightsFiltersEcho to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelInsightsFiltersEchoObject <- list()
      if (!is.null(self$`from`)) {
        AiModelInsightsFiltersEchoObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        AiModelInsightsFiltersEchoObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`granularity`)) {
        AiModelInsightsFiltersEchoObject[["granularity"]] <-
          self$`granularity`
      }
      if (!is.null(self$`country_code`)) {
        AiModelInsightsFiltersEchoObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        AiModelInsightsFiltersEchoObject[["language_code"]] <-
          self$`language_code`
      }
      if (!is.null(self$`collection_id`)) {
        AiModelInsightsFiltersEchoObject[["collection_id"]] <-
          self$`collection_id`
      }
      if (!is.null(self$`prompt_type`)) {
        AiModelInsightsFiltersEchoObject[["prompt_type"]] <-
          self$`prompt_type`
      }
      if (!is.null(self$`brand_kind`)) {
        AiModelInsightsFiltersEchoObject[["brand_kind"]] <-
          self$`brand_kind`
      }
      if (!is.null(self$`competitors`)) {
        AiModelInsightsFiltersEchoObject[["competitors"]] <-
          self$`competitors`
      }
      return(AiModelInsightsFiltersEchoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelInsightsFiltersEcho
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsFiltersEcho
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`granularity`)) {
        self$`granularity` <- this_object$`granularity`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      if (!is.null(this_object$`collection_id`)) {
        self$`collection_id` <- this_object$`collection_id`
      }
      if (!is.null(this_object$`prompt_type`)) {
        self$`prompt_type` <- this_object$`prompt_type`
      }
      if (!is.null(this_object$`brand_kind`)) {
        self$`brand_kind` <- this_object$`brand_kind`
      }
      if (!is.null(this_object$`competitors`)) {
        self$`competitors` <- ApiClient$new()$deserializeObj(this_object$`competitors`, "array[integer]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelInsightsFiltersEcho in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelInsightsFiltersEcho
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsFiltersEcho
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`granularity` <- this_object$`granularity`
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self$`collection_id` <- this_object$`collection_id`
      self$`prompt_type` <- this_object$`prompt_type`
      self$`brand_kind` <- this_object$`brand_kind`
      self$`competitors` <- ApiClient$new()$deserializeObj(this_object$`competitors`, "array[integer]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelInsightsFiltersEcho and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelInsightsFiltersEcho
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
# AiModelInsightsFiltersEcho$unlock()
#
## Below is an example to define the print function
# AiModelInsightsFiltersEcho$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelInsightsFiltersEcho$lock()

