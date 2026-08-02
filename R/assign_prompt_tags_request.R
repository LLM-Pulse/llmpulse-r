#' Create a new AssignPromptTagsRequest
#'
#' @description
#' AssignPromptTagsRequest Class
#'
#' @docType class
#' @title AssignPromptTagsRequest
#' @description AssignPromptTagsRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field prompt_ids  list(integer)
#' @field tag_ids  list(integer) [optional]
#' @field tag_names  list(character) [optional]
#' @field create_missing  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AssignPromptTagsRequest <- R6::R6Class(
  "AssignPromptTagsRequest",
  public = list(
    `project_id` = NULL,
    `prompt_ids` = NULL,
    `tag_ids` = NULL,
    `tag_names` = NULL,
    `create_missing` = NULL,

    #' @description
    #' Initialize a new AssignPromptTagsRequest class.
    #'
    #' @param project_id project_id
    #' @param prompt_ids prompt_ids
    #' @param tag_ids tag_ids
    #' @param tag_names tag_names
    #' @param create_missing create_missing
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `prompt_ids`, `tag_ids` = NULL, `tag_names` = NULL, `create_missing` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`prompt_ids`)) {
        stopifnot(is.vector(`prompt_ids`), length(`prompt_ids`) != 0)
        sapply(`prompt_ids`, function(x) stopifnot(is.character(x)))
        self$`prompt_ids` <- `prompt_ids`
      }
      if (!is.null(`tag_ids`)) {
        stopifnot(is.vector(`tag_ids`), length(`tag_ids`) != 0)
        sapply(`tag_ids`, function(x) stopifnot(is.character(x)))
        self$`tag_ids` <- `tag_ids`
      }
      if (!is.null(`tag_names`)) {
        stopifnot(is.vector(`tag_names`), length(`tag_names`) != 0)
        sapply(`tag_names`, function(x) stopifnot(is.character(x)))
        self$`tag_names` <- `tag_names`
      }
      if (!is.null(`create_missing`)) {
        if (!(is.logical(`create_missing`) && length(`create_missing`) == 1)) {
          stop(paste("Error! Invalid data for `create_missing`. Must be a boolean:", `create_missing`))
        }
        self$`create_missing` <- `create_missing`
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
    #' @return AssignPromptTagsRequest as a base R list.
    #' @examples
    #' # convert array of AssignPromptTagsRequest (x) to a data frame
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
    #' Convert AssignPromptTagsRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AssignPromptTagsRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        AssignPromptTagsRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`prompt_ids`)) {
        AssignPromptTagsRequestObject[["prompt_ids"]] <-
          self$`prompt_ids`
      }
      if (!is.null(self$`tag_ids`)) {
        AssignPromptTagsRequestObject[["tag_ids"]] <-
          self$`tag_ids`
      }
      if (!is.null(self$`tag_names`)) {
        AssignPromptTagsRequestObject[["tag_names"]] <-
          self$`tag_names`
      }
      if (!is.null(self$`create_missing`)) {
        AssignPromptTagsRequestObject[["create_missing"]] <-
          self$`create_missing`
      }
      return(AssignPromptTagsRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AssignPromptTagsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AssignPromptTagsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`prompt_ids`)) {
        self$`prompt_ids` <- ApiClient$new()$deserializeObj(this_object$`prompt_ids`, "array[integer]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`tag_ids`)) {
        self$`tag_ids` <- ApiClient$new()$deserializeObj(this_object$`tag_ids`, "array[integer]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`tag_names`)) {
        self$`tag_names` <- ApiClient$new()$deserializeObj(this_object$`tag_names`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`create_missing`)) {
        self$`create_missing` <- this_object$`create_missing`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AssignPromptTagsRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AssignPromptTagsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AssignPromptTagsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`prompt_ids` <- ApiClient$new()$deserializeObj(this_object$`prompt_ids`, "array[integer]", loadNamespace("llmpulse"))
      self$`tag_ids` <- ApiClient$new()$deserializeObj(this_object$`tag_ids`, "array[integer]", loadNamespace("llmpulse"))
      self$`tag_names` <- ApiClient$new()$deserializeObj(this_object$`tag_names`, "array[character]", loadNamespace("llmpulse"))
      self$`create_missing` <- this_object$`create_missing`
      self
    },

    #' @description
    #' Validate JSON input with respect to AssignPromptTagsRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AssignPromptTagsRequest: the required field `project_id` is missing."))
      }
      # check the required field `prompt_ids`
      if (!is.null(input_json$`prompt_ids`)) {
        stopifnot(is.vector(input_json$`prompt_ids`), length(input_json$`prompt_ids`) != 0)
        tmp <- sapply(input_json$`prompt_ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AssignPromptTagsRequest: the required field `prompt_ids` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AssignPromptTagsRequest
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

      # check if the required `prompt_ids` is null
      if (is.null(self$`prompt_ids`)) {
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

      # check if the required `prompt_ids` is null
      if (is.null(self$`prompt_ids`)) {
        invalid_fields["prompt_ids"] <- "Non-nullable required field `prompt_ids` cannot be null."
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
# AssignPromptTagsRequest$unlock()
#
## Below is an example to define the print function
# AssignPromptTagsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AssignPromptTagsRequest$lock()

