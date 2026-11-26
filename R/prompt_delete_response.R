#' Create a new PromptDeleteResponse
#'
#' @description
#' PromptDeleteResponse Class
#'
#' @docType class
#' @title PromptDeleteResponse
#' @description PromptDeleteResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field deleted Always true character
#' @field id  integer
#' @field raw_input  character
#' @field total_after Prompts left in the project integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptDeleteResponse <- R6::R6Class(
  "PromptDeleteResponse",
  public = list(
    `project_id` = NULL,
    `deleted` = NULL,
    `id` = NULL,
    `raw_input` = NULL,
    `total_after` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new PromptDeleteResponse class.
    #'
    #' @param project_id project_id
    #' @param deleted Always true
    #' @param id id
    #' @param raw_input raw_input
    #' @param total_after Prompts left in the project
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `deleted`, `id`, `raw_input`, `total_after`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`deleted`)) {
        if (!(is.logical(`deleted`) && length(`deleted`) == 1)) {
          stop(paste("Error! Invalid data for `deleted`. Must be a boolean:", `deleted`))
        }
        self$`deleted` <- `deleted`
      }
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`raw_input`)) {
        if (!(is.character(`raw_input`) && length(`raw_input`) == 1)) {
          stop(paste("Error! Invalid data for `raw_input`. Must be a string:", `raw_input`))
        }
        self$`raw_input` <- `raw_input`
      }
      if (!missing(`total_after`)) {
        if (!(is.numeric(`total_after`) && length(`total_after`) == 1)) {
          stop(paste("Error! Invalid data for `total_after`. Must be an integer:", `total_after`))
        }
        self$`total_after` <- `total_after`
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
    #' @return PromptDeleteResponse as a base R list.
    #' @examples
    #' # convert array of PromptDeleteResponse (x) to a data frame
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
    #' Convert PromptDeleteResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptDeleteResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        PromptDeleteResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`deleted`)) {
        PromptDeleteResponseObject[["deleted"]] <-
          self$`deleted`
      }
      if (!is.null(self$`id`)) {
        PromptDeleteResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`raw_input`)) {
        PromptDeleteResponseObject[["raw_input"]] <-
          self$`raw_input`
      }
      if (!is.null(self$`total_after`)) {
        PromptDeleteResponseObject[["total_after"]] <-
          self$`total_after`
      }
      if (!is.null(self$`request_id`)) {
        PromptDeleteResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(PromptDeleteResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptDeleteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptDeleteResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`deleted`)) {
        self$`deleted` <- this_object$`deleted`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`raw_input`)) {
        self$`raw_input` <- this_object$`raw_input`
      }
      if (!is.null(this_object$`total_after`)) {
        self$`total_after` <- this_object$`total_after`
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
    #' @return PromptDeleteResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptDeleteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptDeleteResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`deleted` <- this_object$`deleted`
      self$`id` <- this_object$`id`
      self$`raw_input` <- this_object$`raw_input`
      self$`total_after` <- this_object$`total_after`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptDeleteResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PromptDeleteResponse: the required field `project_id` is missing."))
      }
      # check the required field `deleted`
      if (!is.null(input_json$`deleted`)) {
        if (!(is.logical(input_json$`deleted`) && length(input_json$`deleted`) == 1)) {
          stop(paste("Error! Invalid data for `deleted`. Must be a boolean:", input_json$`deleted`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptDeleteResponse: the required field `deleted` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptDeleteResponse: the required field `id` is missing."))
      }
      # check the required field `raw_input`
      if (!is.null(input_json$`raw_input`)) {
        if (!(is.character(input_json$`raw_input`) && length(input_json$`raw_input`) == 1)) {
          stop(paste("Error! Invalid data for `raw_input`. Must be a string:", input_json$`raw_input`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptDeleteResponse: the required field `raw_input` is missing."))
      }
      # check the required field `total_after`
      if (!is.null(input_json$`total_after`)) {
        if (!(is.numeric(input_json$`total_after`) && length(input_json$`total_after`) == 1)) {
          stop(paste("Error! Invalid data for `total_after`. Must be an integer:", input_json$`total_after`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptDeleteResponse: the required field `total_after` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptDeleteResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptDeleteResponse
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

      # check if the required `deleted` is null
      if (is.null(self$`deleted`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `raw_input` is null
      if (is.null(self$`raw_input`)) {
        return(FALSE)
      }

      # check if the required `total_after` is null
      if (is.null(self$`total_after`)) {
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

      # check if the required `deleted` is null
      if (is.null(self$`deleted`)) {
        invalid_fields["deleted"] <- "Non-nullable required field `deleted` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `raw_input` is null
      if (is.null(self$`raw_input`)) {
        invalid_fields["raw_input"] <- "Non-nullable required field `raw_input` cannot be null."
      }

      # check if the required `total_after` is null
      if (is.null(self$`total_after`)) {
        invalid_fields["total_after"] <- "Non-nullable required field `total_after` cannot be null."
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
# PromptDeleteResponse$unlock()
#
## Below is an example to define the print function
# PromptDeleteResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptDeleteResponse$lock()

