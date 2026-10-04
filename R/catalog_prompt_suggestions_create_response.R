#' Create a new CatalogPromptSuggestionsCreateResponse
#'
#' @description
#' CatalogPromptSuggestionsCreateResponse Class
#'
#' @docType class
#' @title CatalogPromptSuggestionsCreateResponse
#' @description CatalogPromptSuggestionsCreateResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field created  integer
#' @field skipped Generated prompts not saved because the project already holds them as a suggestion (from any source or product, in any status). integer
#' @field data  list(\link{CatalogPromptSuggestion})
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CatalogPromptSuggestionsCreateResponse <- R6::R6Class(
  "CatalogPromptSuggestionsCreateResponse",
  public = list(
    `project_id` = NULL,
    `created` = NULL,
    `skipped` = NULL,
    `data` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new CatalogPromptSuggestionsCreateResponse class.
    #'
    #' @param project_id project_id
    #' @param created created
    #' @param skipped Generated prompts not saved because the project already holds them as a suggestion (from any source or product, in any status).
    #' @param data data
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `created`, `skipped`, `data`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!missing(`skipped`)) {
        if (!(is.numeric(`skipped`) && length(`skipped`) == 1)) {
          stop(paste("Error! Invalid data for `skipped`. Must be an integer:", `skipped`))
        }
        self$`skipped` <- `skipped`
      }
      if (!missing(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
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
    #' @return CatalogPromptSuggestionsCreateResponse as a base R list.
    #' @examples
    #' # convert array of CatalogPromptSuggestionsCreateResponse (x) to a data frame
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
    #' Convert CatalogPromptSuggestionsCreateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CatalogPromptSuggestionsCreateResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        CatalogPromptSuggestionsCreateResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`created`)) {
        CatalogPromptSuggestionsCreateResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`skipped`)) {
        CatalogPromptSuggestionsCreateResponseObject[["skipped"]] <-
          self$`skipped`
      }
      if (!is.null(self$`data`)) {
        CatalogPromptSuggestionsCreateResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      if (!is.null(self$`request_id`)) {
        CatalogPromptSuggestionsCreateResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(CatalogPromptSuggestionsCreateResponseObject)
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
    #' Deserialize JSON string into an instance of CatalogPromptSuggestionsCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestionsCreateResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`skipped`)) {
        self$`skipped` <- this_object$`skipped`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[CatalogPromptSuggestion]", loadNamespace("llmpulse"))
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
    #' @return CatalogPromptSuggestionsCreateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CatalogPromptSuggestionsCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestionsCreateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`created` <- this_object$`created`
      self$`skipped` <- this_object$`skipped`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[CatalogPromptSuggestion]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CatalogPromptSuggestionsCreateResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsCreateResponse: the required field `project_id` is missing."))
      }
      # check the required field `created`
      if (!is.null(input_json$`created`)) {
        if (!(is.numeric(input_json$`created`) && length(input_json$`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", input_json$`created`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsCreateResponse: the required field `created` is missing."))
      }
      # check the required field `skipped`
      if (!is.null(input_json$`skipped`)) {
        if (!(is.numeric(input_json$`skipped`) && length(input_json$`skipped`) == 1)) {
          stop(paste("Error! Invalid data for `skipped`. Must be an integer:", input_json$`skipped`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsCreateResponse: the required field `skipped` is missing."))
      }
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(is.vector(input_json$`data`), length(input_json$`data`) != 0)
        tmp <- sapply(input_json$`data`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsCreateResponse: the required field `data` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsCreateResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CatalogPromptSuggestionsCreateResponse
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

      # check if the required `created` is null
      if (is.null(self$`created`)) {
        return(FALSE)
      }

      # check if the required `skipped` is null
      if (is.null(self$`skipped`)) {
        return(FALSE)
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
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

      # check if the required `created` is null
      if (is.null(self$`created`)) {
        invalid_fields["created"] <- "Non-nullable required field `created` cannot be null."
      }

      # check if the required `skipped` is null
      if (is.null(self$`skipped`)) {
        invalid_fields["skipped"] <- "Non-nullable required field `skipped` cannot be null."
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
        invalid_fields["data"] <- "Non-nullable required field `data` cannot be null."
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
# CatalogPromptSuggestionsCreateResponse$unlock()
#
## Below is an example to define the print function
# CatalogPromptSuggestionsCreateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CatalogPromptSuggestionsCreateResponse$lock()

