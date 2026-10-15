#' Create a new PromptsImportResponse
#'
#' @description
#' PromptsImportResponse Class
#'
#' @docType class
#' @title PromptsImportResponse
#' @description PromptsImportResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field processed_rows Distinct rows imported or matched to an existing prompt integer
#' @field created  integer
#' @field duplicates Rows that matched an existing prompt (they still get the row's tags) integer
#' @field tagged New prompt-tag links integer
#' @field created_tags  integer
#' @field row_errors Rows that were skipped, by their index in rows list(\link{PromptsImportResponseRowErrorsInner})
#' @field length_warning Which tracked AI models will skip new prompts that are too long for them character
#' @field prompts_available Prompt slots left on the plan; null when unlimited integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptsImportResponse <- R6::R6Class(
  "PromptsImportResponse",
  public = list(
    `project_id` = NULL,
    `processed_rows` = NULL,
    `created` = NULL,
    `duplicates` = NULL,
    `tagged` = NULL,
    `created_tags` = NULL,
    `row_errors` = NULL,
    `length_warning` = NULL,
    `prompts_available` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new PromptsImportResponse class.
    #'
    #' @param project_id project_id
    #' @param processed_rows Distinct rows imported or matched to an existing prompt
    #' @param created created
    #' @param duplicates Rows that matched an existing prompt (they still get the row's tags)
    #' @param tagged New prompt-tag links
    #' @param created_tags created_tags
    #' @param row_errors Rows that were skipped, by their index in rows
    #' @param length_warning Which tracked AI models will skip new prompts that are too long for them
    #' @param prompts_available Prompt slots left on the plan; null when unlimited
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `processed_rows`, `created`, `duplicates`, `tagged`, `created_tags`, `row_errors`, `length_warning`, `prompts_available`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`processed_rows`)) {
        if (!(is.numeric(`processed_rows`) && length(`processed_rows`) == 1)) {
          stop(paste("Error! Invalid data for `processed_rows`. Must be an integer:", `processed_rows`))
        }
        self$`processed_rows` <- `processed_rows`
      }
      if (!missing(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!missing(`duplicates`)) {
        if (!(is.numeric(`duplicates`) && length(`duplicates`) == 1)) {
          stop(paste("Error! Invalid data for `duplicates`. Must be an integer:", `duplicates`))
        }
        self$`duplicates` <- `duplicates`
      }
      if (!missing(`tagged`)) {
        if (!(is.numeric(`tagged`) && length(`tagged`) == 1)) {
          stop(paste("Error! Invalid data for `tagged`. Must be an integer:", `tagged`))
        }
        self$`tagged` <- `tagged`
      }
      if (!missing(`created_tags`)) {
        if (!(is.numeric(`created_tags`) && length(`created_tags`) == 1)) {
          stop(paste("Error! Invalid data for `created_tags`. Must be an integer:", `created_tags`))
        }
        self$`created_tags` <- `created_tags`
      }
      if (!missing(`row_errors`)) {
        stopifnot(is.vector(`row_errors`), length(`row_errors`) != 0)
        sapply(`row_errors`, function(x) stopifnot(R6::is.R6(x)))
        self$`row_errors` <- `row_errors`
      }
      if (!missing(`length_warning`)) {
        if (!(is.character(`length_warning`) && length(`length_warning`) == 1)) {
          stop(paste("Error! Invalid data for `length_warning`. Must be a string:", `length_warning`))
        }
        self$`length_warning` <- `length_warning`
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
    #' @return PromptsImportResponse as a base R list.
    #' @examples
    #' # convert array of PromptsImportResponse (x) to a data frame
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
    #' Convert PromptsImportResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptsImportResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        PromptsImportResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`processed_rows`)) {
        PromptsImportResponseObject[["processed_rows"]] <-
          self$`processed_rows`
      }
      if (!is.null(self$`created`)) {
        PromptsImportResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`duplicates`)) {
        PromptsImportResponseObject[["duplicates"]] <-
          self$`duplicates`
      }
      if (!is.null(self$`tagged`)) {
        PromptsImportResponseObject[["tagged"]] <-
          self$`tagged`
      }
      if (!is.null(self$`created_tags`)) {
        PromptsImportResponseObject[["created_tags"]] <-
          self$`created_tags`
      }
      if (!is.null(self$`row_errors`)) {
        PromptsImportResponseObject[["row_errors"]] <-
          self$extractSimpleType(self$`row_errors`)
      }
      if (!is.null(self$`length_warning`)) {
        PromptsImportResponseObject[["length_warning"]] <-
          self$`length_warning`
      }
      if (!is.null(self$`prompts_available`)) {
        PromptsImportResponseObject[["prompts_available"]] <-
          self$`prompts_available`
      }
      if (!is.null(self$`request_id`)) {
        PromptsImportResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(PromptsImportResponseObject)
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
    #' Deserialize JSON string into an instance of PromptsImportResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptsImportResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`processed_rows`)) {
        self$`processed_rows` <- this_object$`processed_rows`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`duplicates`)) {
        self$`duplicates` <- this_object$`duplicates`
      }
      if (!is.null(this_object$`tagged`)) {
        self$`tagged` <- this_object$`tagged`
      }
      if (!is.null(this_object$`created_tags`)) {
        self$`created_tags` <- this_object$`created_tags`
      }
      if (!is.null(this_object$`row_errors`)) {
        self$`row_errors` <- ApiClient$new()$deserializeObj(this_object$`row_errors`, "array[PromptsImportResponseRowErrorsInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`length_warning`)) {
        self$`length_warning` <- this_object$`length_warning`
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
    #' @return PromptsImportResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptsImportResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptsImportResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`processed_rows` <- this_object$`processed_rows`
      self$`created` <- this_object$`created`
      self$`duplicates` <- this_object$`duplicates`
      self$`tagged` <- this_object$`tagged`
      self$`created_tags` <- this_object$`created_tags`
      self$`row_errors` <- ApiClient$new()$deserializeObj(this_object$`row_errors`, "array[PromptsImportResponseRowErrorsInner]", loadNamespace("llmpulse"))
      self$`length_warning` <- this_object$`length_warning`
      self$`prompts_available` <- this_object$`prompts_available`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptsImportResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportResponse: the required field `project_id` is missing."))
      }
      # check the required field `processed_rows`
      if (!is.null(input_json$`processed_rows`)) {
        if (!(is.numeric(input_json$`processed_rows`) && length(input_json$`processed_rows`) == 1)) {
          stop(paste("Error! Invalid data for `processed_rows`. Must be an integer:", input_json$`processed_rows`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportResponse: the required field `processed_rows` is missing."))
      }
      # check the required field `created`
      if (!is.null(input_json$`created`)) {
        if (!(is.numeric(input_json$`created`) && length(input_json$`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", input_json$`created`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportResponse: the required field `created` is missing."))
      }
      # check the required field `duplicates`
      if (!is.null(input_json$`duplicates`)) {
        if (!(is.numeric(input_json$`duplicates`) && length(input_json$`duplicates`) == 1)) {
          stop(paste("Error! Invalid data for `duplicates`. Must be an integer:", input_json$`duplicates`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportResponse: the required field `duplicates` is missing."))
      }
      # check the required field `tagged`
      if (!is.null(input_json$`tagged`)) {
        if (!(is.numeric(input_json$`tagged`) && length(input_json$`tagged`) == 1)) {
          stop(paste("Error! Invalid data for `tagged`. Must be an integer:", input_json$`tagged`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportResponse: the required field `tagged` is missing."))
      }
      # check the required field `created_tags`
      if (!is.null(input_json$`created_tags`)) {
        if (!(is.numeric(input_json$`created_tags`) && length(input_json$`created_tags`) == 1)) {
          stop(paste("Error! Invalid data for `created_tags`. Must be an integer:", input_json$`created_tags`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportResponse: the required field `created_tags` is missing."))
      }
      # check the required field `row_errors`
      if (!is.null(input_json$`row_errors`)) {
        stopifnot(is.vector(input_json$`row_errors`), length(input_json$`row_errors`) != 0)
        tmp <- sapply(input_json$`row_errors`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportResponse: the required field `row_errors` is missing."))
      }
      # check the required field `length_warning`
      if (!is.null(input_json$`length_warning`)) {
        if (!(is.character(input_json$`length_warning`) && length(input_json$`length_warning`) == 1)) {
          stop(paste("Error! Invalid data for `length_warning`. Must be a string:", input_json$`length_warning`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportResponse: the required field `length_warning` is missing."))
      }
      # check the required field `prompts_available`
      if (!is.null(input_json$`prompts_available`)) {
        if (!(is.numeric(input_json$`prompts_available`) && length(input_json$`prompts_available`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_available`. Must be an integer:", input_json$`prompts_available`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportResponse: the required field `prompts_available` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptsImportResponse
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

      # check if the required `processed_rows` is null
      if (is.null(self$`processed_rows`)) {
        return(FALSE)
      }

      # check if the required `created` is null
      if (is.null(self$`created`)) {
        return(FALSE)
      }

      # check if the required `duplicates` is null
      if (is.null(self$`duplicates`)) {
        return(FALSE)
      }

      # check if the required `tagged` is null
      if (is.null(self$`tagged`)) {
        return(FALSE)
      }

      # check if the required `created_tags` is null
      if (is.null(self$`created_tags`)) {
        return(FALSE)
      }

      # check if the required `row_errors` is null
      if (is.null(self$`row_errors`)) {
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

      # check if the required `processed_rows` is null
      if (is.null(self$`processed_rows`)) {
        invalid_fields["processed_rows"] <- "Non-nullable required field `processed_rows` cannot be null."
      }

      # check if the required `created` is null
      if (is.null(self$`created`)) {
        invalid_fields["created"] <- "Non-nullable required field `created` cannot be null."
      }

      # check if the required `duplicates` is null
      if (is.null(self$`duplicates`)) {
        invalid_fields["duplicates"] <- "Non-nullable required field `duplicates` cannot be null."
      }

      # check if the required `tagged` is null
      if (is.null(self$`tagged`)) {
        invalid_fields["tagged"] <- "Non-nullable required field `tagged` cannot be null."
      }

      # check if the required `created_tags` is null
      if (is.null(self$`created_tags`)) {
        invalid_fields["created_tags"] <- "Non-nullable required field `created_tags` cannot be null."
      }

      # check if the required `row_errors` is null
      if (is.null(self$`row_errors`)) {
        invalid_fields["row_errors"] <- "Non-nullable required field `row_errors` cannot be null."
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
# PromptsImportResponse$unlock()
#
## Below is an example to define the print function
# PromptsImportResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptsImportResponse$lock()

