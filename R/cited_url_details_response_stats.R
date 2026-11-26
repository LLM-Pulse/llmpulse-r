#' Create a new CitedUrlDetailsResponseStats
#'
#' @description
#' CitedUrlDetailsResponseStats Class
#'
#' @docType class
#' @title CitedUrlDetailsResponseStats
#' @description CitedUrlDetailsResponseStats Class
#' @format An \code{R6Class} generator object
#' @field total_responses Answers citing the URL under the filters integer
#' @field total_citations  integer
#' @field citation_rate total_responses as a percentage (0-100) of citation_rate_denominator numeric
#' @field citation_rate_denominator Answers matching the filters integer
#' @field avg_citation_position Null when no visible citation has a rank numeric
#' @field first_seen_at Null when no citation matches the filters character
#' @field last_seen_at Null when no citation matches the filters character
#' @field distinct_urls Spellings of the URL cited (tracking parameters, a trailing slash) integer
#' @field source_types  \link{CitedUrlDetailsResponseStatsSourceTypes}
#' @field models Answers citing the URL per AI model, keyed by model named list(integer)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitedUrlDetailsResponseStats <- R6::R6Class(
  "CitedUrlDetailsResponseStats",
  public = list(
    `total_responses` = NULL,
    `total_citations` = NULL,
    `citation_rate` = NULL,
    `citation_rate_denominator` = NULL,
    `avg_citation_position` = NULL,
    `first_seen_at` = NULL,
    `last_seen_at` = NULL,
    `distinct_urls` = NULL,
    `source_types` = NULL,
    `models` = NULL,

    #' @description
    #' Initialize a new CitedUrlDetailsResponseStats class.
    #'
    #' @param total_responses Answers citing the URL under the filters
    #' @param total_citations total_citations
    #' @param citation_rate total_responses as a percentage (0-100) of citation_rate_denominator
    #' @param citation_rate_denominator Answers matching the filters
    #' @param avg_citation_position Null when no visible citation has a rank
    #' @param first_seen_at Null when no citation matches the filters
    #' @param last_seen_at Null when no citation matches the filters
    #' @param distinct_urls Spellings of the URL cited (tracking parameters, a trailing slash)
    #' @param source_types source_types
    #' @param models Answers citing the URL per AI model, keyed by model
    #' @param ... Other optional arguments.
    initialize = function(`total_responses`, `total_citations`, `citation_rate`, `citation_rate_denominator`, `avg_citation_position`, `first_seen_at`, `last_seen_at`, `distinct_urls`, `source_types`, `models`, ...) {
      if (!missing(`total_responses`)) {
        if (!(is.numeric(`total_responses`) && length(`total_responses`) == 1)) {
          stop(paste("Error! Invalid data for `total_responses`. Must be an integer:", `total_responses`))
        }
        self$`total_responses` <- `total_responses`
      }
      if (!missing(`total_citations`)) {
        if (!(is.numeric(`total_citations`) && length(`total_citations`) == 1)) {
          stop(paste("Error! Invalid data for `total_citations`. Must be an integer:", `total_citations`))
        }
        self$`total_citations` <- `total_citations`
      }
      if (!missing(`citation_rate`)) {
        self$`citation_rate` <- `citation_rate`
      }
      if (!missing(`citation_rate_denominator`)) {
        if (!(is.numeric(`citation_rate_denominator`) && length(`citation_rate_denominator`) == 1)) {
          stop(paste("Error! Invalid data for `citation_rate_denominator`. Must be an integer:", `citation_rate_denominator`))
        }
        self$`citation_rate_denominator` <- `citation_rate_denominator`
      }
      if (!missing(`avg_citation_position`)) {
        self$`avg_citation_position` <- `avg_citation_position`
      }
      if (!missing(`first_seen_at`)) {
        if (!(is.character(`first_seen_at`) && length(`first_seen_at`) == 1)) {
          stop(paste("Error! Invalid data for `first_seen_at`. Must be a string:", `first_seen_at`))
        }
        self$`first_seen_at` <- `first_seen_at`
      }
      if (!missing(`last_seen_at`)) {
        if (!(is.character(`last_seen_at`) && length(`last_seen_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_seen_at`. Must be a string:", `last_seen_at`))
        }
        self$`last_seen_at` <- `last_seen_at`
      }
      if (!missing(`distinct_urls`)) {
        if (!(is.numeric(`distinct_urls`) && length(`distinct_urls`) == 1)) {
          stop(paste("Error! Invalid data for `distinct_urls`. Must be an integer:", `distinct_urls`))
        }
        self$`distinct_urls` <- `distinct_urls`
      }
      if (!missing(`source_types`)) {
        stopifnot(R6::is.R6(`source_types`))
        self$`source_types` <- `source_types`
      }
      if (!missing(`models`)) {
        stopifnot(is.vector(`models`), length(`models`) != 0)
        sapply(`models`, function(x) stopifnot(is.character(x)))
        self$`models` <- `models`
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
    #' @return CitedUrlDetailsResponseStats as a base R list.
    #' @examples
    #' # convert array of CitedUrlDetailsResponseStats (x) to a data frame
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
    #' Convert CitedUrlDetailsResponseStats to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitedUrlDetailsResponseStatsObject <- list()
      if (!is.null(self$`total_responses`)) {
        CitedUrlDetailsResponseStatsObject[["total_responses"]] <-
          self$`total_responses`
      }
      if (!is.null(self$`total_citations`)) {
        CitedUrlDetailsResponseStatsObject[["total_citations"]] <-
          self$`total_citations`
      }
      if (!is.null(self$`citation_rate`)) {
        CitedUrlDetailsResponseStatsObject[["citation_rate"]] <-
          self$`citation_rate`
      }
      if (!is.null(self$`citation_rate_denominator`)) {
        CitedUrlDetailsResponseStatsObject[["citation_rate_denominator"]] <-
          self$`citation_rate_denominator`
      }
      if (!is.null(self$`avg_citation_position`)) {
        CitedUrlDetailsResponseStatsObject[["avg_citation_position"]] <-
          self$`avg_citation_position`
      }
      if (!is.null(self$`first_seen_at`)) {
        CitedUrlDetailsResponseStatsObject[["first_seen_at"]] <-
          self$`first_seen_at`
      }
      if (!is.null(self$`last_seen_at`)) {
        CitedUrlDetailsResponseStatsObject[["last_seen_at"]] <-
          self$`last_seen_at`
      }
      if (!is.null(self$`distinct_urls`)) {
        CitedUrlDetailsResponseStatsObject[["distinct_urls"]] <-
          self$`distinct_urls`
      }
      if (!is.null(self$`source_types`)) {
        CitedUrlDetailsResponseStatsObject[["source_types"]] <-
          self$extractSimpleType(self$`source_types`)
      }
      if (!is.null(self$`models`)) {
        CitedUrlDetailsResponseStatsObject[["models"]] <-
          self$`models`
      }
      return(CitedUrlDetailsResponseStatsObject)
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
    #' Deserialize JSON string into an instance of CitedUrlDetailsResponseStats
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitedUrlDetailsResponseStats
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`total_responses`)) {
        self$`total_responses` <- this_object$`total_responses`
      }
      if (!is.null(this_object$`total_citations`)) {
        self$`total_citations` <- this_object$`total_citations`
      }
      if (!is.null(this_object$`citation_rate`)) {
        self$`citation_rate` <- this_object$`citation_rate`
      }
      if (!is.null(this_object$`citation_rate_denominator`)) {
        self$`citation_rate_denominator` <- this_object$`citation_rate_denominator`
      }
      if (!is.null(this_object$`avg_citation_position`)) {
        self$`avg_citation_position` <- this_object$`avg_citation_position`
      }
      if (!is.null(this_object$`first_seen_at`)) {
        self$`first_seen_at` <- this_object$`first_seen_at`
      }
      if (!is.null(this_object$`last_seen_at`)) {
        self$`last_seen_at` <- this_object$`last_seen_at`
      }
      if (!is.null(this_object$`distinct_urls`)) {
        self$`distinct_urls` <- this_object$`distinct_urls`
      }
      if (!is.null(this_object$`source_types`)) {
        `source_types_object` <- CitedUrlDetailsResponseStatsSourceTypes$new()
        `source_types_object`$fromJSON(jsonlite::toJSON(this_object$`source_types`, auto_unbox = TRUE, digits = NA))
        self$`source_types` <- `source_types_object`
      }
      if (!is.null(this_object$`models`)) {
        self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "map(integer)", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CitedUrlDetailsResponseStats in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitedUrlDetailsResponseStats
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitedUrlDetailsResponseStats
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`total_responses` <- this_object$`total_responses`
      self$`total_citations` <- this_object$`total_citations`
      self$`citation_rate` <- this_object$`citation_rate`
      self$`citation_rate_denominator` <- this_object$`citation_rate_denominator`
      self$`avg_citation_position` <- this_object$`avg_citation_position`
      self$`first_seen_at` <- this_object$`first_seen_at`
      self$`last_seen_at` <- this_object$`last_seen_at`
      self$`distinct_urls` <- this_object$`distinct_urls`
      self$`source_types` <- CitedUrlDetailsResponseStatsSourceTypes$new()$fromJSON(jsonlite::toJSON(this_object$`source_types`, auto_unbox = TRUE, digits = NA))
      self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "map(integer)", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CitedUrlDetailsResponseStats and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `total_responses`
      if (!is.null(input_json$`total_responses`)) {
        if (!(is.numeric(input_json$`total_responses`) && length(input_json$`total_responses`) == 1)) {
          stop(paste("Error! Invalid data for `total_responses`. Must be an integer:", input_json$`total_responses`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponseStats: the required field `total_responses` is missing."))
      }
      # check the required field `total_citations`
      if (!is.null(input_json$`total_citations`)) {
        if (!(is.numeric(input_json$`total_citations`) && length(input_json$`total_citations`) == 1)) {
          stop(paste("Error! Invalid data for `total_citations`. Must be an integer:", input_json$`total_citations`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponseStats: the required field `total_citations` is missing."))
      }
      # check the required field `citation_rate`
      if (!is.null(input_json$`citation_rate`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponseStats: the required field `citation_rate` is missing."))
      }
      # check the required field `citation_rate_denominator`
      if (!is.null(input_json$`citation_rate_denominator`)) {
        if (!(is.numeric(input_json$`citation_rate_denominator`) && length(input_json$`citation_rate_denominator`) == 1)) {
          stop(paste("Error! Invalid data for `citation_rate_denominator`. Must be an integer:", input_json$`citation_rate_denominator`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponseStats: the required field `citation_rate_denominator` is missing."))
      }
      # check the required field `avg_citation_position`
      if (!is.null(input_json$`avg_citation_position`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponseStats: the required field `avg_citation_position` is missing."))
      }
      # check the required field `first_seen_at`
      if (!is.null(input_json$`first_seen_at`)) {
        if (!(is.character(input_json$`first_seen_at`) && length(input_json$`first_seen_at`) == 1)) {
          stop(paste("Error! Invalid data for `first_seen_at`. Must be a string:", input_json$`first_seen_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponseStats: the required field `first_seen_at` is missing."))
      }
      # check the required field `last_seen_at`
      if (!is.null(input_json$`last_seen_at`)) {
        if (!(is.character(input_json$`last_seen_at`) && length(input_json$`last_seen_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_seen_at`. Must be a string:", input_json$`last_seen_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponseStats: the required field `last_seen_at` is missing."))
      }
      # check the required field `distinct_urls`
      if (!is.null(input_json$`distinct_urls`)) {
        if (!(is.numeric(input_json$`distinct_urls`) && length(input_json$`distinct_urls`) == 1)) {
          stop(paste("Error! Invalid data for `distinct_urls`. Must be an integer:", input_json$`distinct_urls`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponseStats: the required field `distinct_urls` is missing."))
      }
      # check the required field `source_types`
      if (!is.null(input_json$`source_types`)) {
        stopifnot(R6::is.R6(input_json$`source_types`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponseStats: the required field `source_types` is missing."))
      }
      # check the required field `models`
      if (!is.null(input_json$`models`)) {
        stopifnot(is.vector(input_json$`models`), length(input_json$`models`) != 0)
        tmp <- sapply(input_json$`models`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponseStats: the required field `models` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitedUrlDetailsResponseStats
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `total_responses` is null
      if (is.null(self$`total_responses`)) {
        return(FALSE)
      }

      # check if the required `total_citations` is null
      if (is.null(self$`total_citations`)) {
        return(FALSE)
      }

      # check if the required `citation_rate` is null
      if (is.null(self$`citation_rate`)) {
        return(FALSE)
      }

      # check if the required `citation_rate_denominator` is null
      if (is.null(self$`citation_rate_denominator`)) {
        return(FALSE)
      }

      # check if the required `distinct_urls` is null
      if (is.null(self$`distinct_urls`)) {
        return(FALSE)
      }

      # check if the required `source_types` is null
      if (is.null(self$`source_types`)) {
        return(FALSE)
      }

      # check if the required `models` is null
      if (is.null(self$`models`)) {
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
      # check if the required `total_responses` is null
      if (is.null(self$`total_responses`)) {
        invalid_fields["total_responses"] <- "Non-nullable required field `total_responses` cannot be null."
      }

      # check if the required `total_citations` is null
      if (is.null(self$`total_citations`)) {
        invalid_fields["total_citations"] <- "Non-nullable required field `total_citations` cannot be null."
      }

      # check if the required `citation_rate` is null
      if (is.null(self$`citation_rate`)) {
        invalid_fields["citation_rate"] <- "Non-nullable required field `citation_rate` cannot be null."
      }

      # check if the required `citation_rate_denominator` is null
      if (is.null(self$`citation_rate_denominator`)) {
        invalid_fields["citation_rate_denominator"] <- "Non-nullable required field `citation_rate_denominator` cannot be null."
      }

      # check if the required `distinct_urls` is null
      if (is.null(self$`distinct_urls`)) {
        invalid_fields["distinct_urls"] <- "Non-nullable required field `distinct_urls` cannot be null."
      }

      # check if the required `source_types` is null
      if (is.null(self$`source_types`)) {
        invalid_fields["source_types"] <- "Non-nullable required field `source_types` cannot be null."
      }

      # check if the required `models` is null
      if (is.null(self$`models`)) {
        invalid_fields["models"] <- "Non-nullable required field `models` cannot be null."
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
# CitedUrlDetailsResponseStats$unlock()
#
## Below is an example to define the print function
# CitedUrlDetailsResponseStats$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitedUrlDetailsResponseStats$lock()

