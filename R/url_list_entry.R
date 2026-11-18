#' Create a new UrlListEntry
#'
#' @description
#' UrlListEntry Class
#'
#' @docType class
#' @title UrlListEntry
#' @description UrlListEntry Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field value The exact URL, \"host/path\" of a prefix, or the host of a domain rule. character
#' @field match_type  character
#' @field host  character
#' @field status  character
#' @field added_on  character
#' @field cost  numeric
#' @field channel  character
#' @field citations  integer
#' @field cited_pages  integer
#' @field first_cited_at  character
#' @field last_cited_at  character
#' @field days_to_first_citation  integer
#' @field avg_citation_position  numeric
#' @field models  list(character)
#' @field brand_mentioned  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListEntry <- R6::R6Class(
  "UrlListEntry",
  public = list(
    `id` = NULL,
    `value` = NULL,
    `match_type` = NULL,
    `host` = NULL,
    `status` = NULL,
    `added_on` = NULL,
    `cost` = NULL,
    `channel` = NULL,
    `citations` = NULL,
    `cited_pages` = NULL,
    `first_cited_at` = NULL,
    `last_cited_at` = NULL,
    `days_to_first_citation` = NULL,
    `avg_citation_position` = NULL,
    `models` = NULL,
    `brand_mentioned` = NULL,

    #' @description
    #' Initialize a new UrlListEntry class.
    #'
    #' @param id id
    #' @param value The exact URL, \"host/path\" of a prefix, or the host of a domain rule.
    #' @param match_type match_type
    #' @param host host
    #' @param status status
    #' @param added_on added_on
    #' @param cost cost
    #' @param channel channel
    #' @param citations citations
    #' @param cited_pages cited_pages
    #' @param first_cited_at first_cited_at
    #' @param last_cited_at last_cited_at
    #' @param days_to_first_citation days_to_first_citation
    #' @param avg_citation_position avg_citation_position
    #' @param models models
    #' @param brand_mentioned brand_mentioned
    #' @param ... Other optional arguments.
    initialize = function(`id`, `value`, `match_type`, `host`, `status`, `added_on`, `cost`, `channel`, `citations`, `cited_pages`, `first_cited_at`, `last_cited_at`, `days_to_first_citation`, `avg_citation_position`, `models`, `brand_mentioned`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`value`)) {
        if (!(is.character(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", `value`))
        }
        self$`value` <- `value`
      }
      if (!missing(`match_type`)) {
        if (!(`match_type` %in% c("url", "prefix", "domain"))) {
          stop(paste("Error! \"", `match_type`, "\" cannot be assigned to `match_type`. Must be \"url\", \"prefix\", \"domain\".", sep = ""))
        }
        if (!(is.character(`match_type`) && length(`match_type`) == 1)) {
          stop(paste("Error! Invalid data for `match_type`. Must be a string:", `match_type`))
        }
        self$`match_type` <- `match_type`
      }
      if (!missing(`host`)) {
        if (!(is.character(`host`) && length(`host`) == 1)) {
          stop(paste("Error! Invalid data for `host`. Must be a string:", `host`))
        }
        self$`host` <- `host`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c("cited", "lost", "not_cited"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"cited\", \"lost\", \"not_cited\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`added_on`)) {
        if (!(is.character(`added_on`) && length(`added_on`) == 1)) {
          stop(paste("Error! Invalid data for `added_on`. Must be a string:", `added_on`))
        }
        self$`added_on` <- `added_on`
      }
      if (!missing(`cost`)) {
        self$`cost` <- `cost`
      }
      if (!missing(`channel`)) {
        if (!(is.character(`channel`) && length(`channel`) == 1)) {
          stop(paste("Error! Invalid data for `channel`. Must be a string:", `channel`))
        }
        self$`channel` <- `channel`
      }
      if (!missing(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
      }
      if (!missing(`cited_pages`)) {
        if (!(is.numeric(`cited_pages`) && length(`cited_pages`) == 1)) {
          stop(paste("Error! Invalid data for `cited_pages`. Must be an integer:", `cited_pages`))
        }
        self$`cited_pages` <- `cited_pages`
      }
      if (!missing(`first_cited_at`)) {
        if (!(is.character(`first_cited_at`) && length(`first_cited_at`) == 1)) {
          stop(paste("Error! Invalid data for `first_cited_at`. Must be a string:", `first_cited_at`))
        }
        self$`first_cited_at` <- `first_cited_at`
      }
      if (!missing(`last_cited_at`)) {
        if (!(is.character(`last_cited_at`) && length(`last_cited_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_cited_at`. Must be a string:", `last_cited_at`))
        }
        self$`last_cited_at` <- `last_cited_at`
      }
      if (!missing(`days_to_first_citation`)) {
        if (!(is.numeric(`days_to_first_citation`) && length(`days_to_first_citation`) == 1)) {
          stop(paste("Error! Invalid data for `days_to_first_citation`. Must be an integer:", `days_to_first_citation`))
        }
        self$`days_to_first_citation` <- `days_to_first_citation`
      }
      if (!missing(`avg_citation_position`)) {
        self$`avg_citation_position` <- `avg_citation_position`
      }
      if (!missing(`models`)) {
        stopifnot(is.vector(`models`), length(`models`) != 0)
        sapply(`models`, function(x) stopifnot(is.character(x)))
        self$`models` <- `models`
      }
      if (!missing(`brand_mentioned`)) {
        if (!(is.logical(`brand_mentioned`) && length(`brand_mentioned`) == 1)) {
          stop(paste("Error! Invalid data for `brand_mentioned`. Must be a boolean:", `brand_mentioned`))
        }
        self$`brand_mentioned` <- `brand_mentioned`
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
    #' @return UrlListEntry as a base R list.
    #' @examples
    #' # convert array of UrlListEntry (x) to a data frame
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
    #' Convert UrlListEntry to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListEntryObject <- list()
      if (!is.null(self$`id`)) {
        UrlListEntryObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`value`)) {
        UrlListEntryObject[["value"]] <-
          self$`value`
      }
      if (!is.null(self$`match_type`)) {
        UrlListEntryObject[["match_type"]] <-
          self$`match_type`
      }
      if (!is.null(self$`host`)) {
        UrlListEntryObject[["host"]] <-
          self$`host`
      }
      if (!is.null(self$`status`)) {
        UrlListEntryObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`added_on`)) {
        UrlListEntryObject[["added_on"]] <-
          self$`added_on`
      }
      if (!is.null(self$`cost`)) {
        UrlListEntryObject[["cost"]] <-
          self$`cost`
      }
      if (!is.null(self$`channel`)) {
        UrlListEntryObject[["channel"]] <-
          self$`channel`
      }
      if (!is.null(self$`citations`)) {
        UrlListEntryObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`cited_pages`)) {
        UrlListEntryObject[["cited_pages"]] <-
          self$`cited_pages`
      }
      if (!is.null(self$`first_cited_at`)) {
        UrlListEntryObject[["first_cited_at"]] <-
          self$`first_cited_at`
      }
      if (!is.null(self$`last_cited_at`)) {
        UrlListEntryObject[["last_cited_at"]] <-
          self$`last_cited_at`
      }
      if (!is.null(self$`days_to_first_citation`)) {
        UrlListEntryObject[["days_to_first_citation"]] <-
          self$`days_to_first_citation`
      }
      if (!is.null(self$`avg_citation_position`)) {
        UrlListEntryObject[["avg_citation_position"]] <-
          self$`avg_citation_position`
      }
      if (!is.null(self$`models`)) {
        UrlListEntryObject[["models"]] <-
          self$`models`
      }
      if (!is.null(self$`brand_mentioned`)) {
        UrlListEntryObject[["brand_mentioned"]] <-
          self$`brand_mentioned`
      }
      return(UrlListEntryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListEntry
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      if (!is.null(this_object$`match_type`)) {
        if (!is.null(this_object$`match_type`) && !(this_object$`match_type` %in% c("url", "prefix", "domain"))) {
          stop(paste("Error! \"", this_object$`match_type`, "\" cannot be assigned to `match_type`. Must be \"url\", \"prefix\", \"domain\".", sep = ""))
        }
        self$`match_type` <- this_object$`match_type`
      }
      if (!is.null(this_object$`host`)) {
        self$`host` <- this_object$`host`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("cited", "lost", "not_cited"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"cited\", \"lost\", \"not_cited\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`added_on`)) {
        self$`added_on` <- this_object$`added_on`
      }
      if (!is.null(this_object$`cost`)) {
        self$`cost` <- this_object$`cost`
      }
      if (!is.null(this_object$`channel`)) {
        self$`channel` <- this_object$`channel`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      if (!is.null(this_object$`cited_pages`)) {
        self$`cited_pages` <- this_object$`cited_pages`
      }
      if (!is.null(this_object$`first_cited_at`)) {
        self$`first_cited_at` <- this_object$`first_cited_at`
      }
      if (!is.null(this_object$`last_cited_at`)) {
        self$`last_cited_at` <- this_object$`last_cited_at`
      }
      if (!is.null(this_object$`days_to_first_citation`)) {
        self$`days_to_first_citation` <- this_object$`days_to_first_citation`
      }
      if (!is.null(this_object$`avg_citation_position`)) {
        self$`avg_citation_position` <- this_object$`avg_citation_position`
      }
      if (!is.null(this_object$`models`)) {
        self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`brand_mentioned`)) {
        self$`brand_mentioned` <- this_object$`brand_mentioned`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UrlListEntry in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListEntry
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`value` <- this_object$`value`
      if (!is.null(this_object$`match_type`) && !(this_object$`match_type` %in% c("url", "prefix", "domain"))) {
        stop(paste("Error! \"", this_object$`match_type`, "\" cannot be assigned to `match_type`. Must be \"url\", \"prefix\", \"domain\".", sep = ""))
      }
      self$`match_type` <- this_object$`match_type`
      self$`host` <- this_object$`host`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("cited", "lost", "not_cited"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"cited\", \"lost\", \"not_cited\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`added_on` <- this_object$`added_on`
      self$`cost` <- this_object$`cost`
      self$`channel` <- this_object$`channel`
      self$`citations` <- this_object$`citations`
      self$`cited_pages` <- this_object$`cited_pages`
      self$`first_cited_at` <- this_object$`first_cited_at`
      self$`last_cited_at` <- this_object$`last_cited_at`
      self$`days_to_first_citation` <- this_object$`days_to_first_citation`
      self$`avg_citation_position` <- this_object$`avg_citation_position`
      self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[character]", loadNamespace("llmpulse"))
      self$`brand_mentioned` <- this_object$`brand_mentioned`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListEntry and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `id` is missing."))
      }
      # check the required field `value`
      if (!is.null(input_json$`value`)) {
        if (!(is.character(input_json$`value`) && length(input_json$`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", input_json$`value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `value` is missing."))
      }
      # check the required field `match_type`
      if (!is.null(input_json$`match_type`)) {
        if (!(is.character(input_json$`match_type`) && length(input_json$`match_type`) == 1)) {
          stop(paste("Error! Invalid data for `match_type`. Must be a string:", input_json$`match_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `match_type` is missing."))
      }
      # check the required field `host`
      if (!is.null(input_json$`host`)) {
        if (!(is.character(input_json$`host`) && length(input_json$`host`) == 1)) {
          stop(paste("Error! Invalid data for `host`. Must be a string:", input_json$`host`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `host` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `status` is missing."))
      }
      # check the required field `added_on`
      if (!is.null(input_json$`added_on`)) {
        if (!(is.character(input_json$`added_on`) && length(input_json$`added_on`) == 1)) {
          stop(paste("Error! Invalid data for `added_on`. Must be a string:", input_json$`added_on`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `added_on` is missing."))
      }
      # check the required field `cost`
      if (!is.null(input_json$`cost`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `cost` is missing."))
      }
      # check the required field `channel`
      if (!is.null(input_json$`channel`)) {
        if (!(is.character(input_json$`channel`) && length(input_json$`channel`) == 1)) {
          stop(paste("Error! Invalid data for `channel`. Must be a string:", input_json$`channel`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `channel` is missing."))
      }
      # check the required field `citations`
      if (!is.null(input_json$`citations`)) {
        if (!(is.numeric(input_json$`citations`) && length(input_json$`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", input_json$`citations`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `citations` is missing."))
      }
      # check the required field `cited_pages`
      if (!is.null(input_json$`cited_pages`)) {
        if (!(is.numeric(input_json$`cited_pages`) && length(input_json$`cited_pages`) == 1)) {
          stop(paste("Error! Invalid data for `cited_pages`. Must be an integer:", input_json$`cited_pages`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `cited_pages` is missing."))
      }
      # check the required field `first_cited_at`
      if (!is.null(input_json$`first_cited_at`)) {
        if (!(is.character(input_json$`first_cited_at`) && length(input_json$`first_cited_at`) == 1)) {
          stop(paste("Error! Invalid data for `first_cited_at`. Must be a string:", input_json$`first_cited_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `first_cited_at` is missing."))
      }
      # check the required field `last_cited_at`
      if (!is.null(input_json$`last_cited_at`)) {
        if (!(is.character(input_json$`last_cited_at`) && length(input_json$`last_cited_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_cited_at`. Must be a string:", input_json$`last_cited_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `last_cited_at` is missing."))
      }
      # check the required field `days_to_first_citation`
      if (!is.null(input_json$`days_to_first_citation`)) {
        if (!(is.numeric(input_json$`days_to_first_citation`) && length(input_json$`days_to_first_citation`) == 1)) {
          stop(paste("Error! Invalid data for `days_to_first_citation`. Must be an integer:", input_json$`days_to_first_citation`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `days_to_first_citation` is missing."))
      }
      # check the required field `avg_citation_position`
      if (!is.null(input_json$`avg_citation_position`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `avg_citation_position` is missing."))
      }
      # check the required field `models`
      if (!is.null(input_json$`models`)) {
        stopifnot(is.vector(input_json$`models`), length(input_json$`models`) != 0)
        tmp <- sapply(input_json$`models`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `models` is missing."))
      }
      # check the required field `brand_mentioned`
      if (!is.null(input_json$`brand_mentioned`)) {
        if (!(is.logical(input_json$`brand_mentioned`) && length(input_json$`brand_mentioned`) == 1)) {
          stop(paste("Error! Invalid data for `brand_mentioned`. Must be a boolean:", input_json$`brand_mentioned`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntry: the required field `brand_mentioned` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListEntry
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

      # check if the required `value` is null
      if (is.null(self$`value`)) {
        return(FALSE)
      }

      # check if the required `match_type` is null
      if (is.null(self$`match_type`)) {
        return(FALSE)
      }

      # check if the required `host` is null
      if (is.null(self$`host`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `added_on` is null
      if (is.null(self$`added_on`)) {
        return(FALSE)
      }

      # check if the required `citations` is null
      if (is.null(self$`citations`)) {
        return(FALSE)
      }

      # check if the required `cited_pages` is null
      if (is.null(self$`cited_pages`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `value` is null
      if (is.null(self$`value`)) {
        invalid_fields["value"] <- "Non-nullable required field `value` cannot be null."
      }

      # check if the required `match_type` is null
      if (is.null(self$`match_type`)) {
        invalid_fields["match_type"] <- "Non-nullable required field `match_type` cannot be null."
      }

      # check if the required `host` is null
      if (is.null(self$`host`)) {
        invalid_fields["host"] <- "Non-nullable required field `host` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `added_on` is null
      if (is.null(self$`added_on`)) {
        invalid_fields["added_on"] <- "Non-nullable required field `added_on` cannot be null."
      }

      # check if the required `citations` is null
      if (is.null(self$`citations`)) {
        invalid_fields["citations"] <- "Non-nullable required field `citations` cannot be null."
      }

      # check if the required `cited_pages` is null
      if (is.null(self$`cited_pages`)) {
        invalid_fields["cited_pages"] <- "Non-nullable required field `cited_pages` cannot be null."
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
# UrlListEntry$unlock()
#
## Below is an example to define the print function
# UrlListEntry$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListEntry$lock()

