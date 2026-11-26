#' Create a new CompetitorDeleteResponse
#'
#' @description
#' CompetitorDeleteResponse Class
#'
#' @docType class
#' @title CompetitorDeleteResponse
#' @description CompetitorDeleteResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field deleted Always true character
#' @field id  integer
#' @field brand_name  character
#' @field domain  character
#' @field total_competitors Competitors left in the project integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompetitorDeleteResponse <- R6::R6Class(
  "CompetitorDeleteResponse",
  public = list(
    `project_id` = NULL,
    `deleted` = NULL,
    `id` = NULL,
    `brand_name` = NULL,
    `domain` = NULL,
    `total_competitors` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new CompetitorDeleteResponse class.
    #'
    #' @param project_id project_id
    #' @param deleted Always true
    #' @param id id
    #' @param brand_name brand_name
    #' @param domain domain
    #' @param total_competitors Competitors left in the project
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `deleted`, `id`, `brand_name`, `domain`, `total_competitors`, `request_id`, ...) {
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
      if (!missing(`brand_name`)) {
        if (!(is.character(`brand_name`) && length(`brand_name`) == 1)) {
          stop(paste("Error! Invalid data for `brand_name`. Must be a string:", `brand_name`))
        }
        self$`brand_name` <- `brand_name`
      }
      if (!missing(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!missing(`total_competitors`)) {
        if (!(is.numeric(`total_competitors`) && length(`total_competitors`) == 1)) {
          stop(paste("Error! Invalid data for `total_competitors`. Must be an integer:", `total_competitors`))
        }
        self$`total_competitors` <- `total_competitors`
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
    #' @return CompetitorDeleteResponse as a base R list.
    #' @examples
    #' # convert array of CompetitorDeleteResponse (x) to a data frame
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
    #' Convert CompetitorDeleteResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CompetitorDeleteResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        CompetitorDeleteResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`deleted`)) {
        CompetitorDeleteResponseObject[["deleted"]] <-
          self$`deleted`
      }
      if (!is.null(self$`id`)) {
        CompetitorDeleteResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`brand_name`)) {
        CompetitorDeleteResponseObject[["brand_name"]] <-
          self$`brand_name`
      }
      if (!is.null(self$`domain`)) {
        CompetitorDeleteResponseObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`total_competitors`)) {
        CompetitorDeleteResponseObject[["total_competitors"]] <-
          self$`total_competitors`
      }
      if (!is.null(self$`request_id`)) {
        CompetitorDeleteResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(CompetitorDeleteResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CompetitorDeleteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompetitorDeleteResponse
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
      if (!is.null(this_object$`brand_name`)) {
        self$`brand_name` <- this_object$`brand_name`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`total_competitors`)) {
        self$`total_competitors` <- this_object$`total_competitors`
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
    #' @return CompetitorDeleteResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CompetitorDeleteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompetitorDeleteResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`deleted` <- this_object$`deleted`
      self$`id` <- this_object$`id`
      self$`brand_name` <- this_object$`brand_name`
      self$`domain` <- this_object$`domain`
      self$`total_competitors` <- this_object$`total_competitors`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CompetitorDeleteResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CompetitorDeleteResponse: the required field `project_id` is missing."))
      }
      # check the required field `deleted`
      if (!is.null(input_json$`deleted`)) {
        if (!(is.logical(input_json$`deleted`) && length(input_json$`deleted`) == 1)) {
          stop(paste("Error! Invalid data for `deleted`. Must be a boolean:", input_json$`deleted`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorDeleteResponse: the required field `deleted` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorDeleteResponse: the required field `id` is missing."))
      }
      # check the required field `brand_name`
      if (!is.null(input_json$`brand_name`)) {
        if (!(is.character(input_json$`brand_name`) && length(input_json$`brand_name`) == 1)) {
          stop(paste("Error! Invalid data for `brand_name`. Must be a string:", input_json$`brand_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorDeleteResponse: the required field `brand_name` is missing."))
      }
      # check the required field `domain`
      if (!is.null(input_json$`domain`)) {
        if (!(is.character(input_json$`domain`) && length(input_json$`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", input_json$`domain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorDeleteResponse: the required field `domain` is missing."))
      }
      # check the required field `total_competitors`
      if (!is.null(input_json$`total_competitors`)) {
        if (!(is.numeric(input_json$`total_competitors`) && length(input_json$`total_competitors`) == 1)) {
          stop(paste("Error! Invalid data for `total_competitors`. Must be an integer:", input_json$`total_competitors`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorDeleteResponse: the required field `total_competitors` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorDeleteResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CompetitorDeleteResponse
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

      # check if the required `brand_name` is null
      if (is.null(self$`brand_name`)) {
        return(FALSE)
      }

      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        return(FALSE)
      }

      # check if the required `total_competitors` is null
      if (is.null(self$`total_competitors`)) {
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

      # check if the required `brand_name` is null
      if (is.null(self$`brand_name`)) {
        invalid_fields["brand_name"] <- "Non-nullable required field `brand_name` cannot be null."
      }

      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        invalid_fields["domain"] <- "Non-nullable required field `domain` cannot be null."
      }

      # check if the required `total_competitors` is null
      if (is.null(self$`total_competitors`)) {
        invalid_fields["total_competitors"] <- "Non-nullable required field `total_competitors` cannot be null."
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
# CompetitorDeleteResponse$unlock()
#
## Below is an example to define the print function
# CompetitorDeleteResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompetitorDeleteResponse$lock()

