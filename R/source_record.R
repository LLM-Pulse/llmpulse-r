#' Create a new SourceRecord
#'
#' @description
#' SourceRecord Class
#'
#' @docType class
#' @title SourceRecord
#' @description SourceRecord Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field prompt_execution_id  integer
#' @field domain Registrable domain of the cited URL character
#' @field url Normalized cited URL (tracking parameters and fragment removed) character
#' @field url_sha256 Key of the cited page, as GET /citation_intelligence/urls/{url_sha256} takes it character
#' @field position Rank of the citation in the answer; 0 for a background source reference with no visible rank integer
#' @field source_type owned (the project's domains), competitor or third_party character
#' @field is_google_play_link  character
#' @field is_app_store_link  character
#' @field created_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SourceRecord <- R6::R6Class(
  "SourceRecord",
  public = list(
    `id` = NULL,
    `prompt_execution_id` = NULL,
    `domain` = NULL,
    `url` = NULL,
    `url_sha256` = NULL,
    `position` = NULL,
    `source_type` = NULL,
    `is_google_play_link` = NULL,
    `is_app_store_link` = NULL,
    `created_at` = NULL,

    #' @description
    #' Initialize a new SourceRecord class.
    #'
    #' @param id id
    #' @param prompt_execution_id prompt_execution_id
    #' @param domain Registrable domain of the cited URL
    #' @param url Normalized cited URL (tracking parameters and fragment removed)
    #' @param url_sha256 Key of the cited page, as GET /citation_intelligence/urls/{url_sha256} takes it
    #' @param position Rank of the citation in the answer; 0 for a background source reference with no visible rank
    #' @param source_type owned (the project's domains), competitor or third_party
    #' @param is_google_play_link is_google_play_link
    #' @param is_app_store_link is_app_store_link
    #' @param created_at created_at
    #' @param ... Other optional arguments.
    initialize = function(`id`, `prompt_execution_id`, `domain`, `url`, `url_sha256`, `position`, `source_type`, `is_google_play_link`, `is_app_store_link`, `created_at`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`prompt_execution_id`)) {
        if (!(is.numeric(`prompt_execution_id`) && length(`prompt_execution_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_execution_id`. Must be an integer:", `prompt_execution_id`))
        }
        self$`prompt_execution_id` <- `prompt_execution_id`
      }
      if (!missing(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!missing(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!missing(`url_sha256`)) {
        if (!(is.character(`url_sha256`) && length(`url_sha256`) == 1)) {
          stop(paste("Error! Invalid data for `url_sha256`. Must be a string:", `url_sha256`))
        }
        self$`url_sha256` <- `url_sha256`
      }
      if (!missing(`position`)) {
        if (!(is.numeric(`position`) && length(`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", `position`))
        }
        self$`position` <- `position`
      }
      if (!missing(`source_type`)) {
        if (!(is.character(`source_type`) && length(`source_type`) == 1)) {
          stop(paste("Error! Invalid data for `source_type`. Must be a string:", `source_type`))
        }
        self$`source_type` <- `source_type`
      }
      if (!missing(`is_google_play_link`)) {
        if (!(is.logical(`is_google_play_link`) && length(`is_google_play_link`) == 1)) {
          stop(paste("Error! Invalid data for `is_google_play_link`. Must be a boolean:", `is_google_play_link`))
        }
        self$`is_google_play_link` <- `is_google_play_link`
      }
      if (!missing(`is_app_store_link`)) {
        if (!(is.logical(`is_app_store_link`) && length(`is_app_store_link`) == 1)) {
          stop(paste("Error! Invalid data for `is_app_store_link`. Must be a boolean:", `is_app_store_link`))
        }
        self$`is_app_store_link` <- `is_app_store_link`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
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
    #' @return SourceRecord as a base R list.
    #' @examples
    #' # convert array of SourceRecord (x) to a data frame
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
    #' Convert SourceRecord to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SourceRecordObject <- list()
      if (!is.null(self$`id`)) {
        SourceRecordObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`prompt_execution_id`)) {
        SourceRecordObject[["prompt_execution_id"]] <-
          self$`prompt_execution_id`
      }
      if (!is.null(self$`domain`)) {
        SourceRecordObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`url`)) {
        SourceRecordObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`url_sha256`)) {
        SourceRecordObject[["url_sha256"]] <-
          self$`url_sha256`
      }
      if (!is.null(self$`position`)) {
        SourceRecordObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`source_type`)) {
        SourceRecordObject[["source_type"]] <-
          self$`source_type`
      }
      if (!is.null(self$`is_google_play_link`)) {
        SourceRecordObject[["is_google_play_link"]] <-
          self$`is_google_play_link`
      }
      if (!is.null(self$`is_app_store_link`)) {
        SourceRecordObject[["is_app_store_link"]] <-
          self$`is_app_store_link`
      }
      if (!is.null(self$`created_at`)) {
        SourceRecordObject[["created_at"]] <-
          self$`created_at`
      }
      return(SourceRecordObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SourceRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of SourceRecord
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`prompt_execution_id`)) {
        self$`prompt_execution_id` <- this_object$`prompt_execution_id`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`url_sha256`)) {
        self$`url_sha256` <- this_object$`url_sha256`
      }
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      if (!is.null(this_object$`source_type`)) {
        self$`source_type` <- this_object$`source_type`
      }
      if (!is.null(this_object$`is_google_play_link`)) {
        self$`is_google_play_link` <- this_object$`is_google_play_link`
      }
      if (!is.null(this_object$`is_app_store_link`)) {
        self$`is_app_store_link` <- this_object$`is_app_store_link`
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
    #' @return SourceRecord in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SourceRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of SourceRecord
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`prompt_execution_id` <- this_object$`prompt_execution_id`
      self$`domain` <- this_object$`domain`
      self$`url` <- this_object$`url`
      self$`url_sha256` <- this_object$`url_sha256`
      self$`position` <- this_object$`position`
      self$`source_type` <- this_object$`source_type`
      self$`is_google_play_link` <- this_object$`is_google_play_link`
      self$`is_app_store_link` <- this_object$`is_app_store_link`
      self$`created_at` <- this_object$`created_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to SourceRecord and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for SourceRecord: the required field `id` is missing."))
      }
      # check the required field `prompt_execution_id`
      if (!is.null(input_json$`prompt_execution_id`)) {
        if (!(is.numeric(input_json$`prompt_execution_id`) && length(input_json$`prompt_execution_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_execution_id`. Must be an integer:", input_json$`prompt_execution_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SourceRecord: the required field `prompt_execution_id` is missing."))
      }
      # check the required field `domain`
      if (!is.null(input_json$`domain`)) {
        if (!(is.character(input_json$`domain`) && length(input_json$`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", input_json$`domain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SourceRecord: the required field `domain` is missing."))
      }
      # check the required field `url`
      if (!is.null(input_json$`url`)) {
        if (!(is.character(input_json$`url`) && length(input_json$`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", input_json$`url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SourceRecord: the required field `url` is missing."))
      }
      # check the required field `url_sha256`
      if (!is.null(input_json$`url_sha256`)) {
        if (!(is.character(input_json$`url_sha256`) && length(input_json$`url_sha256`) == 1)) {
          stop(paste("Error! Invalid data for `url_sha256`. Must be a string:", input_json$`url_sha256`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SourceRecord: the required field `url_sha256` is missing."))
      }
      # check the required field `position`
      if (!is.null(input_json$`position`)) {
        if (!(is.numeric(input_json$`position`) && length(input_json$`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", input_json$`position`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SourceRecord: the required field `position` is missing."))
      }
      # check the required field `source_type`
      if (!is.null(input_json$`source_type`)) {
        if (!(is.character(input_json$`source_type`) && length(input_json$`source_type`) == 1)) {
          stop(paste("Error! Invalid data for `source_type`. Must be a string:", input_json$`source_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SourceRecord: the required field `source_type` is missing."))
      }
      # check the required field `is_google_play_link`
      if (!is.null(input_json$`is_google_play_link`)) {
        if (!(is.logical(input_json$`is_google_play_link`) && length(input_json$`is_google_play_link`) == 1)) {
          stop(paste("Error! Invalid data for `is_google_play_link`. Must be a boolean:", input_json$`is_google_play_link`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SourceRecord: the required field `is_google_play_link` is missing."))
      }
      # check the required field `is_app_store_link`
      if (!is.null(input_json$`is_app_store_link`)) {
        if (!(is.logical(input_json$`is_app_store_link`) && length(input_json$`is_app_store_link`) == 1)) {
          stop(paste("Error! Invalid data for `is_app_store_link`. Must be a boolean:", input_json$`is_app_store_link`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SourceRecord: the required field `is_app_store_link` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SourceRecord: the required field `created_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SourceRecord
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

      # check if the required `prompt_execution_id` is null
      if (is.null(self$`prompt_execution_id`)) {
        return(FALSE)
      }

      # check if the required `position` is null
      if (is.null(self$`position`)) {
        return(FALSE)
      }

      # check if the required `source_type` is null
      if (is.null(self$`source_type`)) {
        return(FALSE)
      }

      # check if the required `is_google_play_link` is null
      if (is.null(self$`is_google_play_link`)) {
        return(FALSE)
      }

      # check if the required `is_app_store_link` is null
      if (is.null(self$`is_app_store_link`)) {
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

      # check if the required `prompt_execution_id` is null
      if (is.null(self$`prompt_execution_id`)) {
        invalid_fields["prompt_execution_id"] <- "Non-nullable required field `prompt_execution_id` cannot be null."
      }

      # check if the required `position` is null
      if (is.null(self$`position`)) {
        invalid_fields["position"] <- "Non-nullable required field `position` cannot be null."
      }

      # check if the required `source_type` is null
      if (is.null(self$`source_type`)) {
        invalid_fields["source_type"] <- "Non-nullable required field `source_type` cannot be null."
      }

      # check if the required `is_google_play_link` is null
      if (is.null(self$`is_google_play_link`)) {
        invalid_fields["is_google_play_link"] <- "Non-nullable required field `is_google_play_link` cannot be null."
      }

      # check if the required `is_app_store_link` is null
      if (is.null(self$`is_app_store_link`)) {
        invalid_fields["is_app_store_link"] <- "Non-nullable required field `is_app_store_link` cannot be null."
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
# SourceRecord$unlock()
#
## Below is an example to define the print function
# SourceRecord$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SourceRecord$lock()

