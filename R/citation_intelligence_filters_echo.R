#' Create a new CitationIntelligenceFiltersEcho
#'
#' @description
#' The filters the response was computed with, as the server resolved them. A filter that was not given is left out.
#'
#' @docType class
#' @title CitationIntelligenceFiltersEcho
#' @description CitationIntelligenceFiltersEcho Class
#' @format An \code{R6Class} generator object
#' @field model  character [optional]
#' @field collection_id The collection_id parameter as sent (one id or a comma-separated list) character [optional]
#' @field collection_ids  list(integer) [optional]
#' @field domains Lowercased domains list(character) [optional]
#' @field prompt The prompt id filter integer [optional]
#' @field brand_kind  character [optional]
#' @field country_code  character [optional]
#' @field language_code  character [optional]
#' @field from As given character [optional]
#' @field to As given character [optional]
#' @field key The group key, as matched character [optional]
#' @field query  character [optional]
#' @field source_type  character [optional]
#' @field sentiment  character [optional]
#' @field content_gap  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitationIntelligenceFiltersEcho <- R6::R6Class(
  "CitationIntelligenceFiltersEcho",
  public = list(
    `model` = NULL,
    `collection_id` = NULL,
    `collection_ids` = NULL,
    `domains` = NULL,
    `prompt` = NULL,
    `brand_kind` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,
    `from` = NULL,
    `to` = NULL,
    `key` = NULL,
    `query` = NULL,
    `source_type` = NULL,
    `sentiment` = NULL,
    `content_gap` = NULL,

    #' @description
    #' Initialize a new CitationIntelligenceFiltersEcho class.
    #'
    #' @param model model
    #' @param collection_id The collection_id parameter as sent (one id or a comma-separated list)
    #' @param collection_ids collection_ids
    #' @param domains Lowercased domains
    #' @param prompt The prompt id filter
    #' @param brand_kind brand_kind
    #' @param country_code country_code
    #' @param language_code language_code
    #' @param from As given
    #' @param to As given
    #' @param key The group key, as matched
    #' @param query query
    #' @param source_type source_type
    #' @param sentiment sentiment
    #' @param content_gap content_gap
    #' @param ... Other optional arguments.
    initialize = function(`model` = NULL, `collection_id` = NULL, `collection_ids` = NULL, `domains` = NULL, `prompt` = NULL, `brand_kind` = NULL, `country_code` = NULL, `language_code` = NULL, `from` = NULL, `to` = NULL, `key` = NULL, `query` = NULL, `source_type` = NULL, `sentiment` = NULL, `content_gap` = NULL, ...) {
      if (!is.null(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!is.null(`collection_id`)) {
        if (!(is.character(`collection_id`) && length(`collection_id`) == 1)) {
          stop(paste("Error! Invalid data for `collection_id`. Must be a string:", `collection_id`))
        }
        self$`collection_id` <- `collection_id`
      }
      if (!is.null(`collection_ids`)) {
        stopifnot(is.vector(`collection_ids`), length(`collection_ids`) != 0)
        sapply(`collection_ids`, function(x) stopifnot(is.character(x)))
        self$`collection_ids` <- `collection_ids`
      }
      if (!is.null(`domains`)) {
        stopifnot(is.vector(`domains`), length(`domains`) != 0)
        sapply(`domains`, function(x) stopifnot(is.character(x)))
        self$`domains` <- `domains`
      }
      if (!is.null(`prompt`)) {
        if (!(is.numeric(`prompt`) && length(`prompt`) == 1)) {
          stop(paste("Error! Invalid data for `prompt`. Must be an integer:", `prompt`))
        }
        self$`prompt` <- `prompt`
      }
      if (!is.null(`brand_kind`)) {
        if (!(is.character(`brand_kind`) && length(`brand_kind`) == 1)) {
          stop(paste("Error! Invalid data for `brand_kind`. Must be a string:", `brand_kind`))
        }
        self$`brand_kind` <- `brand_kind`
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
      if (!is.null(`from`)) {
        if (!(is.character(`from`) && length(`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!is.null(`to`)) {
        if (!(is.character(`to`) && length(`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!is.null(`key`)) {
        if (!(is.character(`key`) && length(`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", `key`))
        }
        self$`key` <- `key`
      }
      if (!is.null(`query`)) {
        if (!(is.character(`query`) && length(`query`) == 1)) {
          stop(paste("Error! Invalid data for `query`. Must be a string:", `query`))
        }
        self$`query` <- `query`
      }
      if (!is.null(`source_type`)) {
        if (!(is.character(`source_type`) && length(`source_type`) == 1)) {
          stop(paste("Error! Invalid data for `source_type`. Must be a string:", `source_type`))
        }
        self$`source_type` <- `source_type`
      }
      if (!is.null(`sentiment`)) {
        if (!(is.character(`sentiment`) && length(`sentiment`) == 1)) {
          stop(paste("Error! Invalid data for `sentiment`. Must be a string:", `sentiment`))
        }
        self$`sentiment` <- `sentiment`
      }
      if (!is.null(`content_gap`)) {
        if (!(is.character(`content_gap`) && length(`content_gap`) == 1)) {
          stop(paste("Error! Invalid data for `content_gap`. Must be a string:", `content_gap`))
        }
        self$`content_gap` <- `content_gap`
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
    #' @return CitationIntelligenceFiltersEcho as a base R list.
    #' @examples
    #' # convert array of CitationIntelligenceFiltersEcho (x) to a data frame
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
    #' Convert CitationIntelligenceFiltersEcho to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitationIntelligenceFiltersEchoObject <- list()
      if (!is.null(self$`model`)) {
        CitationIntelligenceFiltersEchoObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`collection_id`)) {
        CitationIntelligenceFiltersEchoObject[["collection_id"]] <-
          self$`collection_id`
      }
      if (!is.null(self$`collection_ids`)) {
        CitationIntelligenceFiltersEchoObject[["collection_ids"]] <-
          self$`collection_ids`
      }
      if (!is.null(self$`domains`)) {
        CitationIntelligenceFiltersEchoObject[["domains"]] <-
          self$`domains`
      }
      if (!is.null(self$`prompt`)) {
        CitationIntelligenceFiltersEchoObject[["prompt"]] <-
          self$`prompt`
      }
      if (!is.null(self$`brand_kind`)) {
        CitationIntelligenceFiltersEchoObject[["brand_kind"]] <-
          self$`brand_kind`
      }
      if (!is.null(self$`country_code`)) {
        CitationIntelligenceFiltersEchoObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        CitationIntelligenceFiltersEchoObject[["language_code"]] <-
          self$`language_code`
      }
      if (!is.null(self$`from`)) {
        CitationIntelligenceFiltersEchoObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        CitationIntelligenceFiltersEchoObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`key`)) {
        CitationIntelligenceFiltersEchoObject[["key"]] <-
          self$`key`
      }
      if (!is.null(self$`query`)) {
        CitationIntelligenceFiltersEchoObject[["query"]] <-
          self$`query`
      }
      if (!is.null(self$`source_type`)) {
        CitationIntelligenceFiltersEchoObject[["source_type"]] <-
          self$`source_type`
      }
      if (!is.null(self$`sentiment`)) {
        CitationIntelligenceFiltersEchoObject[["sentiment"]] <-
          self$`sentiment`
      }
      if (!is.null(self$`content_gap`)) {
        CitationIntelligenceFiltersEchoObject[["content_gap"]] <-
          self$`content_gap`
      }
      return(CitationIntelligenceFiltersEchoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationIntelligenceFiltersEcho
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationIntelligenceFiltersEcho
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`collection_id`)) {
        self$`collection_id` <- this_object$`collection_id`
      }
      if (!is.null(this_object$`collection_ids`)) {
        self$`collection_ids` <- ApiClient$new()$deserializeObj(this_object$`collection_ids`, "array[integer]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`domains`)) {
        self$`domains` <- ApiClient$new()$deserializeObj(this_object$`domains`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`prompt`)) {
        self$`prompt` <- this_object$`prompt`
      }
      if (!is.null(this_object$`brand_kind`)) {
        self$`brand_kind` <- this_object$`brand_kind`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`key`)) {
        self$`key` <- this_object$`key`
      }
      if (!is.null(this_object$`query`)) {
        self$`query` <- this_object$`query`
      }
      if (!is.null(this_object$`source_type`)) {
        self$`source_type` <- this_object$`source_type`
      }
      if (!is.null(this_object$`sentiment`)) {
        self$`sentiment` <- this_object$`sentiment`
      }
      if (!is.null(this_object$`content_gap`)) {
        self$`content_gap` <- this_object$`content_gap`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CitationIntelligenceFiltersEcho in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationIntelligenceFiltersEcho
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationIntelligenceFiltersEcho
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`model` <- this_object$`model`
      self$`collection_id` <- this_object$`collection_id`
      self$`collection_ids` <- ApiClient$new()$deserializeObj(this_object$`collection_ids`, "array[integer]", loadNamespace("llmpulse"))
      self$`domains` <- ApiClient$new()$deserializeObj(this_object$`domains`, "array[character]", loadNamespace("llmpulse"))
      self$`prompt` <- this_object$`prompt`
      self$`brand_kind` <- this_object$`brand_kind`
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`key` <- this_object$`key`
      self$`query` <- this_object$`query`
      self$`source_type` <- this_object$`source_type`
      self$`sentiment` <- this_object$`sentiment`
      self$`content_gap` <- this_object$`content_gap`
      self
    },

    #' @description
    #' Validate JSON input with respect to CitationIntelligenceFiltersEcho and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitationIntelligenceFiltersEcho
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
# CitationIntelligenceFiltersEcho$unlock()
#
## Below is an example to define the print function
# CitationIntelligenceFiltersEcho$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitationIntelligenceFiltersEcho$lock()

