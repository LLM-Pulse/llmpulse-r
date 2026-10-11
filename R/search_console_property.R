#' Create a new SearchConsoleProperty
#'
#' @description
#' SearchConsoleProperty Class
#'
#' @docType class
#' @title SearchConsoleProperty
#' @description SearchConsoleProperty Class
#' @format An \code{R6Class} generator object
#' @field id Property id, e.g. sc-domain:example.com character [optional]
#' @field name  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchConsoleProperty <- R6::R6Class(
  "SearchConsoleProperty",
  public = list(
    `id` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new SearchConsoleProperty class.
    #'
    #' @param id Property id, e.g. sc-domain:example.com
    #' @param name name
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, ...) {
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
    #' @return SearchConsoleProperty as a base R list.
    #' @examples
    #' # convert array of SearchConsoleProperty (x) to a data frame
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
    #' Convert SearchConsoleProperty to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchConsolePropertyObject <- list()
      if (!is.null(self$`id`)) {
        SearchConsolePropertyObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        SearchConsolePropertyObject[["name"]] <-
          self$`name`
      }
      return(SearchConsolePropertyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleProperty
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleProperty
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SearchConsoleProperty in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleProperty
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleProperty
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchConsoleProperty and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchConsoleProperty
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
# SearchConsoleProperty$unlock()
#
## Below is an example to define the print function
# SearchConsoleProperty$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchConsoleProperty$lock()

