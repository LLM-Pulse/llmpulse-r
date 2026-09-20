#' Create a new IntelligenceTaskUpdateRequest
#'
#' @description
#' IntelligenceTaskUpdateRequest Class
#'
#' @docType class
#' @title IntelligenceTaskUpdateRequest
#' @description IntelligenceTaskUpdateRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field edits Dotted result_data paths (title, sections.0.content, key_points.2) mapped to their replacement text. Only string fields that already exist are editable; sections cannot be added or removed. named list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IntelligenceTaskUpdateRequest <- R6::R6Class(
  "IntelligenceTaskUpdateRequest",
  public = list(
    `project_id` = NULL,
    `edits` = NULL,

    #' @description
    #' Initialize a new IntelligenceTaskUpdateRequest class.
    #'
    #' @param project_id project_id
    #' @param edits Dotted result_data paths (title, sections.0.content, key_points.2) mapped to their replacement text. Only string fields that already exist are editable; sections cannot be added or removed.
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `edits`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`edits`)) {
        stopifnot(is.vector(`edits`), length(`edits`) != 0)
        sapply(`edits`, function(x) stopifnot(is.character(x)))
        self$`edits` <- `edits`
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
    #' @return IntelligenceTaskUpdateRequest as a base R list.
    #' @examples
    #' # convert array of IntelligenceTaskUpdateRequest (x) to a data frame
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
    #' Convert IntelligenceTaskUpdateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IntelligenceTaskUpdateRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        IntelligenceTaskUpdateRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`edits`)) {
        IntelligenceTaskUpdateRequestObject[["edits"]] <-
          self$`edits`
      }
      return(IntelligenceTaskUpdateRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IntelligenceTaskUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of IntelligenceTaskUpdateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`edits`)) {
        self$`edits` <- ApiClient$new()$deserializeObj(this_object$`edits`, "map(character)", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IntelligenceTaskUpdateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IntelligenceTaskUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of IntelligenceTaskUpdateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`edits` <- ApiClient$new()$deserializeObj(this_object$`edits`, "map(character)", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to IntelligenceTaskUpdateRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskUpdateRequest: the required field `project_id` is missing."))
      }
      # check the required field `edits`
      if (!is.null(input_json$`edits`)) {
        stopifnot(is.vector(input_json$`edits`), length(input_json$`edits`) != 0)
        tmp <- sapply(input_json$`edits`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskUpdateRequest: the required field `edits` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IntelligenceTaskUpdateRequest
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

      # check if the required `edits` is null
      if (is.null(self$`edits`)) {
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

      # check if the required `edits` is null
      if (is.null(self$`edits`)) {
        invalid_fields["edits"] <- "Non-nullable required field `edits` cannot be null."
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
# IntelligenceTaskUpdateRequest$unlock()
#
## Below is an example to define the print function
# IntelligenceTaskUpdateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IntelligenceTaskUpdateRequest$lock()

