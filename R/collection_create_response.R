#' Create a new CollectionCreateResponse
#'
#' @description
#' CollectionCreateResponse Class
#'
#' @docType class
#' @title CollectionCreateResponse
#' @description CollectionCreateResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field collection  \link{CollectionCreateResponseCollection}
#' @field prompts_attached Existing prompts attached through prompt_ids integer
#' @field total_collections  integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CollectionCreateResponse <- R6::R6Class(
  "CollectionCreateResponse",
  public = list(
    `project_id` = NULL,
    `collection` = NULL,
    `prompts_attached` = NULL,
    `total_collections` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new CollectionCreateResponse class.
    #'
    #' @param project_id project_id
    #' @param collection collection
    #' @param prompts_attached Existing prompts attached through prompt_ids
    #' @param total_collections total_collections
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `collection`, `prompts_attached`, `total_collections`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`collection`)) {
        stopifnot(R6::is.R6(`collection`))
        self$`collection` <- `collection`
      }
      if (!missing(`prompts_attached`)) {
        if (!(is.numeric(`prompts_attached`) && length(`prompts_attached`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_attached`. Must be an integer:", `prompts_attached`))
        }
        self$`prompts_attached` <- `prompts_attached`
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
    #' @return CollectionCreateResponse as a base R list.
    #' @examples
    #' # convert array of CollectionCreateResponse (x) to a data frame
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
    #' Convert CollectionCreateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CollectionCreateResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        CollectionCreateResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`collection`)) {
        CollectionCreateResponseObject[["collection"]] <-
          self$extractSimpleType(self$`collection`)
      }
      if (!is.null(self$`prompts_attached`)) {
        CollectionCreateResponseObject[["prompts_attached"]] <-
          self$`prompts_attached`
      }
      if (!is.null(self$`total_collections`)) {
        CollectionCreateResponseObject[["total_collections"]] <-
          self$`total_collections`
      }
      if (!is.null(self$`request_id`)) {
        CollectionCreateResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(CollectionCreateResponseObject)
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
    #' Deserialize JSON string into an instance of CollectionCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CollectionCreateResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`collection`)) {
        `collection_object` <- CollectionCreateResponseCollection$new()
        `collection_object`$fromJSON(jsonlite::toJSON(this_object$`collection`, auto_unbox = TRUE, digits = NA))
        self$`collection` <- `collection_object`
      }
      if (!is.null(this_object$`prompts_attached`)) {
        self$`prompts_attached` <- this_object$`prompts_attached`
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
    #' @return CollectionCreateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CollectionCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CollectionCreateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`collection` <- CollectionCreateResponseCollection$new()$fromJSON(jsonlite::toJSON(this_object$`collection`, auto_unbox = TRUE, digits = NA))
      self$`prompts_attached` <- this_object$`prompts_attached`
      self$`total_collections` <- this_object$`total_collections`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CollectionCreateResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CollectionCreateResponse: the required field `project_id` is missing."))
      }
      # check the required field `collection`
      if (!is.null(input_json$`collection`)) {
        stopifnot(R6::is.R6(input_json$`collection`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionCreateResponse: the required field `collection` is missing."))
      }
      # check the required field `prompts_attached`
      if (!is.null(input_json$`prompts_attached`)) {
        if (!(is.numeric(input_json$`prompts_attached`) && length(input_json$`prompts_attached`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_attached`. Must be an integer:", input_json$`prompts_attached`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionCreateResponse: the required field `prompts_attached` is missing."))
      }
      # check the required field `total_collections`
      if (!is.null(input_json$`total_collections`)) {
        if (!(is.numeric(input_json$`total_collections`) && length(input_json$`total_collections`) == 1)) {
          stop(paste("Error! Invalid data for `total_collections`. Must be an integer:", input_json$`total_collections`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionCreateResponse: the required field `total_collections` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionCreateResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CollectionCreateResponse
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

      # check if the required `collection` is null
      if (is.null(self$`collection`)) {
        return(FALSE)
      }

      # check if the required `prompts_attached` is null
      if (is.null(self$`prompts_attached`)) {
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

      # check if the required `collection` is null
      if (is.null(self$`collection`)) {
        invalid_fields["collection"] <- "Non-nullable required field `collection` cannot be null."
      }

      # check if the required `prompts_attached` is null
      if (is.null(self$`prompts_attached`)) {
        invalid_fields["prompts_attached"] <- "Non-nullable required field `prompts_attached` cannot be null."
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
# CollectionCreateResponse$unlock()
#
## Below is an example to define the print function
# CollectionCreateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CollectionCreateResponse$lock()

