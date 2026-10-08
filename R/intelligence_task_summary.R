#' Create a new IntelligenceTaskSummary
#'
#' @description
#' IntelligenceTaskSummary Class
#'
#' @docType class
#' @title IntelligenceTaskSummary
#' @description IntelligenceTaskSummary Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field public_id  character
#' @field task_type  character
#' @field title  character
#' @field status  character
#' @field prompt_id  integer
#' @field prompt_text  character
#' @field word_count  integer
#' @field manually_edited_at When the content was last edited by hand; null while the output is as generated character
#' @field created_at  character
#' @field processed_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IntelligenceTaskSummary <- R6::R6Class(
  "IntelligenceTaskSummary",
  public = list(
    `id` = NULL,
    `public_id` = NULL,
    `task_type` = NULL,
    `title` = NULL,
    `status` = NULL,
    `prompt_id` = NULL,
    `prompt_text` = NULL,
    `word_count` = NULL,
    `manually_edited_at` = NULL,
    `created_at` = NULL,
    `processed_at` = NULL,

    #' @description
    #' Initialize a new IntelligenceTaskSummary class.
    #'
    #' @param id id
    #' @param public_id public_id
    #' @param task_type task_type
    #' @param title title
    #' @param status status
    #' @param prompt_id prompt_id
    #' @param prompt_text prompt_text
    #' @param word_count word_count
    #' @param manually_edited_at When the content was last edited by hand; null while the output is as generated
    #' @param created_at created_at
    #' @param processed_at processed_at
    #' @param ... Other optional arguments.
    initialize = function(`id`, `public_id`, `task_type`, `title`, `status`, `prompt_id`, `prompt_text`, `word_count`, `manually_edited_at`, `created_at`, `processed_at`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`public_id`)) {
        if (!(is.character(`public_id`) && length(`public_id`) == 1)) {
          stop(paste("Error! Invalid data for `public_id`. Must be a string:", `public_id`))
        }
        self$`public_id` <- `public_id`
      }
      if (!missing(`task_type`)) {
        if (!(is.character(`task_type`) && length(`task_type`) == 1)) {
          stop(paste("Error! Invalid data for `task_type`. Must be a string:", `task_type`))
        }
        self$`task_type` <- `task_type`
      }
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`prompt_id`)) {
        if (!(is.numeric(`prompt_id`) && length(`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", `prompt_id`))
        }
        self$`prompt_id` <- `prompt_id`
      }
      if (!missing(`prompt_text`)) {
        if (!(is.character(`prompt_text`) && length(`prompt_text`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_text`. Must be a string:", `prompt_text`))
        }
        self$`prompt_text` <- `prompt_text`
      }
      if (!missing(`word_count`)) {
        if (!(is.numeric(`word_count`) && length(`word_count`) == 1)) {
          stop(paste("Error! Invalid data for `word_count`. Must be an integer:", `word_count`))
        }
        self$`word_count` <- `word_count`
      }
      if (!missing(`manually_edited_at`)) {
        if (!(is.character(`manually_edited_at`) && length(`manually_edited_at`) == 1)) {
          stop(paste("Error! Invalid data for `manually_edited_at`. Must be a string:", `manually_edited_at`))
        }
        self$`manually_edited_at` <- `manually_edited_at`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`processed_at`)) {
        if (!(is.character(`processed_at`) && length(`processed_at`) == 1)) {
          stop(paste("Error! Invalid data for `processed_at`. Must be a string:", `processed_at`))
        }
        self$`processed_at` <- `processed_at`
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
    #' @return IntelligenceTaskSummary as a base R list.
    #' @examples
    #' # convert array of IntelligenceTaskSummary (x) to a data frame
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
    #' Convert IntelligenceTaskSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IntelligenceTaskSummaryObject <- list()
      if (!is.null(self$`id`)) {
        IntelligenceTaskSummaryObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`public_id`)) {
        IntelligenceTaskSummaryObject[["public_id"]] <-
          self$`public_id`
      }
      if (!is.null(self$`task_type`)) {
        IntelligenceTaskSummaryObject[["task_type"]] <-
          self$`task_type`
      }
      if (!is.null(self$`title`)) {
        IntelligenceTaskSummaryObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`status`)) {
        IntelligenceTaskSummaryObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`prompt_id`)) {
        IntelligenceTaskSummaryObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`prompt_text`)) {
        IntelligenceTaskSummaryObject[["prompt_text"]] <-
          self$`prompt_text`
      }
      if (!is.null(self$`word_count`)) {
        IntelligenceTaskSummaryObject[["word_count"]] <-
          self$`word_count`
      }
      if (!is.null(self$`manually_edited_at`)) {
        IntelligenceTaskSummaryObject[["manually_edited_at"]] <-
          self$`manually_edited_at`
      }
      if (!is.null(self$`created_at`)) {
        IntelligenceTaskSummaryObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`processed_at`)) {
        IntelligenceTaskSummaryObject[["processed_at"]] <-
          self$`processed_at`
      }
      return(IntelligenceTaskSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IntelligenceTaskSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of IntelligenceTaskSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`public_id`)) {
        self$`public_id` <- this_object$`public_id`
      }
      if (!is.null(this_object$`task_type`)) {
        self$`task_type` <- this_object$`task_type`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`prompt_id`)) {
        self$`prompt_id` <- this_object$`prompt_id`
      }
      if (!is.null(this_object$`prompt_text`)) {
        self$`prompt_text` <- this_object$`prompt_text`
      }
      if (!is.null(this_object$`word_count`)) {
        self$`word_count` <- this_object$`word_count`
      }
      if (!is.null(this_object$`manually_edited_at`)) {
        self$`manually_edited_at` <- this_object$`manually_edited_at`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`processed_at`)) {
        self$`processed_at` <- this_object$`processed_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IntelligenceTaskSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IntelligenceTaskSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of IntelligenceTaskSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`public_id` <- this_object$`public_id`
      self$`task_type` <- this_object$`task_type`
      self$`title` <- this_object$`title`
      self$`status` <- this_object$`status`
      self$`prompt_id` <- this_object$`prompt_id`
      self$`prompt_text` <- this_object$`prompt_text`
      self$`word_count` <- this_object$`word_count`
      self$`manually_edited_at` <- this_object$`manually_edited_at`
      self$`created_at` <- this_object$`created_at`
      self$`processed_at` <- this_object$`processed_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to IntelligenceTaskSummary and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskSummary: the required field `id` is missing."))
      }
      # check the required field `public_id`
      if (!is.null(input_json$`public_id`)) {
        if (!(is.character(input_json$`public_id`) && length(input_json$`public_id`) == 1)) {
          stop(paste("Error! Invalid data for `public_id`. Must be a string:", input_json$`public_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskSummary: the required field `public_id` is missing."))
      }
      # check the required field `task_type`
      if (!is.null(input_json$`task_type`)) {
        if (!(is.character(input_json$`task_type`) && length(input_json$`task_type`) == 1)) {
          stop(paste("Error! Invalid data for `task_type`. Must be a string:", input_json$`task_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskSummary: the required field `task_type` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskSummary: the required field `title` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskSummary: the required field `status` is missing."))
      }
      # check the required field `prompt_id`
      if (!is.null(input_json$`prompt_id`)) {
        if (!(is.numeric(input_json$`prompt_id`) && length(input_json$`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", input_json$`prompt_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskSummary: the required field `prompt_id` is missing."))
      }
      # check the required field `prompt_text`
      if (!is.null(input_json$`prompt_text`)) {
        if (!(is.character(input_json$`prompt_text`) && length(input_json$`prompt_text`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_text`. Must be a string:", input_json$`prompt_text`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskSummary: the required field `prompt_text` is missing."))
      }
      # check the required field `word_count`
      if (!is.null(input_json$`word_count`)) {
        if (!(is.numeric(input_json$`word_count`) && length(input_json$`word_count`) == 1)) {
          stop(paste("Error! Invalid data for `word_count`. Must be an integer:", input_json$`word_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskSummary: the required field `word_count` is missing."))
      }
      # check the required field `manually_edited_at`
      if (!is.null(input_json$`manually_edited_at`)) {
        if (!(is.character(input_json$`manually_edited_at`) && length(input_json$`manually_edited_at`) == 1)) {
          stop(paste("Error! Invalid data for `manually_edited_at`. Must be a string:", input_json$`manually_edited_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskSummary: the required field `manually_edited_at` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskSummary: the required field `created_at` is missing."))
      }
      # check the required field `processed_at`
      if (!is.null(input_json$`processed_at`)) {
        if (!(is.character(input_json$`processed_at`) && length(input_json$`processed_at`) == 1)) {
          stop(paste("Error! Invalid data for `processed_at`. Must be a string:", input_json$`processed_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskSummary: the required field `processed_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IntelligenceTaskSummary
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

      # check if the required `public_id` is null
      if (is.null(self$`public_id`)) {
        return(FALSE)
      }

      # check if the required `task_type` is null
      if (is.null(self$`task_type`)) {
        return(FALSE)
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
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

      # check if the required `public_id` is null
      if (is.null(self$`public_id`)) {
        invalid_fields["public_id"] <- "Non-nullable required field `public_id` cannot be null."
      }

      # check if the required `task_type` is null
      if (is.null(self$`task_type`)) {
        invalid_fields["task_type"] <- "Non-nullable required field `task_type` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# IntelligenceTaskSummary$unlock()
#
## Below is an example to define the print function
# IntelligenceTaskSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IntelligenceTaskSummary$lock()

