#' Create a new AdRow
#'
#' @description
#' One row of /dimensions/ads. Fields depend on view: advertisers (domain, ads, executions, prompts, avg_position, best_position) and ads (id, model, title, snippet, url, domain, position, is_client, prompt_id, prompt_text, prompt_execution_id, executed_at).
#'
#' @docType class
#' @title AdRow
#' @description AdRow Class
#' @format An \code{R6Class} generator object
#' @field domain Advertising domain; null on a placement that names none (view=ads) character
#' @field ads Placements of the domain (view=advertisers) integer [optional]
#' @field executions Answers that carried them (view=advertisers) integer [optional]
#' @field prompts Distinct prompts that triggered them (view=advertisers) integer [optional]
#' @field avg_position Average position, 1 is the best slot; null when no placement has one (view=advertisers) numeric [optional]
#' @field best_position Best position, 1 is the best slot (view=advertisers) integer [optional]
#' @field id The placement (view=ads) integer [optional]
#' @field model  character [optional]
#' @field title  character [optional]
#' @field snippet  character [optional]
#' @field url  character [optional]
#' @field position Position of the placement, 1 is the best slot (view=ads) integer [optional]
#' @field is_client Whether the placement is identified as your brand's own (view=ads) character [optional]
#' @field prompt_id  integer [optional]
#' @field prompt_text  character [optional]
#' @field prompt_execution_id  integer [optional]
#' @field executed_at When the answer that carried the placement was collected (view=ads) character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdRow <- R6::R6Class(
  "AdRow",
  public = list(
    `domain` = NULL,
    `ads` = NULL,
    `executions` = NULL,
    `prompts` = NULL,
    `avg_position` = NULL,
    `best_position` = NULL,
    `id` = NULL,
    `model` = NULL,
    `title` = NULL,
    `snippet` = NULL,
    `url` = NULL,
    `position` = NULL,
    `is_client` = NULL,
    `prompt_id` = NULL,
    `prompt_text` = NULL,
    `prompt_execution_id` = NULL,
    `executed_at` = NULL,

    #' @description
    #' Initialize a new AdRow class.
    #'
    #' @param domain Advertising domain; null on a placement that names none (view=ads)
    #' @param ads Placements of the domain (view=advertisers)
    #' @param executions Answers that carried them (view=advertisers)
    #' @param prompts Distinct prompts that triggered them (view=advertisers)
    #' @param avg_position Average position, 1 is the best slot; null when no placement has one (view=advertisers)
    #' @param best_position Best position, 1 is the best slot (view=advertisers)
    #' @param id The placement (view=ads)
    #' @param model model
    #' @param title title
    #' @param snippet snippet
    #' @param url url
    #' @param position Position of the placement, 1 is the best slot (view=ads)
    #' @param is_client Whether the placement is identified as your brand's own (view=ads)
    #' @param prompt_id prompt_id
    #' @param prompt_text prompt_text
    #' @param prompt_execution_id prompt_execution_id
    #' @param executed_at When the answer that carried the placement was collected (view=ads)
    #' @param ... Other optional arguments.
    initialize = function(`domain`, `ads` = NULL, `executions` = NULL, `prompts` = NULL, `avg_position` = NULL, `best_position` = NULL, `id` = NULL, `model` = NULL, `title` = NULL, `snippet` = NULL, `url` = NULL, `position` = NULL, `is_client` = NULL, `prompt_id` = NULL, `prompt_text` = NULL, `prompt_execution_id` = NULL, `executed_at` = NULL, ...) {
      if (!missing(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!is.null(`ads`)) {
        if (!(is.numeric(`ads`) && length(`ads`) == 1)) {
          stop(paste("Error! Invalid data for `ads`. Must be an integer:", `ads`))
        }
        self$`ads` <- `ads`
      }
      if (!is.null(`executions`)) {
        if (!(is.numeric(`executions`) && length(`executions`) == 1)) {
          stop(paste("Error! Invalid data for `executions`. Must be an integer:", `executions`))
        }
        self$`executions` <- `executions`
      }
      if (!is.null(`prompts`)) {
        if (!(is.numeric(`prompts`) && length(`prompts`) == 1)) {
          stop(paste("Error! Invalid data for `prompts`. Must be an integer:", `prompts`))
        }
        self$`prompts` <- `prompts`
      }
      if (!is.null(`avg_position`)) {
        self$`avg_position` <- `avg_position`
      }
      if (!is.null(`best_position`)) {
        if (!(is.numeric(`best_position`) && length(`best_position`) == 1)) {
          stop(paste("Error! Invalid data for `best_position`. Must be an integer:", `best_position`))
        }
        self$`best_position` <- `best_position`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`model`)) {
        if (!(`model` %in% c("chatgpt", "perplexity", "ai_mode", "ai_overview", "gemini", "copilot", "amazon_rufus", "claude", "grok", "deepseek", "naver_ai", "baidu_ai", "meta_ai", "naver_ai_tab", "qwen", "doubao", "bing_ai_mode", "bing_ai_overview"))) {
          stop(paste("Error! \"", `model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"ai_mode\", \"ai_overview\", \"gemini\", \"copilot\", \"amazon_rufus\", \"claude\", \"grok\", \"deepseek\", \"naver_ai\", \"baidu_ai\", \"meta_ai\", \"naver_ai_tab\", \"qwen\", \"doubao\", \"bing_ai_mode\", \"bing_ai_overview\".", sep = ""))
        }
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`snippet`)) {
        if (!(is.character(`snippet`) && length(`snippet`) == 1)) {
          stop(paste("Error! Invalid data for `snippet`. Must be a string:", `snippet`))
        }
        self$`snippet` <- `snippet`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`position`)) {
        if (!(is.numeric(`position`) && length(`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", `position`))
        }
        self$`position` <- `position`
      }
      if (!is.null(`is_client`)) {
        if (!(is.logical(`is_client`) && length(`is_client`) == 1)) {
          stop(paste("Error! Invalid data for `is_client`. Must be a boolean:", `is_client`))
        }
        self$`is_client` <- `is_client`
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
      if (!is.null(`prompt_execution_id`)) {
        if (!(is.numeric(`prompt_execution_id`) && length(`prompt_execution_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_execution_id`. Must be an integer:", `prompt_execution_id`))
        }
        self$`prompt_execution_id` <- `prompt_execution_id`
      }
      if (!is.null(`executed_at`)) {
        if (!is.character(`executed_at`)) {
          stop(paste("Error! Invalid data for `executed_at`. Must be a string:", `executed_at`))
        }
        self$`executed_at` <- `executed_at`
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
    #' @return AdRow as a base R list.
    #' @examples
    #' # convert array of AdRow (x) to a data frame
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
    #' Convert AdRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdRowObject <- list()
      if (!is.null(self$`domain`)) {
        AdRowObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`ads`)) {
        AdRowObject[["ads"]] <-
          self$`ads`
      }
      if (!is.null(self$`executions`)) {
        AdRowObject[["executions"]] <-
          self$`executions`
      }
      if (!is.null(self$`prompts`)) {
        AdRowObject[["prompts"]] <-
          self$`prompts`
      }
      if (!is.null(self$`avg_position`)) {
        AdRowObject[["avg_position"]] <-
          self$`avg_position`
      }
      if (!is.null(self$`best_position`)) {
        AdRowObject[["best_position"]] <-
          self$`best_position`
      }
      if (!is.null(self$`id`)) {
        AdRowObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`model`)) {
        AdRowObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`title`)) {
        AdRowObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`snippet`)) {
        AdRowObject[["snippet"]] <-
          self$`snippet`
      }
      if (!is.null(self$`url`)) {
        AdRowObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`position`)) {
        AdRowObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`is_client`)) {
        AdRowObject[["is_client"]] <-
          self$`is_client`
      }
      if (!is.null(self$`prompt_id`)) {
        AdRowObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`prompt_text`)) {
        AdRowObject[["prompt_text"]] <-
          self$`prompt_text`
      }
      if (!is.null(self$`prompt_execution_id`)) {
        AdRowObject[["prompt_execution_id"]] <-
          self$`prompt_execution_id`
      }
      if (!is.null(self$`executed_at`)) {
        AdRowObject[["executed_at"]] <-
          self$`executed_at`
      }
      return(AdRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`ads`)) {
        self$`ads` <- this_object$`ads`
      }
      if (!is.null(this_object$`executions`)) {
        self$`executions` <- this_object$`executions`
      }
      if (!is.null(this_object$`prompts`)) {
        self$`prompts` <- this_object$`prompts`
      }
      if (!is.null(this_object$`avg_position`)) {
        self$`avg_position` <- this_object$`avg_position`
      }
      if (!is.null(this_object$`best_position`)) {
        self$`best_position` <- this_object$`best_position`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`model`)) {
        if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("chatgpt", "perplexity", "ai_mode", "ai_overview", "gemini", "copilot", "amazon_rufus", "claude", "grok", "deepseek", "naver_ai", "baidu_ai", "meta_ai", "naver_ai_tab", "qwen", "doubao", "bing_ai_mode", "bing_ai_overview"))) {
          stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"ai_mode\", \"ai_overview\", \"gemini\", \"copilot\", \"amazon_rufus\", \"claude\", \"grok\", \"deepseek\", \"naver_ai\", \"baidu_ai\", \"meta_ai\", \"naver_ai_tab\", \"qwen\", \"doubao\", \"bing_ai_mode\", \"bing_ai_overview\".", sep = ""))
        }
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`snippet`)) {
        self$`snippet` <- this_object$`snippet`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      if (!is.null(this_object$`is_client`)) {
        self$`is_client` <- this_object$`is_client`
      }
      if (!is.null(this_object$`prompt_id`)) {
        self$`prompt_id` <- this_object$`prompt_id`
      }
      if (!is.null(this_object$`prompt_text`)) {
        self$`prompt_text` <- this_object$`prompt_text`
      }
      if (!is.null(this_object$`prompt_execution_id`)) {
        self$`prompt_execution_id` <- this_object$`prompt_execution_id`
      }
      if (!is.null(this_object$`executed_at`)) {
        self$`executed_at` <- this_object$`executed_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`domain` <- this_object$`domain`
      self$`ads` <- this_object$`ads`
      self$`executions` <- this_object$`executions`
      self$`prompts` <- this_object$`prompts`
      self$`avg_position` <- this_object$`avg_position`
      self$`best_position` <- this_object$`best_position`
      self$`id` <- this_object$`id`
      if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("chatgpt", "perplexity", "ai_mode", "ai_overview", "gemini", "copilot", "amazon_rufus", "claude", "grok", "deepseek", "naver_ai", "baidu_ai", "meta_ai", "naver_ai_tab", "qwen", "doubao", "bing_ai_mode", "bing_ai_overview"))) {
        stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"ai_mode\", \"ai_overview\", \"gemini\", \"copilot\", \"amazon_rufus\", \"claude\", \"grok\", \"deepseek\", \"naver_ai\", \"baidu_ai\", \"meta_ai\", \"naver_ai_tab\", \"qwen\", \"doubao\", \"bing_ai_mode\", \"bing_ai_overview\".", sep = ""))
      }
      self$`model` <- this_object$`model`
      self$`title` <- this_object$`title`
      self$`snippet` <- this_object$`snippet`
      self$`url` <- this_object$`url`
      self$`position` <- this_object$`position`
      self$`is_client` <- this_object$`is_client`
      self$`prompt_id` <- this_object$`prompt_id`
      self$`prompt_text` <- this_object$`prompt_text`
      self$`prompt_execution_id` <- this_object$`prompt_execution_id`
      self$`executed_at` <- this_object$`executed_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to AdRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `domain`
      if (!is.null(input_json$`domain`)) {
        if (!(is.character(input_json$`domain`) && length(input_json$`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", input_json$`domain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AdRow: the required field `domain` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdRow
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
# AdRow$unlock()
#
## Below is an example to define the print function
# AdRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdRow$lock()

