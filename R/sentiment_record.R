#' Create a new SentimentRecord
#'
#' @description
#' SentimentRecord Class
#'
#' @docType class
#' @title SentimentRecord
#' @description SentimentRecord Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field prompt_execution_id  integer
#' @field prompt_text  character
#' @field model  character
#' @field analysis  character
#' @field score From -1 (very negative) to 1 (very positive) numeric
#' @field comment  character
#' @field topics Comma-separated topics character
#' @field competitor_id Null for a sentiment about the project's own brand integer
#' @field competitor_name Null for a sentiment about the project's own brand character
#' @field is_brand_sentiment  character
#' @field executed_at  character
#' @field created_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SentimentRecord <- R6::R6Class(
  "SentimentRecord",
  public = list(
    `id` = NULL,
    `prompt_execution_id` = NULL,
    `prompt_text` = NULL,
    `model` = NULL,
    `analysis` = NULL,
    `score` = NULL,
    `comment` = NULL,
    `topics` = NULL,
    `competitor_id` = NULL,
    `competitor_name` = NULL,
    `is_brand_sentiment` = NULL,
    `executed_at` = NULL,
    `created_at` = NULL,

    #' @description
    #' Initialize a new SentimentRecord class.
    #'
    #' @param id id
    #' @param prompt_execution_id prompt_execution_id
    #' @param prompt_text prompt_text
    #' @param model model
    #' @param analysis analysis
    #' @param score From -1 (very negative) to 1 (very positive)
    #' @param comment comment
    #' @param topics Comma-separated topics
    #' @param competitor_id Null for a sentiment about the project's own brand
    #' @param competitor_name Null for a sentiment about the project's own brand
    #' @param is_brand_sentiment is_brand_sentiment
    #' @param executed_at executed_at
    #' @param created_at created_at
    #' @param ... Other optional arguments.
    initialize = function(`id`, `prompt_execution_id`, `prompt_text`, `model`, `analysis`, `score`, `comment`, `topics`, `competitor_id`, `competitor_name`, `is_brand_sentiment`, `executed_at`, `created_at`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`prompt_execution_id`)) {
        if (!(is.numeric(`prompt_execution_id`) && length(`prompt_execution_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_execution_id`. Must be an integer:", `prompt_execution_id`))
        }
        self$`prompt_execution_id` <- `prompt_execution_id`
      }
      if (!missing(`prompt_text`)) {
        if (!(is.character(`prompt_text`) && length(`prompt_text`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_text`. Must be a string:", `prompt_text`))
        }
        self$`prompt_text` <- `prompt_text`
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
      if (!missing(`analysis`)) {
        if (!(`analysis` %in% c("very_positive", "positive", "neutral", "negative", "very_negative"))) {
          stop(paste("Error! \"", `analysis`, "\" cannot be assigned to `analysis`. Must be \"very_positive\", \"positive\", \"neutral\", \"negative\", \"very_negative\".", sep = ""))
        }
        if (!(is.character(`analysis`) && length(`analysis`) == 1)) {
          stop(paste("Error! Invalid data for `analysis`. Must be a string:", `analysis`))
        }
        self$`analysis` <- `analysis`
      }
      if (!missing(`score`)) {
        self$`score` <- `score`
      }
      if (!missing(`comment`)) {
        if (!(is.character(`comment`) && length(`comment`) == 1)) {
          stop(paste("Error! Invalid data for `comment`. Must be a string:", `comment`))
        }
        self$`comment` <- `comment`
      }
      if (!missing(`topics`)) {
        if (!(is.character(`topics`) && length(`topics`) == 1)) {
          stop(paste("Error! Invalid data for `topics`. Must be a string:", `topics`))
        }
        self$`topics` <- `topics`
      }
      if (!missing(`competitor_id`)) {
        if (!(is.numeric(`competitor_id`) && length(`competitor_id`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_id`. Must be an integer:", `competitor_id`))
        }
        self$`competitor_id` <- `competitor_id`
      }
      if (!missing(`competitor_name`)) {
        if (!(is.character(`competitor_name`) && length(`competitor_name`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_name`. Must be a string:", `competitor_name`))
        }
        self$`competitor_name` <- `competitor_name`
      }
      if (!missing(`is_brand_sentiment`)) {
        if (!(is.logical(`is_brand_sentiment`) && length(`is_brand_sentiment`) == 1)) {
          stop(paste("Error! Invalid data for `is_brand_sentiment`. Must be a boolean:", `is_brand_sentiment`))
        }
        self$`is_brand_sentiment` <- `is_brand_sentiment`
      }
      if (!missing(`executed_at`)) {
        if (!(is.character(`executed_at`) && length(`executed_at`) == 1)) {
          stop(paste("Error! Invalid data for `executed_at`. Must be a string:", `executed_at`))
        }
        self$`executed_at` <- `executed_at`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
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
    #' @return SentimentRecord as a base R list.
    #' @examples
    #' # convert array of SentimentRecord (x) to a data frame
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
    #' Convert SentimentRecord to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SentimentRecordObject <- list()
      if (!is.null(self$`id`)) {
        SentimentRecordObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`prompt_execution_id`)) {
        SentimentRecordObject[["prompt_execution_id"]] <-
          self$`prompt_execution_id`
      }
      if (!is.null(self$`prompt_text`)) {
        SentimentRecordObject[["prompt_text"]] <-
          self$`prompt_text`
      }
      if (!is.null(self$`model`)) {
        SentimentRecordObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`analysis`)) {
        SentimentRecordObject[["analysis"]] <-
          self$`analysis`
      }
      if (!is.null(self$`score`)) {
        SentimentRecordObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`comment`)) {
        SentimentRecordObject[["comment"]] <-
          self$`comment`
      }
      if (!is.null(self$`topics`)) {
        SentimentRecordObject[["topics"]] <-
          self$`topics`
      }
      if (!is.null(self$`competitor_id`)) {
        SentimentRecordObject[["competitor_id"]] <-
          self$`competitor_id`
      }
      if (!is.null(self$`competitor_name`)) {
        SentimentRecordObject[["competitor_name"]] <-
          self$`competitor_name`
      }
      if (!is.null(self$`is_brand_sentiment`)) {
        SentimentRecordObject[["is_brand_sentiment"]] <-
          self$`is_brand_sentiment`
      }
      if (!is.null(self$`executed_at`)) {
        SentimentRecordObject[["executed_at"]] <-
          self$`executed_at`
      }
      if (!is.null(self$`created_at`)) {
        SentimentRecordObject[["created_at"]] <-
          self$`created_at`
      }
      return(SentimentRecordObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SentimentRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentRecord
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`prompt_execution_id`)) {
        self$`prompt_execution_id` <- this_object$`prompt_execution_id`
      }
      if (!is.null(this_object$`prompt_text`)) {
        self$`prompt_text` <- this_object$`prompt_text`
      }
      if (!is.null(this_object$`model`)) {
        if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("chatgpt", "perplexity", "ai_mode", "ai_overview", "gemini", "copilot", "amazon_rufus", "claude", "grok", "deepseek", "naver_ai", "baidu_ai", "meta_ai"))) {
          stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"ai_mode\", \"ai_overview\", \"gemini\", \"copilot\", \"amazon_rufus\", \"claude\", \"grok\", \"deepseek\", \"naver_ai\", \"baidu_ai\", \"meta_ai\".", sep = ""))
        }
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`analysis`)) {
        if (!is.null(this_object$`analysis`) && !(this_object$`analysis` %in% c("very_positive", "positive", "neutral", "negative", "very_negative"))) {
          stop(paste("Error! \"", this_object$`analysis`, "\" cannot be assigned to `analysis`. Must be \"very_positive\", \"positive\", \"neutral\", \"negative\", \"very_negative\".", sep = ""))
        }
        self$`analysis` <- this_object$`analysis`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`comment`)) {
        self$`comment` <- this_object$`comment`
      }
      if (!is.null(this_object$`topics`)) {
        self$`topics` <- this_object$`topics`
      }
      if (!is.null(this_object$`competitor_id`)) {
        self$`competitor_id` <- this_object$`competitor_id`
      }
      if (!is.null(this_object$`competitor_name`)) {
        self$`competitor_name` <- this_object$`competitor_name`
      }
      if (!is.null(this_object$`is_brand_sentiment`)) {
        self$`is_brand_sentiment` <- this_object$`is_brand_sentiment`
      }
      if (!is.null(this_object$`executed_at`)) {
        self$`executed_at` <- this_object$`executed_at`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SentimentRecord in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SentimentRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentRecord
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`prompt_execution_id` <- this_object$`prompt_execution_id`
      self$`prompt_text` <- this_object$`prompt_text`
      if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("chatgpt", "perplexity", "ai_mode", "ai_overview", "gemini", "copilot", "amazon_rufus", "claude", "grok", "deepseek", "naver_ai", "baidu_ai", "meta_ai"))) {
        stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"ai_mode\", \"ai_overview\", \"gemini\", \"copilot\", \"amazon_rufus\", \"claude\", \"grok\", \"deepseek\", \"naver_ai\", \"baidu_ai\", \"meta_ai\".", sep = ""))
      }
      self$`model` <- this_object$`model`
      if (!is.null(this_object$`analysis`) && !(this_object$`analysis` %in% c("very_positive", "positive", "neutral", "negative", "very_negative"))) {
        stop(paste("Error! \"", this_object$`analysis`, "\" cannot be assigned to `analysis`. Must be \"very_positive\", \"positive\", \"neutral\", \"negative\", \"very_negative\".", sep = ""))
      }
      self$`analysis` <- this_object$`analysis`
      self$`score` <- this_object$`score`
      self$`comment` <- this_object$`comment`
      self$`topics` <- this_object$`topics`
      self$`competitor_id` <- this_object$`competitor_id`
      self$`competitor_name` <- this_object$`competitor_name`
      self$`is_brand_sentiment` <- this_object$`is_brand_sentiment`
      self$`executed_at` <- this_object$`executed_at`
      self$`created_at` <- this_object$`created_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to SentimentRecord and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for SentimentRecord: the required field `id` is missing."))
      }
      # check the required field `prompt_execution_id`
      if (!is.null(input_json$`prompt_execution_id`)) {
        if (!(is.numeric(input_json$`prompt_execution_id`) && length(input_json$`prompt_execution_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_execution_id`. Must be an integer:", input_json$`prompt_execution_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentRecord: the required field `prompt_execution_id` is missing."))
      }
      # check the required field `prompt_text`
      if (!is.null(input_json$`prompt_text`)) {
        if (!(is.character(input_json$`prompt_text`) && length(input_json$`prompt_text`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_text`. Must be a string:", input_json$`prompt_text`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentRecord: the required field `prompt_text` is missing."))
      }
      # check the required field `model`
      if (!is.null(input_json$`model`)) {
        if (!(is.character(input_json$`model`) && length(input_json$`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", input_json$`model`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentRecord: the required field `model` is missing."))
      }
      # check the required field `analysis`
      if (!is.null(input_json$`analysis`)) {
        if (!(is.character(input_json$`analysis`) && length(input_json$`analysis`) == 1)) {
          stop(paste("Error! Invalid data for `analysis`. Must be a string:", input_json$`analysis`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentRecord: the required field `analysis` is missing."))
      }
      # check the required field `score`
      if (!is.null(input_json$`score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentRecord: the required field `score` is missing."))
      }
      # check the required field `comment`
      if (!is.null(input_json$`comment`)) {
        if (!(is.character(input_json$`comment`) && length(input_json$`comment`) == 1)) {
          stop(paste("Error! Invalid data for `comment`. Must be a string:", input_json$`comment`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentRecord: the required field `comment` is missing."))
      }
      # check the required field `topics`
      if (!is.null(input_json$`topics`)) {
        if (!(is.character(input_json$`topics`) && length(input_json$`topics`) == 1)) {
          stop(paste("Error! Invalid data for `topics`. Must be a string:", input_json$`topics`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentRecord: the required field `topics` is missing."))
      }
      # check the required field `competitor_id`
      if (!is.null(input_json$`competitor_id`)) {
        if (!(is.numeric(input_json$`competitor_id`) && length(input_json$`competitor_id`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_id`. Must be an integer:", input_json$`competitor_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentRecord: the required field `competitor_id` is missing."))
      }
      # check the required field `competitor_name`
      if (!is.null(input_json$`competitor_name`)) {
        if (!(is.character(input_json$`competitor_name`) && length(input_json$`competitor_name`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_name`. Must be a string:", input_json$`competitor_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentRecord: the required field `competitor_name` is missing."))
      }
      # check the required field `is_brand_sentiment`
      if (!is.null(input_json$`is_brand_sentiment`)) {
        if (!(is.logical(input_json$`is_brand_sentiment`) && length(input_json$`is_brand_sentiment`) == 1)) {
          stop(paste("Error! Invalid data for `is_brand_sentiment`. Must be a boolean:", input_json$`is_brand_sentiment`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentRecord: the required field `is_brand_sentiment` is missing."))
      }
      # check the required field `executed_at`
      if (!is.null(input_json$`executed_at`)) {
        if (!(is.character(input_json$`executed_at`) && length(input_json$`executed_at`) == 1)) {
          stop(paste("Error! Invalid data for `executed_at`. Must be a string:", input_json$`executed_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentRecord: the required field `executed_at` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentRecord: the required field `created_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SentimentRecord
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

      # check if the required `prompt_execution_id` is null
      if (is.null(self$`prompt_execution_id`)) {
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

      # check if the required `analysis` is null
      if (is.null(self$`analysis`)) {
        return(FALSE)
      }

      # check if the required `is_brand_sentiment` is null
      if (is.null(self$`is_brand_sentiment`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
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

      # check if the required `prompt_execution_id` is null
      if (is.null(self$`prompt_execution_id`)) {
        invalid_fields["prompt_execution_id"] <- "Non-nullable required field `prompt_execution_id` cannot be null."
      }

      # check if the required `prompt_text` is null
      if (is.null(self$`prompt_text`)) {
        invalid_fields["prompt_text"] <- "Non-nullable required field `prompt_text` cannot be null."
      }

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        invalid_fields["model"] <- "Non-nullable required field `model` cannot be null."
      }

      # check if the required `analysis` is null
      if (is.null(self$`analysis`)) {
        invalid_fields["analysis"] <- "Non-nullable required field `analysis` cannot be null."
      }

      # check if the required `is_brand_sentiment` is null
      if (is.null(self$`is_brand_sentiment`)) {
        invalid_fields["is_brand_sentiment"] <- "Non-nullable required field `is_brand_sentiment` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
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
# SentimentRecord$unlock()
#
## Below is an example to define the print function
# SentimentRecord$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SentimentRecord$lock()

