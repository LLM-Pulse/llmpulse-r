#' Create a new ListProjects200Response
#'
#' @description
#' ListProjects200Response Class
#'
#' @docType class
#' @title ListProjects200Response
#' @description ListProjects200Response Class
#' @format An \code{R6Class} generator object
#' @field projects  list(\link{Project}) [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ListProjects200Response <- R6::R6Class(
  "ListProjects200Response",
  public = list(
    `projects` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new ListProjects200Response class.
    #'
    #' @param projects projects
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`projects` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`projects`)) {
        stopifnot(is.vector(`projects`), length(`projects`) != 0)
        sapply(`projects`, function(x) stopifnot(R6::is.R6(x)))
        self$`projects` <- `projects`
      }
      if (!is.null(`request_id`)) {
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
    #' @return ListProjects200Response as a base R list.
    #' @examples
    #' # convert array of ListProjects200Response (x) to a data frame
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
    #' Convert ListProjects200Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ListProjects200ResponseObject <- list()
      if (!is.null(self$`projects`)) {
        ListProjects200ResponseObject[["projects"]] <-
          self$extractSimpleType(self$`projects`)
      }
      if (!is.null(self$`request_id`)) {
        ListProjects200ResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(ListProjects200ResponseObject)
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
    #' Deserialize JSON string into an instance of ListProjects200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListProjects200Response
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`projects`)) {
        self$`projects` <- ApiClient$new()$deserializeObj(this_object$`projects`, "array[Project]", loadNamespace("llmpulse"))
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
    #' @return ListProjects200Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ListProjects200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of ListProjects200Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`projects` <- ApiClient$new()$deserializeObj(this_object$`projects`, "array[Project]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to ListProjects200Response and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ListProjects200Response
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# ListProjects200Response$unlock()
#
## Below is an example to define the print function
# ListProjects200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ListProjects200Response$lock()

