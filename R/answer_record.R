#' Create a new AnswerRecord
#'
#' @description
#' One answer. Without query a row carries response and response_truncated; with query it carries snippet and match_count instead
#'
#' @docType class
#' @title AnswerRecord
#' @description AnswerRecord Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field prompt_id  integer
#' @field prompt_text  character
#' @field model  character
#' @field executed_at  character
#' @field duration_ms Milliseconds our pipeline spent processing the collected answer, rounded to one decimal place numeric
#' @field no_result True for a sentinel non-answer (no answer could be collected after all retries, or the model declined to answer, today only Gemini); excluded from platform metrics character
#' @field no_result_reason Present only when no_result is true. declined = the model declined to answer and response holds its reply; no_answer = no answer could be collected character [optional]
#' @field mentions_count Mentions of your brand in the answer integer
#' @field citations_count Citations of your brand in the answer integer
#' @field app_url Opens this answer in the app. The link names its project, so it opens there for any user with access to that project character
#' @field response The answer text, cut to 10,000 characters (without query) character [optional]
#' @field response_truncated Whether response was cut (without query) character [optional]
#' @field snippet The text around the first match (with query) character [optional]
#' @field match_count Matches of query in the answer (with query) integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnswerRecord <- R6::R6Class(
  "AnswerRecord",
  public = list(
    `id` = NULL,
    `prompt_id` = NULL,
    `prompt_text` = NULL,
    `model` = NULL,
    `executed_at` = NULL,
    `duration_ms` = NULL,
    `no_result` = NULL,
    `no_result_reason` = NULL,
    `mentions_count` = NULL,
    `citations_count` = NULL,
    `app_url` = NULL,
    `response` = NULL,
    `response_truncated` = NULL,
    `snippet` = NULL,
    `match_count` = NULL,

    #' @description
    #' Initialize a new AnswerRecord class.
    #'
    #' @param id id
    #' @param prompt_id prompt_id
    #' @param prompt_text prompt_text
    #' @param model model
    #' @param executed_at executed_at
    #' @param duration_ms Milliseconds our pipeline spent processing the collected answer, rounded to one decimal place
    #' @param no_result True for a sentinel non-answer (no answer could be collected after all retries, or the model declined to answer, today only Gemini); excluded from platform metrics
    #' @param mentions_count Mentions of your brand in the answer
    #' @param citations_count Citations of your brand in the answer
    #' @param app_url Opens this answer in the app. The link names its project, so it opens there for any user with access to that project
    #' @param no_result_reason Present only when no_result is true. declined = the model declined to answer and response holds its reply; no_answer = no answer could be collected
    #' @param response The answer text, cut to 10,000 characters (without query)
    #' @param response_truncated Whether response was cut (without query)
    #' @param snippet The text around the first match (with query)
    #' @param match_count Matches of query in the answer (with query)
    #' @param ... Other optional arguments.
    initialize = function(`id`, `prompt_id`, `prompt_text`, `model`, `executed_at`, `duration_ms`, `no_result`, `mentions_count`, `citations_count`, `app_url`, `no_result_reason` = NULL, `response` = NULL, `response_truncated` = NULL, `snippet` = NULL, `match_count` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
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
      if (!missing(`duration_ms`)) {
        self$`duration_ms` <- `duration_ms`
      }
      if (!missing(`no_result`)) {
        if (!(is.logical(`no_result`) && length(`no_result`) == 1)) {
          stop(paste("Error! Invalid data for `no_result`. Must be a boolean:", `no_result`))
        }
        self$`no_result` <- `no_result`
      }
      if (!missing(`mentions_count`)) {
        if (!(is.numeric(`mentions_count`) && length(`mentions_count`) == 1)) {
          stop(paste("Error! Invalid data for `mentions_count`. Must be an integer:", `mentions_count`))
        }
        self$`mentions_count` <- `mentions_count`
      }
      if (!missing(`citations_count`)) {
        if (!(is.numeric(`citations_count`) && length(`citations_count`) == 1)) {
          stop(paste("Error! Invalid data for `citations_count`. Must be an integer:", `citations_count`))
        }
        self$`citations_count` <- `citations_count`
      }
      if (!missing(`app_url`)) {
        if (!(is.character(`app_url`) && length(`app_url`) == 1)) {
          stop(paste("Error! Invalid data for `app_url`. Must be a string:", `app_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `app_url`. Must be a URL:", `app_url`))
        }
        self$`app_url` <- `app_url`
      }
      if (!is.null(`no_result_reason`)) {
        if (!(`no_result_reason` %in% c("declined", "no_answer"))) {
          stop(paste("Error! \"", `no_result_reason`, "\" cannot be assigned to `no_result_reason`. Must be \"declined\", \"no_answer\".", sep = ""))
        }
        if (!(is.character(`no_result_reason`) && length(`no_result_reason`) == 1)) {
          stop(paste("Error! Invalid data for `no_result_reason`. Must be a string:", `no_result_reason`))
        }
        self$`no_result_reason` <- `no_result_reason`
      }
      if (!is.null(`response`)) {
        if (!(is.character(`response`) && length(`response`) == 1)) {
          stop(paste("Error! Invalid data for `response`. Must be a string:", `response`))
        }
        self$`response` <- `response`
      }
      if (!is.null(`response_truncated`)) {
        if (!(is.logical(`response_truncated`) && length(`response_truncated`) == 1)) {
          stop(paste("Error! Invalid data for `response_truncated`. Must be a boolean:", `response_truncated`))
        }
        self$`response_truncated` <- `response_truncated`
      }
      if (!is.null(`snippet`)) {
        if (!(is.character(`snippet`) && length(`snippet`) == 1)) {
          stop(paste("Error! Invalid data for `snippet`. Must be a string:", `snippet`))
        }
        self$`snippet` <- `snippet`
      }
      if (!is.null(`match_count`)) {
        if (!(is.numeric(`match_count`) && length(`match_count`) == 1)) {
          stop(paste("Error! Invalid data for `match_count`. Must be an integer:", `match_count`))
        }
        self$`match_count` <- `match_count`
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
    #' @return AnswerRecord as a base R list.
    #' @examples
    #' # convert array of AnswerRecord (x) to a data frame
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
    #' Convert AnswerRecord to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnswerRecordObject <- list()
      if (!is.null(self$`id`)) {
        AnswerRecordObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`prompt_id`)) {
        AnswerRecordObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`prompt_text`)) {
        AnswerRecordObject[["prompt_text"]] <-
          self$`prompt_text`
      }
      if (!is.null(self$`model`)) {
        AnswerRecordObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`executed_at`)) {
        AnswerRecordObject[["executed_at"]] <-
          self$`executed_at`
      }
      if (!is.null(self$`duration_ms`)) {
        AnswerRecordObject[["duration_ms"]] <-
          self$`duration_ms`
      }
      if (!is.null(self$`no_result`)) {
        AnswerRecordObject[["no_result"]] <-
          self$`no_result`
      }
      if (!is.null(self$`no_result_reason`)) {
        AnswerRecordObject[["no_result_reason"]] <-
          self$`no_result_reason`
      }
      if (!is.null(self$`mentions_count`)) {
        AnswerRecordObject[["mentions_count"]] <-
          self$`mentions_count`
      }
      if (!is.null(self$`citations_count`)) {
        AnswerRecordObject[["citations_count"]] <-
          self$`citations_count`
      }
      if (!is.null(self$`app_url`)) {
        AnswerRecordObject[["app_url"]] <-
          self$`app_url`
      }
      if (!is.null(self$`response`)) {
        AnswerRecordObject[["response"]] <-
          self$`response`
      }
      if (!is.null(self$`response_truncated`)) {
        AnswerRecordObject[["response_truncated"]] <-
          self$`response_truncated`
      }
      if (!is.null(self$`snippet`)) {
        AnswerRecordObject[["snippet"]] <-
          self$`snippet`
      }
      if (!is.null(self$`match_count`)) {
        AnswerRecordObject[["match_count"]] <-
          self$`match_count`
      }
      return(AnswerRecordObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AnswerRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnswerRecord
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
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
      if (!is.null(this_object$`duration_ms`)) {
        self$`duration_ms` <- this_object$`duration_ms`
      }
      if (!is.null(this_object$`no_result`)) {
        self$`no_result` <- this_object$`no_result`
      }
      if (!is.null(this_object$`no_result_reason`)) {
        if (!is.null(this_object$`no_result_reason`) && !(this_object$`no_result_reason` %in% c("declined", "no_answer"))) {
          stop(paste("Error! \"", this_object$`no_result_reason`, "\" cannot be assigned to `no_result_reason`. Must be \"declined\", \"no_answer\".", sep = ""))
        }
        self$`no_result_reason` <- this_object$`no_result_reason`
      }
      if (!is.null(this_object$`mentions_count`)) {
        self$`mentions_count` <- this_object$`mentions_count`
      }
      if (!is.null(this_object$`citations_count`)) {
        self$`citations_count` <- this_object$`citations_count`
      }
      if (!is.null(this_object$`app_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `app_url`. Must be a URL:", this_object$`app_url`))
        }
        self$`app_url` <- this_object$`app_url`
      }
      if (!is.null(this_object$`response`)) {
        self$`response` <- this_object$`response`
      }
      if (!is.null(this_object$`response_truncated`)) {
        self$`response_truncated` <- this_object$`response_truncated`
      }
      if (!is.null(this_object$`snippet`)) {
        self$`snippet` <- this_object$`snippet`
      }
      if (!is.null(this_object$`match_count`)) {
        self$`match_count` <- this_object$`match_count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnswerRecord in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnswerRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnswerRecord
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`prompt_id` <- this_object$`prompt_id`
      self$`prompt_text` <- this_object$`prompt_text`
      if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("chatgpt", "perplexity", "ai_mode", "ai_overview", "gemini", "copilot", "amazon_rufus", "claude", "grok", "deepseek", "naver_ai", "baidu_ai", "meta_ai", "naver_ai_tab", "qwen", "doubao", "bing_ai_mode", "bing_ai_overview"))) {
        stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"ai_mode\", \"ai_overview\", \"gemini\", \"copilot\", \"amazon_rufus\", \"claude\", \"grok\", \"deepseek\", \"naver_ai\", \"baidu_ai\", \"meta_ai\", \"naver_ai_tab\", \"qwen\", \"doubao\", \"bing_ai_mode\", \"bing_ai_overview\".", sep = ""))
      }
      self$`model` <- this_object$`model`
      self$`executed_at` <- this_object$`executed_at`
      self$`duration_ms` <- this_object$`duration_ms`
      self$`no_result` <- this_object$`no_result`
      if (!is.null(this_object$`no_result_reason`) && !(this_object$`no_result_reason` %in% c("declined", "no_answer"))) {
        stop(paste("Error! \"", this_object$`no_result_reason`, "\" cannot be assigned to `no_result_reason`. Must be \"declined\", \"no_answer\".", sep = ""))
      }
      self$`no_result_reason` <- this_object$`no_result_reason`
      self$`mentions_count` <- this_object$`mentions_count`
      self$`citations_count` <- this_object$`citations_count`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `app_url`. Must be a URL:", this_object$`app_url`))
      }
      self$`app_url` <- this_object$`app_url`
      self$`response` <- this_object$`response`
      self$`response_truncated` <- this_object$`response_truncated`
      self$`snippet` <- this_object$`snippet`
      self$`match_count` <- this_object$`match_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to AnswerRecord and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnswerRecord: the required field `id` is missing."))
      }
      # check the required field `prompt_id`
      if (!is.null(input_json$`prompt_id`)) {
        if (!(is.numeric(input_json$`prompt_id`) && length(input_json$`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", input_json$`prompt_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnswerRecord: the required field `prompt_id` is missing."))
      }
      # check the required field `prompt_text`
      if (!is.null(input_json$`prompt_text`)) {
        if (!(is.character(input_json$`prompt_text`) && length(input_json$`prompt_text`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_text`. Must be a string:", input_json$`prompt_text`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnswerRecord: the required field `prompt_text` is missing."))
      }
      # check the required field `model`
      if (!is.null(input_json$`model`)) {
        if (!(is.character(input_json$`model`) && length(input_json$`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", input_json$`model`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnswerRecord: the required field `model` is missing."))
      }
      # check the required field `executed_at`
      if (!is.null(input_json$`executed_at`)) {
        if (!(is.character(input_json$`executed_at`) && length(input_json$`executed_at`) == 1)) {
          stop(paste("Error! Invalid data for `executed_at`. Must be a string:", input_json$`executed_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnswerRecord: the required field `executed_at` is missing."))
      }
      # check the required field `duration_ms`
      if (!is.null(input_json$`duration_ms`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnswerRecord: the required field `duration_ms` is missing."))
      }
      # check the required field `no_result`
      if (!is.null(input_json$`no_result`)) {
        if (!(is.logical(input_json$`no_result`) && length(input_json$`no_result`) == 1)) {
          stop(paste("Error! Invalid data for `no_result`. Must be a boolean:", input_json$`no_result`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnswerRecord: the required field `no_result` is missing."))
      }
      # check the required field `mentions_count`
      if (!is.null(input_json$`mentions_count`)) {
        if (!(is.numeric(input_json$`mentions_count`) && length(input_json$`mentions_count`) == 1)) {
          stop(paste("Error! Invalid data for `mentions_count`. Must be an integer:", input_json$`mentions_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnswerRecord: the required field `mentions_count` is missing."))
      }
      # check the required field `citations_count`
      if (!is.null(input_json$`citations_count`)) {
        if (!(is.numeric(input_json$`citations_count`) && length(input_json$`citations_count`) == 1)) {
          stop(paste("Error! Invalid data for `citations_count`. Must be an integer:", input_json$`citations_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnswerRecord: the required field `citations_count` is missing."))
      }
      # check the required field `app_url`
      if (!is.null(input_json$`app_url`)) {
        if (!(is.character(input_json$`app_url`) && length(input_json$`app_url`) == 1)) {
          stop(paste("Error! Invalid data for `app_url`. Must be a string:", input_json$`app_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(input_json$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `app_url`. Must be a URL:", input_json$`app_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnswerRecord: the required field `app_url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnswerRecord
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
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

      # check if the required `no_result` is null
      if (is.null(self$`no_result`)) {
        return(FALSE)
      }

      # check if the required `mentions_count` is null
      if (is.null(self$`mentions_count`)) {
        return(FALSE)
      }

      # check if the required `citations_count` is null
      if (is.null(self$`citations_count`)) {
        return(FALSE)
      }

      # check if the required `app_url` is null
      if (is.null(self$`app_url`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
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

      # check if the required `no_result` is null
      if (is.null(self$`no_result`)) {
        invalid_fields["no_result"] <- "Non-nullable required field `no_result` cannot be null."
      }

      # check if the required `mentions_count` is null
      if (is.null(self$`mentions_count`)) {
        invalid_fields["mentions_count"] <- "Non-nullable required field `mentions_count` cannot be null."
      }

      # check if the required `citations_count` is null
      if (is.null(self$`citations_count`)) {
        invalid_fields["citations_count"] <- "Non-nullable required field `citations_count` cannot be null."
      }

      # check if the required `app_url` is null
      if (is.null(self$`app_url`)) {
        invalid_fields["app_url"] <- "Non-nullable required field `app_url` cannot be null."
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
# AnswerRecord$unlock()
#
## Below is an example to define the print function
# AnswerRecord$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnswerRecord$lock()

