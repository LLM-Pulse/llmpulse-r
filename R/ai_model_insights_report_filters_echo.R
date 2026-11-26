#' Create a new AiModelInsightsReportFiltersEcho
#'
#' @description
#' The filters a position distribution or AI Overview report was computed with, as the server resolved them. A filter that was not given is left out, except from, to, granularity and competitors.
#'
#' @docType class
#' @title AiModelInsightsReportFiltersEcho
#' @description AiModelInsightsReportFiltersEcho Class
#' @format An \code{R6Class} generator object
#' @field from  character
#' @field to  character
#' @field granularity  character
#' @field country_code Comma-separated country codes character [optional]
#' @field language_code Comma-separated language codes character [optional]
#' @field collection_id Comma-separated collection ids character [optional]
#' @field prompt_type Comma-separated prompt types character [optional]
#' @field brand_kind  character [optional]
#' @field model The model filter; always ai_overview on the AI Overview report character [optional]
#' @field competitors Competitor ids from the competitors parameter; empty when it was not given list(integer)
#' @field brand1 Position distribution only. The id, as a string, of the competitor compared as the first brand; left out for the project brand character [optional]
#' @field brand2 Position distribution only. The id, as a string, of the competitor compared as the second brand, by default the competitor with the most mentions; left out when the project has none to compare character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelInsightsReportFiltersEcho <- R6::R6Class(
  "AiModelInsightsReportFiltersEcho",
  public = list(
    `from` = NULL,
    `to` = NULL,
    `granularity` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,
    `collection_id` = NULL,
    `prompt_type` = NULL,
    `brand_kind` = NULL,
    `model` = NULL,
    `competitors` = NULL,
    `brand1` = NULL,
    `brand2` = NULL,

    #' @description
    #' Initialize a new AiModelInsightsReportFiltersEcho class.
    #'
    #' @param from from
    #' @param to to
    #' @param granularity granularity
    #' @param competitors Competitor ids from the competitors parameter; empty when it was not given
    #' @param country_code Comma-separated country codes
    #' @param language_code Comma-separated language codes
    #' @param collection_id Comma-separated collection ids
    #' @param prompt_type Comma-separated prompt types
    #' @param brand_kind brand_kind
    #' @param model The model filter; always ai_overview on the AI Overview report
    #' @param brand1 Position distribution only. The id, as a string, of the competitor compared as the first brand; left out for the project brand
    #' @param brand2 Position distribution only. The id, as a string, of the competitor compared as the second brand, by default the competitor with the most mentions; left out when the project has none to compare
    #' @param ... Other optional arguments.
    initialize = function(`from`, `to`, `granularity`, `competitors`, `country_code` = NULL, `language_code` = NULL, `collection_id` = NULL, `prompt_type` = NULL, `brand_kind` = NULL, `model` = NULL, `brand1` = NULL, `brand2` = NULL, ...) {
      if (!missing(`from`)) {
        if (!(is.character(`from`) && length(`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!missing(`to`)) {
        if (!(is.character(`to`) && length(`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!missing(`granularity`)) {
        if (!(`granularity` %in% c("day", "week", "month"))) {
          stop(paste("Error! \"", `granularity`, "\" cannot be assigned to `granularity`. Must be \"day\", \"week\", \"month\".", sep = ""))
        }
        if (!(is.character(`granularity`) && length(`granularity`) == 1)) {
          stop(paste("Error! Invalid data for `granularity`. Must be a string:", `granularity`))
        }
        self$`granularity` <- `granularity`
      }
      if (!missing(`competitors`)) {
        stopifnot(is.vector(`competitors`), length(`competitors`) != 0)
        sapply(`competitors`, function(x) stopifnot(is.character(x)))
        self$`competitors` <- `competitors`
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
      if (!is.null(`model`)) {
        if (!(`model` %in% c("chatgpt", "ai_mode", "ai_overview", "perplexity", "gemini", "naver_ai", "baidu_ai", "naver_ai_tab", "qwen", "doubao", "bing_ai_mode", "bing_ai_overview"))) {
          stop(paste("Error! \"", `model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"ai_mode\", \"ai_overview\", \"perplexity\", \"gemini\", \"naver_ai\", \"baidu_ai\", \"naver_ai_tab\", \"qwen\", \"doubao\", \"bing_ai_mode\", \"bing_ai_overview\".", sep = ""))
        }
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!is.null(`brand1`)) {
        if (!(is.character(`brand1`) && length(`brand1`) == 1)) {
          stop(paste("Error! Invalid data for `brand1`. Must be a string:", `brand1`))
        }
        self$`brand1` <- `brand1`
      }
      if (!is.null(`brand2`)) {
        if (!(is.character(`brand2`) && length(`brand2`) == 1)) {
          stop(paste("Error! Invalid data for `brand2`. Must be a string:", `brand2`))
        }
        self$`brand2` <- `brand2`
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
    #' @return AiModelInsightsReportFiltersEcho as a base R list.
    #' @examples
    #' # convert array of AiModelInsightsReportFiltersEcho (x) to a data frame
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
    #' Convert AiModelInsightsReportFiltersEcho to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelInsightsReportFiltersEchoObject <- list()
      if (!is.null(self$`from`)) {
        AiModelInsightsReportFiltersEchoObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        AiModelInsightsReportFiltersEchoObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`granularity`)) {
        AiModelInsightsReportFiltersEchoObject[["granularity"]] <-
          self$`granularity`
      }
      if (!is.null(self$`country_code`)) {
        AiModelInsightsReportFiltersEchoObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        AiModelInsightsReportFiltersEchoObject[["language_code"]] <-
          self$`language_code`
      }
      if (!is.null(self$`collection_id`)) {
        AiModelInsightsReportFiltersEchoObject[["collection_id"]] <-
          self$`collection_id`
      }
      if (!is.null(self$`prompt_type`)) {
        AiModelInsightsReportFiltersEchoObject[["prompt_type"]] <-
          self$`prompt_type`
      }
      if (!is.null(self$`brand_kind`)) {
        AiModelInsightsReportFiltersEchoObject[["brand_kind"]] <-
          self$`brand_kind`
      }
      if (!is.null(self$`model`)) {
        AiModelInsightsReportFiltersEchoObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`competitors`)) {
        AiModelInsightsReportFiltersEchoObject[["competitors"]] <-
          self$`competitors`
      }
      if (!is.null(self$`brand1`)) {
        AiModelInsightsReportFiltersEchoObject[["brand1"]] <-
          self$`brand1`
      }
      if (!is.null(self$`brand2`)) {
        AiModelInsightsReportFiltersEchoObject[["brand2"]] <-
          self$`brand2`
      }
      return(AiModelInsightsReportFiltersEchoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelInsightsReportFiltersEcho
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsReportFiltersEcho
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`granularity`)) {
        if (!is.null(this_object$`granularity`) && !(this_object$`granularity` %in% c("day", "week", "month"))) {
          stop(paste("Error! \"", this_object$`granularity`, "\" cannot be assigned to `granularity`. Must be \"day\", \"week\", \"month\".", sep = ""))
        }
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
      if (!is.null(this_object$`model`)) {
        if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("chatgpt", "ai_mode", "ai_overview", "perplexity", "gemini", "naver_ai", "baidu_ai", "naver_ai_tab", "qwen", "doubao", "bing_ai_mode", "bing_ai_overview"))) {
          stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"ai_mode\", \"ai_overview\", \"perplexity\", \"gemini\", \"naver_ai\", \"baidu_ai\", \"naver_ai_tab\", \"qwen\", \"doubao\", \"bing_ai_mode\", \"bing_ai_overview\".", sep = ""))
        }
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`competitors`)) {
        self$`competitors` <- ApiClient$new()$deserializeObj(this_object$`competitors`, "array[integer]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`brand1`)) {
        self$`brand1` <- this_object$`brand1`
      }
      if (!is.null(this_object$`brand2`)) {
        self$`brand2` <- this_object$`brand2`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelInsightsReportFiltersEcho in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelInsightsReportFiltersEcho
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsReportFiltersEcho
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      if (!is.null(this_object$`granularity`) && !(this_object$`granularity` %in% c("day", "week", "month"))) {
        stop(paste("Error! \"", this_object$`granularity`, "\" cannot be assigned to `granularity`. Must be \"day\", \"week\", \"month\".", sep = ""))
      }
      self$`granularity` <- this_object$`granularity`
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self$`collection_id` <- this_object$`collection_id`
      self$`prompt_type` <- this_object$`prompt_type`
      self$`brand_kind` <- this_object$`brand_kind`
      if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("chatgpt", "ai_mode", "ai_overview", "perplexity", "gemini", "naver_ai", "baidu_ai", "naver_ai_tab", "qwen", "doubao", "bing_ai_mode", "bing_ai_overview"))) {
        stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"ai_mode\", \"ai_overview\", \"perplexity\", \"gemini\", \"naver_ai\", \"baidu_ai\", \"naver_ai_tab\", \"qwen\", \"doubao\", \"bing_ai_mode\", \"bing_ai_overview\".", sep = ""))
      }
      self$`model` <- this_object$`model`
      self$`competitors` <- ApiClient$new()$deserializeObj(this_object$`competitors`, "array[integer]", loadNamespace("llmpulse"))
      self$`brand1` <- this_object$`brand1`
      self$`brand2` <- this_object$`brand2`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelInsightsReportFiltersEcho and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `from`
      if (!is.null(input_json$`from`)) {
        if (!(is.character(input_json$`from`) && length(input_json$`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", input_json$`from`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelInsightsReportFiltersEcho: the required field `from` is missing."))
      }
      # check the required field `to`
      if (!is.null(input_json$`to`)) {
        if (!(is.character(input_json$`to`) && length(input_json$`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", input_json$`to`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelInsightsReportFiltersEcho: the required field `to` is missing."))
      }
      # check the required field `granularity`
      if (!is.null(input_json$`granularity`)) {
        if (!(is.character(input_json$`granularity`) && length(input_json$`granularity`) == 1)) {
          stop(paste("Error! Invalid data for `granularity`. Must be a string:", input_json$`granularity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelInsightsReportFiltersEcho: the required field `granularity` is missing."))
      }
      # check the required field `competitors`
      if (!is.null(input_json$`competitors`)) {
        stopifnot(is.vector(input_json$`competitors`), length(input_json$`competitors`) != 0)
        tmp <- sapply(input_json$`competitors`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelInsightsReportFiltersEcho: the required field `competitors` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelInsightsReportFiltersEcho
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `from` is null
      if (is.null(self$`from`)) {
        return(FALSE)
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        return(FALSE)
      }

      # check if the required `granularity` is null
      if (is.null(self$`granularity`)) {
        return(FALSE)
      }

      # check if the required `competitors` is null
      if (is.null(self$`competitors`)) {
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
      # check if the required `from` is null
      if (is.null(self$`from`)) {
        invalid_fields["from"] <- "Non-nullable required field `from` cannot be null."
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        invalid_fields["to"] <- "Non-nullable required field `to` cannot be null."
      }

      # check if the required `granularity` is null
      if (is.null(self$`granularity`)) {
        invalid_fields["granularity"] <- "Non-nullable required field `granularity` cannot be null."
      }

      # check if the required `competitors` is null
      if (is.null(self$`competitors`)) {
        invalid_fields["competitors"] <- "Non-nullable required field `competitors` cannot be null."
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
# AiModelInsightsReportFiltersEcho$unlock()
#
## Below is an example to define the print function
# AiModelInsightsReportFiltersEcho$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelInsightsReportFiltersEcho$lock()

