#' Create a new CitationGroupRow
#'
#' @description
#' A cited URL, domain or host (view). url-view rows carry url, url_sha256 and normalized_url, plus page_cache and page_mentions when page details are included; domain and host rows carry domain or host and aggregate_details.
#'
#' @docType class
#' @title CitationGroupRow
#' @description CitationGroupRow Class
#' @format An \code{R6Class} generator object
#' @field source_id The group's first citation integer
#' @field view url, domain or host character
#' @field key The URL as cited, the domain or the host character
#' @field total_responses Answers citing it integer
#' @field total_citations  integer
#' @field citation_rate total_responses as a percentage (0-100) of citation_rate_denominator numeric
#' @field citation_rate_denominator Answers matching the filters integer
#' @field avg_citation_position Null when no visible citation has a rank numeric
#' @field first_seen_at  character
#' @field last_seen_at  character
#' @field models Answers citing it per AI model, keyed by model named list(integer)
#' @field url url view only. The URL as cited character [optional]
#' @field url_sha256 url view only. Key of the cited page, shared by the URL's variants character [optional]
#' @field normalized_url url view only character [optional]
#' @field page_cache  \link{CitationPageCache} [optional]
#' @field page_mentions  \link{CitationPageMentions} [optional]
#' @field domain domain view only character [optional]
#' @field host host view only character [optional]
#' @field aggregate_details  \link{CitationGroupRowAggregateDetails} [optional]
#' @field citation_series  \link{CitationSeries} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitationGroupRow <- R6::R6Class(
  "CitationGroupRow",
  public = list(
    `source_id` = NULL,
    `view` = NULL,
    `key` = NULL,
    `total_responses` = NULL,
    `total_citations` = NULL,
    `citation_rate` = NULL,
    `citation_rate_denominator` = NULL,
    `avg_citation_position` = NULL,
    `first_seen_at` = NULL,
    `last_seen_at` = NULL,
    `models` = NULL,
    `url` = NULL,
    `url_sha256` = NULL,
    `normalized_url` = NULL,
    `page_cache` = NULL,
    `page_mentions` = NULL,
    `domain` = NULL,
    `host` = NULL,
    `aggregate_details` = NULL,
    `citation_series` = NULL,

    #' @description
    #' Initialize a new CitationGroupRow class.
    #'
    #' @param source_id The group's first citation
    #' @param view url, domain or host
    #' @param key The URL as cited, the domain or the host
    #' @param total_responses Answers citing it
    #' @param total_citations total_citations
    #' @param citation_rate total_responses as a percentage (0-100) of citation_rate_denominator
    #' @param citation_rate_denominator Answers matching the filters
    #' @param avg_citation_position Null when no visible citation has a rank
    #' @param first_seen_at first_seen_at
    #' @param last_seen_at last_seen_at
    #' @param models Answers citing it per AI model, keyed by model
    #' @param url url view only. The URL as cited
    #' @param url_sha256 url view only. Key of the cited page, shared by the URL's variants
    #' @param normalized_url url view only
    #' @param page_cache page_cache
    #' @param page_mentions page_mentions
    #' @param domain domain view only
    #' @param host host view only
    #' @param aggregate_details aggregate_details
    #' @param citation_series citation_series
    #' @param ... Other optional arguments.
    initialize = function(`source_id`, `view`, `key`, `total_responses`, `total_citations`, `citation_rate`, `citation_rate_denominator`, `avg_citation_position`, `first_seen_at`, `last_seen_at`, `models`, `url` = NULL, `url_sha256` = NULL, `normalized_url` = NULL, `page_cache` = NULL, `page_mentions` = NULL, `domain` = NULL, `host` = NULL, `aggregate_details` = NULL, `citation_series` = NULL, ...) {
      if (!missing(`source_id`)) {
        if (!(is.numeric(`source_id`) && length(`source_id`) == 1)) {
          stop(paste("Error! Invalid data for `source_id`. Must be an integer:", `source_id`))
        }
        self$`source_id` <- `source_id`
      }
      if (!missing(`view`)) {
        if (!(is.character(`view`) && length(`view`) == 1)) {
          stop(paste("Error! Invalid data for `view`. Must be a string:", `view`))
        }
        self$`view` <- `view`
      }
      if (!missing(`key`)) {
        if (!(is.character(`key`) && length(`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", `key`))
        }
        self$`key` <- `key`
      }
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
      if (!missing(`models`)) {
        stopifnot(is.vector(`models`), length(`models`) != 0)
        sapply(`models`, function(x) stopifnot(is.character(x)))
        self$`models` <- `models`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`url_sha256`)) {
        if (!(is.character(`url_sha256`) && length(`url_sha256`) == 1)) {
          stop(paste("Error! Invalid data for `url_sha256`. Must be a string:", `url_sha256`))
        }
        self$`url_sha256` <- `url_sha256`
      }
      if (!is.null(`normalized_url`)) {
        if (!(is.character(`normalized_url`) && length(`normalized_url`) == 1)) {
          stop(paste("Error! Invalid data for `normalized_url`. Must be a string:", `normalized_url`))
        }
        self$`normalized_url` <- `normalized_url`
      }
      if (!is.null(`page_cache`)) {
        stopifnot(R6::is.R6(`page_cache`))
        self$`page_cache` <- `page_cache`
      }
      if (!is.null(`page_mentions`)) {
        stopifnot(R6::is.R6(`page_mentions`))
        self$`page_mentions` <- `page_mentions`
      }
      if (!is.null(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!is.null(`host`)) {
        if (!(is.character(`host`) && length(`host`) == 1)) {
          stop(paste("Error! Invalid data for `host`. Must be a string:", `host`))
        }
        self$`host` <- `host`
      }
      if (!is.null(`aggregate_details`)) {
        stopifnot(R6::is.R6(`aggregate_details`))
        self$`aggregate_details` <- `aggregate_details`
      }
      if (!is.null(`citation_series`)) {
        stopifnot(R6::is.R6(`citation_series`))
        self$`citation_series` <- `citation_series`
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
    #' @return CitationGroupRow as a base R list.
    #' @examples
    #' # convert array of CitationGroupRow (x) to a data frame
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
    #' Convert CitationGroupRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitationGroupRowObject <- list()
      if (!is.null(self$`source_id`)) {
        CitationGroupRowObject[["source_id"]] <-
          self$`source_id`
      }
      if (!is.null(self$`view`)) {
        CitationGroupRowObject[["view"]] <-
          self$`view`
      }
      if (!is.null(self$`key`)) {
        CitationGroupRowObject[["key"]] <-
          self$`key`
      }
      if (!is.null(self$`total_responses`)) {
        CitationGroupRowObject[["total_responses"]] <-
          self$`total_responses`
      }
      if (!is.null(self$`total_citations`)) {
        CitationGroupRowObject[["total_citations"]] <-
          self$`total_citations`
      }
      if (!is.null(self$`citation_rate`)) {
        CitationGroupRowObject[["citation_rate"]] <-
          self$`citation_rate`
      }
      if (!is.null(self$`citation_rate_denominator`)) {
        CitationGroupRowObject[["citation_rate_denominator"]] <-
          self$`citation_rate_denominator`
      }
      if (!is.null(self$`avg_citation_position`)) {
        CitationGroupRowObject[["avg_citation_position"]] <-
          self$`avg_citation_position`
      }
      if (!is.null(self$`first_seen_at`)) {
        CitationGroupRowObject[["first_seen_at"]] <-
          self$`first_seen_at`
      }
      if (!is.null(self$`last_seen_at`)) {
        CitationGroupRowObject[["last_seen_at"]] <-
          self$`last_seen_at`
      }
      if (!is.null(self$`models`)) {
        CitationGroupRowObject[["models"]] <-
          self$`models`
      }
      if (!is.null(self$`url`)) {
        CitationGroupRowObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`url_sha256`)) {
        CitationGroupRowObject[["url_sha256"]] <-
          self$`url_sha256`
      }
      if (!is.null(self$`normalized_url`)) {
        CitationGroupRowObject[["normalized_url"]] <-
          self$`normalized_url`
      }
      if (!is.null(self$`page_cache`)) {
        CitationGroupRowObject[["page_cache"]] <-
          self$extractSimpleType(self$`page_cache`)
      }
      if (!is.null(self$`page_mentions`)) {
        CitationGroupRowObject[["page_mentions"]] <-
          self$extractSimpleType(self$`page_mentions`)
      }
      if (!is.null(self$`domain`)) {
        CitationGroupRowObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`host`)) {
        CitationGroupRowObject[["host"]] <-
          self$`host`
      }
      if (!is.null(self$`aggregate_details`)) {
        CitationGroupRowObject[["aggregate_details"]] <-
          self$extractSimpleType(self$`aggregate_details`)
      }
      if (!is.null(self$`citation_series`)) {
        CitationGroupRowObject[["citation_series"]] <-
          self$extractSimpleType(self$`citation_series`)
      }
      return(CitationGroupRowObject)
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
    #' Deserialize JSON string into an instance of CitationGroupRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationGroupRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source_id`)) {
        self$`source_id` <- this_object$`source_id`
      }
      if (!is.null(this_object$`view`)) {
        self$`view` <- this_object$`view`
      }
      if (!is.null(this_object$`key`)) {
        self$`key` <- this_object$`key`
      }
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
      if (!is.null(this_object$`models`)) {
        self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "map(integer)", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`url_sha256`)) {
        self$`url_sha256` <- this_object$`url_sha256`
      }
      if (!is.null(this_object$`normalized_url`)) {
        self$`normalized_url` <- this_object$`normalized_url`
      }
      if (!is.null(this_object$`page_cache`)) {
        `page_cache_object` <- CitationPageCache$new()
        `page_cache_object`$fromJSON(jsonlite::toJSON(this_object$`page_cache`, auto_unbox = TRUE, digits = NA))
        self$`page_cache` <- `page_cache_object`
      }
      if (!is.null(this_object$`page_mentions`)) {
        `page_mentions_object` <- CitationPageMentions$new()
        `page_mentions_object`$fromJSON(jsonlite::toJSON(this_object$`page_mentions`, auto_unbox = TRUE, digits = NA))
        self$`page_mentions` <- `page_mentions_object`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`host`)) {
        self$`host` <- this_object$`host`
      }
      if (!is.null(this_object$`aggregate_details`)) {
        `aggregate_details_object` <- CitationGroupRowAggregateDetails$new()
        `aggregate_details_object`$fromJSON(jsonlite::toJSON(this_object$`aggregate_details`, auto_unbox = TRUE, digits = NA))
        self$`aggregate_details` <- `aggregate_details_object`
      }
      if (!is.null(this_object$`citation_series`)) {
        `citation_series_object` <- CitationSeries$new()
        `citation_series_object`$fromJSON(jsonlite::toJSON(this_object$`citation_series`, auto_unbox = TRUE, digits = NA))
        self$`citation_series` <- `citation_series_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CitationGroupRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationGroupRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationGroupRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`source_id` <- this_object$`source_id`
      self$`view` <- this_object$`view`
      self$`key` <- this_object$`key`
      self$`total_responses` <- this_object$`total_responses`
      self$`total_citations` <- this_object$`total_citations`
      self$`citation_rate` <- this_object$`citation_rate`
      self$`citation_rate_denominator` <- this_object$`citation_rate_denominator`
      self$`avg_citation_position` <- this_object$`avg_citation_position`
      self$`first_seen_at` <- this_object$`first_seen_at`
      self$`last_seen_at` <- this_object$`last_seen_at`
      self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "map(integer)", loadNamespace("llmpulse"))
      self$`url` <- this_object$`url`
      self$`url_sha256` <- this_object$`url_sha256`
      self$`normalized_url` <- this_object$`normalized_url`
      self$`page_cache` <- CitationPageCache$new()$fromJSON(jsonlite::toJSON(this_object$`page_cache`, auto_unbox = TRUE, digits = NA))
      self$`page_mentions` <- CitationPageMentions$new()$fromJSON(jsonlite::toJSON(this_object$`page_mentions`, auto_unbox = TRUE, digits = NA))
      self$`domain` <- this_object$`domain`
      self$`host` <- this_object$`host`
      self$`aggregate_details` <- CitationGroupRowAggregateDetails$new()$fromJSON(jsonlite::toJSON(this_object$`aggregate_details`, auto_unbox = TRUE, digits = NA))
      self$`citation_series` <- CitationSeries$new()$fromJSON(jsonlite::toJSON(this_object$`citation_series`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CitationGroupRow and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRow: the required field `source_id` is missing."))
      }
      # check the required field `view`
      if (!is.null(input_json$`view`)) {
        if (!(is.character(input_json$`view`) && length(input_json$`view`) == 1)) {
          stop(paste("Error! Invalid data for `view`. Must be a string:", input_json$`view`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRow: the required field `view` is missing."))
      }
      # check the required field `key`
      if (!is.null(input_json$`key`)) {
        if (!(is.character(input_json$`key`) && length(input_json$`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", input_json$`key`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRow: the required field `key` is missing."))
      }
      # check the required field `total_responses`
      if (!is.null(input_json$`total_responses`)) {
        if (!(is.numeric(input_json$`total_responses`) && length(input_json$`total_responses`) == 1)) {
          stop(paste("Error! Invalid data for `total_responses`. Must be an integer:", input_json$`total_responses`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRow: the required field `total_responses` is missing."))
      }
      # check the required field `total_citations`
      if (!is.null(input_json$`total_citations`)) {
        if (!(is.numeric(input_json$`total_citations`) && length(input_json$`total_citations`) == 1)) {
          stop(paste("Error! Invalid data for `total_citations`. Must be an integer:", input_json$`total_citations`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRow: the required field `total_citations` is missing."))
      }
      # check the required field `citation_rate`
      if (!is.null(input_json$`citation_rate`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRow: the required field `citation_rate` is missing."))
      }
      # check the required field `citation_rate_denominator`
      if (!is.null(input_json$`citation_rate_denominator`)) {
        if (!(is.numeric(input_json$`citation_rate_denominator`) && length(input_json$`citation_rate_denominator`) == 1)) {
          stop(paste("Error! Invalid data for `citation_rate_denominator`. Must be an integer:", input_json$`citation_rate_denominator`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRow: the required field `citation_rate_denominator` is missing."))
      }
      # check the required field `avg_citation_position`
      if (!is.null(input_json$`avg_citation_position`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRow: the required field `avg_citation_position` is missing."))
      }
      # check the required field `first_seen_at`
      if (!is.null(input_json$`first_seen_at`)) {
        if (!(is.character(input_json$`first_seen_at`) && length(input_json$`first_seen_at`) == 1)) {
          stop(paste("Error! Invalid data for `first_seen_at`. Must be a string:", input_json$`first_seen_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRow: the required field `first_seen_at` is missing."))
      }
      # check the required field `last_seen_at`
      if (!is.null(input_json$`last_seen_at`)) {
        if (!(is.character(input_json$`last_seen_at`) && length(input_json$`last_seen_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_seen_at`. Must be a string:", input_json$`last_seen_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRow: the required field `last_seen_at` is missing."))
      }
      # check the required field `models`
      if (!is.null(input_json$`models`)) {
        stopifnot(is.vector(input_json$`models`), length(input_json$`models`) != 0)
        tmp <- sapply(input_json$`models`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRow: the required field `models` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitationGroupRow
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

      # check if the required `view` is null
      if (is.null(self$`view`)) {
        return(FALSE)
      }

      # check if the required `key` is null
      if (is.null(self$`key`)) {
        return(FALSE)
      }

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
      # check if the required `source_id` is null
      if (is.null(self$`source_id`)) {
        invalid_fields["source_id"] <- "Non-nullable required field `source_id` cannot be null."
      }

      # check if the required `view` is null
      if (is.null(self$`view`)) {
        invalid_fields["view"] <- "Non-nullable required field `view` cannot be null."
      }

      # check if the required `key` is null
      if (is.null(self$`key`)) {
        invalid_fields["key"] <- "Non-nullable required field `key` cannot be null."
      }

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
# CitationGroupRow$unlock()
#
## Below is an example to define the print function
# CitationGroupRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitationGroupRow$lock()

