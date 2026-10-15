#' Create a new PromptGenerationRequest
#'
#' @description
#' PromptGenerationRequest Class
#'
#' @docType class
#' @title PromptGenerationRequest
#' @description PromptGenerationRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field source Which Add prompts generator to run character
#' @field query keyword: optional keyword or research query. topic and reddit: required topic (reddit: the brand when search_type=brand). paa: one keyword, as an alternative to keywords. character [optional]
#' @field count keyword and topic: how many suggestions to ask for, capped by the prompt slots left integer [optional]
#' @field country_code ISO 3166-1 alpha-2 country of the suggestions (default the project country) character [optional]
#' @field language_code ISO language code of the suggestions (default the project language) character [optional]
#' @field competitor_id keyword: write the suggestions around this competitor of the project integer [optional]
#' @field search_type reddit: search discussions of a topic or a brand character [optional]
#' @field keywords paa: up to 5 keywords; each is a People Also Ask lookup counted against the account's 24-hour allowance list(character) [optional]
#' @field source_country_code translate: country of the prompts to translate character [optional]
#' @field source_language_code translate: language of the prompts to translate character [optional]
#' @field min_words search_console: skip queries shorter than this many words integer [optional]
#' @field all_countries search_console: include queries from every country instead of country_code only character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptGenerationRequest <- R6::R6Class(
  "PromptGenerationRequest",
  public = list(
    `project_id` = NULL,
    `source` = NULL,
    `query` = NULL,
    `count` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,
    `competitor_id` = NULL,
    `search_type` = NULL,
    `keywords` = NULL,
    `source_country_code` = NULL,
    `source_language_code` = NULL,
    `min_words` = NULL,
    `all_countries` = NULL,

    #' @description
    #' Initialize a new PromptGenerationRequest class.
    #'
    #' @param project_id project_id
    #' @param source Which Add prompts generator to run
    #' @param query keyword: optional keyword or research query. topic and reddit: required topic (reddit: the brand when search_type=brand). paa: one keyword, as an alternative to keywords.
    #' @param count keyword and topic: how many suggestions to ask for, capped by the prompt slots left. Default to 20.
    #' @param country_code ISO 3166-1 alpha-2 country of the suggestions (default the project country)
    #' @param language_code ISO language code of the suggestions (default the project language)
    #' @param competitor_id keyword: write the suggestions around this competitor of the project
    #' @param search_type reddit: search discussions of a topic or a brand. Default to "topic".
    #' @param keywords paa: up to 5 keywords; each is a People Also Ask lookup counted against the account's 24-hour allowance
    #' @param source_country_code translate: country of the prompts to translate
    #' @param source_language_code translate: language of the prompts to translate
    #' @param min_words search_console: skip queries shorter than this many words. Default to 0.
    #' @param all_countries search_console: include queries from every country instead of country_code only. Default to FALSE.
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `source`, `query` = NULL, `count` = 20, `country_code` = NULL, `language_code` = NULL, `competitor_id` = NULL, `search_type` = "topic", `keywords` = NULL, `source_country_code` = NULL, `source_language_code` = NULL, `min_words` = 0, `all_countries` = FALSE, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`source`)) {
        if (!(`source` %in% c("website", "keyword", "topic", "reddit", "paa", "reputational", "translate", "search_console"))) {
          stop(paste("Error! \"", `source`, "\" cannot be assigned to `source`. Must be \"website\", \"keyword\", \"topic\", \"reddit\", \"paa\", \"reputational\", \"translate\", \"search_console\".", sep = ""))
        }
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`query`)) {
        if (!(is.character(`query`) && length(`query`) == 1)) {
          stop(paste("Error! Invalid data for `query`. Must be a string:", `query`))
        }
        self$`query` <- `query`
      }
      if (!is.null(`count`)) {
        if (!(is.numeric(`count`) && length(`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", `count`))
        }
        self$`count` <- `count`
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
      if (!is.null(`competitor_id`)) {
        if (!(is.numeric(`competitor_id`) && length(`competitor_id`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_id`. Must be an integer:", `competitor_id`))
        }
        self$`competitor_id` <- `competitor_id`
      }
      if (!is.null(`search_type`)) {
        if (!(`search_type` %in% c("topic", "brand"))) {
          stop(paste("Error! \"", `search_type`, "\" cannot be assigned to `search_type`. Must be \"topic\", \"brand\".", sep = ""))
        }
        if (!(is.character(`search_type`) && length(`search_type`) == 1)) {
          stop(paste("Error! Invalid data for `search_type`. Must be a string:", `search_type`))
        }
        self$`search_type` <- `search_type`
      }
      if (!is.null(`keywords`)) {
        stopifnot(is.vector(`keywords`), length(`keywords`) != 0)
        sapply(`keywords`, function(x) stopifnot(is.character(x)))
        self$`keywords` <- `keywords`
      }
      if (!is.null(`source_country_code`)) {
        if (!(is.character(`source_country_code`) && length(`source_country_code`) == 1)) {
          stop(paste("Error! Invalid data for `source_country_code`. Must be a string:", `source_country_code`))
        }
        self$`source_country_code` <- `source_country_code`
      }
      if (!is.null(`source_language_code`)) {
        if (!(is.character(`source_language_code`) && length(`source_language_code`) == 1)) {
          stop(paste("Error! Invalid data for `source_language_code`. Must be a string:", `source_language_code`))
        }
        self$`source_language_code` <- `source_language_code`
      }
      if (!is.null(`min_words`)) {
        if (!(is.numeric(`min_words`) && length(`min_words`) == 1)) {
          stop(paste("Error! Invalid data for `min_words`. Must be an integer:", `min_words`))
        }
        self$`min_words` <- `min_words`
      }
      if (!is.null(`all_countries`)) {
        if (!(is.logical(`all_countries`) && length(`all_countries`) == 1)) {
          stop(paste("Error! Invalid data for `all_countries`. Must be a boolean:", `all_countries`))
        }
        self$`all_countries` <- `all_countries`
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
    #' @return PromptGenerationRequest as a base R list.
    #' @examples
    #' # convert array of PromptGenerationRequest (x) to a data frame
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
    #' Convert PromptGenerationRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptGenerationRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        PromptGenerationRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`source`)) {
        PromptGenerationRequestObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`query`)) {
        PromptGenerationRequestObject[["query"]] <-
          self$`query`
      }
      if (!is.null(self$`count`)) {
        PromptGenerationRequestObject[["count"]] <-
          self$`count`
      }
      if (!is.null(self$`country_code`)) {
        PromptGenerationRequestObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        PromptGenerationRequestObject[["language_code"]] <-
          self$`language_code`
      }
      if (!is.null(self$`competitor_id`)) {
        PromptGenerationRequestObject[["competitor_id"]] <-
          self$`competitor_id`
      }
      if (!is.null(self$`search_type`)) {
        PromptGenerationRequestObject[["search_type"]] <-
          self$`search_type`
      }
      if (!is.null(self$`keywords`)) {
        PromptGenerationRequestObject[["keywords"]] <-
          self$`keywords`
      }
      if (!is.null(self$`source_country_code`)) {
        PromptGenerationRequestObject[["source_country_code"]] <-
          self$`source_country_code`
      }
      if (!is.null(self$`source_language_code`)) {
        PromptGenerationRequestObject[["source_language_code"]] <-
          self$`source_language_code`
      }
      if (!is.null(self$`min_words`)) {
        PromptGenerationRequestObject[["min_words"]] <-
          self$`min_words`
      }
      if (!is.null(self$`all_countries`)) {
        PromptGenerationRequestObject[["all_countries"]] <-
          self$`all_countries`
      }
      return(PromptGenerationRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptGenerationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptGenerationRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`source`)) {
        if (!is.null(this_object$`source`) && !(this_object$`source` %in% c("website", "keyword", "topic", "reddit", "paa", "reputational", "translate", "search_console"))) {
          stop(paste("Error! \"", this_object$`source`, "\" cannot be assigned to `source`. Must be \"website\", \"keyword\", \"topic\", \"reddit\", \"paa\", \"reputational\", \"translate\", \"search_console\".", sep = ""))
        }
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`query`)) {
        self$`query` <- this_object$`query`
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      if (!is.null(this_object$`competitor_id`)) {
        self$`competitor_id` <- this_object$`competitor_id`
      }
      if (!is.null(this_object$`search_type`)) {
        if (!is.null(this_object$`search_type`) && !(this_object$`search_type` %in% c("topic", "brand"))) {
          stop(paste("Error! \"", this_object$`search_type`, "\" cannot be assigned to `search_type`. Must be \"topic\", \"brand\".", sep = ""))
        }
        self$`search_type` <- this_object$`search_type`
      }
      if (!is.null(this_object$`keywords`)) {
        self$`keywords` <- ApiClient$new()$deserializeObj(this_object$`keywords`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`source_country_code`)) {
        self$`source_country_code` <- this_object$`source_country_code`
      }
      if (!is.null(this_object$`source_language_code`)) {
        self$`source_language_code` <- this_object$`source_language_code`
      }
      if (!is.null(this_object$`min_words`)) {
        self$`min_words` <- this_object$`min_words`
      }
      if (!is.null(this_object$`all_countries`)) {
        self$`all_countries` <- this_object$`all_countries`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PromptGenerationRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptGenerationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptGenerationRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`source`) && !(this_object$`source` %in% c("website", "keyword", "topic", "reddit", "paa", "reputational", "translate", "search_console"))) {
        stop(paste("Error! \"", this_object$`source`, "\" cannot be assigned to `source`. Must be \"website\", \"keyword\", \"topic\", \"reddit\", \"paa\", \"reputational\", \"translate\", \"search_console\".", sep = ""))
      }
      self$`source` <- this_object$`source`
      self$`query` <- this_object$`query`
      self$`count` <- this_object$`count`
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self$`competitor_id` <- this_object$`competitor_id`
      if (!is.null(this_object$`search_type`) && !(this_object$`search_type` %in% c("topic", "brand"))) {
        stop(paste("Error! \"", this_object$`search_type`, "\" cannot be assigned to `search_type`. Must be \"topic\", \"brand\".", sep = ""))
      }
      self$`search_type` <- this_object$`search_type`
      self$`keywords` <- ApiClient$new()$deserializeObj(this_object$`keywords`, "array[character]", loadNamespace("llmpulse"))
      self$`source_country_code` <- this_object$`source_country_code`
      self$`source_language_code` <- this_object$`source_language_code`
      self$`min_words` <- this_object$`min_words`
      self$`all_countries` <- this_object$`all_countries`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptGenerationRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `project_id`
      if (!is.null(input_json$`project_id`)) {
        if (!(is.numeric(input_json$`project_id`) && length(input_json$`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", input_json$`project_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptGenerationRequest: the required field `project_id` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptGenerationRequest: the required field `source` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptGenerationRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      if (nchar(self$`query`) > 500) {
        return(FALSE)
      }

      if (self$`count` > 100) {
        return(FALSE)
      }
      if (self$`count` < 1) {
        return(FALSE)
      }

      if (length(self$`keywords`) > 5) {
        return(FALSE)
      }

      if (self$`min_words` > 10) {
        return(FALSE)
      }
      if (self$`min_words` < 0) {
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
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        invalid_fields["project_id"] <- "Non-nullable required field `project_id` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      if (nchar(self$`query`) > 500) {
        invalid_fields["query"] <- "Invalid length for `query`, must be smaller than or equal to 500."
      }

      if (self$`count` > 100) {
        invalid_fields["count"] <- "Invalid value for `count`, must be smaller than or equal to 100."
      }
      if (self$`count` < 1) {
        invalid_fields["count"] <- "Invalid value for `count`, must be bigger than or equal to 1."
      }

      if (length(self$`keywords`) > 5) {
        invalid_fields["keywords"] <- "Invalid length for `keywords`, number of items must be less than or equal to 5."
      }

      if (self$`min_words` > 10) {
        invalid_fields["min_words"] <- "Invalid value for `min_words`, must be smaller than or equal to 10."
      }
      if (self$`min_words` < 0) {
        invalid_fields["min_words"] <- "Invalid value for `min_words`, must be bigger than or equal to 0."
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
# PromptGenerationRequest$unlock()
#
## Below is an example to define the print function
# PromptGenerationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptGenerationRequest$lock()

