#' Create a new CatalogPromptSuggestionsAcceptResponse
#'
#' @description
#' CatalogPromptSuggestionsAcceptResponse Class
#'
#' @docType class
#' @title CatalogPromptSuggestionsAcceptResponse
#' @description CatalogPromptSuggestionsAcceptResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field accepted  list(\link{CatalogPromptSuggestionsAcceptResponseAcceptedInner})
#' @field skipped  list(\link{CatalogPromptSuggestionsAcceptResponseSkippedInner})
#' @field prompts_available Prompt slots left on the plan; null when unlimited integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CatalogPromptSuggestionsAcceptResponse <- R6::R6Class(
  "CatalogPromptSuggestionsAcceptResponse",
  public = list(
    `project_id` = NULL,
    `accepted` = NULL,
    `skipped` = NULL,
    `prompts_available` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new CatalogPromptSuggestionsAcceptResponse class.
    #'
    #' @param project_id project_id
    #' @param accepted accepted
    #' @param skipped skipped
    #' @param prompts_available Prompt slots left on the plan; null when unlimited
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `accepted`, `skipped`, `prompts_available`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`accepted`)) {
        stopifnot(is.vector(`accepted`), length(`accepted`) != 0)
        sapply(`accepted`, function(x) stopifnot(R6::is.R6(x)))
        self$`accepted` <- `accepted`
      }
      if (!missing(`skipped`)) {
        stopifnot(is.vector(`skipped`), length(`skipped`) != 0)
        sapply(`skipped`, function(x) stopifnot(R6::is.R6(x)))
        self$`skipped` <- `skipped`
      }
      if (!missing(`prompts_available`)) {
        if (!(is.numeric(`prompts_available`) && length(`prompts_available`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_available`. Must be an integer:", `prompts_available`))
        }
        self$`prompts_available` <- `prompts_available`
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
    #' @return CatalogPromptSuggestionsAcceptResponse as a base R list.
    #' @examples
    #' # convert array of CatalogPromptSuggestionsAcceptResponse (x) to a data frame
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
    #' Convert CatalogPromptSuggestionsAcceptResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CatalogPromptSuggestionsAcceptResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        CatalogPromptSuggestionsAcceptResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`accepted`)) {
        CatalogPromptSuggestionsAcceptResponseObject[["accepted"]] <-
          self$extractSimpleType(self$`accepted`)
      }
      if (!is.null(self$`skipped`)) {
        CatalogPromptSuggestionsAcceptResponseObject[["skipped"]] <-
          self$extractSimpleType(self$`skipped`)
      }
      if (!is.null(self$`prompts_available`)) {
        CatalogPromptSuggestionsAcceptResponseObject[["prompts_available"]] <-
          self$`prompts_available`
      }
      if (!is.null(self$`request_id`)) {
        CatalogPromptSuggestionsAcceptResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(CatalogPromptSuggestionsAcceptResponseObject)
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
    #' Deserialize JSON string into an instance of CatalogPromptSuggestionsAcceptResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestionsAcceptResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`accepted`)) {
        self$`accepted` <- ApiClient$new()$deserializeObj(this_object$`accepted`, "array[CatalogPromptSuggestionsAcceptResponseAcceptedInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`skipped`)) {
        self$`skipped` <- ApiClient$new()$deserializeObj(this_object$`skipped`, "array[CatalogPromptSuggestionsAcceptResponseSkippedInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`prompts_available`)) {
        self$`prompts_available` <- this_object$`prompts_available`
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
    #' @return CatalogPromptSuggestionsAcceptResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CatalogPromptSuggestionsAcceptResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestionsAcceptResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`accepted` <- ApiClient$new()$deserializeObj(this_object$`accepted`, "array[CatalogPromptSuggestionsAcceptResponseAcceptedInner]", loadNamespace("llmpulse"))
      self$`skipped` <- ApiClient$new()$deserializeObj(this_object$`skipped`, "array[CatalogPromptSuggestionsAcceptResponseSkippedInner]", loadNamespace("llmpulse"))
      self$`prompts_available` <- this_object$`prompts_available`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CatalogPromptSuggestionsAcceptResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsAcceptResponse: the required field `project_id` is missing."))
      }
      # check the required field `accepted`
      if (!is.null(input_json$`accepted`)) {
        stopifnot(is.vector(input_json$`accepted`), length(input_json$`accepted`) != 0)
        tmp <- sapply(input_json$`accepted`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsAcceptResponse: the required field `accepted` is missing."))
      }
      # check the required field `skipped`
      if (!is.null(input_json$`skipped`)) {
        stopifnot(is.vector(input_json$`skipped`), length(input_json$`skipped`) != 0)
        tmp <- sapply(input_json$`skipped`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsAcceptResponse: the required field `skipped` is missing."))
      }
      # check the required field `prompts_available`
      if (!is.null(input_json$`prompts_available`)) {
        if (!(is.numeric(input_json$`prompts_available`) && length(input_json$`prompts_available`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_available`. Must be an integer:", input_json$`prompts_available`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsAcceptResponse: the required field `prompts_available` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsAcceptResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CatalogPromptSuggestionsAcceptResponse
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

      # check if the required `accepted` is null
      if (is.null(self$`accepted`)) {
        return(FALSE)
      }

      # check if the required `skipped` is null
      if (is.null(self$`skipped`)) {
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

      # check if the required `accepted` is null
      if (is.null(self$`accepted`)) {
        invalid_fields["accepted"] <- "Non-nullable required field `accepted` cannot be null."
      }

      # check if the required `skipped` is null
      if (is.null(self$`skipped`)) {
        invalid_fields["skipped"] <- "Non-nullable required field `skipped` cannot be null."
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
# CatalogPromptSuggestionsAcceptResponse$unlock()
#
## Below is an example to define the print function
# CatalogPromptSuggestionsAcceptResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CatalogPromptSuggestionsAcceptResponse$lock()

