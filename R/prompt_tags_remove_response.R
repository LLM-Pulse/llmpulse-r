#' Create a new PromptTagsRemoveResponse
#'
#' @description
#' PromptTagsRemoveResponse Class
#'
#' @docType class
#' @title PromptTagsRemoveResponse
#' @description PromptTagsRemoveResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field prompts_targeted Prompts of the project among prompt_ids integer
#' @field tags_detached  list(\link{TagRef})
#' @field links_removed  integer
#' @field skipped_not_linked  integer
#' @field missing_tag_names tag_names that matched no tag list(character)
#' @field ignored_prompt_ids prompt_ids that are not prompts of this project list(integer)
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptTagsRemoveResponse <- R6::R6Class(
  "PromptTagsRemoveResponse",
  public = list(
    `project_id` = NULL,
    `prompts_targeted` = NULL,
    `tags_detached` = NULL,
    `links_removed` = NULL,
    `skipped_not_linked` = NULL,
    `missing_tag_names` = NULL,
    `ignored_prompt_ids` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new PromptTagsRemoveResponse class.
    #'
    #' @param project_id project_id
    #' @param prompts_targeted Prompts of the project among prompt_ids
    #' @param tags_detached tags_detached
    #' @param links_removed links_removed
    #' @param skipped_not_linked skipped_not_linked
    #' @param missing_tag_names tag_names that matched no tag
    #' @param ignored_prompt_ids prompt_ids that are not prompts of this project
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `prompts_targeted`, `tags_detached`, `links_removed`, `skipped_not_linked`, `missing_tag_names`, `ignored_prompt_ids`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`prompts_targeted`)) {
        if (!(is.numeric(`prompts_targeted`) && length(`prompts_targeted`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_targeted`. Must be an integer:", `prompts_targeted`))
        }
        self$`prompts_targeted` <- `prompts_targeted`
      }
      if (!missing(`tags_detached`)) {
        stopifnot(is.vector(`tags_detached`), length(`tags_detached`) != 0)
        sapply(`tags_detached`, function(x) stopifnot(R6::is.R6(x)))
        self$`tags_detached` <- `tags_detached`
      }
      if (!missing(`links_removed`)) {
        if (!(is.numeric(`links_removed`) && length(`links_removed`) == 1)) {
          stop(paste("Error! Invalid data for `links_removed`. Must be an integer:", `links_removed`))
        }
        self$`links_removed` <- `links_removed`
      }
      if (!missing(`skipped_not_linked`)) {
        if (!(is.numeric(`skipped_not_linked`) && length(`skipped_not_linked`) == 1)) {
          stop(paste("Error! Invalid data for `skipped_not_linked`. Must be an integer:", `skipped_not_linked`))
        }
        self$`skipped_not_linked` <- `skipped_not_linked`
      }
      if (!missing(`missing_tag_names`)) {
        stopifnot(is.vector(`missing_tag_names`), length(`missing_tag_names`) != 0)
        sapply(`missing_tag_names`, function(x) stopifnot(is.character(x)))
        self$`missing_tag_names` <- `missing_tag_names`
      }
      if (!missing(`ignored_prompt_ids`)) {
        stopifnot(is.vector(`ignored_prompt_ids`), length(`ignored_prompt_ids`) != 0)
        sapply(`ignored_prompt_ids`, function(x) stopifnot(is.character(x)))
        self$`ignored_prompt_ids` <- `ignored_prompt_ids`
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
    #' @return PromptTagsRemoveResponse as a base R list.
    #' @examples
    #' # convert array of PromptTagsRemoveResponse (x) to a data frame
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
    #' Convert PromptTagsRemoveResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptTagsRemoveResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        PromptTagsRemoveResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`prompts_targeted`)) {
        PromptTagsRemoveResponseObject[["prompts_targeted"]] <-
          self$`prompts_targeted`
      }
      if (!is.null(self$`tags_detached`)) {
        PromptTagsRemoveResponseObject[["tags_detached"]] <-
          self$extractSimpleType(self$`tags_detached`)
      }
      if (!is.null(self$`links_removed`)) {
        PromptTagsRemoveResponseObject[["links_removed"]] <-
          self$`links_removed`
      }
      if (!is.null(self$`skipped_not_linked`)) {
        PromptTagsRemoveResponseObject[["skipped_not_linked"]] <-
          self$`skipped_not_linked`
      }
      if (!is.null(self$`missing_tag_names`)) {
        PromptTagsRemoveResponseObject[["missing_tag_names"]] <-
          self$`missing_tag_names`
      }
      if (!is.null(self$`ignored_prompt_ids`)) {
        PromptTagsRemoveResponseObject[["ignored_prompt_ids"]] <-
          self$`ignored_prompt_ids`
      }
      if (!is.null(self$`request_id`)) {
        PromptTagsRemoveResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(PromptTagsRemoveResponseObject)
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
    #' Deserialize JSON string into an instance of PromptTagsRemoveResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptTagsRemoveResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`prompts_targeted`)) {
        self$`prompts_targeted` <- this_object$`prompts_targeted`
      }
      if (!is.null(this_object$`tags_detached`)) {
        self$`tags_detached` <- ApiClient$new()$deserializeObj(this_object$`tags_detached`, "array[TagRef]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`links_removed`)) {
        self$`links_removed` <- this_object$`links_removed`
      }
      if (!is.null(this_object$`skipped_not_linked`)) {
        self$`skipped_not_linked` <- this_object$`skipped_not_linked`
      }
      if (!is.null(this_object$`missing_tag_names`)) {
        self$`missing_tag_names` <- ApiClient$new()$deserializeObj(this_object$`missing_tag_names`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`ignored_prompt_ids`)) {
        self$`ignored_prompt_ids` <- ApiClient$new()$deserializeObj(this_object$`ignored_prompt_ids`, "array[integer]", loadNamespace("llmpulse"))
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
    #' @return PromptTagsRemoveResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptTagsRemoveResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptTagsRemoveResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`prompts_targeted` <- this_object$`prompts_targeted`
      self$`tags_detached` <- ApiClient$new()$deserializeObj(this_object$`tags_detached`, "array[TagRef]", loadNamespace("llmpulse"))
      self$`links_removed` <- this_object$`links_removed`
      self$`skipped_not_linked` <- this_object$`skipped_not_linked`
      self$`missing_tag_names` <- ApiClient$new()$deserializeObj(this_object$`missing_tag_names`, "array[character]", loadNamespace("llmpulse"))
      self$`ignored_prompt_ids` <- ApiClient$new()$deserializeObj(this_object$`ignored_prompt_ids`, "array[integer]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptTagsRemoveResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PromptTagsRemoveResponse: the required field `project_id` is missing."))
      }
      # check the required field `prompts_targeted`
      if (!is.null(input_json$`prompts_targeted`)) {
        if (!(is.numeric(input_json$`prompts_targeted`) && length(input_json$`prompts_targeted`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_targeted`. Must be an integer:", input_json$`prompts_targeted`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptTagsRemoveResponse: the required field `prompts_targeted` is missing."))
      }
      # check the required field `tags_detached`
      if (!is.null(input_json$`tags_detached`)) {
        stopifnot(is.vector(input_json$`tags_detached`), length(input_json$`tags_detached`) != 0)
        tmp <- sapply(input_json$`tags_detached`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptTagsRemoveResponse: the required field `tags_detached` is missing."))
      }
      # check the required field `links_removed`
      if (!is.null(input_json$`links_removed`)) {
        if (!(is.numeric(input_json$`links_removed`) && length(input_json$`links_removed`) == 1)) {
          stop(paste("Error! Invalid data for `links_removed`. Must be an integer:", input_json$`links_removed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptTagsRemoveResponse: the required field `links_removed` is missing."))
      }
      # check the required field `skipped_not_linked`
      if (!is.null(input_json$`skipped_not_linked`)) {
        if (!(is.numeric(input_json$`skipped_not_linked`) && length(input_json$`skipped_not_linked`) == 1)) {
          stop(paste("Error! Invalid data for `skipped_not_linked`. Must be an integer:", input_json$`skipped_not_linked`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptTagsRemoveResponse: the required field `skipped_not_linked` is missing."))
      }
      # check the required field `missing_tag_names`
      if (!is.null(input_json$`missing_tag_names`)) {
        stopifnot(is.vector(input_json$`missing_tag_names`), length(input_json$`missing_tag_names`) != 0)
        tmp <- sapply(input_json$`missing_tag_names`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptTagsRemoveResponse: the required field `missing_tag_names` is missing."))
      }
      # check the required field `ignored_prompt_ids`
      if (!is.null(input_json$`ignored_prompt_ids`)) {
        stopifnot(is.vector(input_json$`ignored_prompt_ids`), length(input_json$`ignored_prompt_ids`) != 0)
        tmp <- sapply(input_json$`ignored_prompt_ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptTagsRemoveResponse: the required field `ignored_prompt_ids` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptTagsRemoveResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptTagsRemoveResponse
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

      # check if the required `prompts_targeted` is null
      if (is.null(self$`prompts_targeted`)) {
        return(FALSE)
      }

      # check if the required `tags_detached` is null
      if (is.null(self$`tags_detached`)) {
        return(FALSE)
      }

      # check if the required `links_removed` is null
      if (is.null(self$`links_removed`)) {
        return(FALSE)
      }

      # check if the required `skipped_not_linked` is null
      if (is.null(self$`skipped_not_linked`)) {
        return(FALSE)
      }

      # check if the required `missing_tag_names` is null
      if (is.null(self$`missing_tag_names`)) {
        return(FALSE)
      }

      # check if the required `ignored_prompt_ids` is null
      if (is.null(self$`ignored_prompt_ids`)) {
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
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        invalid_fields["project_id"] <- "Non-nullable required field `project_id` cannot be null."
      }

      # check if the required `prompts_targeted` is null
      if (is.null(self$`prompts_targeted`)) {
        invalid_fields["prompts_targeted"] <- "Non-nullable required field `prompts_targeted` cannot be null."
      }

      # check if the required `tags_detached` is null
      if (is.null(self$`tags_detached`)) {
        invalid_fields["tags_detached"] <- "Non-nullable required field `tags_detached` cannot be null."
      }

      # check if the required `links_removed` is null
      if (is.null(self$`links_removed`)) {
        invalid_fields["links_removed"] <- "Non-nullable required field `links_removed` cannot be null."
      }

      # check if the required `skipped_not_linked` is null
      if (is.null(self$`skipped_not_linked`)) {
        invalid_fields["skipped_not_linked"] <- "Non-nullable required field `skipped_not_linked` cannot be null."
      }

      # check if the required `missing_tag_names` is null
      if (is.null(self$`missing_tag_names`)) {
        invalid_fields["missing_tag_names"] <- "Non-nullable required field `missing_tag_names` cannot be null."
      }

      # check if the required `ignored_prompt_ids` is null
      if (is.null(self$`ignored_prompt_ids`)) {
        invalid_fields["ignored_prompt_ids"] <- "Non-nullable required field `ignored_prompt_ids` cannot be null."
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
# PromptTagsRemoveResponse$unlock()
#
## Below is an example to define the print function
# PromptTagsRemoveResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptTagsRemoveResponse$lock()

