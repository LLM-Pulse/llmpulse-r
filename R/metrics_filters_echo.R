#' Create a new MetricsFiltersEcho
#'
#' @description
#' The filters the response was computed with, as the server resolved them. Each endpoint echoes only the keys it reads; a filter that was not given comes back null (or an empty list).
#'
#' @docType class
#' @title MetricsFiltersEcho
#' @description MetricsFiltersEcho Class
#' @format An \code{R6Class} generator object
#' @field metrics Requested metrics after alias resolution (mention_rate is echoed as visibility) list(character) [optional]
#' @field granularity day, week or month character [optional]
#' @field model The model filter, or null when absent or not enabled for the account character [optional]
#' @field collection_id The collection_id parameter as sent (one id or a comma-separated list) character [optional]
#' @field collection_ids  list(integer) [optional]
#' @field domains  list(character) [optional]
#' @field country_code Comma-separated country codes character [optional]
#' @field language_code Comma-separated language codes character [optional]
#' @field prompt The prompt id filter integer [optional]
#' @field prompt_type Comma-separated prompt types character [optional]
#' @field brand_kind  character [optional]
#' @field competitors Competitor ids from the competitors parameter; empty when it was not given list(integer) [optional]
#' @field include_project  character [optional]
#' @field query Only present when a query filter was given character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MetricsFiltersEcho <- R6::R6Class(
  "MetricsFiltersEcho",
  public = list(
    `metrics` = NULL,
    `granularity` = NULL,
    `model` = NULL,
    `collection_id` = NULL,
    `collection_ids` = NULL,
    `domains` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,
    `prompt` = NULL,
    `prompt_type` = NULL,
    `brand_kind` = NULL,
    `competitors` = NULL,
    `include_project` = NULL,
    `query` = NULL,

    #' @description
    #' Initialize a new MetricsFiltersEcho class.
    #'
    #' @param metrics Requested metrics after alias resolution (mention_rate is echoed as visibility)
    #' @param granularity day, week or month
    #' @param model The model filter, or null when absent or not enabled for the account
    #' @param collection_id The collection_id parameter as sent (one id or a comma-separated list)
    #' @param collection_ids collection_ids
    #' @param domains domains
    #' @param country_code Comma-separated country codes
    #' @param language_code Comma-separated language codes
    #' @param prompt The prompt id filter
    #' @param prompt_type Comma-separated prompt types
    #' @param brand_kind brand_kind
    #' @param competitors Competitor ids from the competitors parameter; empty when it was not given
    #' @param include_project include_project
    #' @param query Only present when a query filter was given
    #' @param ... Other optional arguments.
    initialize = function(`metrics` = NULL, `granularity` = NULL, `model` = NULL, `collection_id` = NULL, `collection_ids` = NULL, `domains` = NULL, `country_code` = NULL, `language_code` = NULL, `prompt` = NULL, `prompt_type` = NULL, `brand_kind` = NULL, `competitors` = NULL, `include_project` = NULL, `query` = NULL, ...) {
      if (!is.null(`metrics`)) {
        stopifnot(is.vector(`metrics`), length(`metrics`) != 0)
        sapply(`metrics`, function(x) stopifnot(is.character(x)))
        self$`metrics` <- `metrics`
      }
      if (!is.null(`granularity`)) {
        if (!(is.character(`granularity`) && length(`granularity`) == 1)) {
          stop(paste("Error! Invalid data for `granularity`. Must be a string:", `granularity`))
        }
        self$`granularity` <- `granularity`
      }
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
      if (!is.null(`prompt`)) {
        if (!(is.numeric(`prompt`) && length(`prompt`) == 1)) {
          stop(paste("Error! Invalid data for `prompt`. Must be an integer:", `prompt`))
        }
        self$`prompt` <- `prompt`
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
      if (!is.null(`include_project`)) {
        if (!(is.logical(`include_project`) && length(`include_project`) == 1)) {
          stop(paste("Error! Invalid data for `include_project`. Must be a boolean:", `include_project`))
        }
        self$`include_project` <- `include_project`
      }
      if (!is.null(`query`)) {
        if (!(is.character(`query`) && length(`query`) == 1)) {
          stop(paste("Error! Invalid data for `query`. Must be a string:", `query`))
        }
        self$`query` <- `query`
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
    #' @return MetricsFiltersEcho as a base R list.
    #' @examples
    #' # convert array of MetricsFiltersEcho (x) to a data frame
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
    #' Convert MetricsFiltersEcho to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MetricsFiltersEchoObject <- list()
      if (!is.null(self$`metrics`)) {
        MetricsFiltersEchoObject[["metrics"]] <-
          self$`metrics`
      }
      if (!is.null(self$`granularity`)) {
        MetricsFiltersEchoObject[["granularity"]] <-
          self$`granularity`
      }
      if (!is.null(self$`model`)) {
        MetricsFiltersEchoObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`collection_id`)) {
        MetricsFiltersEchoObject[["collection_id"]] <-
          self$`collection_id`
      }
      if (!is.null(self$`collection_ids`)) {
        MetricsFiltersEchoObject[["collection_ids"]] <-
          self$`collection_ids`
      }
      if (!is.null(self$`domains`)) {
        MetricsFiltersEchoObject[["domains"]] <-
          self$`domains`
      }
      if (!is.null(self$`country_code`)) {
        MetricsFiltersEchoObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        MetricsFiltersEchoObject[["language_code"]] <-
          self$`language_code`
      }
      if (!is.null(self$`prompt`)) {
        MetricsFiltersEchoObject[["prompt"]] <-
          self$`prompt`
      }
      if (!is.null(self$`prompt_type`)) {
        MetricsFiltersEchoObject[["prompt_type"]] <-
          self$`prompt_type`
      }
      if (!is.null(self$`brand_kind`)) {
        MetricsFiltersEchoObject[["brand_kind"]] <-
          self$`brand_kind`
      }
      if (!is.null(self$`competitors`)) {
        MetricsFiltersEchoObject[["competitors"]] <-
          self$`competitors`
      }
      if (!is.null(self$`include_project`)) {
        MetricsFiltersEchoObject[["include_project"]] <-
          self$`include_project`
      }
      if (!is.null(self$`query`)) {
        MetricsFiltersEchoObject[["query"]] <-
          self$`query`
      }
      return(MetricsFiltersEchoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MetricsFiltersEcho
    #'
    #' @param input_json the JSON input
    #' @return the instance of MetricsFiltersEcho
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`metrics`)) {
        self$`metrics` <- ApiClient$new()$deserializeObj(this_object$`metrics`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`granularity`)) {
        self$`granularity` <- this_object$`granularity`
      }
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
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      if (!is.null(this_object$`prompt`)) {
        self$`prompt` <- this_object$`prompt`
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
      if (!is.null(this_object$`include_project`)) {
        self$`include_project` <- this_object$`include_project`
      }
      if (!is.null(this_object$`query`)) {
        self$`query` <- this_object$`query`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MetricsFiltersEcho in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MetricsFiltersEcho
    #'
    #' @param input_json the JSON input
    #' @return the instance of MetricsFiltersEcho
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`metrics` <- ApiClient$new()$deserializeObj(this_object$`metrics`, "array[character]", loadNamespace("llmpulse"))
      self$`granularity` <- this_object$`granularity`
      self$`model` <- this_object$`model`
      self$`collection_id` <- this_object$`collection_id`
      self$`collection_ids` <- ApiClient$new()$deserializeObj(this_object$`collection_ids`, "array[integer]", loadNamespace("llmpulse"))
      self$`domains` <- ApiClient$new()$deserializeObj(this_object$`domains`, "array[character]", loadNamespace("llmpulse"))
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self$`prompt` <- this_object$`prompt`
      self$`prompt_type` <- this_object$`prompt_type`
      self$`brand_kind` <- this_object$`brand_kind`
      self$`competitors` <- ApiClient$new()$deserializeObj(this_object$`competitors`, "array[integer]", loadNamespace("llmpulse"))
      self$`include_project` <- this_object$`include_project`
      self$`query` <- this_object$`query`
      self
    },

    #' @description
    #' Validate JSON input with respect to MetricsFiltersEcho and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MetricsFiltersEcho
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
# MetricsFiltersEcho$unlock()
#
## Below is an example to define the print function
# MetricsFiltersEcho$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MetricsFiltersEcho$lock()

