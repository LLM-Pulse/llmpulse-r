#' Create a new UrlListEntriesRemoveResponse
#'
#' @description
#' UrlListEntriesRemoveResponse Class
#'
#' @docType class
#' @title UrlListEntriesRemoveResponse
#' @description UrlListEntriesRemoveResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field url_list_id  integer
#' @field removed  integer
#' @field entries_count  integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListEntriesRemoveResponse <- R6::R6Class(
  "UrlListEntriesRemoveResponse",
  public = list(
    `project_id` = NULL,
    `url_list_id` = NULL,
    `removed` = NULL,
    `entries_count` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new UrlListEntriesRemoveResponse class.
    #'
    #' @param project_id project_id
    #' @param url_list_id url_list_id
    #' @param removed removed
    #' @param entries_count entries_count
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `url_list_id`, `removed`, `entries_count`, `request_id`, ...) {
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
      if (!missing(`removed`)) {
        if (!(is.numeric(`removed`) && length(`removed`) == 1)) {
          stop(paste("Error! Invalid data for `removed`. Must be an integer:", `removed`))
        }
        self$`removed` <- `removed`
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
    #' @return UrlListEntriesRemoveResponse as a base R list.
    #' @examples
    #' # convert array of UrlListEntriesRemoveResponse (x) to a data frame
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
    #' Convert UrlListEntriesRemoveResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListEntriesRemoveResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        UrlListEntriesRemoveResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`url_list_id`)) {
        UrlListEntriesRemoveResponseObject[["url_list_id"]] <-
          self$`url_list_id`
      }
      if (!is.null(self$`removed`)) {
        UrlListEntriesRemoveResponseObject[["removed"]] <-
          self$`removed`
      }
      if (!is.null(self$`entries_count`)) {
        UrlListEntriesRemoveResponseObject[["entries_count"]] <-
          self$`entries_count`
      }
      if (!is.null(self$`request_id`)) {
        UrlListEntriesRemoveResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(UrlListEntriesRemoveResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListEntriesRemoveResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListEntriesRemoveResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`url_list_id`)) {
        self$`url_list_id` <- this_object$`url_list_id`
      }
      if (!is.null(this_object$`removed`)) {
        self$`removed` <- this_object$`removed`
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
    #' @return UrlListEntriesRemoveResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListEntriesRemoveResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListEntriesRemoveResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`url_list_id` <- this_object$`url_list_id`
      self$`removed` <- this_object$`removed`
      self$`entries_count` <- this_object$`entries_count`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListEntriesRemoveResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesRemoveResponse: the required field `project_id` is missing."))
      }
      # check the required field `url_list_id`
      if (!is.null(input_json$`url_list_id`)) {
        if (!(is.numeric(input_json$`url_list_id`) && length(input_json$`url_list_id`) == 1)) {
          stop(paste("Error! Invalid data for `url_list_id`. Must be an integer:", input_json$`url_list_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesRemoveResponse: the required field `url_list_id` is missing."))
      }
      # check the required field `removed`
      if (!is.null(input_json$`removed`)) {
        if (!(is.numeric(input_json$`removed`) && length(input_json$`removed`) == 1)) {
          stop(paste("Error! Invalid data for `removed`. Must be an integer:", input_json$`removed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesRemoveResponse: the required field `removed` is missing."))
      }
      # check the required field `entries_count`
      if (!is.null(input_json$`entries_count`)) {
        if (!(is.numeric(input_json$`entries_count`) && length(input_json$`entries_count`) == 1)) {
          stop(paste("Error! Invalid data for `entries_count`. Must be an integer:", input_json$`entries_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesRemoveResponse: the required field `entries_count` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesRemoveResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListEntriesRemoveResponse
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

      # check if the required `removed` is null
      if (is.null(self$`removed`)) {
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

      # check if the required `removed` is null
      if (is.null(self$`removed`)) {
        invalid_fields["removed"] <- "Non-nullable required field `removed` cannot be null."
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
# UrlListEntriesRemoveResponse$unlock()
#
## Below is an example to define the print function
# UrlListEntriesRemoveResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListEntriesRemoveResponse$lock()

