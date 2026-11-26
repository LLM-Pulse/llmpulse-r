#' Create a new CitedUrlOccurrencesResponseAllOfData
#'
#' @description
#' CitedUrlOccurrencesResponseAllOfData Class
#'
#' @docType class
#' @title CitedUrlOccurrencesResponseAllOfData
#' @description CitedUrlOccurrencesResponseAllOfData Class
#' @format An \code{R6Class} generator object
#' @field source_id  integer
#' @field answer_id  integer
#' @field prompt_execution_id Same as answer_id integer
#' @field prompt_id  integer
#' @field prompt_text  character
#' @field model  character
#' @field executed_at  character
#' @field citation_position Rank of the citation in the answer; 0 for a background source reference integer
#' @field url Normalized cited URL character
#' @field domain  character
#' @field source_type owned, competitor or third_party character
#' @field response_excerpt The first 600 characters of the answer character
#' @field response_truncated  character
#' @field fan_out_queries Sub-queries the model issued while answering; null when the model reports none list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitedUrlOccurrencesResponseAllOfData <- R6::R6Class(
  "CitedUrlOccurrencesResponseAllOfData",
  public = list(
    `source_id` = NULL,
    `answer_id` = NULL,
    `prompt_execution_id` = NULL,
    `prompt_id` = NULL,
    `prompt_text` = NULL,
    `model` = NULL,
    `executed_at` = NULL,
    `citation_position` = NULL,
    `url` = NULL,
    `domain` = NULL,
    `source_type` = NULL,
    `response_excerpt` = NULL,
    `response_truncated` = NULL,
    `fan_out_queries` = NULL,

    #' @description
    #' Initialize a new CitedUrlOccurrencesResponseAllOfData class.
    #'
    #' @param source_id source_id
    #' @param answer_id answer_id
    #' @param prompt_execution_id Same as answer_id
    #' @param prompt_id prompt_id
    #' @param prompt_text prompt_text
    #' @param model model
    #' @param executed_at executed_at
    #' @param citation_position Rank of the citation in the answer; 0 for a background source reference
    #' @param url Normalized cited URL
    #' @param domain domain
    #' @param source_type owned, competitor or third_party
    #' @param response_excerpt The first 600 characters of the answer
    #' @param response_truncated response_truncated
    #' @param fan_out_queries Sub-queries the model issued while answering; null when the model reports none
    #' @param ... Other optional arguments.
    initialize = function(`source_id`, `answer_id`, `prompt_execution_id`, `prompt_id`, `prompt_text`, `model`, `executed_at`, `citation_position`, `url`, `domain`, `source_type`, `response_excerpt`, `response_truncated`, `fan_out_queries`, ...) {
      if (!missing(`source_id`)) {
        if (!(is.numeric(`source_id`) && length(`source_id`) == 1)) {
          stop(paste("Error! Invalid data for `source_id`. Must be an integer:", `source_id`))
        }
        self$`source_id` <- `source_id`
      }
      if (!missing(`answer_id`)) {
        if (!(is.numeric(`answer_id`) && length(`answer_id`) == 1)) {
          stop(paste("Error! Invalid data for `answer_id`. Must be an integer:", `answer_id`))
        }
        self$`answer_id` <- `answer_id`
      }
      if (!missing(`prompt_execution_id`)) {
        if (!(is.numeric(`prompt_execution_id`) && length(`prompt_execution_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_execution_id`. Must be an integer:", `prompt_execution_id`))
        }
        self$`prompt_execution_id` <- `prompt_execution_id`
      }
      if (!missing(`prompt_id`)) {
        if (!(is.numeric(`prompt_id`) && length(`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", `prompt_id`))
        }
        self$`prompt_id` <- `prompt_id`
      }
      if (!missing(`prompt_text`)) {
        if (!(is.character(`prompt_text`) && length(`prompt_text`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_text`. Must be a string:", `prompt_text`))
        }
        self$`prompt_text` <- `prompt_text`
      }
      if (!missing(`model`)) {
        if (!(`model` %in% c("chatgpt", "perplexity", "ai_mode", "ai_overview", "gemini", "copilot", "amazon_rufus", "claude", "grok", "deepseek", "naver_ai", "baidu_ai", "meta_ai", "naver_ai_tab", "qwen", "doubao", "bing_ai_mode", "bing_ai_overview"))) {
          stop(paste("Error! \"", `model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"ai_mode\", \"ai_overview\", \"gemini\", \"copilot\", \"amazon_rufus\", \"claude\", \"grok\", \"deepseek\", \"naver_ai\", \"baidu_ai\", \"meta_ai\", \"naver_ai_tab\", \"qwen\", \"doubao\", \"bing_ai_mode\", \"bing_ai_overview\".", sep = ""))
        }
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!missing(`executed_at`)) {
        if (!(is.character(`executed_at`) && length(`executed_at`) == 1)) {
          stop(paste("Error! Invalid data for `executed_at`. Must be a string:", `executed_at`))
        }
        self$`executed_at` <- `executed_at`
      }
      if (!missing(`citation_position`)) {
        if (!(is.numeric(`citation_position`) && length(`citation_position`) == 1)) {
          stop(paste("Error! Invalid data for `citation_position`. Must be an integer:", `citation_position`))
        }
        self$`citation_position` <- `citation_position`
      }
      if (!missing(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!missing(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!missing(`source_type`)) {
        if (!(is.character(`source_type`) && length(`source_type`) == 1)) {
          stop(paste("Error! Invalid data for `source_type`. Must be a string:", `source_type`))
        }
        self$`source_type` <- `source_type`
      }
      if (!missing(`response_excerpt`)) {
        if (!(is.character(`response_excerpt`) && length(`response_excerpt`) == 1)) {
          stop(paste("Error! Invalid data for `response_excerpt`. Must be a string:", `response_excerpt`))
        }
        self$`response_excerpt` <- `response_excerpt`
      }
      if (!missing(`response_truncated`)) {
        if (!(is.logical(`response_truncated`) && length(`response_truncated`) == 1)) {
          stop(paste("Error! Invalid data for `response_truncated`. Must be a boolean:", `response_truncated`))
        }
        self$`response_truncated` <- `response_truncated`
      }
      if (!missing(`fan_out_queries`)) {
        stopifnot(is.vector(`fan_out_queries`), length(`fan_out_queries`) != 0)
        sapply(`fan_out_queries`, function(x) stopifnot(is.character(x)))
        self$`fan_out_queries` <- `fan_out_queries`
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
    #' @return CitedUrlOccurrencesResponseAllOfData as a base R list.
    #' @examples
    #' # convert array of CitedUrlOccurrencesResponseAllOfData (x) to a data frame
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
    #' Convert CitedUrlOccurrencesResponseAllOfData to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitedUrlOccurrencesResponseAllOfDataObject <- list()
      if (!is.null(self$`source_id`)) {
        CitedUrlOccurrencesResponseAllOfDataObject[["source_id"]] <-
          self$`source_id`
      }
      if (!is.null(self$`answer_id`)) {
        CitedUrlOccurrencesResponseAllOfDataObject[["answer_id"]] <-
          self$`answer_id`
      }
      if (!is.null(self$`prompt_execution_id`)) {
        CitedUrlOccurrencesResponseAllOfDataObject[["prompt_execution_id"]] <-
          self$`prompt_execution_id`
      }
      if (!is.null(self$`prompt_id`)) {
        CitedUrlOccurrencesResponseAllOfDataObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`prompt_text`)) {
        CitedUrlOccurrencesResponseAllOfDataObject[["prompt_text"]] <-
          self$`prompt_text`
      }
      if (!is.null(self$`model`)) {
        CitedUrlOccurrencesResponseAllOfDataObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`executed_at`)) {
        CitedUrlOccurrencesResponseAllOfDataObject[["executed_at"]] <-
          self$`executed_at`
      }
      if (!is.null(self$`citation_position`)) {
        CitedUrlOccurrencesResponseAllOfDataObject[["citation_position"]] <-
          self$`citation_position`
      }
      if (!is.null(self$`url`)) {
        CitedUrlOccurrencesResponseAllOfDataObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`domain`)) {
        CitedUrlOccurrencesResponseAllOfDataObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`source_type`)) {
        CitedUrlOccurrencesResponseAllOfDataObject[["source_type"]] <-
          self$`source_type`
      }
      if (!is.null(self$`response_excerpt`)) {
        CitedUrlOccurrencesResponseAllOfDataObject[["response_excerpt"]] <-
          self$`response_excerpt`
      }
      if (!is.null(self$`response_truncated`)) {
        CitedUrlOccurrencesResponseAllOfDataObject[["response_truncated"]] <-
          self$`response_truncated`
      }
      if (!is.null(self$`fan_out_queries`)) {
        CitedUrlOccurrencesResponseAllOfDataObject[["fan_out_queries"]] <-
          self$`fan_out_queries`
      }
      return(CitedUrlOccurrencesResponseAllOfDataObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CitedUrlOccurrencesResponseAllOfData
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitedUrlOccurrencesResponseAllOfData
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source_id`)) {
        self$`source_id` <- this_object$`source_id`
      }
      if (!is.null(this_object$`answer_id`)) {
        self$`answer_id` <- this_object$`answer_id`
      }
      if (!is.null(this_object$`prompt_execution_id`)) {
        self$`prompt_execution_id` <- this_object$`prompt_execution_id`
      }
      if (!is.null(this_object$`prompt_id`)) {
        self$`prompt_id` <- this_object$`prompt_id`
      }
      if (!is.null(this_object$`prompt_text`)) {
        self$`prompt_text` <- this_object$`prompt_text`
      }
      if (!is.null(this_object$`model`)) {
        if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("chatgpt", "perplexity", "ai_mode", "ai_overview", "gemini", "copilot", "amazon_rufus", "claude", "grok", "deepseek", "naver_ai", "baidu_ai", "meta_ai", "naver_ai_tab", "qwen", "doubao", "bing_ai_mode", "bing_ai_overview"))) {
          stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"ai_mode\", \"ai_overview\", \"gemini\", \"copilot\", \"amazon_rufus\", \"claude\", \"grok\", \"deepseek\", \"naver_ai\", \"baidu_ai\", \"meta_ai\", \"naver_ai_tab\", \"qwen\", \"doubao\", \"bing_ai_mode\", \"bing_ai_overview\".", sep = ""))
        }
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`executed_at`)) {
        self$`executed_at` <- this_object$`executed_at`
      }
      if (!is.null(this_object$`citation_position`)) {
        self$`citation_position` <- this_object$`citation_position`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`source_type`)) {
        self$`source_type` <- this_object$`source_type`
      }
      if (!is.null(this_object$`response_excerpt`)) {
        self$`response_excerpt` <- this_object$`response_excerpt`
      }
      if (!is.null(this_object$`response_truncated`)) {
        self$`response_truncated` <- this_object$`response_truncated`
      }
      if (!is.null(this_object$`fan_out_queries`)) {
        self$`fan_out_queries` <- ApiClient$new()$deserializeObj(this_object$`fan_out_queries`, "array[character]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CitedUrlOccurrencesResponseAllOfData in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitedUrlOccurrencesResponseAllOfData
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitedUrlOccurrencesResponseAllOfData
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`source_id` <- this_object$`source_id`
      self$`answer_id` <- this_object$`answer_id`
      self$`prompt_execution_id` <- this_object$`prompt_execution_id`
      self$`prompt_id` <- this_object$`prompt_id`
      self$`prompt_text` <- this_object$`prompt_text`
      if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("chatgpt", "perplexity", "ai_mode", "ai_overview", "gemini", "copilot", "amazon_rufus", "claude", "grok", "deepseek", "naver_ai", "baidu_ai", "meta_ai", "naver_ai_tab", "qwen", "doubao", "bing_ai_mode", "bing_ai_overview"))) {
        stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"ai_mode\", \"ai_overview\", \"gemini\", \"copilot\", \"amazon_rufus\", \"claude\", \"grok\", \"deepseek\", \"naver_ai\", \"baidu_ai\", \"meta_ai\", \"naver_ai_tab\", \"qwen\", \"doubao\", \"bing_ai_mode\", \"bing_ai_overview\".", sep = ""))
      }
      self$`model` <- this_object$`model`
      self$`executed_at` <- this_object$`executed_at`
      self$`citation_position` <- this_object$`citation_position`
      self$`url` <- this_object$`url`
      self$`domain` <- this_object$`domain`
      self$`source_type` <- this_object$`source_type`
      self$`response_excerpt` <- this_object$`response_excerpt`
      self$`response_truncated` <- this_object$`response_truncated`
      self$`fan_out_queries` <- ApiClient$new()$deserializeObj(this_object$`fan_out_queries`, "array[character]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CitedUrlOccurrencesResponseAllOfData and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `source_id`
      if (!is.null(input_json$`source_id`)) {
        if (!(is.numeric(input_json$`source_id`) && length(input_json$`source_id`) == 1)) {
          stop(paste("Error! Invalid data for `source_id`. Must be an integer:", input_json$`source_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlOccurrencesResponseAllOfData: the required field `source_id` is missing."))
      }
      # check the required field `answer_id`
      if (!is.null(input_json$`answer_id`)) {
        if (!(is.numeric(input_json$`answer_id`) && length(input_json$`answer_id`) == 1)) {
          stop(paste("Error! Invalid data for `answer_id`. Must be an integer:", input_json$`answer_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlOccurrencesResponseAllOfData: the required field `answer_id` is missing."))
      }
      # check the required field `prompt_execution_id`
      if (!is.null(input_json$`prompt_execution_id`)) {
        if (!(is.numeric(input_json$`prompt_execution_id`) && length(input_json$`prompt_execution_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_execution_id`. Must be an integer:", input_json$`prompt_execution_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlOccurrencesResponseAllOfData: the required field `prompt_execution_id` is missing."))
      }
      # check the required field `prompt_id`
      if (!is.null(input_json$`prompt_id`)) {
        if (!(is.numeric(input_json$`prompt_id`) && length(input_json$`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", input_json$`prompt_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlOccurrencesResponseAllOfData: the required field `prompt_id` is missing."))
      }
      # check the required field `prompt_text`
      if (!is.null(input_json$`prompt_text`)) {
        if (!(is.character(input_json$`prompt_text`) && length(input_json$`prompt_text`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_text`. Must be a string:", input_json$`prompt_text`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlOccurrencesResponseAllOfData: the required field `prompt_text` is missing."))
      }
      # check the required field `model`
      if (!is.null(input_json$`model`)) {
        if (!(is.character(input_json$`model`) && length(input_json$`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", input_json$`model`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlOccurrencesResponseAllOfData: the required field `model` is missing."))
      }
      # check the required field `executed_at`
      if (!is.null(input_json$`executed_at`)) {
        if (!(is.character(input_json$`executed_at`) && length(input_json$`executed_at`) == 1)) {
          stop(paste("Error! Invalid data for `executed_at`. Must be a string:", input_json$`executed_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlOccurrencesResponseAllOfData: the required field `executed_at` is missing."))
      }
      # check the required field `citation_position`
      if (!is.null(input_json$`citation_position`)) {
        if (!(is.numeric(input_json$`citation_position`) && length(input_json$`citation_position`) == 1)) {
          stop(paste("Error! Invalid data for `citation_position`. Must be an integer:", input_json$`citation_position`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlOccurrencesResponseAllOfData: the required field `citation_position` is missing."))
      }
      # check the required field `url`
      if (!is.null(input_json$`url`)) {
        if (!(is.character(input_json$`url`) && length(input_json$`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", input_json$`url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlOccurrencesResponseAllOfData: the required field `url` is missing."))
      }
      # check the required field `domain`
      if (!is.null(input_json$`domain`)) {
        if (!(is.character(input_json$`domain`) && length(input_json$`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", input_json$`domain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlOccurrencesResponseAllOfData: the required field `domain` is missing."))
      }
      # check the required field `source_type`
      if (!is.null(input_json$`source_type`)) {
        if (!(is.character(input_json$`source_type`) && length(input_json$`source_type`) == 1)) {
          stop(paste("Error! Invalid data for `source_type`. Must be a string:", input_json$`source_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlOccurrencesResponseAllOfData: the required field `source_type` is missing."))
      }
      # check the required field `response_excerpt`
      if (!is.null(input_json$`response_excerpt`)) {
        if (!(is.character(input_json$`response_excerpt`) && length(input_json$`response_excerpt`) == 1)) {
          stop(paste("Error! Invalid data for `response_excerpt`. Must be a string:", input_json$`response_excerpt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlOccurrencesResponseAllOfData: the required field `response_excerpt` is missing."))
      }
      # check the required field `response_truncated`
      if (!is.null(input_json$`response_truncated`)) {
        if (!(is.logical(input_json$`response_truncated`) && length(input_json$`response_truncated`) == 1)) {
          stop(paste("Error! Invalid data for `response_truncated`. Must be a boolean:", input_json$`response_truncated`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlOccurrencesResponseAllOfData: the required field `response_truncated` is missing."))
      }
      # check the required field `fan_out_queries`
      if (!is.null(input_json$`fan_out_queries`)) {
        stopifnot(is.vector(input_json$`fan_out_queries`), length(input_json$`fan_out_queries`) != 0)
        tmp <- sapply(input_json$`fan_out_queries`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlOccurrencesResponseAllOfData: the required field `fan_out_queries` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitedUrlOccurrencesResponseAllOfData
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `source_id` is null
      if (is.null(self$`source_id`)) {
        return(FALSE)
      }

      # check if the required `answer_id` is null
      if (is.null(self$`answer_id`)) {
        return(FALSE)
      }

      # check if the required `prompt_execution_id` is null
      if (is.null(self$`prompt_execution_id`)) {
        return(FALSE)
      }

      # check if the required `prompt_id` is null
      if (is.null(self$`prompt_id`)) {
        return(FALSE)
      }

      # check if the required `prompt_text` is null
      if (is.null(self$`prompt_text`)) {
        return(FALSE)
      }

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        return(FALSE)
      }

      # check if the required `citation_position` is null
      if (is.null(self$`citation_position`)) {
        return(FALSE)
      }

      # check if the required `url` is null
      if (is.null(self$`url`)) {
        return(FALSE)
      }

      # check if the required `source_type` is null
      if (is.null(self$`source_type`)) {
        return(FALSE)
      }

      # check if the required `response_excerpt` is null
      if (is.null(self$`response_excerpt`)) {
        return(FALSE)
      }

      # check if the required `response_truncated` is null
      if (is.null(self$`response_truncated`)) {
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
      # check if the required `source_id` is null
      if (is.null(self$`source_id`)) {
        invalid_fields["source_id"] <- "Non-nullable required field `source_id` cannot be null."
      }

      # check if the required `answer_id` is null
      if (is.null(self$`answer_id`)) {
        invalid_fields["answer_id"] <- "Non-nullable required field `answer_id` cannot be null."
      }

      # check if the required `prompt_execution_id` is null
      if (is.null(self$`prompt_execution_id`)) {
        invalid_fields["prompt_execution_id"] <- "Non-nullable required field `prompt_execution_id` cannot be null."
      }

      # check if the required `prompt_id` is null
      if (is.null(self$`prompt_id`)) {
        invalid_fields["prompt_id"] <- "Non-nullable required field `prompt_id` cannot be null."
      }

      # check if the required `prompt_text` is null
      if (is.null(self$`prompt_text`)) {
        invalid_fields["prompt_text"] <- "Non-nullable required field `prompt_text` cannot be null."
      }

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        invalid_fields["model"] <- "Non-nullable required field `model` cannot be null."
      }

      # check if the required `citation_position` is null
      if (is.null(self$`citation_position`)) {
        invalid_fields["citation_position"] <- "Non-nullable required field `citation_position` cannot be null."
      }

      # check if the required `url` is null
      if (is.null(self$`url`)) {
        invalid_fields["url"] <- "Non-nullable required field `url` cannot be null."
      }

      # check if the required `source_type` is null
      if (is.null(self$`source_type`)) {
        invalid_fields["source_type"] <- "Non-nullable required field `source_type` cannot be null."
      }

      # check if the required `response_excerpt` is null
      if (is.null(self$`response_excerpt`)) {
        invalid_fields["response_excerpt"] <- "Non-nullable required field `response_excerpt` cannot be null."
      }

      # check if the required `response_truncated` is null
      if (is.null(self$`response_truncated`)) {
        invalid_fields["response_truncated"] <- "Non-nullable required field `response_truncated` cannot be null."
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
# CitedUrlOccurrencesResponseAllOfData$unlock()
#
## Below is an example to define the print function
# CitedUrlOccurrencesResponseAllOfData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitedUrlOccurrencesResponseAllOfData$lock()

