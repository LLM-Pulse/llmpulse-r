#' Create a new UrlListEntriesAddResponse
#'
#' @description
#' UrlListEntriesAddResponse Class
#'
#' @docType class
#' @title UrlListEntriesAddResponse
#' @description UrlListEntriesAddResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field url_list_id  integer
#' @field added  integer
#' @field updated  integer
#' @field invalid_entries  list(\link{UrlListInvalidEntry})
#' @field entries_count  integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListEntriesAddResponse <- R6::R6Class(
  "UrlListEntriesAddResponse",
  public = list(
    `project_id` = NULL,
    `url_list_id` = NULL,
    `added` = NULL,
    `updated` = NULL,
    `invalid_entries` = NULL,
    `entries_count` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new UrlListEntriesAddResponse class.
    #'
    #' @param project_id project_id
    #' @param url_list_id url_list_id
    #' @param added added
    #' @param updated updated
    #' @param invalid_entries invalid_entries
    #' @param entries_count entries_count
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `url_list_id`, `added`, `updated`, `invalid_entries`, `entries_count`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`url_list_id`)) {
        if (!(is.numeric(`url_list_id`) && length(`url_list_id`) == 1)) {
          stop(paste("Error! Invalid data for `url_list_id`. Must be an integer:", `url_list_id`))
        }
        self$`url_list_id` <- `url_list_id`
      }
      if (!missing(`added`)) {
        if (!(is.numeric(`added`) && length(`added`) == 1)) {
          stop(paste("Error! Invalid data for `added`. Must be an integer:", `added`))
        }
        self$`added` <- `added`
      }
      if (!missing(`updated`)) {
        if (!(is.numeric(`updated`) && length(`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be an integer:", `updated`))
        }
        self$`updated` <- `updated`
      }
      if (!missing(`invalid_entries`)) {
        stopifnot(is.vector(`invalid_entries`), length(`invalid_entries`) != 0)
        sapply(`invalid_entries`, function(x) stopifnot(R6::is.R6(x)))
        self$`invalid_entries` <- `invalid_entries`
      }
      if (!missing(`entries_count`)) {
        if (!(is.numeric(`entries_count`) && length(`entries_count`) == 1)) {
          stop(paste("Error! Invalid data for `entries_count`. Must be an integer:", `entries_count`))
        }
        self$`entries_count` <- `entries_count`
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
    #' @return UrlListEntriesAddResponse as a base R list.
    #' @examples
    #' # convert array of UrlListEntriesAddResponse (x) to a data frame
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
    #' Convert UrlListEntriesAddResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListEntriesAddResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        UrlListEntriesAddResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`url_list_id`)) {
        UrlListEntriesAddResponseObject[["url_list_id"]] <-
          self$`url_list_id`
      }
      if (!is.null(self$`added`)) {
        UrlListEntriesAddResponseObject[["added"]] <-
          self$`added`
      }
      if (!is.null(self$`updated`)) {
        UrlListEntriesAddResponseObject[["updated"]] <-
          self$`updated`
      }
      if (!is.null(self$`invalid_entries`)) {
        UrlListEntriesAddResponseObject[["invalid_entries"]] <-
          self$extractSimpleType(self$`invalid_entries`)
      }
      if (!is.null(self$`entries_count`)) {
        UrlListEntriesAddResponseObject[["entries_count"]] <-
          self$`entries_count`
      }
      if (!is.null(self$`request_id`)) {
        UrlListEntriesAddResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(UrlListEntriesAddResponseObject)
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
    #' Deserialize JSON string into an instance of UrlListEntriesAddResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListEntriesAddResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`url_list_id`)) {
        self$`url_list_id` <- this_object$`url_list_id`
      }
      if (!is.null(this_object$`added`)) {
        self$`added` <- this_object$`added`
      }
      if (!is.null(this_object$`updated`)) {
        self$`updated` <- this_object$`updated`
      }
      if (!is.null(this_object$`invalid_entries`)) {
        self$`invalid_entries` <- ApiClient$new()$deserializeObj(this_object$`invalid_entries`, "array[UrlListInvalidEntry]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`entries_count`)) {
        self$`entries_count` <- this_object$`entries_count`
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
    #' @return UrlListEntriesAddResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListEntriesAddResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListEntriesAddResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`url_list_id` <- this_object$`url_list_id`
      self$`added` <- this_object$`added`
      self$`updated` <- this_object$`updated`
      self$`invalid_entries` <- ApiClient$new()$deserializeObj(this_object$`invalid_entries`, "array[UrlListInvalidEntry]", loadNamespace("llmpulse"))
      self$`entries_count` <- this_object$`entries_count`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListEntriesAddResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesAddResponse: the required field `project_id` is missing."))
      }
      # check the required field `url_list_id`
      if (!is.null(input_json$`url_list_id`)) {
        if (!(is.numeric(input_json$`url_list_id`) && length(input_json$`url_list_id`) == 1)) {
          stop(paste("Error! Invalid data for `url_list_id`. Must be an integer:", input_json$`url_list_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesAddResponse: the required field `url_list_id` is missing."))
      }
      # check the required field `added`
      if (!is.null(input_json$`added`)) {
        if (!(is.numeric(input_json$`added`) && length(input_json$`added`) == 1)) {
          stop(paste("Error! Invalid data for `added`. Must be an integer:", input_json$`added`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesAddResponse: the required field `added` is missing."))
      }
      # check the required field `updated`
      if (!is.null(input_json$`updated`)) {
        if (!(is.numeric(input_json$`updated`) && length(input_json$`updated`) == 1)) {
          stop(paste("Error! Invalid data for `updated`. Must be an integer:", input_json$`updated`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesAddResponse: the required field `updated` is missing."))
      }
      # check the required field `invalid_entries`
      if (!is.null(input_json$`invalid_entries`)) {
        stopifnot(is.vector(input_json$`invalid_entries`), length(input_json$`invalid_entries`) != 0)
        tmp <- sapply(input_json$`invalid_entries`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesAddResponse: the required field `invalid_entries` is missing."))
      }
      # check the required field `entries_count`
      if (!is.null(input_json$`entries_count`)) {
        if (!(is.numeric(input_json$`entries_count`) && length(input_json$`entries_count`) == 1)) {
          stop(paste("Error! Invalid data for `entries_count`. Must be an integer:", input_json$`entries_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesAddResponse: the required field `entries_count` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesAddResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListEntriesAddResponse
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

      # check if the required `url_list_id` is null
      if (is.null(self$`url_list_id`)) {
        return(FALSE)
      }

      # check if the required `added` is null
      if (is.null(self$`added`)) {
        return(FALSE)
      }

      # check if the required `updated` is null
      if (is.null(self$`updated`)) {
        return(FALSE)
      }

      # check if the required `invalid_entries` is null
      if (is.null(self$`invalid_entries`)) {
        return(FALSE)
      }

      # check if the required `entries_count` is null
      if (is.null(self$`entries_count`)) {
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

      # check if the required `url_list_id` is null
      if (is.null(self$`url_list_id`)) {
        invalid_fields["url_list_id"] <- "Non-nullable required field `url_list_id` cannot be null."
      }

      # check if the required `added` is null
      if (is.null(self$`added`)) {
        invalid_fields["added"] <- "Non-nullable required field `added` cannot be null."
      }

      # check if the required `updated` is null
      if (is.null(self$`updated`)) {
        invalid_fields["updated"] <- "Non-nullable required field `updated` cannot be null."
      }

      # check if the required `invalid_entries` is null
      if (is.null(self$`invalid_entries`)) {
        invalid_fields["invalid_entries"] <- "Non-nullable required field `invalid_entries` cannot be null."
      }

      # check if the required `entries_count` is null
      if (is.null(self$`entries_count`)) {
        invalid_fields["entries_count"] <- "Non-nullable required field `entries_count` cannot be null."
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
# UrlListEntriesAddResponse$unlock()
#
## Below is an example to define the print function
# UrlListEntriesAddResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListEntriesAddResponse$lock()

