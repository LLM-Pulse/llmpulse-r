#' Create a new PromptGenerationResponse
#'
#' @description
#' PromptGenerationResponse Class
#'
#' @docType class
#' @title PromptGenerationResponse
#' @description PromptGenerationResponse Class
#' @format An \code{R6Class} generator object
#' @field id The run id; poll GET /prompt_generations/{id} with it (kept for 24 hours) character
#' @field project_id  integer
#' @field source  character
#' @field status  character
#' @field params  \link{PromptGenerationResponseParams}
#' @field created_at  character
#' @field finished_at  character
#' @field suggestions_count  integer
#' @field suggestions The suggestions the run saved to the Suggested prompts queue, with their current status list(\link{SuggestedPrompt})
#' @field error  \link{PromptGenerationResponseError}
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptGenerationResponse <- R6::R6Class(
  "PromptGenerationResponse",
  public = list(
    `id` = NULL,
    `project_id` = NULL,
    `source` = NULL,
    `status` = NULL,
    `params` = NULL,
    `created_at` = NULL,
    `finished_at` = NULL,
    `suggestions_count` = NULL,
    `suggestions` = NULL,
    `error` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new PromptGenerationResponse class.
    #'
    #' @param id The run id; poll GET /prompt_generations/{id} with it (kept for 24 hours)
    #' @param project_id project_id
    #' @param source source
    #' @param status status
    #' @param params params
    #' @param created_at created_at
    #' @param finished_at finished_at
    #' @param suggestions_count suggestions_count
    #' @param suggestions The suggestions the run saved to the Suggested prompts queue, with their current status
    #' @param error error
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`id`, `project_id`, `source`, `status`, `params`, `created_at`, `finished_at`, `suggestions_count`, `suggestions`, `error`, `request_id`, ...) {
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c("processing", "completed", "failed"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"processing\", \"completed\", \"failed\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`params`)) {
        stopifnot(R6::is.R6(`params`))
        self$`params` <- `params`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`finished_at`)) {
        if (!(is.character(`finished_at`) && length(`finished_at`) == 1)) {
          stop(paste("Error! Invalid data for `finished_at`. Must be a string:", `finished_at`))
        }
        self$`finished_at` <- `finished_at`
      }
      if (!missing(`suggestions_count`)) {
        if (!(is.numeric(`suggestions_count`) && length(`suggestions_count`) == 1)) {
          stop(paste("Error! Invalid data for `suggestions_count`. Must be an integer:", `suggestions_count`))
        }
        self$`suggestions_count` <- `suggestions_count`
      }
      if (!missing(`suggestions`)) {
        stopifnot(is.vector(`suggestions`), length(`suggestions`) != 0)
        sapply(`suggestions`, function(x) stopifnot(R6::is.R6(x)))
        self$`suggestions` <- `suggestions`
      }
      if (!missing(`error`)) {
        stopifnot(R6::is.R6(`error`))
        self$`error` <- `error`
      }
      if (!missing(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
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
    #' @return PromptGenerationResponse as a base R list.
    #' @examples
    #' # convert array of PromptGenerationResponse (x) to a data frame
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
    #' Convert PromptGenerationResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptGenerationResponseObject <- list()
      if (!is.null(self$`id`)) {
        PromptGenerationResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`project_id`)) {
        PromptGenerationResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`source`)) {
        PromptGenerationResponseObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`status`)) {
        PromptGenerationResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`params`)) {
        PromptGenerationResponseObject[["params"]] <-
          self$extractSimpleType(self$`params`)
      }
      if (!is.null(self$`created_at`)) {
        PromptGenerationResponseObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`finished_at`)) {
        PromptGenerationResponseObject[["finished_at"]] <-
          self$`finished_at`
      }
      if (!is.null(self$`suggestions_count`)) {
        PromptGenerationResponseObject[["suggestions_count"]] <-
          self$`suggestions_count`
      }
      if (!is.null(self$`suggestions`)) {
        PromptGenerationResponseObject[["suggestions"]] <-
          self$extractSimpleType(self$`suggestions`)
      }
      if (!is.null(self$`error`)) {
        PromptGenerationResponseObject[["error"]] <-
          self$extractSimpleType(self$`error`)
      }
      if (!is.null(self$`request_id`)) {
        PromptGenerationResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(PromptGenerationResponseObject)
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
    #' Deserialize JSON string into an instance of PromptGenerationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptGenerationResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("processing", "completed", "failed"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"processing\", \"completed\", \"failed\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`params`)) {
        `params_object` <- PromptGenerationResponseParams$new()
        `params_object`$fromJSON(jsonlite::toJSON(this_object$`params`, auto_unbox = TRUE, digits = NA))
        self$`params` <- `params_object`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`finished_at`)) {
        self$`finished_at` <- this_object$`finished_at`
      }
      if (!is.null(this_object$`suggestions_count`)) {
        self$`suggestions_count` <- this_object$`suggestions_count`
      }
      if (!is.null(this_object$`suggestions`)) {
        self$`suggestions` <- ApiClient$new()$deserializeObj(this_object$`suggestions`, "array[SuggestedPrompt]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`error`)) {
        `error_object` <- PromptGenerationResponseError$new()
        `error_object`$fromJSON(jsonlite::toJSON(this_object$`error`, auto_unbox = TRUE, digits = NA))
        self$`error` <- `error_object`
      }
      if (!is.null(this_object$`request_id`)) {
        self$`request_id` <- this_object$`request_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PromptGenerationResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptGenerationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptGenerationResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`project_id` <- this_object$`project_id`
      self$`source` <- this_object$`source`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("processing", "completed", "failed"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"processing\", \"completed\", \"failed\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`params` <- PromptGenerationResponseParams$new()$fromJSON(jsonlite::toJSON(this_object$`params`, auto_unbox = TRUE, digits = NA))
      self$`created_at` <- this_object$`created_at`
      self$`finished_at` <- this_object$`finished_at`
      self$`suggestions_count` <- this_object$`suggestions_count`
      self$`suggestions` <- ApiClient$new()$deserializeObj(this_object$`suggestions`, "array[SuggestedPrompt]", loadNamespace("llmpulse"))
      self$`error` <- PromptGenerationResponseError$new()$fromJSON(jsonlite::toJSON(this_object$`error`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptGenerationResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptGenerationResponse: the required field `id` is missing."))
      }
      # check the required field `project_id`
      if (!is.null(input_json$`project_id`)) {
        if (!(is.numeric(input_json$`project_id`) && length(input_json$`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", input_json$`project_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptGenerationResponse: the required field `project_id` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptGenerationResponse: the required field `source` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptGenerationResponse: the required field `status` is missing."))
      }
      # check the required field `params`
      if (!is.null(input_json$`params`)) {
        stopifnot(R6::is.R6(input_json$`params`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptGenerationResponse: the required field `params` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptGenerationResponse: the required field `created_at` is missing."))
      }
      # check the required field `finished_at`
      if (!is.null(input_json$`finished_at`)) {
        if (!(is.character(input_json$`finished_at`) && length(input_json$`finished_at`) == 1)) {
          stop(paste("Error! Invalid data for `finished_at`. Must be a string:", input_json$`finished_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptGenerationResponse: the required field `finished_at` is missing."))
      }
      # check the required field `suggestions_count`
      if (!is.null(input_json$`suggestions_count`)) {
        if (!(is.numeric(input_json$`suggestions_count`) && length(input_json$`suggestions_count`) == 1)) {
          stop(paste("Error! Invalid data for `suggestions_count`. Must be an integer:", input_json$`suggestions_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptGenerationResponse: the required field `suggestions_count` is missing."))
      }
      # check the required field `suggestions`
      if (!is.null(input_json$`suggestions`)) {
        stopifnot(is.vector(input_json$`suggestions`), length(input_json$`suggestions`) != 0)
        tmp <- sapply(input_json$`suggestions`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptGenerationResponse: the required field `suggestions` is missing."))
      }
      # check the required field `error`
      if (!is.null(input_json$`error`)) {
        stopifnot(R6::is.R6(input_json$`error`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptGenerationResponse: the required field `error` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptGenerationResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptGenerationResponse
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

      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `params` is null
      if (is.null(self$`params`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `suggestions_count` is null
      if (is.null(self$`suggestions_count`)) {
        return(FALSE)
      }

      # check if the required `suggestions` is null
      if (is.null(self$`suggestions`)) {
        return(FALSE)
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
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

      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        invalid_fields["project_id"] <- "Non-nullable required field `project_id` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `params` is null
      if (is.null(self$`params`)) {
        invalid_fields["params"] <- "Non-nullable required field `params` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `suggestions_count` is null
      if (is.null(self$`suggestions_count`)) {
        invalid_fields["suggestions_count"] <- "Non-nullable required field `suggestions_count` cannot be null."
      }

      # check if the required `suggestions` is null
      if (is.null(self$`suggestions`)) {
        invalid_fields["suggestions"] <- "Non-nullable required field `suggestions` cannot be null."
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
        invalid_fields["request_id"] <- "Non-nullable required field `request_id` cannot be null."
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
# PromptGenerationResponse$unlock()
#
## Below is an example to define the print function
# PromptGenerationResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptGenerationResponse$lock()

