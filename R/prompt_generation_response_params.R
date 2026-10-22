#' Create a new PromptGenerationResponseParams
#'
#' @description
#' The validated request the run uses, with the project's locale filled in
#'
#' @docType class
#' @title PromptGenerationResponseParams
#' @description PromptGenerationResponseParams Class
#' @format An \code{R6Class} generator object
#' @field country_code  character [optional]
#' @field language_code  character [optional]
#' @field query  character [optional]
#' @field count  integer [optional]
#' @field competitor_id  integer [optional]
#' @field search_type  character [optional]
#' @field keywords  list(character) [optional]
#' @field source_country_code  character [optional]
#' @field source_language_code  character [optional]
#' @field min_words  integer [optional]
#' @field all_countries  character [optional]
#' @field property  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptGenerationResponseParams <- R6::R6Class(
  "PromptGenerationResponseParams",
  public = list(
    `country_code` = NULL,
    `language_code` = NULL,
    `query` = NULL,
    `count` = NULL,
    `competitor_id` = NULL,
    `search_type` = NULL,
    `keywords` = NULL,
    `source_country_code` = NULL,
    `source_language_code` = NULL,
    `min_words` = NULL,
    `all_countries` = NULL,
    `property` = NULL,

    #' @description
    #' Initialize a new PromptGenerationResponseParams class.
    #'
    #' @param country_code country_code
    #' @param language_code language_code
    #' @param query query
    #' @param count count
    #' @param competitor_id competitor_id
    #' @param search_type search_type
    #' @param keywords keywords
    #' @param source_country_code source_country_code
    #' @param source_language_code source_language_code
    #' @param min_words min_words
    #' @param all_countries all_countries
    #' @param property property
    #' @param ... Other optional arguments.
    initialize = function(`country_code` = NULL, `language_code` = NULL, `query` = NULL, `count` = NULL, `competitor_id` = NULL, `search_type` = NULL, `keywords` = NULL, `source_country_code` = NULL, `source_language_code` = NULL, `min_words` = NULL, `all_countries` = NULL, `property` = NULL, ...) {
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
      if (!is.null(`competitor_id`)) {
        if (!(is.numeric(`competitor_id`) && length(`competitor_id`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_id`. Must be an integer:", `competitor_id`))
        }
        self$`competitor_id` <- `competitor_id`
      }
      if (!is.null(`search_type`)) {
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
      if (!is.null(`property`)) {
        if (!(is.character(`property`) && length(`property`) == 1)) {
          stop(paste("Error! Invalid data for `property`. Must be a string:", `property`))
        }
        self$`property` <- `property`
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
    #' @return PromptGenerationResponseParams as a base R list.
    #' @examples
    #' # convert array of PromptGenerationResponseParams (x) to a data frame
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
    #' Convert PromptGenerationResponseParams to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptGenerationResponseParamsObject <- list()
      if (!is.null(self$`country_code`)) {
        PromptGenerationResponseParamsObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        PromptGenerationResponseParamsObject[["language_code"]] <-
          self$`language_code`
      }
      if (!is.null(self$`query`)) {
        PromptGenerationResponseParamsObject[["query"]] <-
          self$`query`
      }
      if (!is.null(self$`count`)) {
        PromptGenerationResponseParamsObject[["count"]] <-
          self$`count`
      }
      if (!is.null(self$`competitor_id`)) {
        PromptGenerationResponseParamsObject[["competitor_id"]] <-
          self$`competitor_id`
      }
      if (!is.null(self$`search_type`)) {
        PromptGenerationResponseParamsObject[["search_type"]] <-
          self$`search_type`
      }
      if (!is.null(self$`keywords`)) {
        PromptGenerationResponseParamsObject[["keywords"]] <-
          self$`keywords`
      }
      if (!is.null(self$`source_country_code`)) {
        PromptGenerationResponseParamsObject[["source_country_code"]] <-
          self$`source_country_code`
      }
      if (!is.null(self$`source_language_code`)) {
        PromptGenerationResponseParamsObject[["source_language_code"]] <-
          self$`source_language_code`
      }
      if (!is.null(self$`min_words`)) {
        PromptGenerationResponseParamsObject[["min_words"]] <-
          self$`min_words`
      }
      if (!is.null(self$`all_countries`)) {
        PromptGenerationResponseParamsObject[["all_countries"]] <-
          self$`all_countries`
      }
      if (!is.null(self$`property`)) {
        PromptGenerationResponseParamsObject[["property"]] <-
          self$`property`
      }
      return(PromptGenerationResponseParamsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptGenerationResponseParams
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptGenerationResponseParams
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      if (!is.null(this_object$`query`)) {
        self$`query` <- this_object$`query`
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      if (!is.null(this_object$`competitor_id`)) {
        self$`competitor_id` <- this_object$`competitor_id`
      }
      if (!is.null(this_object$`search_type`)) {
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
      if (!is.null(this_object$`property`)) {
        self$`property` <- this_object$`property`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PromptGenerationResponseParams in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptGenerationResponseParams
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptGenerationResponseParams
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self$`query` <- this_object$`query`
      self$`count` <- this_object$`count`
      self$`competitor_id` <- this_object$`competitor_id`
      self$`search_type` <- this_object$`search_type`
      self$`keywords` <- ApiClient$new()$deserializeObj(this_object$`keywords`, "array[character]", loadNamespace("llmpulse"))
      self$`source_country_code` <- this_object$`source_country_code`
      self$`source_language_code` <- this_object$`source_language_code`
      self$`min_words` <- this_object$`min_words`
      self$`all_countries` <- this_object$`all_countries`
      self$`property` <- this_object$`property`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptGenerationResponseParams and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptGenerationResponseParams
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
# PromptGenerationResponseParams$unlock()
#
## Below is an example to define the print function
# PromptGenerationResponseParams$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptGenerationResponseParams$lock()

