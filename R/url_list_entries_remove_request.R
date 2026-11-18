#' Create a new UrlListEntriesRemoveRequest
#'
#' @description
#' UrlListEntriesRemoveRequest Class
#'
#' @docType class
#' @title UrlListEntriesRemoveRequest
#' @description UrlListEntriesRemoveRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field entry_ids  list(integer) [optional]
#' @field values  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListEntriesRemoveRequest <- R6::R6Class(
  "UrlListEntriesRemoveRequest",
  public = list(
    `project_id` = NULL,
    `entry_ids` = NULL,
    `values` = NULL,

    #' @description
    #' Initialize a new UrlListEntriesRemoveRequest class.
    #'
    #' @param project_id project_id
    #' @param entry_ids entry_ids
    #' @param values values
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `entry_ids` = NULL, `values` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`entry_ids`)) {
        stopifnot(is.vector(`entry_ids`), length(`entry_ids`) != 0)
        sapply(`entry_ids`, function(x) stopifnot(is.character(x)))
        self$`entry_ids` <- `entry_ids`
      }
      if (!is.null(`values`)) {
        stopifnot(is.vector(`values`), length(`values`) != 0)
        sapply(`values`, function(x) stopifnot(is.character(x)))
        self$`values` <- `values`
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
    #' @return UrlListEntriesRemoveRequest as a base R list.
    #' @examples
    #' # convert array of UrlListEntriesRemoveRequest (x) to a data frame
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
    #' Convert UrlListEntriesRemoveRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListEntriesRemoveRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        UrlListEntriesRemoveRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`entry_ids`)) {
        UrlListEntriesRemoveRequestObject[["entry_ids"]] <-
          self$`entry_ids`
      }
      if (!is.null(self$`values`)) {
        UrlListEntriesRemoveRequestObject[["values"]] <-
          self$`values`
      }
      return(UrlListEntriesRemoveRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListEntriesRemoveRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListEntriesRemoveRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`entry_ids`)) {
        self$`entry_ids` <- ApiClient$new()$deserializeObj(this_object$`entry_ids`, "array[integer]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`values`)) {
        self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[character]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UrlListEntriesRemoveRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListEntriesRemoveRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListEntriesRemoveRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`entry_ids` <- ApiClient$new()$deserializeObj(this_object$`entry_ids`, "array[integer]", loadNamespace("llmpulse"))
      self$`values` <- ApiClient$new()$deserializeObj(this_object$`values`, "array[character]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListEntriesRemoveRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesRemoveRequest: the required field `project_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListEntriesRemoveRequest
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
# UrlListEntriesRemoveRequest$unlock()
#
## Below is an example to define the print function
# UrlListEntriesRemoveRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListEntriesRemoveRequest$lock()

