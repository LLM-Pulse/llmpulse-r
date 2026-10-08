#' Create a new PromptExecutionRecord
#'
#' @description
#' PromptExecutionRecord Class
#'
#' @docType class
#' @title PromptExecutionRecord
#' @description PromptExecutionRecord Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field prompt_id  integer
#' @field executed_at Null while the answer is still pending character
#' @field duration_ms  numeric
#' @field success Null while the answer is still pending character
#' @field model  character
#' @field fan_out_queries Sub-queries the model issued while answering; null when the model reports none list(character)
#' @field has_mention  character
#' @field has_citation  character
#' @field mentions_count 1 when the answer mentions the brand, otherwise 0 integer
#' @field citations_count 1 when the answer cites the brand, otherwise 0 integer
#' @field app_url Opens this answer in the app. The link names its project, so it opens there for any user with access to that project character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptExecutionRecord <- R6::R6Class(
  "PromptExecutionRecord",
  public = list(
    `id` = NULL,
    `prompt_id` = NULL,
    `executed_at` = NULL,
    `duration_ms` = NULL,
    `success` = NULL,
    `model` = NULL,
    `fan_out_queries` = NULL,
    `has_mention` = NULL,
    `has_citation` = NULL,
    `mentions_count` = NULL,
    `citations_count` = NULL,
    `app_url` = NULL,

    #' @description
    #' Initialize a new PromptExecutionRecord class.
    #'
    #' @param id id
    #' @param prompt_id prompt_id
    #' @param executed_at Null while the answer is still pending
    #' @param duration_ms duration_ms
    #' @param success Null while the answer is still pending
    #' @param model model
    #' @param fan_out_queries Sub-queries the model issued while answering; null when the model reports none
    #' @param has_mention has_mention
    #' @param has_citation has_citation
    #' @param mentions_count 1 when the answer mentions the brand, otherwise 0
    #' @param citations_count 1 when the answer cites the brand, otherwise 0
    #' @param app_url Opens this answer in the app. The link names its project, so it opens there for any user with access to that project
    #' @param ... Other optional arguments.
    initialize = function(`id`, `prompt_id`, `executed_at`, `duration_ms`, `success`, `model`, `fan_out_queries`, `has_mention`, `has_citation`, `mentions_count`, `citations_count`, `app_url`, ...) {
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
      if (!missing(`executed_at`)) {
        if (!(is.character(`executed_at`) && length(`executed_at`) == 1)) {
          stop(paste("Error! Invalid data for `executed_at`. Must be a string:", `executed_at`))
        }
        self$`executed_at` <- `executed_at`
      }
      if (!missing(`duration_ms`)) {
        self$`duration_ms` <- `duration_ms`
      }
      if (!missing(`success`)) {
        if (!(is.logical(`success`) && length(`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", `success`))
        }
        self$`success` <- `success`
      }
      if (!missing(`model`)) {
        if (!(`model` %in% c("chatgpt", "perplexity", "ai_mode", "ai_overview", "gemini", "copilot", "amazon_rufus", "claude", "grok", "deepseek", "naver_ai", "baidu_ai", "meta_ai"))) {
          stop(paste("Error! \"", `model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"ai_mode\", \"ai_overview\", \"gemini\", \"copilot\", \"amazon_rufus\", \"claude\", \"grok\", \"deepseek\", \"naver_ai\", \"baidu_ai\", \"meta_ai\".", sep = ""))
        }
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!missing(`fan_out_queries`)) {
        stopifnot(is.vector(`fan_out_queries`), length(`fan_out_queries`) != 0)
        sapply(`fan_out_queries`, function(x) stopifnot(is.character(x)))
        self$`fan_out_queries` <- `fan_out_queries`
      }
      if (!missing(`has_mention`)) {
        if (!(is.logical(`has_mention`) && length(`has_mention`) == 1)) {
          stop(paste("Error! Invalid data for `has_mention`. Must be a boolean:", `has_mention`))
        }
        self$`has_mention` <- `has_mention`
      }
      if (!missing(`has_citation`)) {
        if (!(is.logical(`has_citation`) && length(`has_citation`) == 1)) {
          stop(paste("Error! Invalid data for `has_citation`. Must be a boolean:", `has_citation`))
        }
        self$`has_citation` <- `has_citation`
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
    #' @return PromptExecutionRecord as a base R list.
    #' @examples
    #' # convert array of PromptExecutionRecord (x) to a data frame
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
    #' Convert PromptExecutionRecord to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptExecutionRecordObject <- list()
      if (!is.null(self$`id`)) {
        PromptExecutionRecordObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`prompt_id`)) {
        PromptExecutionRecordObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`executed_at`)) {
        PromptExecutionRecordObject[["executed_at"]] <-
          self$`executed_at`
      }
      if (!is.null(self$`duration_ms`)) {
        PromptExecutionRecordObject[["duration_ms"]] <-
          self$`duration_ms`
      }
      if (!is.null(self$`success`)) {
        PromptExecutionRecordObject[["success"]] <-
          self$`success`
      }
      if (!is.null(self$`model`)) {
        PromptExecutionRecordObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`fan_out_queries`)) {
        PromptExecutionRecordObject[["fan_out_queries"]] <-
          self$`fan_out_queries`
      }
      if (!is.null(self$`has_mention`)) {
        PromptExecutionRecordObject[["has_mention"]] <-
          self$`has_mention`
      }
      if (!is.null(self$`has_citation`)) {
        PromptExecutionRecordObject[["has_citation"]] <-
          self$`has_citation`
      }
      if (!is.null(self$`mentions_count`)) {
        PromptExecutionRecordObject[["mentions_count"]] <-
          self$`mentions_count`
      }
      if (!is.null(self$`citations_count`)) {
        PromptExecutionRecordObject[["citations_count"]] <-
          self$`citations_count`
      }
      if (!is.null(self$`app_url`)) {
        PromptExecutionRecordObject[["app_url"]] <-
          self$`app_url`
      }
      return(PromptExecutionRecordObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptExecutionRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptExecutionRecord
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`prompt_id`)) {
        self$`prompt_id` <- this_object$`prompt_id`
      }
      if (!is.null(this_object$`executed_at`)) {
        self$`executed_at` <- this_object$`executed_at`
      }
      if (!is.null(this_object$`duration_ms`)) {
        self$`duration_ms` <- this_object$`duration_ms`
      }
      if (!is.null(this_object$`success`)) {
        self$`success` <- this_object$`success`
      }
      if (!is.null(this_object$`model`)) {
        if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("chatgpt", "perplexity", "ai_mode", "ai_overview", "gemini", "copilot", "amazon_rufus", "claude", "grok", "deepseek", "naver_ai", "baidu_ai", "meta_ai"))) {
          stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"ai_mode\", \"ai_overview\", \"gemini\", \"copilot\", \"amazon_rufus\", \"claude\", \"grok\", \"deepseek\", \"naver_ai\", \"baidu_ai\", \"meta_ai\".", sep = ""))
        }
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`fan_out_queries`)) {
        self$`fan_out_queries` <- ApiClient$new()$deserializeObj(this_object$`fan_out_queries`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`has_mention`)) {
        self$`has_mention` <- this_object$`has_mention`
      }
      if (!is.null(this_object$`has_citation`)) {
        self$`has_citation` <- this_object$`has_citation`
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PromptExecutionRecord in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptExecutionRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptExecutionRecord
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`prompt_id` <- this_object$`prompt_id`
      self$`executed_at` <- this_object$`executed_at`
      self$`duration_ms` <- this_object$`duration_ms`
      self$`success` <- this_object$`success`
      if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("chatgpt", "perplexity", "ai_mode", "ai_overview", "gemini", "copilot", "amazon_rufus", "claude", "grok", "deepseek", "naver_ai", "baidu_ai", "meta_ai"))) {
        stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"ai_mode\", \"ai_overview\", \"gemini\", \"copilot\", \"amazon_rufus\", \"claude\", \"grok\", \"deepseek\", \"naver_ai\", \"baidu_ai\", \"meta_ai\".", sep = ""))
      }
      self$`model` <- this_object$`model`
      self$`fan_out_queries` <- ApiClient$new()$deserializeObj(this_object$`fan_out_queries`, "array[character]", loadNamespace("llmpulse"))
      self$`has_mention` <- this_object$`has_mention`
      self$`has_citation` <- this_object$`has_citation`
      self$`mentions_count` <- this_object$`mentions_count`
      self$`citations_count` <- this_object$`citations_count`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `app_url`. Must be a URL:", this_object$`app_url`))
      }
      self$`app_url` <- this_object$`app_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptExecutionRecord and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PromptExecutionRecord: the required field `id` is missing."))
      }
      # check the required field `prompt_id`
      if (!is.null(input_json$`prompt_id`)) {
        if (!(is.numeric(input_json$`prompt_id`) && length(input_json$`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", input_json$`prompt_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptExecutionRecord: the required field `prompt_id` is missing."))
      }
      # check the required field `executed_at`
      if (!is.null(input_json$`executed_at`)) {
        if (!(is.character(input_json$`executed_at`) && length(input_json$`executed_at`) == 1)) {
          stop(paste("Error! Invalid data for `executed_at`. Must be a string:", input_json$`executed_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptExecutionRecord: the required field `executed_at` is missing."))
      }
      # check the required field `duration_ms`
      if (!is.null(input_json$`duration_ms`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptExecutionRecord: the required field `duration_ms` is missing."))
      }
      # check the required field `success`
      if (!is.null(input_json$`success`)) {
        if (!(is.logical(input_json$`success`) && length(input_json$`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", input_json$`success`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptExecutionRecord: the required field `success` is missing."))
      }
      # check the required field `model`
      if (!is.null(input_json$`model`)) {
        if (!(is.character(input_json$`model`) && length(input_json$`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", input_json$`model`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptExecutionRecord: the required field `model` is missing."))
      }
      # check the required field `fan_out_queries`
      if (!is.null(input_json$`fan_out_queries`)) {
        stopifnot(is.vector(input_json$`fan_out_queries`), length(input_json$`fan_out_queries`) != 0)
        tmp <- sapply(input_json$`fan_out_queries`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptExecutionRecord: the required field `fan_out_queries` is missing."))
      }
      # check the required field `has_mention`
      if (!is.null(input_json$`has_mention`)) {
        if (!(is.logical(input_json$`has_mention`) && length(input_json$`has_mention`) == 1)) {
          stop(paste("Error! Invalid data for `has_mention`. Must be a boolean:", input_json$`has_mention`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptExecutionRecord: the required field `has_mention` is missing."))
      }
      # check the required field `has_citation`
      if (!is.null(input_json$`has_citation`)) {
        if (!(is.logical(input_json$`has_citation`) && length(input_json$`has_citation`) == 1)) {
          stop(paste("Error! Invalid data for `has_citation`. Must be a boolean:", input_json$`has_citation`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptExecutionRecord: the required field `has_citation` is missing."))
      }
      # check the required field `mentions_count`
      if (!is.null(input_json$`mentions_count`)) {
        if (!(is.numeric(input_json$`mentions_count`) && length(input_json$`mentions_count`) == 1)) {
          stop(paste("Error! Invalid data for `mentions_count`. Must be an integer:", input_json$`mentions_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptExecutionRecord: the required field `mentions_count` is missing."))
      }
      # check the required field `citations_count`
      if (!is.null(input_json$`citations_count`)) {
        if (!(is.numeric(input_json$`citations_count`) && length(input_json$`citations_count`) == 1)) {
          stop(paste("Error! Invalid data for `citations_count`. Must be an integer:", input_json$`citations_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptExecutionRecord: the required field `citations_count` is missing."))
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
        stop(paste("The JSON input `", input, "` is invalid for PromptExecutionRecord: the required field `app_url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptExecutionRecord
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

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        return(FALSE)
      }

      # check if the required `has_mention` is null
      if (is.null(self$`has_mention`)) {
        return(FALSE)
      }

      # check if the required `has_citation` is null
      if (is.null(self$`has_citation`)) {
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

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        invalid_fields["model"] <- "Non-nullable required field `model` cannot be null."
      }

      # check if the required `has_mention` is null
      if (is.null(self$`has_mention`)) {
        invalid_fields["has_mention"] <- "Non-nullable required field `has_mention` cannot be null."
      }

      # check if the required `has_citation` is null
      if (is.null(self$`has_citation`)) {
        invalid_fields["has_citation"] <- "Non-nullable required field `has_citation` cannot be null."
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
# PromptExecutionRecord$unlock()
#
## Below is an example to define the print function
# PromptExecutionRecord$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptExecutionRecord$lock()

