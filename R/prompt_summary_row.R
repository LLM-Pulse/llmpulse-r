#' Create a new PromptSummaryRow
#'
#' @description
#' PromptSummaryRow Class
#'
#' @docType class
#' @title PromptSummaryRow
#' @description PromptSummaryRow Class
#' @format An \code{R6Class} generator object
#' @field prompt_id  integer [optional]
#' @field prompt_text  character [optional]
#' @field model Only present when breakdown=model character [optional]
#' @field responses  integer [optional]
#' @field mentions  integer [optional]
#' @field citations  integer [optional]
#' @field visibility  numeric [optional]
#' @field mention_rate  numeric [optional]
#' @field citation_rate  numeric [optional]
#' @field avg_mention_position  numeric [optional]
#' @field avg_position  numeric [optional]
#' @field app_url Opens this prompt in the app. The link names its project, so it opens there for any user with access to that project character [optional]
#' @field country_code Country of the prompt, as in /dimensions/prompts character [optional]
#' @field language_code Language of the prompt, as in /dimensions/prompts character [optional]
#' @field prompt_type Search intent: informational, navigational, commercial or transactional. Null until the prompt is classified character [optional]
#' @field brand_kind Brand focus: brand, brand_other or non_brand. Null until the prompt is classified character [optional]
#' @field tags Every tag the prompt belongs to list(\link{TagRef}) [optional]
#' @field sentiment_responses Responses in the window with a sentiment verdict for the brand, the base of the sentiment percentages (deduplicated like the sentiment timeseries) integer [optional]
#' @field sentiment_very_positive Percentage (0-100) of sentiment_responses whose brand verdict is very positive; null when sentiment_responses is 0 numeric [optional]
#' @field sentiment_positive Percentage (0-100) of sentiment_responses whose brand verdict is positive; null when sentiment_responses is 0 numeric [optional]
#' @field sentiment_neutral Percentage (0-100) of sentiment_responses whose brand verdict is neutral; null when sentiment_responses is 0 numeric [optional]
#' @field sentiment_negative Percentage (0-100) of sentiment_responses whose brand verdict is negative; null when sentiment_responses is 0 numeric [optional]
#' @field sentiment_very_negative Percentage (0-100) of sentiment_responses whose brand verdict is very negative; null when sentiment_responses is 0 numeric [optional]
#' @field net_sentiment Positive minus negative percentages (-100 to 100), neutral counted in the base; null when sentiment_responses is 0 numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptSummaryRow <- R6::R6Class(
  "PromptSummaryRow",
  public = list(
    `prompt_id` = NULL,
    `prompt_text` = NULL,
    `model` = NULL,
    `responses` = NULL,
    `mentions` = NULL,
    `citations` = NULL,
    `visibility` = NULL,
    `mention_rate` = NULL,
    `citation_rate` = NULL,
    `avg_mention_position` = NULL,
    `avg_position` = NULL,
    `app_url` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,
    `prompt_type` = NULL,
    `brand_kind` = NULL,
    `tags` = NULL,
    `sentiment_responses` = NULL,
    `sentiment_very_positive` = NULL,
    `sentiment_positive` = NULL,
    `sentiment_neutral` = NULL,
    `sentiment_negative` = NULL,
    `sentiment_very_negative` = NULL,
    `net_sentiment` = NULL,

    #' @description
    #' Initialize a new PromptSummaryRow class.
    #'
    #' @param prompt_id prompt_id
    #' @param prompt_text prompt_text
    #' @param model Only present when breakdown=model
    #' @param responses responses
    #' @param mentions mentions
    #' @param citations citations
    #' @param visibility visibility
    #' @param mention_rate mention_rate
    #' @param citation_rate citation_rate
    #' @param avg_mention_position avg_mention_position
    #' @param avg_position avg_position
    #' @param app_url Opens this prompt in the app. The link names its project, so it opens there for any user with access to that project
    #' @param country_code Country of the prompt, as in /dimensions/prompts
    #' @param language_code Language of the prompt, as in /dimensions/prompts
    #' @param prompt_type Search intent: informational, navigational, commercial or transactional. Null until the prompt is classified
    #' @param brand_kind Brand focus: brand, brand_other or non_brand. Null until the prompt is classified
    #' @param tags Every tag the prompt belongs to
    #' @param sentiment_responses Responses in the window with a sentiment verdict for the brand, the base of the sentiment percentages (deduplicated like the sentiment timeseries)
    #' @param sentiment_very_positive Percentage (0-100) of sentiment_responses whose brand verdict is very positive; null when sentiment_responses is 0
    #' @param sentiment_positive Percentage (0-100) of sentiment_responses whose brand verdict is positive; null when sentiment_responses is 0
    #' @param sentiment_neutral Percentage (0-100) of sentiment_responses whose brand verdict is neutral; null when sentiment_responses is 0
    #' @param sentiment_negative Percentage (0-100) of sentiment_responses whose brand verdict is negative; null when sentiment_responses is 0
    #' @param sentiment_very_negative Percentage (0-100) of sentiment_responses whose brand verdict is very negative; null when sentiment_responses is 0
    #' @param net_sentiment Positive minus negative percentages (-100 to 100), neutral counted in the base; null when sentiment_responses is 0
    #' @param ... Other optional arguments.
    initialize = function(`prompt_id` = NULL, `prompt_text` = NULL, `model` = NULL, `responses` = NULL, `mentions` = NULL, `citations` = NULL, `visibility` = NULL, `mention_rate` = NULL, `citation_rate` = NULL, `avg_mention_position` = NULL, `avg_position` = NULL, `app_url` = NULL, `country_code` = NULL, `language_code` = NULL, `prompt_type` = NULL, `brand_kind` = NULL, `tags` = NULL, `sentiment_responses` = NULL, `sentiment_very_positive` = NULL, `sentiment_positive` = NULL, `sentiment_neutral` = NULL, `sentiment_negative` = NULL, `sentiment_very_negative` = NULL, `net_sentiment` = NULL, ...) {
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
      if (!is.null(`responses`)) {
        if (!(is.numeric(`responses`) && length(`responses`) == 1)) {
          stop(paste("Error! Invalid data for `responses`. Must be an integer:", `responses`))
        }
        self$`responses` <- `responses`
      }
      if (!is.null(`mentions`)) {
        if (!(is.numeric(`mentions`) && length(`mentions`) == 1)) {
          stop(paste("Error! Invalid data for `mentions`. Must be an integer:", `mentions`))
        }
        self$`mentions` <- `mentions`
      }
      if (!is.null(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
      }
      if (!is.null(`visibility`)) {
        self$`visibility` <- `visibility`
      }
      if (!is.null(`mention_rate`)) {
        self$`mention_rate` <- `mention_rate`
      }
      if (!is.null(`citation_rate`)) {
        self$`citation_rate` <- `citation_rate`
      }
      if (!is.null(`avg_mention_position`)) {
        self$`avg_mention_position` <- `avg_mention_position`
      }
      if (!is.null(`avg_position`)) {
        self$`avg_position` <- `avg_position`
      }
      if (!is.null(`app_url`)) {
        if (!(is.character(`app_url`) && length(`app_url`) == 1)) {
          stop(paste("Error! Invalid data for `app_url`. Must be a string:", `app_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `app_url`. Must be a URL:", `app_url`))
        }
        self$`app_url` <- `app_url`
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
      if (!is.null(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(R6::is.R6(x)))
        self$`tags` <- `tags`
      }
      if (!is.null(`sentiment_responses`)) {
        if (!(is.numeric(`sentiment_responses`) && length(`sentiment_responses`) == 1)) {
          stop(paste("Error! Invalid data for `sentiment_responses`. Must be an integer:", `sentiment_responses`))
        }
        self$`sentiment_responses` <- `sentiment_responses`
      }
      if (!is.null(`sentiment_very_positive`)) {
        self$`sentiment_very_positive` <- `sentiment_very_positive`
      }
      if (!is.null(`sentiment_positive`)) {
        self$`sentiment_positive` <- `sentiment_positive`
      }
      if (!is.null(`sentiment_neutral`)) {
        self$`sentiment_neutral` <- `sentiment_neutral`
      }
      if (!is.null(`sentiment_negative`)) {
        self$`sentiment_negative` <- `sentiment_negative`
      }
      if (!is.null(`sentiment_very_negative`)) {
        self$`sentiment_very_negative` <- `sentiment_very_negative`
      }
      if (!is.null(`net_sentiment`)) {
        self$`net_sentiment` <- `net_sentiment`
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
    #' @return PromptSummaryRow as a base R list.
    #' @examples
    #' # convert array of PromptSummaryRow (x) to a data frame
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
    #' Convert PromptSummaryRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptSummaryRowObject <- list()
      if (!is.null(self$`prompt_id`)) {
        PromptSummaryRowObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`prompt_text`)) {
        PromptSummaryRowObject[["prompt_text"]] <-
          self$`prompt_text`
      }
      if (!is.null(self$`model`)) {
        PromptSummaryRowObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`responses`)) {
        PromptSummaryRowObject[["responses"]] <-
          self$`responses`
      }
      if (!is.null(self$`mentions`)) {
        PromptSummaryRowObject[["mentions"]] <-
          self$`mentions`
      }
      if (!is.null(self$`citations`)) {
        PromptSummaryRowObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`visibility`)) {
        PromptSummaryRowObject[["visibility"]] <-
          self$`visibility`
      }
      if (!is.null(self$`mention_rate`)) {
        PromptSummaryRowObject[["mention_rate"]] <-
          self$`mention_rate`
      }
      if (!is.null(self$`citation_rate`)) {
        PromptSummaryRowObject[["citation_rate"]] <-
          self$`citation_rate`
      }
      if (!is.null(self$`avg_mention_position`)) {
        PromptSummaryRowObject[["avg_mention_position"]] <-
          self$`avg_mention_position`
      }
      if (!is.null(self$`avg_position`)) {
        PromptSummaryRowObject[["avg_position"]] <-
          self$`avg_position`
      }
      if (!is.null(self$`app_url`)) {
        PromptSummaryRowObject[["app_url"]] <-
          self$`app_url`
      }
      if (!is.null(self$`country_code`)) {
        PromptSummaryRowObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        PromptSummaryRowObject[["language_code"]] <-
          self$`language_code`
      }
      if (!is.null(self$`prompt_type`)) {
        PromptSummaryRowObject[["prompt_type"]] <-
          self$`prompt_type`
      }
      if (!is.null(self$`brand_kind`)) {
        PromptSummaryRowObject[["brand_kind"]] <-
          self$`brand_kind`
      }
      if (!is.null(self$`tags`)) {
        PromptSummaryRowObject[["tags"]] <-
          self$extractSimpleType(self$`tags`)
      }
      if (!is.null(self$`sentiment_responses`)) {
        PromptSummaryRowObject[["sentiment_responses"]] <-
          self$`sentiment_responses`
      }
      if (!is.null(self$`sentiment_very_positive`)) {
        PromptSummaryRowObject[["sentiment_very_positive"]] <-
          self$`sentiment_very_positive`
      }
      if (!is.null(self$`sentiment_positive`)) {
        PromptSummaryRowObject[["sentiment_positive"]] <-
          self$`sentiment_positive`
      }
      if (!is.null(self$`sentiment_neutral`)) {
        PromptSummaryRowObject[["sentiment_neutral"]] <-
          self$`sentiment_neutral`
      }
      if (!is.null(self$`sentiment_negative`)) {
        PromptSummaryRowObject[["sentiment_negative"]] <-
          self$`sentiment_negative`
      }
      if (!is.null(self$`sentiment_very_negative`)) {
        PromptSummaryRowObject[["sentiment_very_negative"]] <-
          self$`sentiment_very_negative`
      }
      if (!is.null(self$`net_sentiment`)) {
        PromptSummaryRowObject[["net_sentiment"]] <-
          self$`net_sentiment`
      }
      return(PromptSummaryRowObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptSummaryRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptSummaryRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`prompt_id`)) {
        self$`prompt_id` <- this_object$`prompt_id`
      }
      if (!is.null(this_object$`prompt_text`)) {
        self$`prompt_text` <- this_object$`prompt_text`
      }
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`responses`)) {
        self$`responses` <- this_object$`responses`
      }
      if (!is.null(this_object$`mentions`)) {
        self$`mentions` <- this_object$`mentions`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      if (!is.null(this_object$`visibility`)) {
        self$`visibility` <- this_object$`visibility`
      }
      if (!is.null(this_object$`mention_rate`)) {
        self$`mention_rate` <- this_object$`mention_rate`
      }
      if (!is.null(this_object$`citation_rate`)) {
        self$`citation_rate` <- this_object$`citation_rate`
      }
      if (!is.null(this_object$`avg_mention_position`)) {
        self$`avg_mention_position` <- this_object$`avg_mention_position`
      }
      if (!is.null(this_object$`avg_position`)) {
        self$`avg_position` <- this_object$`avg_position`
      }
      if (!is.null(this_object$`app_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `app_url`. Must be a URL:", this_object$`app_url`))
        }
        self$`app_url` <- this_object$`app_url`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      if (!is.null(this_object$`prompt_type`)) {
        self$`prompt_type` <- this_object$`prompt_type`
      }
      if (!is.null(this_object$`brand_kind`)) {
        self$`brand_kind` <- this_object$`brand_kind`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[TagRef]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`sentiment_responses`)) {
        self$`sentiment_responses` <- this_object$`sentiment_responses`
      }
      if (!is.null(this_object$`sentiment_very_positive`)) {
        self$`sentiment_very_positive` <- this_object$`sentiment_very_positive`
      }
      if (!is.null(this_object$`sentiment_positive`)) {
        self$`sentiment_positive` <- this_object$`sentiment_positive`
      }
      if (!is.null(this_object$`sentiment_neutral`)) {
        self$`sentiment_neutral` <- this_object$`sentiment_neutral`
      }
      if (!is.null(this_object$`sentiment_negative`)) {
        self$`sentiment_negative` <- this_object$`sentiment_negative`
      }
      if (!is.null(this_object$`sentiment_very_negative`)) {
        self$`sentiment_very_negative` <- this_object$`sentiment_very_negative`
      }
      if (!is.null(this_object$`net_sentiment`)) {
        self$`net_sentiment` <- this_object$`net_sentiment`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PromptSummaryRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptSummaryRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptSummaryRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`prompt_id` <- this_object$`prompt_id`
      self$`prompt_text` <- this_object$`prompt_text`
      self$`model` <- this_object$`model`
      self$`responses` <- this_object$`responses`
      self$`mentions` <- this_object$`mentions`
      self$`citations` <- this_object$`citations`
      self$`visibility` <- this_object$`visibility`
      self$`mention_rate` <- this_object$`mention_rate`
      self$`citation_rate` <- this_object$`citation_rate`
      self$`avg_mention_position` <- this_object$`avg_mention_position`
      self$`avg_position` <- this_object$`avg_position`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `app_url`. Must be a URL:", this_object$`app_url`))
      }
      self$`app_url` <- this_object$`app_url`
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self$`prompt_type` <- this_object$`prompt_type`
      self$`brand_kind` <- this_object$`brand_kind`
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[TagRef]", loadNamespace("llmpulse"))
      self$`sentiment_responses` <- this_object$`sentiment_responses`
      self$`sentiment_very_positive` <- this_object$`sentiment_very_positive`
      self$`sentiment_positive` <- this_object$`sentiment_positive`
      self$`sentiment_neutral` <- this_object$`sentiment_neutral`
      self$`sentiment_negative` <- this_object$`sentiment_negative`
      self$`sentiment_very_negative` <- this_object$`sentiment_very_negative`
      self$`net_sentiment` <- this_object$`net_sentiment`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptSummaryRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptSummaryRow
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
# PromptSummaryRow$unlock()
#
## Below is an example to define the print function
# PromptSummaryRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptSummaryRow$lock()

