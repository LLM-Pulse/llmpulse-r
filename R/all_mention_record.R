#' Create a new AllMentionRecord
#'
#' @description
#' AllMentionRecord Class
#'
#' @docType class
#' @title AllMentionRecord
#' @description AllMentionRecord Class
#' @format An \code{R6Class} generator object
#' @field id The mention's id, unique within its actor_type integer
#' @field actor_type project (your brand) or competitor character
#' @field competitor_id Competitor rows only integer [optional]
#' @field name The project's brand name (its name when no brand name is set), or the competitor's brand name character
#' @field domain The competitor's bare domain (competitor rows only) character [optional]
#' @field prompt_id  integer
#' @field prompt_execution_id  integer
#' @field created_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AllMentionRecord <- R6::R6Class(
  "AllMentionRecord",
  public = list(
    `id` = NULL,
    `actor_type` = NULL,
    `competitor_id` = NULL,
    `name` = NULL,
    `domain` = NULL,
    `prompt_id` = NULL,
    `prompt_execution_id` = NULL,
    `created_at` = NULL,

    #' @description
    #' Initialize a new AllMentionRecord class.
    #'
    #' @param id The mention's id, unique within its actor_type
    #' @param actor_type project (your brand) or competitor
    #' @param name The project's brand name (its name when no brand name is set), or the competitor's brand name
    #' @param prompt_id prompt_id
    #' @param prompt_execution_id prompt_execution_id
    #' @param created_at created_at
    #' @param competitor_id Competitor rows only
    #' @param domain The competitor's bare domain (competitor rows only)
    #' @param ... Other optional arguments.
    initialize = function(`id`, `actor_type`, `name`, `prompt_id`, `prompt_execution_id`, `created_at`, `competitor_id` = NULL, `domain` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`actor_type`)) {
        if (!(is.character(`actor_type`) && length(`actor_type`) == 1)) {
          stop(paste("Error! Invalid data for `actor_type`. Must be a string:", `actor_type`))
        }
        self$`actor_type` <- `actor_type`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`prompt_id`)) {
        if (!(is.numeric(`prompt_id`) && length(`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", `prompt_id`))
        }
        self$`prompt_id` <- `prompt_id`
      }
      if (!missing(`prompt_execution_id`)) {
        if (!(is.numeric(`prompt_execution_id`) && length(`prompt_execution_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_execution_id`. Must be an integer:", `prompt_execution_id`))
        }
        self$`prompt_execution_id` <- `prompt_execution_id`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!is.null(`competitor_id`)) {
        if (!(is.numeric(`competitor_id`) && length(`competitor_id`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_id`. Must be an integer:", `competitor_id`))
        }
        self$`competitor_id` <- `competitor_id`
      }
      if (!is.null(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
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
    #' @return AllMentionRecord as a base R list.
    #' @examples
    #' # convert array of AllMentionRecord (x) to a data frame
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
    #' Convert AllMentionRecord to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AllMentionRecordObject <- list()
      if (!is.null(self$`id`)) {
        AllMentionRecordObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`actor_type`)) {
        AllMentionRecordObject[["actor_type"]] <-
          self$`actor_type`
      }
      if (!is.null(self$`competitor_id`)) {
        AllMentionRecordObject[["competitor_id"]] <-
          self$`competitor_id`
      }
      if (!is.null(self$`name`)) {
        AllMentionRecordObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`domain`)) {
        AllMentionRecordObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`prompt_id`)) {
        AllMentionRecordObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`prompt_execution_id`)) {
        AllMentionRecordObject[["prompt_execution_id"]] <-
          self$`prompt_execution_id`
      }
      if (!is.null(self$`created_at`)) {
        AllMentionRecordObject[["created_at"]] <-
          self$`created_at`
      }
      return(AllMentionRecordObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AllMentionRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of AllMentionRecord
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`actor_type`)) {
        self$`actor_type` <- this_object$`actor_type`
      }
      if (!is.null(this_object$`competitor_id`)) {
        self$`competitor_id` <- this_object$`competitor_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`prompt_id`)) {
        self$`prompt_id` <- this_object$`prompt_id`
      }
      if (!is.null(this_object$`prompt_execution_id`)) {
        self$`prompt_execution_id` <- this_object$`prompt_execution_id`
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
    #' @return AllMentionRecord in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AllMentionRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of AllMentionRecord
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`actor_type` <- this_object$`actor_type`
      self$`competitor_id` <- this_object$`competitor_id`
      self$`name` <- this_object$`name`
      self$`domain` <- this_object$`domain`
      self$`prompt_id` <- this_object$`prompt_id`
      self$`prompt_execution_id` <- this_object$`prompt_execution_id`
      self$`created_at` <- this_object$`created_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to AllMentionRecord and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AllMentionRecord: the required field `id` is missing."))
      }
      # check the required field `actor_type`
      if (!is.null(input_json$`actor_type`)) {
        if (!(is.character(input_json$`actor_type`) && length(input_json$`actor_type`) == 1)) {
          stop(paste("Error! Invalid data for `actor_type`. Must be a string:", input_json$`actor_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AllMentionRecord: the required field `actor_type` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AllMentionRecord: the required field `name` is missing."))
      }
      # check the required field `prompt_id`
      if (!is.null(input_json$`prompt_id`)) {
        if (!(is.numeric(input_json$`prompt_id`) && length(input_json$`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", input_json$`prompt_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AllMentionRecord: the required field `prompt_id` is missing."))
      }
      # check the required field `prompt_execution_id`
      if (!is.null(input_json$`prompt_execution_id`)) {
        if (!(is.numeric(input_json$`prompt_execution_id`) && length(input_json$`prompt_execution_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_execution_id`. Must be an integer:", input_json$`prompt_execution_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AllMentionRecord: the required field `prompt_execution_id` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AllMentionRecord: the required field `created_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AllMentionRecord
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

      # check if the required `actor_type` is null
      if (is.null(self$`actor_type`)) {
        return(FALSE)
      }

      # check if the required `prompt_id` is null
      if (is.null(self$`prompt_id`)) {
        return(FALSE)
      }

      # check if the required `prompt_execution_id` is null
      if (is.null(self$`prompt_execution_id`)) {
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

      # check if the required `actor_type` is null
      if (is.null(self$`actor_type`)) {
        invalid_fields["actor_type"] <- "Non-nullable required field `actor_type` cannot be null."
      }

      # check if the required `prompt_id` is null
      if (is.null(self$`prompt_id`)) {
        invalid_fields["prompt_id"] <- "Non-nullable required field `prompt_id` cannot be null."
      }

      # check if the required `prompt_execution_id` is null
      if (is.null(self$`prompt_execution_id`)) {
        invalid_fields["prompt_execution_id"] <- "Non-nullable required field `prompt_execution_id` cannot be null."
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
# AllMentionRecord$unlock()
#
## Below is an example to define the print function
# AllMentionRecord$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AllMentionRecord$lock()

