#' Create a new IntelligenceTaskUpdateResponse
#'
#' @description
#' IntelligenceTaskUpdateResponse Class
#'
#' @docType class
#' @title IntelligenceTaskUpdateResponse
#' @description IntelligenceTaskUpdateResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field public_id  character [optional]
#' @field project_id  integer [optional]
#' @field task_type  character [optional]
#' @field title  character [optional]
#' @field status  character [optional]
#' @field prompt_id  integer [optional]
#' @field prompt_text  character [optional]
#' @field agentic_mode  character [optional]
#' @field custom_topic  character [optional]
#' @field user_instructions  character [optional]
#' @field output_language_code  character [optional]
#' @field word_count  integer [optional]
#' @field result_data Only present when status='completed' object [optional]
#' @field error_message  character [optional]
#' @field estimated_time  character [optional]
#' @field created_at  character [optional]
#' @field processed_at  character [optional]
#' @field manually_edited_at When the content was last edited by hand; null while the output is as generated character [optional]
#' @field edited_by_user_id User behind the last manual edit; null for an unedited task or an edit made from an embedded portal integer [optional]
#' @field request_id  character [optional]
#' @field changed_paths Paths whose text actually changed; empty when every value matched the stored text list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IntelligenceTaskUpdateResponse <- R6::R6Class(
  "IntelligenceTaskUpdateResponse",
  public = list(
    `id` = NULL,
    `public_id` = NULL,
    `project_id` = NULL,
    `task_type` = NULL,
    `title` = NULL,
    `status` = NULL,
    `prompt_id` = NULL,
    `prompt_text` = NULL,
    `agentic_mode` = NULL,
    `custom_topic` = NULL,
    `user_instructions` = NULL,
    `output_language_code` = NULL,
    `word_count` = NULL,
    `result_data` = NULL,
    `error_message` = NULL,
    `estimated_time` = NULL,
    `created_at` = NULL,
    `processed_at` = NULL,
    `manually_edited_at` = NULL,
    `edited_by_user_id` = NULL,
    `request_id` = NULL,
    `changed_paths` = NULL,

    #' @description
    #' Initialize a new IntelligenceTaskUpdateResponse class.
    #'
    #' @param id id
    #' @param public_id public_id
    #' @param project_id project_id
    #' @param task_type task_type
    #' @param title title
    #' @param status status
    #' @param prompt_id prompt_id
    #' @param prompt_text prompt_text
    #' @param agentic_mode agentic_mode
    #' @param custom_topic custom_topic
    #' @param user_instructions user_instructions
    #' @param output_language_code output_language_code
    #' @param word_count word_count
    #' @param result_data Only present when status='completed'
    #' @param error_message error_message
    #' @param estimated_time estimated_time
    #' @param created_at created_at
    #' @param processed_at processed_at
    #' @param manually_edited_at When the content was last edited by hand; null while the output is as generated
    #' @param edited_by_user_id User behind the last manual edit; null for an unedited task or an edit made from an embedded portal
    #' @param request_id request_id
    #' @param changed_paths Paths whose text actually changed; empty when every value matched the stored text
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `public_id` = NULL, `project_id` = NULL, `task_type` = NULL, `title` = NULL, `status` = NULL, `prompt_id` = NULL, `prompt_text` = NULL, `agentic_mode` = NULL, `custom_topic` = NULL, `user_instructions` = NULL, `output_language_code` = NULL, `word_count` = NULL, `result_data` = NULL, `error_message` = NULL, `estimated_time` = NULL, `created_at` = NULL, `processed_at` = NULL, `manually_edited_at` = NULL, `edited_by_user_id` = NULL, `request_id` = NULL, `changed_paths` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`public_id`)) {
        if (!(is.character(`public_id`) && length(`public_id`) == 1)) {
          stop(paste("Error! Invalid data for `public_id`. Must be a string:", `public_id`))
        }
        self$`public_id` <- `public_id`
      }
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`task_type`)) {
        if (!(is.character(`task_type`) && length(`task_type`) == 1)) {
          stop(paste("Error! Invalid data for `task_type`. Must be a string:", `task_type`))
        }
        self$`task_type` <- `task_type`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`prompt_id`)) {
        if (!(is.numeric(`prompt_id`) && length(`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", `prompt_id`))
        }
        self$`prompt_id` <- `prompt_id`
      }
      if (!is.null(`prompt_text`)) {
        if (!(is.character(`prompt_text`) && length(`prompt_text`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_text`. Must be a string:", `prompt_text`))
        }
        self$`prompt_text` <- `prompt_text`
      }
      if (!is.null(`agentic_mode`)) {
        if (!(is.logical(`agentic_mode`) && length(`agentic_mode`) == 1)) {
          stop(paste("Error! Invalid data for `agentic_mode`. Must be a boolean:", `agentic_mode`))
        }
        self$`agentic_mode` <- `agentic_mode`
      }
      if (!is.null(`custom_topic`)) {
        if (!(is.character(`custom_topic`) && length(`custom_topic`) == 1)) {
          stop(paste("Error! Invalid data for `custom_topic`. Must be a string:", `custom_topic`))
        }
        self$`custom_topic` <- `custom_topic`
      }
      if (!is.null(`user_instructions`)) {
        if (!(is.character(`user_instructions`) && length(`user_instructions`) == 1)) {
          stop(paste("Error! Invalid data for `user_instructions`. Must be a string:", `user_instructions`))
        }
        self$`user_instructions` <- `user_instructions`
      }
      if (!is.null(`output_language_code`)) {
        if (!(is.character(`output_language_code`) && length(`output_language_code`) == 1)) {
          stop(paste("Error! Invalid data for `output_language_code`. Must be a string:", `output_language_code`))
        }
        self$`output_language_code` <- `output_language_code`
      }
      if (!is.null(`word_count`)) {
        if (!(is.numeric(`word_count`) && length(`word_count`) == 1)) {
          stop(paste("Error! Invalid data for `word_count`. Must be an integer:", `word_count`))
        }
        self$`word_count` <- `word_count`
      }
      if (!is.null(`result_data`)) {
        self$`result_data` <- `result_data`
      }
      if (!is.null(`error_message`)) {
        if (!(is.character(`error_message`) && length(`error_message`) == 1)) {
          stop(paste("Error! Invalid data for `error_message`. Must be a string:", `error_message`))
        }
        self$`error_message` <- `error_message`
      }
      if (!is.null(`estimated_time`)) {
        if (!(is.character(`estimated_time`) && length(`estimated_time`) == 1)) {
          stop(paste("Error! Invalid data for `estimated_time`. Must be a string:", `estimated_time`))
        }
        self$`estimated_time` <- `estimated_time`
      }
      if (!is.null(`created_at`)) {
        if (!is.character(`created_at`)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!is.null(`processed_at`)) {
        if (!is.character(`processed_at`)) {
          stop(paste("Error! Invalid data for `processed_at`. Must be a string:", `processed_at`))
        }
        self$`processed_at` <- `processed_at`
      }
      if (!is.null(`manually_edited_at`)) {
        if (!is.character(`manually_edited_at`)) {
          stop(paste("Error! Invalid data for `manually_edited_at`. Must be a string:", `manually_edited_at`))
        }
        self$`manually_edited_at` <- `manually_edited_at`
      }
      if (!is.null(`edited_by_user_id`)) {
        if (!(is.numeric(`edited_by_user_id`) && length(`edited_by_user_id`) == 1)) {
          stop(paste("Error! Invalid data for `edited_by_user_id`. Must be an integer:", `edited_by_user_id`))
        }
        self$`edited_by_user_id` <- `edited_by_user_id`
      }
      if (!is.null(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
      }
      if (!is.null(`changed_paths`)) {
        stopifnot(is.vector(`changed_paths`), length(`changed_paths`) != 0)
        sapply(`changed_paths`, function(x) stopifnot(is.character(x)))
        self$`changed_paths` <- `changed_paths`
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
    #' @return IntelligenceTaskUpdateResponse as a base R list.
    #' @examples
    #' # convert array of IntelligenceTaskUpdateResponse (x) to a data frame
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
    #' Convert IntelligenceTaskUpdateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IntelligenceTaskUpdateResponseObject <- list()
      if (!is.null(self$`id`)) {
        IntelligenceTaskUpdateResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`public_id`)) {
        IntelligenceTaskUpdateResponseObject[["public_id"]] <-
          self$`public_id`
      }
      if (!is.null(self$`project_id`)) {
        IntelligenceTaskUpdateResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`task_type`)) {
        IntelligenceTaskUpdateResponseObject[["task_type"]] <-
          self$`task_type`
      }
      if (!is.null(self$`title`)) {
        IntelligenceTaskUpdateResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`status`)) {
        IntelligenceTaskUpdateResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`prompt_id`)) {
        IntelligenceTaskUpdateResponseObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`prompt_text`)) {
        IntelligenceTaskUpdateResponseObject[["prompt_text"]] <-
          self$`prompt_text`
      }
      if (!is.null(self$`agentic_mode`)) {
        IntelligenceTaskUpdateResponseObject[["agentic_mode"]] <-
          self$`agentic_mode`
      }
      if (!is.null(self$`custom_topic`)) {
        IntelligenceTaskUpdateResponseObject[["custom_topic"]] <-
          self$`custom_topic`
      }
      if (!is.null(self$`user_instructions`)) {
        IntelligenceTaskUpdateResponseObject[["user_instructions"]] <-
          self$`user_instructions`
      }
      if (!is.null(self$`output_language_code`)) {
        IntelligenceTaskUpdateResponseObject[["output_language_code"]] <-
          self$`output_language_code`
      }
      if (!is.null(self$`word_count`)) {
        IntelligenceTaskUpdateResponseObject[["word_count"]] <-
          self$`word_count`
      }
      if (!is.null(self$`result_data`)) {
        IntelligenceTaskUpdateResponseObject[["result_data"]] <-
          self$`result_data`
      }
      if (!is.null(self$`error_message`)) {
        IntelligenceTaskUpdateResponseObject[["error_message"]] <-
          self$`error_message`
      }
      if (!is.null(self$`estimated_time`)) {
        IntelligenceTaskUpdateResponseObject[["estimated_time"]] <-
          self$`estimated_time`
      }
      if (!is.null(self$`created_at`)) {
        IntelligenceTaskUpdateResponseObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`processed_at`)) {
        IntelligenceTaskUpdateResponseObject[["processed_at"]] <-
          self$`processed_at`
      }
      if (!is.null(self$`manually_edited_at`)) {
        IntelligenceTaskUpdateResponseObject[["manually_edited_at"]] <-
          self$`manually_edited_at`
      }
      if (!is.null(self$`edited_by_user_id`)) {
        IntelligenceTaskUpdateResponseObject[["edited_by_user_id"]] <-
          self$`edited_by_user_id`
      }
      if (!is.null(self$`request_id`)) {
        IntelligenceTaskUpdateResponseObject[["request_id"]] <-
          self$`request_id`
      }
      if (!is.null(self$`changed_paths`)) {
        IntelligenceTaskUpdateResponseObject[["changed_paths"]] <-
          self$`changed_paths`
      }
      return(IntelligenceTaskUpdateResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IntelligenceTaskUpdateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of IntelligenceTaskUpdateResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`public_id`)) {
        self$`public_id` <- this_object$`public_id`
      }
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
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
      if (!is.null(this_object$`agentic_mode`)) {
        self$`agentic_mode` <- this_object$`agentic_mode`
      }
      if (!is.null(this_object$`custom_topic`)) {
        self$`custom_topic` <- this_object$`custom_topic`
      }
      if (!is.null(this_object$`user_instructions`)) {
        self$`user_instructions` <- this_object$`user_instructions`
      }
      if (!is.null(this_object$`output_language_code`)) {
        self$`output_language_code` <- this_object$`output_language_code`
      }
      if (!is.null(this_object$`word_count`)) {
        self$`word_count` <- this_object$`word_count`
      }
      if (!is.null(this_object$`result_data`)) {
        self$`result_data` <- this_object$`result_data`
      }
      if (!is.null(this_object$`error_message`)) {
        self$`error_message` <- this_object$`error_message`
      }
      if (!is.null(this_object$`estimated_time`)) {
        self$`estimated_time` <- this_object$`estimated_time`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`processed_at`)) {
        self$`processed_at` <- this_object$`processed_at`
      }
      if (!is.null(this_object$`manually_edited_at`)) {
        self$`manually_edited_at` <- this_object$`manually_edited_at`
      }
      if (!is.null(this_object$`edited_by_user_id`)) {
        self$`edited_by_user_id` <- this_object$`edited_by_user_id`
      }
      if (!is.null(this_object$`request_id`)) {
        self$`request_id` <- this_object$`request_id`
      }
      if (!is.null(this_object$`changed_paths`)) {
        self$`changed_paths` <- ApiClient$new()$deserializeObj(this_object$`changed_paths`, "array[character]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IntelligenceTaskUpdateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IntelligenceTaskUpdateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of IntelligenceTaskUpdateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`public_id` <- this_object$`public_id`
      self$`project_id` <- this_object$`project_id`
      self$`task_type` <- this_object$`task_type`
      self$`title` <- this_object$`title`
      self$`status` <- this_object$`status`
      self$`prompt_id` <- this_object$`prompt_id`
      self$`prompt_text` <- this_object$`prompt_text`
      self$`agentic_mode` <- this_object$`agentic_mode`
      self$`custom_topic` <- this_object$`custom_topic`
      self$`user_instructions` <- this_object$`user_instructions`
      self$`output_language_code` <- this_object$`output_language_code`
      self$`word_count` <- this_object$`word_count`
      self$`result_data` <- this_object$`result_data`
      self$`error_message` <- this_object$`error_message`
      self$`estimated_time` <- this_object$`estimated_time`
      self$`created_at` <- this_object$`created_at`
      self$`processed_at` <- this_object$`processed_at`
      self$`manually_edited_at` <- this_object$`manually_edited_at`
      self$`edited_by_user_id` <- this_object$`edited_by_user_id`
      self$`request_id` <- this_object$`request_id`
      self$`changed_paths` <- ApiClient$new()$deserializeObj(this_object$`changed_paths`, "array[character]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to IntelligenceTaskUpdateResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IntelligenceTaskUpdateResponse
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
# IntelligenceTaskUpdateResponse$unlock()
#
## Below is an example to define the print function
# IntelligenceTaskUpdateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IntelligenceTaskUpdateResponse$lock()

