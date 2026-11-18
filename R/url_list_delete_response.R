#' Create a new UrlListDeleteResponse
#'
#' @description
#' UrlListDeleteResponse Class
#'
#' @docType class
#' @title UrlListDeleteResponse
#' @description UrlListDeleteResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field deleted  character
#' @field id  integer
#' @field name  character
#' @field entries_removed  integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListDeleteResponse <- R6::R6Class(
  "UrlListDeleteResponse",
  public = list(
    `project_id` = NULL,
    `deleted` = NULL,
    `id` = NULL,
    `name` = NULL,
    `entries_removed` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new UrlListDeleteResponse class.
    #'
    #' @param project_id project_id
    #' @param deleted deleted
    #' @param id id
    #' @param name name
    #' @param entries_removed entries_removed
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `deleted`, `id`, `name`, `entries_removed`, `request_id`, ...) {
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
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`entries_removed`)) {
        if (!(is.numeric(`entries_removed`) && length(`entries_removed`) == 1)) {
          stop(paste("Error! Invalid data for `entries_removed`. Must be an integer:", `entries_removed`))
        }
        self$`entries_removed` <- `entries_removed`
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
    #' @return UrlListDeleteResponse as a base R list.
    #' @examples
    #' # convert array of UrlListDeleteResponse (x) to a data frame
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
    #' Convert UrlListDeleteResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListDeleteResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        UrlListDeleteResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`deleted`)) {
        UrlListDeleteResponseObject[["deleted"]] <-
          self$`deleted`
      }
      if (!is.null(self$`id`)) {
        UrlListDeleteResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        UrlListDeleteResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`entries_removed`)) {
        UrlListDeleteResponseObject[["entries_removed"]] <-
          self$`entries_removed`
      }
      if (!is.null(self$`request_id`)) {
        UrlListDeleteResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(UrlListDeleteResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListDeleteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListDeleteResponse
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
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`entries_removed`)) {
        self$`entries_removed` <- this_object$`entries_removed`
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
    #' @return UrlListDeleteResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListDeleteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListDeleteResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`deleted` <- this_object$`deleted`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`entries_removed` <- this_object$`entries_removed`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListDeleteResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UrlListDeleteResponse: the required field `project_id` is missing."))
      }
      # check the required field `deleted`
      if (!is.null(input_json$`deleted`)) {
        if (!(is.logical(input_json$`deleted`) && length(input_json$`deleted`) == 1)) {
          stop(paste("Error! Invalid data for `deleted`. Must be a boolean:", input_json$`deleted`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListDeleteResponse: the required field `deleted` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListDeleteResponse: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListDeleteResponse: the required field `name` is missing."))
      }
      # check the required field `entries_removed`
      if (!is.null(input_json$`entries_removed`)) {
        if (!(is.numeric(input_json$`entries_removed`) && length(input_json$`entries_removed`) == 1)) {
          stop(paste("Error! Invalid data for `entries_removed`. Must be an integer:", input_json$`entries_removed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListDeleteResponse: the required field `entries_removed` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListDeleteResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListDeleteResponse
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `entries_removed` is null
      if (is.null(self$`entries_removed`)) {
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `entries_removed` is null
      if (is.null(self$`entries_removed`)) {
        invalid_fields["entries_removed"] <- "Non-nullable required field `entries_removed` cannot be null."
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
# UrlListDeleteResponse$unlock()
#
## Below is an example to define the print function
# UrlListDeleteResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListDeleteResponse$lock()

