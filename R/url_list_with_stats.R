#' Create a new UrlListWithStats
#'
#' @description
#' UrlListWithStats Class
#'
#' @docType class
#' @title UrlListWithStats
#' @description UrlListWithStats Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field name  character
#' @field description  character
#' @field currency The currency of the entry costs. character
#' @field created_at  character
#' @field updated_at  character
#' @field entries_count  integer
#' @field cited_entries Entries an AI answer cited in the window. integer
#' @field citations AI answers citing any entry in the window, each once. integer
#' @field last_cited_at The latest answer citing an entry, up to the window's end. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListWithStats <- R6::R6Class(
  "UrlListWithStats",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `currency` = NULL,
    `created_at` = NULL,
    `updated_at` = NULL,
    `entries_count` = NULL,
    `cited_entries` = NULL,
    `citations` = NULL,
    `last_cited_at` = NULL,

    #' @description
    #' Initialize a new UrlListWithStats class.
    #'
    #' @param id id
    #' @param name name
    #' @param description description
    #' @param currency The currency of the entry costs.
    #' @param created_at created_at
    #' @param updated_at updated_at
    #' @param entries_count entries_count
    #' @param cited_entries Entries an AI answer cited in the window.
    #' @param citations AI answers citing any entry in the window, each once.
    #' @param last_cited_at The latest answer citing an entry, up to the window's end.
    #' @param ... Other optional arguments.
    initialize = function(`id`, `name`, `description`, `currency`, `created_at`, `updated_at`, `entries_count`, `cited_entries`, `citations`, `last_cited_at`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`currency`)) {
        if (!(`currency` %in% c("USD", "EUR", "GBP"))) {
          stop(paste("Error! \"", `currency`, "\" cannot be assigned to `currency`. Must be \"USD\", \"EUR\", \"GBP\".", sep = ""))
        }
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`updated_at`)) {
        if (!(is.character(`updated_at`) && length(`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
      }
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
      if (!missing(`last_cited_at`)) {
        if (!(is.character(`last_cited_at`) && length(`last_cited_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_cited_at`. Must be a string:", `last_cited_at`))
        }
        self$`last_cited_at` <- `last_cited_at`
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
    #' @return UrlListWithStats as a base R list.
    #' @examples
    #' # convert array of UrlListWithStats (x) to a data frame
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
    #' Convert UrlListWithStats to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListWithStatsObject <- list()
      if (!is.null(self$`id`)) {
        UrlListWithStatsObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        UrlListWithStatsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        UrlListWithStatsObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`currency`)) {
        UrlListWithStatsObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`created_at`)) {
        UrlListWithStatsObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        UrlListWithStatsObject[["updated_at"]] <-
          self$`updated_at`
      }
      if (!is.null(self$`entries_count`)) {
        UrlListWithStatsObject[["entries_count"]] <-
          self$`entries_count`
      }
      if (!is.null(self$`cited_entries`)) {
        UrlListWithStatsObject[["cited_entries"]] <-
          self$`cited_entries`
      }
      if (!is.null(self$`citations`)) {
        UrlListWithStatsObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`last_cited_at`)) {
        UrlListWithStatsObject[["last_cited_at"]] <-
          self$`last_cited_at`
      }
      return(UrlListWithStatsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListWithStats
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListWithStats
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`currency`)) {
        if (!is.null(this_object$`currency`) && !(this_object$`currency` %in% c("USD", "EUR", "GBP"))) {
          stop(paste("Error! \"", this_object$`currency`, "\" cannot be assigned to `currency`. Must be \"USD\", \"EUR\", \"GBP\".", sep = ""))
        }
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      if (!is.null(this_object$`entries_count`)) {
        self$`entries_count` <- this_object$`entries_count`
      }
      if (!is.null(this_object$`cited_entries`)) {
        self$`cited_entries` <- this_object$`cited_entries`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      if (!is.null(this_object$`last_cited_at`)) {
        self$`last_cited_at` <- this_object$`last_cited_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UrlListWithStats in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListWithStats
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListWithStats
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`currency`) && !(this_object$`currency` %in% c("USD", "EUR", "GBP"))) {
        stop(paste("Error! \"", this_object$`currency`, "\" cannot be assigned to `currency`. Must be \"USD\", \"EUR\", \"GBP\".", sep = ""))
      }
      self$`currency` <- this_object$`currency`
      self$`created_at` <- this_object$`created_at`
      self$`updated_at` <- this_object$`updated_at`
      self$`entries_count` <- this_object$`entries_count`
      self$`cited_entries` <- this_object$`cited_entries`
      self$`citations` <- this_object$`citations`
      self$`last_cited_at` <- this_object$`last_cited_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListWithStats and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UrlListWithStats: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListWithStats: the required field `name` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListWithStats: the required field `description` is missing."))
      }
      # check the required field `currency`
      if (!is.null(input_json$`currency`)) {
        if (!(is.character(input_json$`currency`) && length(input_json$`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", input_json$`currency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListWithStats: the required field `currency` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListWithStats: the required field `created_at` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListWithStats: the required field `updated_at` is missing."))
      }
      # check the required field `entries_count`
      if (!is.null(input_json$`entries_count`)) {
        if (!(is.numeric(input_json$`entries_count`) && length(input_json$`entries_count`) == 1)) {
          stop(paste("Error! Invalid data for `entries_count`. Must be an integer:", input_json$`entries_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListWithStats: the required field `entries_count` is missing."))
      }
      # check the required field `cited_entries`
      if (!is.null(input_json$`cited_entries`)) {
        if (!(is.numeric(input_json$`cited_entries`) && length(input_json$`cited_entries`) == 1)) {
          stop(paste("Error! Invalid data for `cited_entries`. Must be an integer:", input_json$`cited_entries`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListWithStats: the required field `cited_entries` is missing."))
      }
      # check the required field `citations`
      if (!is.null(input_json$`citations`)) {
        if (!(is.numeric(input_json$`citations`) && length(input_json$`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", input_json$`citations`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListWithStats: the required field `citations` is missing."))
      }
      # check the required field `last_cited_at`
      if (!is.null(input_json$`last_cited_at`)) {
        if (!(is.character(input_json$`last_cited_at`) && length(input_json$`last_cited_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_cited_at`. Must be a string:", input_json$`last_cited_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListWithStats: the required field `last_cited_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListWithStats
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
        return(FALSE)
      }

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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        invalid_fields["currency"] <- "Non-nullable required field `currency` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
        invalid_fields["updated_at"] <- "Non-nullable required field `updated_at` cannot be null."
      }

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
# UrlListWithStats$unlock()
#
## Below is an example to define the print function
# UrlListWithStats$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListWithStats$lock()

