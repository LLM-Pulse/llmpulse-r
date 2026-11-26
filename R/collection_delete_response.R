#' Create a new CollectionDeleteResponse
#'
#' @description
#' CollectionDeleteResponse Class
#'
#' @docType class
#' @title CollectionDeleteResponse
#' @description CollectionDeleteResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field deleted Always true character
#' @field id  integer
#' @field name  character
#' @field prompts_kept Prompts the collection held; they stay in the project integer
#' @field total_collections Collections left in the project integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CollectionDeleteResponse <- R6::R6Class(
  "CollectionDeleteResponse",
  public = list(
    `project_id` = NULL,
    `deleted` = NULL,
    `id` = NULL,
    `name` = NULL,
    `prompts_kept` = NULL,
    `total_collections` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new CollectionDeleteResponse class.
    #'
    #' @param project_id project_id
    #' @param deleted Always true
    #' @param id id
    #' @param name name
    #' @param prompts_kept Prompts the collection held; they stay in the project
    #' @param total_collections Collections left in the project
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `deleted`, `id`, `name`, `prompts_kept`, `total_collections`, `request_id`, ...) {
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
      if (!missing(`prompts_kept`)) {
        if (!(is.numeric(`prompts_kept`) && length(`prompts_kept`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_kept`. Must be an integer:", `prompts_kept`))
        }
        self$`prompts_kept` <- `prompts_kept`
      }
      if (!missing(`total_collections`)) {
        if (!(is.numeric(`total_collections`) && length(`total_collections`) == 1)) {
          stop(paste("Error! Invalid data for `total_collections`. Must be an integer:", `total_collections`))
        }
        self$`total_collections` <- `total_collections`
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
    #' @return CollectionDeleteResponse as a base R list.
    #' @examples
    #' # convert array of CollectionDeleteResponse (x) to a data frame
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
    #' Convert CollectionDeleteResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CollectionDeleteResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        CollectionDeleteResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`deleted`)) {
        CollectionDeleteResponseObject[["deleted"]] <-
          self$`deleted`
      }
      if (!is.null(self$`id`)) {
        CollectionDeleteResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CollectionDeleteResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`prompts_kept`)) {
        CollectionDeleteResponseObject[["prompts_kept"]] <-
          self$`prompts_kept`
      }
      if (!is.null(self$`total_collections`)) {
        CollectionDeleteResponseObject[["total_collections"]] <-
          self$`total_collections`
      }
      if (!is.null(self$`request_id`)) {
        CollectionDeleteResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(CollectionDeleteResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CollectionDeleteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CollectionDeleteResponse
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
      if (!is.null(this_object$`prompts_kept`)) {
        self$`prompts_kept` <- this_object$`prompts_kept`
      }
      if (!is.null(this_object$`total_collections`)) {
        self$`total_collections` <- this_object$`total_collections`
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
    #' @return CollectionDeleteResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CollectionDeleteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CollectionDeleteResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`deleted` <- this_object$`deleted`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`prompts_kept` <- this_object$`prompts_kept`
      self$`total_collections` <- this_object$`total_collections`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CollectionDeleteResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CollectionDeleteResponse: the required field `project_id` is missing."))
      }
      # check the required field `deleted`
      if (!is.null(input_json$`deleted`)) {
        if (!(is.logical(input_json$`deleted`) && length(input_json$`deleted`) == 1)) {
          stop(paste("Error! Invalid data for `deleted`. Must be a boolean:", input_json$`deleted`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionDeleteResponse: the required field `deleted` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionDeleteResponse: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionDeleteResponse: the required field `name` is missing."))
      }
      # check the required field `prompts_kept`
      if (!is.null(input_json$`prompts_kept`)) {
        if (!(is.numeric(input_json$`prompts_kept`) && length(input_json$`prompts_kept`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_kept`. Must be an integer:", input_json$`prompts_kept`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionDeleteResponse: the required field `prompts_kept` is missing."))
      }
      # check the required field `total_collections`
      if (!is.null(input_json$`total_collections`)) {
        if (!(is.numeric(input_json$`total_collections`) && length(input_json$`total_collections`) == 1)) {
          stop(paste("Error! Invalid data for `total_collections`. Must be an integer:", input_json$`total_collections`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionDeleteResponse: the required field `total_collections` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionDeleteResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CollectionDeleteResponse
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

      # check if the required `prompts_kept` is null
      if (is.null(self$`prompts_kept`)) {
        return(FALSE)
      }

      # check if the required `total_collections` is null
      if (is.null(self$`total_collections`)) {
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

      # check if the required `prompts_kept` is null
      if (is.null(self$`prompts_kept`)) {
        invalid_fields["prompts_kept"] <- "Non-nullable required field `prompts_kept` cannot be null."
      }

      # check if the required `total_collections` is null
      if (is.null(self$`total_collections`)) {
        invalid_fields["total_collections"] <- "Non-nullable required field `total_collections` cannot be null."
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
# CollectionDeleteResponse$unlock()
#
## Below is an example to define the print function
# CollectionDeleteResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CollectionDeleteResponse$lock()

