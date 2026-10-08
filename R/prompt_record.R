#' Create a new PromptRecord
#'
#' @description
#' PromptRecord Class
#'
#' @docType class
#' @title PromptRecord
#' @description PromptRecord Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field prompt_text  character
#' @field collection_id Primary tag, when the prompt has one integer
#' @field collection_ids Every tag the prompt belongs to list(integer)
#' @field tags  list(\link{TagRef})
#' @field country_code  character
#' @field language_code  character
#' @field prompt_type Search intent: informational, navigational, commercial or transactional. Null until the prompt is classified character
#' @field brand_kind Brand focus: brand, brand_other or non_brand. Null until the prompt is classified character
#' @field last_executed_at Null until the prompt has run character
#' @field app_url Opens this prompt in the app. The link names its project, so it opens there for any user with access to that project character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptRecord <- R6::R6Class(
  "PromptRecord",
  public = list(
    `id` = NULL,
    `prompt_text` = NULL,
    `collection_id` = NULL,
    `collection_ids` = NULL,
    `tags` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,
    `prompt_type` = NULL,
    `brand_kind` = NULL,
    `last_executed_at` = NULL,
    `app_url` = NULL,

    #' @description
    #' Initialize a new PromptRecord class.
    #'
    #' @param id id
    #' @param prompt_text prompt_text
    #' @param collection_id Primary tag, when the prompt has one
    #' @param collection_ids Every tag the prompt belongs to
    #' @param tags tags
    #' @param country_code country_code
    #' @param language_code language_code
    #' @param prompt_type Search intent: informational, navigational, commercial or transactional. Null until the prompt is classified
    #' @param brand_kind Brand focus: brand, brand_other or non_brand. Null until the prompt is classified
    #' @param last_executed_at Null until the prompt has run
    #' @param app_url Opens this prompt in the app. The link names its project, so it opens there for any user with access to that project
    #' @param ... Other optional arguments.
    initialize = function(`id`, `prompt_text`, `collection_id`, `collection_ids`, `tags`, `country_code`, `language_code`, `prompt_type`, `brand_kind`, `last_executed_at`, `app_url`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`prompt_text`)) {
        if (!(is.character(`prompt_text`) && length(`prompt_text`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_text`. Must be a string:", `prompt_text`))
        }
        self$`prompt_text` <- `prompt_text`
      }
      if (!missing(`collection_id`)) {
        if (!(is.numeric(`collection_id`) && length(`collection_id`) == 1)) {
          stop(paste("Error! Invalid data for `collection_id`. Must be an integer:", `collection_id`))
        }
        self$`collection_id` <- `collection_id`
      }
      if (!missing(`collection_ids`)) {
        stopifnot(is.vector(`collection_ids`), length(`collection_ids`) != 0)
        sapply(`collection_ids`, function(x) stopifnot(is.character(x)))
        self$`collection_ids` <- `collection_ids`
      }
      if (!missing(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(R6::is.R6(x)))
        self$`tags` <- `tags`
      }
      if (!missing(`country_code`)) {
        if (!(is.character(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", `country_code`))
        }
        self$`country_code` <- `country_code`
      }
      if (!missing(`language_code`)) {
        if (!(is.character(`language_code`) && length(`language_code`) == 1)) {
          stop(paste("Error! Invalid data for `language_code`. Must be a string:", `language_code`))
        }
        self$`language_code` <- `language_code`
      }
      if (!missing(`prompt_type`)) {
        if (!(is.character(`prompt_type`) && length(`prompt_type`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_type`. Must be a string:", `prompt_type`))
        }
        self$`prompt_type` <- `prompt_type`
      }
      if (!missing(`brand_kind`)) {
        if (!(is.character(`brand_kind`) && length(`brand_kind`) == 1)) {
          stop(paste("Error! Invalid data for `brand_kind`. Must be a string:", `brand_kind`))
        }
        self$`brand_kind` <- `brand_kind`
      }
      if (!missing(`last_executed_at`)) {
        if (!(is.character(`last_executed_at`) && length(`last_executed_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_executed_at`. Must be a string:", `last_executed_at`))
        }
        self$`last_executed_at` <- `last_executed_at`
      }
      if (!missing(`app_url`)) {
        if (!(is.character(`app_url`) && length(`app_url`) == 1)) {
          stop(paste("Error! Invalid data for `app_url`. Must be a string:", `app_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `app_url`. Must be a URL:", `app_url`))
        }
        self$`app_url` <- `app_url`
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
    #' @return PromptRecord as a base R list.
    #' @examples
    #' # convert array of PromptRecord (x) to a data frame
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
    #' Convert PromptRecord to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptRecordObject <- list()
      if (!is.null(self$`id`)) {
        PromptRecordObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`prompt_text`)) {
        PromptRecordObject[["prompt_text"]] <-
          self$`prompt_text`
      }
      if (!is.null(self$`collection_id`)) {
        PromptRecordObject[["collection_id"]] <-
          self$`collection_id`
      }
      if (!is.null(self$`collection_ids`)) {
        PromptRecordObject[["collection_ids"]] <-
          self$`collection_ids`
      }
      if (!is.null(self$`tags`)) {
        PromptRecordObject[["tags"]] <-
          self$extractSimpleType(self$`tags`)
      }
      if (!is.null(self$`country_code`)) {
        PromptRecordObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        PromptRecordObject[["language_code"]] <-
          self$`language_code`
      }
      if (!is.null(self$`prompt_type`)) {
        PromptRecordObject[["prompt_type"]] <-
          self$`prompt_type`
      }
      if (!is.null(self$`brand_kind`)) {
        PromptRecordObject[["brand_kind"]] <-
          self$`brand_kind`
      }
      if (!is.null(self$`last_executed_at`)) {
        PromptRecordObject[["last_executed_at"]] <-
          self$`last_executed_at`
      }
      if (!is.null(self$`app_url`)) {
        PromptRecordObject[["app_url"]] <-
          self$`app_url`
      }
      return(PromptRecordObject)
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
    #' Deserialize JSON string into an instance of PromptRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptRecord
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`prompt_text`)) {
        self$`prompt_text` <- this_object$`prompt_text`
      }
      if (!is.null(this_object$`collection_id`)) {
        self$`collection_id` <- this_object$`collection_id`
      }
      if (!is.null(this_object$`collection_ids`)) {
        self$`collection_ids` <- ApiClient$new()$deserializeObj(this_object$`collection_ids`, "array[integer]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[TagRef]", loadNamespace("llmpulse"))
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
      if (!is.null(this_object$`last_executed_at`)) {
        self$`last_executed_at` <- this_object$`last_executed_at`
      }
      if (!is.null(this_object$`app_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `app_url`. Must be a URL:", this_object$`app_url`))
        }
        self$`app_url` <- this_object$`app_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PromptRecord in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptRecord
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`prompt_text` <- this_object$`prompt_text`
      self$`collection_id` <- this_object$`collection_id`
      self$`collection_ids` <- ApiClient$new()$deserializeObj(this_object$`collection_ids`, "array[integer]", loadNamespace("llmpulse"))
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[TagRef]", loadNamespace("llmpulse"))
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self$`prompt_type` <- this_object$`prompt_type`
      self$`brand_kind` <- this_object$`brand_kind`
      self$`last_executed_at` <- this_object$`last_executed_at`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `app_url`. Must be a URL:", this_object$`app_url`))
      }
      self$`app_url` <- this_object$`app_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptRecord and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PromptRecord: the required field `id` is missing."))
      }
      # check the required field `prompt_text`
      if (!is.null(input_json$`prompt_text`)) {
        if (!(is.character(input_json$`prompt_text`) && length(input_json$`prompt_text`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_text`. Must be a string:", input_json$`prompt_text`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptRecord: the required field `prompt_text` is missing."))
      }
      # check the required field `collection_id`
      if (!is.null(input_json$`collection_id`)) {
        if (!(is.numeric(input_json$`collection_id`) && length(input_json$`collection_id`) == 1)) {
          stop(paste("Error! Invalid data for `collection_id`. Must be an integer:", input_json$`collection_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptRecord: the required field `collection_id` is missing."))
      }
      # check the required field `collection_ids`
      if (!is.null(input_json$`collection_ids`)) {
        stopifnot(is.vector(input_json$`collection_ids`), length(input_json$`collection_ids`) != 0)
        tmp <- sapply(input_json$`collection_ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptRecord: the required field `collection_ids` is missing."))
      }
      # check the required field `tags`
      if (!is.null(input_json$`tags`)) {
        stopifnot(is.vector(input_json$`tags`), length(input_json$`tags`) != 0)
        tmp <- sapply(input_json$`tags`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptRecord: the required field `tags` is missing."))
      }
      # check the required field `country_code`
      if (!is.null(input_json$`country_code`)) {
        if (!(is.character(input_json$`country_code`) && length(input_json$`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", input_json$`country_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptRecord: the required field `country_code` is missing."))
      }
      # check the required field `language_code`
      if (!is.null(input_json$`language_code`)) {
        if (!(is.character(input_json$`language_code`) && length(input_json$`language_code`) == 1)) {
          stop(paste("Error! Invalid data for `language_code`. Must be a string:", input_json$`language_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptRecord: the required field `language_code` is missing."))
      }
      # check the required field `prompt_type`
      if (!is.null(input_json$`prompt_type`)) {
        if (!(is.character(input_json$`prompt_type`) && length(input_json$`prompt_type`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_type`. Must be a string:", input_json$`prompt_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptRecord: the required field `prompt_type` is missing."))
      }
      # check the required field `brand_kind`
      if (!is.null(input_json$`brand_kind`)) {
        if (!(is.character(input_json$`brand_kind`) && length(input_json$`brand_kind`) == 1)) {
          stop(paste("Error! Invalid data for `brand_kind`. Must be a string:", input_json$`brand_kind`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptRecord: the required field `brand_kind` is missing."))
      }
      # check the required field `last_executed_at`
      if (!is.null(input_json$`last_executed_at`)) {
        if (!(is.character(input_json$`last_executed_at`) && length(input_json$`last_executed_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_executed_at`. Must be a string:", input_json$`last_executed_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptRecord: the required field `last_executed_at` is missing."))
      }
      # check the required field `app_url`
      if (!is.null(input_json$`app_url`)) {
        if (!(is.character(input_json$`app_url`) && length(input_json$`app_url`) == 1)) {
          stop(paste("Error! Invalid data for `app_url`. Must be a string:", input_json$`app_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(input_json$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `app_url`. Must be a URL:", input_json$`app_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptRecord: the required field `app_url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptRecord
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

      # check if the required `prompt_text` is null
      if (is.null(self$`prompt_text`)) {
        return(FALSE)
      }

      # check if the required `collection_ids` is null
      if (is.null(self$`collection_ids`)) {
        return(FALSE)
      }

      # check if the required `tags` is null
      if (is.null(self$`tags`)) {
        return(FALSE)
      }

      # check if the required `app_url` is null
      if (is.null(self$`app_url`)) {
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

      # check if the required `prompt_text` is null
      if (is.null(self$`prompt_text`)) {
        invalid_fields["prompt_text"] <- "Non-nullable required field `prompt_text` cannot be null."
      }

      # check if the required `collection_ids` is null
      if (is.null(self$`collection_ids`)) {
        invalid_fields["collection_ids"] <- "Non-nullable required field `collection_ids` cannot be null."
      }

      # check if the required `tags` is null
      if (is.null(self$`tags`)) {
        invalid_fields["tags"] <- "Non-nullable required field `tags` cannot be null."
      }

      # check if the required `app_url` is null
      if (is.null(self$`app_url`)) {
        invalid_fields["app_url"] <- "Non-nullable required field `app_url` cannot be null."
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
# PromptRecord$unlock()
#
## Below is an example to define the print function
# PromptRecord$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptRecord$lock()

