#' Create a new PromptCategorizationResponse
#'
#' @description
#' PromptCategorizationResponse Class
#'
#' @docType class
#' @title PromptCategorizationResponse
#' @description PromptCategorizationResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field prompt  \link{PromptCategorization}
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptCategorizationResponse <- R6::R6Class(
  "PromptCategorizationResponse",
  public = list(
    `project_id` = NULL,
    `prompt` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new PromptCategorizationResponse class.
    #'
    #' @param project_id project_id
    #' @param prompt prompt
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `prompt`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`prompt`)) {
        stopifnot(R6::is.R6(`prompt`))
        self$`prompt` <- `prompt`
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
    #' @return PromptCategorizationResponse as a base R list.
    #' @examples
    #' # convert array of PromptCategorizationResponse (x) to a data frame
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
    #' Convert PromptCategorizationResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptCategorizationResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        PromptCategorizationResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`prompt`)) {
        PromptCategorizationResponseObject[["prompt"]] <-
          self$extractSimpleType(self$`prompt`)
      }
      if (!is.null(self$`request_id`)) {
        PromptCategorizationResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(PromptCategorizationResponseObject)
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
    #' Deserialize JSON string into an instance of PromptCategorizationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptCategorizationResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`prompt`)) {
        `prompt_object` <- PromptCategorization$new()
        `prompt_object`$fromJSON(jsonlite::toJSON(this_object$`prompt`, auto_unbox = TRUE, digits = NA))
        self$`prompt` <- `prompt_object`
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
    #' @return PromptCategorizationResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptCategorizationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptCategorizationResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`prompt` <- PromptCategorization$new()$fromJSON(jsonlite::toJSON(this_object$`prompt`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptCategorizationResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PromptCategorizationResponse: the required field `project_id` is missing."))
      }
      # check the required field `prompt`
      if (!is.null(input_json$`prompt`)) {
        stopifnot(R6::is.R6(input_json$`prompt`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptCategorizationResponse: the required field `prompt` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptCategorizationResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptCategorizationResponse
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

      # check if the required `prompt` is null
      if (is.null(self$`prompt`)) {
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

      # check if the required `prompt` is null
      if (is.null(self$`prompt`)) {
        invalid_fields["prompt"] <- "Non-nullable required field `prompt` cannot be null."
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
# PromptCategorizationResponse$unlock()
#
## Below is an example to define the print function
# PromptCategorizationResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptCategorizationResponse$lock()

