#' Create a new SearchConsoleExcludedProperty
#'
#' @description
#' SearchConsoleExcludedProperty Class
#'
#' @docType class
#' @title SearchConsoleExcludedProperty
#' @description SearchConsoleExcludedProperty Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field name  character [optional]
#' @field covered_by The selected property that already counts this one character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchConsoleExcludedProperty <- R6::R6Class(
  "SearchConsoleExcludedProperty",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `covered_by` = NULL,

    #' @description
    #' Initialize a new SearchConsoleExcludedProperty class.
    #'
    #' @param id id
    #' @param name name
    #' @param covered_by The selected property that already counts this one
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `covered_by` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`covered_by`)) {
        if (!(is.character(`covered_by`) && length(`covered_by`) == 1)) {
          stop(paste("Error! Invalid data for `covered_by`. Must be a string:", `covered_by`))
        }
        self$`covered_by` <- `covered_by`
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
    #' @return SearchConsoleExcludedProperty as a base R list.
    #' @examples
    #' # convert array of SearchConsoleExcludedProperty (x) to a data frame
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
    #' Convert SearchConsoleExcludedProperty to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchConsoleExcludedPropertyObject <- list()
      if (!is.null(self$`id`)) {
        SearchConsoleExcludedPropertyObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        SearchConsoleExcludedPropertyObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`covered_by`)) {
        SearchConsoleExcludedPropertyObject[["covered_by"]] <-
          self$`covered_by`
      }
      return(SearchConsoleExcludedPropertyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleExcludedProperty
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleExcludedProperty
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`covered_by`)) {
        self$`covered_by` <- this_object$`covered_by`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SearchConsoleExcludedProperty in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleExcludedProperty
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleExcludedProperty
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`covered_by` <- this_object$`covered_by`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchConsoleExcludedProperty and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchConsoleExcludedProperty
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
# SearchConsoleExcludedProperty$unlock()
#
## Below is an example to define the print function
# SearchConsoleExcludedProperty$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchConsoleExcludedProperty$lock()

