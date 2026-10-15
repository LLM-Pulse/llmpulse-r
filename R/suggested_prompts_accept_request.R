#' Create a new SuggestedPromptsAcceptRequest
#'
#' @description
#' SuggestedPromptsAcceptRequest Class
#'
#' @docType class
#' @title SuggestedPromptsAcceptRequest
#' @description SuggestedPromptsAcceptRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field ids Suggestion ids to accept (max 100) list(integer)
#' @field tag_ids One tag id to put the new prompts in list(integer) [optional]
#' @field tag_names One tag name (case-insensitive) to put the new prompts in list(character) [optional]
#' @field create_missing Create the tag named in tag_names when it does not exist character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SuggestedPromptsAcceptRequest <- R6::R6Class(
  "SuggestedPromptsAcceptRequest",
  public = list(
    `project_id` = NULL,
    `ids` = NULL,
    `tag_ids` = NULL,
    `tag_names` = NULL,
    `create_missing` = NULL,

    #' @description
    #' Initialize a new SuggestedPromptsAcceptRequest class.
    #'
    #' @param project_id project_id
    #' @param ids Suggestion ids to accept (max 100)
    #' @param tag_ids One tag id to put the new prompts in
    #' @param tag_names One tag name (case-insensitive) to put the new prompts in
    #' @param create_missing Create the tag named in tag_names when it does not exist. Default to FALSE.
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `ids`, `tag_ids` = NULL, `tag_names` = NULL, `create_missing` = FALSE, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`ids`)) {
        stopifnot(is.vector(`ids`), length(`ids`) != 0)
        sapply(`ids`, function(x) stopifnot(is.character(x)))
        self$`ids` <- `ids`
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
    #' @return SuggestedPromptsAcceptRequest as a base R list.
    #' @examples
    #' # convert array of SuggestedPromptsAcceptRequest (x) to a data frame
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
    #' Convert SuggestedPromptsAcceptRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SuggestedPromptsAcceptRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        SuggestedPromptsAcceptRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`ids`)) {
        SuggestedPromptsAcceptRequestObject[["ids"]] <-
          self$`ids`
      }
      if (!is.null(self$`tag_ids`)) {
        SuggestedPromptsAcceptRequestObject[["tag_ids"]] <-
          self$`tag_ids`
      }
      if (!is.null(self$`tag_names`)) {
        SuggestedPromptsAcceptRequestObject[["tag_names"]] <-
          self$`tag_names`
      }
      if (!is.null(self$`create_missing`)) {
        SuggestedPromptsAcceptRequestObject[["create_missing"]] <-
          self$`create_missing`
      }
      return(SuggestedPromptsAcceptRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SuggestedPromptsAcceptRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SuggestedPromptsAcceptRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`ids`)) {
        self$`ids` <- ApiClient$new()$deserializeObj(this_object$`ids`, "array[integer]", loadNamespace("llmpulse"))
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
    #' @return SuggestedPromptsAcceptRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SuggestedPromptsAcceptRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SuggestedPromptsAcceptRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`ids` <- ApiClient$new()$deserializeObj(this_object$`ids`, "array[integer]", loadNamespace("llmpulse"))
      self$`tag_ids` <- ApiClient$new()$deserializeObj(this_object$`tag_ids`, "array[integer]", loadNamespace("llmpulse"))
      self$`tag_names` <- ApiClient$new()$deserializeObj(this_object$`tag_names`, "array[character]", loadNamespace("llmpulse"))
      self$`create_missing` <- this_object$`create_missing`
      self
    },

    #' @description
    #' Validate JSON input with respect to SuggestedPromptsAcceptRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for SuggestedPromptsAcceptRequest: the required field `project_id` is missing."))
      }
      # check the required field `ids`
      if (!is.null(input_json$`ids`)) {
        stopifnot(is.vector(input_json$`ids`), length(input_json$`ids`) != 0)
        tmp <- sapply(input_json$`ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SuggestedPromptsAcceptRequest: the required field `ids` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SuggestedPromptsAcceptRequest
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

      # check if the required `ids` is null
      if (is.null(self$`ids`)) {
        return(FALSE)
      }

      if (length(self$`ids`) > 100) {
        return(FALSE)
      }

      if (length(self$`tag_ids`) > 1) {
        return(FALSE)
      }

      if (length(self$`tag_names`) > 1) {
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

      # check if the required `ids` is null
      if (is.null(self$`ids`)) {
        invalid_fields["ids"] <- "Non-nullable required field `ids` cannot be null."
      }

      if (length(self$`ids`) > 100) {
        invalid_fields["ids"] <- "Invalid length for `ids`, number of items must be less than or equal to 100."
      }

      if (length(self$`tag_ids`) > 1) {
        invalid_fields["tag_ids"] <- "Invalid length for `tag_ids`, number of items must be less than or equal to 1."
      }

      if (length(self$`tag_names`) > 1) {
        invalid_fields["tag_names"] <- "Invalid length for `tag_names`, number of items must be less than or equal to 1."
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
# SuggestedPromptsAcceptRequest$unlock()
#
## Below is an example to define the print function
# SuggestedPromptsAcceptRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SuggestedPromptsAcceptRequest$lock()

