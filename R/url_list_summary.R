#' Create a new UrlListSummary
#'
#' @description
#' UrlListSummary Class
#'
#' @docType class
#' @title UrlListSummary
#' @description UrlListSummary Class
#' @format An \code{R6Class} generator object
#' @field entries_count  integer
#' @field cited_entries  integer
#' @field citations AI answers citing any entry in the window, each once. integer
#' @field answers AI answers in the window, the citation rate's denominator. integer
#' @field citation_rate citations over answers, in percent. numeric
#' @field avg_citation_position  numeric
#' @field median_days_to_first_citation  integer
#' @field total_cost  numeric
#' @field cost_per_cited_entry  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListSummary <- R6::R6Class(
  "UrlListSummary",
  public = list(
    `entries_count` = NULL,
    `cited_entries` = NULL,
    `citations` = NULL,
    `answers` = NULL,
    `citation_rate` = NULL,
    `avg_citation_position` = NULL,
    `median_days_to_first_citation` = NULL,
    `total_cost` = NULL,
    `cost_per_cited_entry` = NULL,

    #' @description
    #' Initialize a new UrlListSummary class.
    #'
    #' @param entries_count entries_count
    #' @param cited_entries cited_entries
    #' @param citations AI answers citing any entry in the window, each once.
    #' @param answers AI answers in the window, the citation rate's denominator.
    #' @param citation_rate citations over answers, in percent.
    #' @param avg_citation_position avg_citation_position
    #' @param median_days_to_first_citation median_days_to_first_citation
    #' @param total_cost total_cost
    #' @param cost_per_cited_entry cost_per_cited_entry
    #' @param ... Other optional arguments.
    initialize = function(`entries_count`, `cited_entries`, `citations`, `answers`, `citation_rate`, `avg_citation_position`, `median_days_to_first_citation`, `total_cost`, `cost_per_cited_entry`, ...) {
      if (!missing(`entries_count`)) {
        if (!(is.numeric(`entries_count`) && length(`entries_count`) == 1)) {
          stop(paste("Error! Invalid data for `entries_count`. Must be an integer:", `entries_count`))
        }
        self$`entries_count` <- `entries_count`
      }
      if (!missing(`cited_entries`)) {
        if (!(is.numeric(`cited_entries`) && length(`cited_entries`) == 1)) {
          stop(paste("Error! Invalid data for `cited_entries`. Must be an integer:", `cited_entries`))
        }
        self$`cited_entries` <- `cited_entries`
      }
      if (!missing(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
      }
      if (!missing(`answers`)) {
        if (!(is.numeric(`answers`) && length(`answers`) == 1)) {
          stop(paste("Error! Invalid data for `answers`. Must be an integer:", `answers`))
        }
        self$`answers` <- `answers`
      }
      if (!missing(`citation_rate`)) {
        self$`citation_rate` <- `citation_rate`
      }
      if (!missing(`avg_citation_position`)) {
        self$`avg_citation_position` <- `avg_citation_position`
      }
      if (!missing(`median_days_to_first_citation`)) {
        if (!(is.numeric(`median_days_to_first_citation`) && length(`median_days_to_first_citation`) == 1)) {
          stop(paste("Error! Invalid data for `median_days_to_first_citation`. Must be an integer:", `median_days_to_first_citation`))
        }
        self$`median_days_to_first_citation` <- `median_days_to_first_citation`
      }
      if (!missing(`total_cost`)) {
        self$`total_cost` <- `total_cost`
      }
      if (!missing(`cost_per_cited_entry`)) {
        self$`cost_per_cited_entry` <- `cost_per_cited_entry`
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
    #' @return UrlListSummary as a base R list.
    #' @examples
    #' # convert array of UrlListSummary (x) to a data frame
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
    #' Convert UrlListSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListSummaryObject <- list()
      if (!is.null(self$`entries_count`)) {
        UrlListSummaryObject[["entries_count"]] <-
          self$`entries_count`
      }
      if (!is.null(self$`cited_entries`)) {
        UrlListSummaryObject[["cited_entries"]] <-
          self$`cited_entries`
      }
      if (!is.null(self$`citations`)) {
        UrlListSummaryObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`answers`)) {
        UrlListSummaryObject[["answers"]] <-
          self$`answers`
      }
      if (!is.null(self$`citation_rate`)) {
        UrlListSummaryObject[["citation_rate"]] <-
          self$`citation_rate`
      }
      if (!is.null(self$`avg_citation_position`)) {
        UrlListSummaryObject[["avg_citation_position"]] <-
          self$`avg_citation_position`
      }
      if (!is.null(self$`median_days_to_first_citation`)) {
        UrlListSummaryObject[["median_days_to_first_citation"]] <-
          self$`median_days_to_first_citation`
      }
      if (!is.null(self$`total_cost`)) {
        UrlListSummaryObject[["total_cost"]] <-
          self$`total_cost`
      }
      if (!is.null(self$`cost_per_cited_entry`)) {
        UrlListSummaryObject[["cost_per_cited_entry"]] <-
          self$`cost_per_cited_entry`
      }
      return(UrlListSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`entries_count`)) {
        self$`entries_count` <- this_object$`entries_count`
      }
      if (!is.null(this_object$`cited_entries`)) {
        self$`cited_entries` <- this_object$`cited_entries`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      if (!is.null(this_object$`answers`)) {
        self$`answers` <- this_object$`answers`
      }
      if (!is.null(this_object$`citation_rate`)) {
        self$`citation_rate` <- this_object$`citation_rate`
      }
      if (!is.null(this_object$`avg_citation_position`)) {
        self$`avg_citation_position` <- this_object$`avg_citation_position`
      }
      if (!is.null(this_object$`median_days_to_first_citation`)) {
        self$`median_days_to_first_citation` <- this_object$`median_days_to_first_citation`
      }
      if (!is.null(this_object$`total_cost`)) {
        self$`total_cost` <- this_object$`total_cost`
      }
      if (!is.null(this_object$`cost_per_cited_entry`)) {
        self$`cost_per_cited_entry` <- this_object$`cost_per_cited_entry`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UrlListSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`entries_count` <- this_object$`entries_count`
      self$`cited_entries` <- this_object$`cited_entries`
      self$`citations` <- this_object$`citations`
      self$`answers` <- this_object$`answers`
      self$`citation_rate` <- this_object$`citation_rate`
      self$`avg_citation_position` <- this_object$`avg_citation_position`
      self$`median_days_to_first_citation` <- this_object$`median_days_to_first_citation`
      self$`total_cost` <- this_object$`total_cost`
      self$`cost_per_cited_entry` <- this_object$`cost_per_cited_entry`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `entries_count`
      if (!is.null(input_json$`entries_count`)) {
        if (!(is.numeric(input_json$`entries_count`) && length(input_json$`entries_count`) == 1)) {
          stop(paste("Error! Invalid data for `entries_count`. Must be an integer:", input_json$`entries_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListSummary: the required field `entries_count` is missing."))
      }
      # check the required field `cited_entries`
      if (!is.null(input_json$`cited_entries`)) {
        if (!(is.numeric(input_json$`cited_entries`) && length(input_json$`cited_entries`) == 1)) {
          stop(paste("Error! Invalid data for `cited_entries`. Must be an integer:", input_json$`cited_entries`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListSummary: the required field `cited_entries` is missing."))
      }
      # check the required field `citations`
      if (!is.null(input_json$`citations`)) {
        if (!(is.numeric(input_json$`citations`) && length(input_json$`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", input_json$`citations`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListSummary: the required field `citations` is missing."))
      }
      # check the required field `answers`
      if (!is.null(input_json$`answers`)) {
        if (!(is.numeric(input_json$`answers`) && length(input_json$`answers`) == 1)) {
          stop(paste("Error! Invalid data for `answers`. Must be an integer:", input_json$`answers`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListSummary: the required field `answers` is missing."))
      }
      # check the required field `citation_rate`
      if (!is.null(input_json$`citation_rate`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListSummary: the required field `citation_rate` is missing."))
      }
      # check the required field `avg_citation_position`
      if (!is.null(input_json$`avg_citation_position`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListSummary: the required field `avg_citation_position` is missing."))
      }
      # check the required field `median_days_to_first_citation`
      if (!is.null(input_json$`median_days_to_first_citation`)) {
        if (!(is.numeric(input_json$`median_days_to_first_citation`) && length(input_json$`median_days_to_first_citation`) == 1)) {
          stop(paste("Error! Invalid data for `median_days_to_first_citation`. Must be an integer:", input_json$`median_days_to_first_citation`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListSummary: the required field `median_days_to_first_citation` is missing."))
      }
      # check the required field `total_cost`
      if (!is.null(input_json$`total_cost`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListSummary: the required field `total_cost` is missing."))
      }
      # check the required field `cost_per_cited_entry`
      if (!is.null(input_json$`cost_per_cited_entry`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListSummary: the required field `cost_per_cited_entry` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListSummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `entries_count` is null
      if (is.null(self$`entries_count`)) {
        return(FALSE)
      }

      # check if the required `cited_entries` is null
      if (is.null(self$`cited_entries`)) {
        return(FALSE)
      }

      # check if the required `citations` is null
      if (is.null(self$`citations`)) {
        return(FALSE)
      }

      # check if the required `answers` is null
      if (is.null(self$`answers`)) {
        return(FALSE)
      }

      # check if the required `citation_rate` is null
      if (is.null(self$`citation_rate`)) {
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
      # check if the required `entries_count` is null
      if (is.null(self$`entries_count`)) {
        invalid_fields["entries_count"] <- "Non-nullable required field `entries_count` cannot be null."
      }

      # check if the required `cited_entries` is null
      if (is.null(self$`cited_entries`)) {
        invalid_fields["cited_entries"] <- "Non-nullable required field `cited_entries` cannot be null."
      }

      # check if the required `citations` is null
      if (is.null(self$`citations`)) {
        invalid_fields["citations"] <- "Non-nullable required field `citations` cannot be null."
      }

      # check if the required `answers` is null
      if (is.null(self$`answers`)) {
        invalid_fields["answers"] <- "Non-nullable required field `answers` cannot be null."
      }

      # check if the required `citation_rate` is null
      if (is.null(self$`citation_rate`)) {
        invalid_fields["citation_rate"] <- "Non-nullable required field `citation_rate` cannot be null."
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
# UrlListSummary$unlock()
#
## Below is an example to define the print function
# UrlListSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListSummary$lock()

