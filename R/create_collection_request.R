#' Create a new CreateCollectionRequest
#'
#' @description
#' CreateCollectionRequest Class
#'
#' @docType class
#' @title CreateCollectionRequest
#' @description CreateCollectionRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field name  character
#' @field description  character [optional]
#' @field prompt_ids  list(integer) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateCollectionRequest <- R6::R6Class(
  "CreateCollectionRequest",
  public = list(
    `project_id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `prompt_ids` = NULL,

    #' @description
    #' Initialize a new CreateCollectionRequest class.
    #'
    #' @param project_id project_id
    #' @param name name
    #' @param description description
    #' @param prompt_ids prompt_ids
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `name`, `description` = NULL, `prompt_ids` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`prompt_ids`)) {
        stopifnot(is.vector(`prompt_ids`), length(`prompt_ids`) != 0)
        sapply(`prompt_ids`, function(x) stopifnot(is.character(x)))
        self$`prompt_ids` <- `prompt_ids`
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
    #' @return CreateCollectionRequest as a base R list.
    #' @examples
    #' # convert array of CreateCollectionRequest (x) to a data frame
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
    #' Convert CreateCollectionRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateCollectionRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        CreateCollectionRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`name`)) {
        CreateCollectionRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        CreateCollectionRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`prompt_ids`)) {
        CreateCollectionRequestObject[["prompt_ids"]] <-
          self$`prompt_ids`
      }
      return(CreateCollectionRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateCollectionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateCollectionRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`prompt_ids`)) {
        self$`prompt_ids` <- ApiClient$new()$deserializeObj(this_object$`prompt_ids`, "array[integer]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateCollectionRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateCollectionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateCollectionRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`prompt_ids` <- ApiClient$new()$deserializeObj(this_object$`prompt_ids`, "array[integer]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateCollectionRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CreateCollectionRequest: the required field `project_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateCollectionRequest: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateCollectionRequest
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# CreateCollectionRequest$unlock()
#
## Below is an example to define the print function
# CreateCollectionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateCollectionRequest$lock()

