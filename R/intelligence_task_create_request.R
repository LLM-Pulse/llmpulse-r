#' Create a new IntelligenceTaskCreateRequest
#'
#' @description
#' IntelligenceTaskCreateRequest Class
#'
#' @docType class
#' @title IntelligenceTaskCreateRequest
#' @description IntelligenceTaskCreateRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field task_type  character
#' @field prompt_id  integer [optional]
#' @field custom_topic  character [optional]
#' @field user_instructions  character [optional]
#' @field output_language_code  character [optional]
#' @field existing_content  character [optional]
#' @field existing_content_url  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IntelligenceTaskCreateRequest <- R6::R6Class(
  "IntelligenceTaskCreateRequest",
  public = list(
    `project_id` = NULL,
    `task_type` = NULL,
    `prompt_id` = NULL,
    `custom_topic` = NULL,
    `user_instructions` = NULL,
    `output_language_code` = NULL,
    `existing_content` = NULL,
    `existing_content_url` = NULL,

    #' @description
    #' Initialize a new IntelligenceTaskCreateRequest class.
    #'
    #' @param project_id project_id
    #' @param task_type task_type
    #' @param prompt_id prompt_id
    #' @param custom_topic custom_topic
    #' @param user_instructions user_instructions
    #' @param output_language_code output_language_code
    #' @param existing_content existing_content
    #' @param existing_content_url existing_content_url
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `task_type`, `prompt_id` = NULL, `custom_topic` = NULL, `user_instructions` = NULL, `output_language_code` = NULL, `existing_content` = NULL, `existing_content_url` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`task_type`)) {
        if (!(`task_type` %in% c("brief", "create", "update", "pr_insights", "custom"))) {
          stop(paste("Error! \"", `task_type`, "\" cannot be assigned to `task_type`. Must be \"brief\", \"create\", \"update\", \"pr_insights\", \"custom\".", sep = ""))
        }
        if (!(is.character(`task_type`) && length(`task_type`) == 1)) {
          stop(paste("Error! Invalid data for `task_type`. Must be a string:", `task_type`))
        }
        self$`task_type` <- `task_type`
      }
      if (!is.null(`prompt_id`)) {
        if (!(is.numeric(`prompt_id`) && length(`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", `prompt_id`))
        }
        self$`prompt_id` <- `prompt_id`
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
      if (!is.null(`existing_content`)) {
        if (!(is.character(`existing_content`) && length(`existing_content`) == 1)) {
          stop(paste("Error! Invalid data for `existing_content`. Must be a string:", `existing_content`))
        }
        self$`existing_content` <- `existing_content`
      }
      if (!is.null(`existing_content_url`)) {
        if (!(is.character(`existing_content_url`) && length(`existing_content_url`) == 1)) {
          stop(paste("Error! Invalid data for `existing_content_url`. Must be a string:", `existing_content_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`existing_content_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `existing_content_url`. Must be a URL:", `existing_content_url`))
        }
        self$`existing_content_url` <- `existing_content_url`
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
    #' @return IntelligenceTaskCreateRequest as a base R list.
    #' @examples
    #' # convert array of IntelligenceTaskCreateRequest (x) to a data frame
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
    #' Convert IntelligenceTaskCreateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IntelligenceTaskCreateRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        IntelligenceTaskCreateRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`task_type`)) {
        IntelligenceTaskCreateRequestObject[["task_type"]] <-
          self$`task_type`
      }
      if (!is.null(self$`prompt_id`)) {
        IntelligenceTaskCreateRequestObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`custom_topic`)) {
        IntelligenceTaskCreateRequestObject[["custom_topic"]] <-
          self$`custom_topic`
      }
      if (!is.null(self$`user_instructions`)) {
        IntelligenceTaskCreateRequestObject[["user_instructions"]] <-
          self$`user_instructions`
      }
      if (!is.null(self$`output_language_code`)) {
        IntelligenceTaskCreateRequestObject[["output_language_code"]] <-
          self$`output_language_code`
      }
      if (!is.null(self$`existing_content`)) {
        IntelligenceTaskCreateRequestObject[["existing_content"]] <-
          self$`existing_content`
      }
      if (!is.null(self$`existing_content_url`)) {
        IntelligenceTaskCreateRequestObject[["existing_content_url"]] <-
          self$`existing_content_url`
      }
      return(IntelligenceTaskCreateRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IntelligenceTaskCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of IntelligenceTaskCreateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`task_type`)) {
        if (!is.null(this_object$`task_type`) && !(this_object$`task_type` %in% c("brief", "create", "update", "pr_insights", "custom"))) {
          stop(paste("Error! \"", this_object$`task_type`, "\" cannot be assigned to `task_type`. Must be \"brief\", \"create\", \"update\", \"pr_insights\", \"custom\".", sep = ""))
        }
        self$`task_type` <- this_object$`task_type`
      }
      if (!is.null(this_object$`prompt_id`)) {
        self$`prompt_id` <- this_object$`prompt_id`
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
      if (!is.null(this_object$`existing_content`)) {
        self$`existing_content` <- this_object$`existing_content`
      }
      if (!is.null(this_object$`existing_content_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`existing_content_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `existing_content_url`. Must be a URL:", this_object$`existing_content_url`))
        }
        self$`existing_content_url` <- this_object$`existing_content_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IntelligenceTaskCreateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IntelligenceTaskCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of IntelligenceTaskCreateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`task_type`) && !(this_object$`task_type` %in% c("brief", "create", "update", "pr_insights", "custom"))) {
        stop(paste("Error! \"", this_object$`task_type`, "\" cannot be assigned to `task_type`. Must be \"brief\", \"create\", \"update\", \"pr_insights\", \"custom\".", sep = ""))
      }
      self$`task_type` <- this_object$`task_type`
      self$`prompt_id` <- this_object$`prompt_id`
      self$`custom_topic` <- this_object$`custom_topic`
      self$`user_instructions` <- this_object$`user_instructions`
      self$`output_language_code` <- this_object$`output_language_code`
      self$`existing_content` <- this_object$`existing_content`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`existing_content_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `existing_content_url`. Must be a URL:", this_object$`existing_content_url`))
      }
      self$`existing_content_url` <- this_object$`existing_content_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to IntelligenceTaskCreateRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `project_id`
      if (!is.null(input_json$`project_id`)) {
        if (!(is.numeric(input_json$`project_id`) && length(input_json$`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", input_json$`project_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskCreateRequest: the required field `project_id` is missing."))
      }
      # check the required field `task_type`
      if (!is.null(input_json$`task_type`)) {
        if (!(is.character(input_json$`task_type`) && length(input_json$`task_type`) == 1)) {
          stop(paste("Error! Invalid data for `task_type`. Must be a string:", input_json$`task_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskCreateRequest: the required field `task_type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IntelligenceTaskCreateRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        return(FALSE)
      }

      # check if the required `task_type` is null
      if (is.null(self$`task_type`)) {
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
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        invalid_fields["project_id"] <- "Non-nullable required field `project_id` cannot be null."
      }

      # check if the required `task_type` is null
      if (is.null(self$`task_type`)) {
        invalid_fields["task_type"] <- "Non-nullable required field `task_type` cannot be null."
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
# IntelligenceTaskCreateRequest$unlock()
#
## Below is an example to define the print function
# IntelligenceTaskCreateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IntelligenceTaskCreateRequest$lock()

