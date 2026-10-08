#' Create a new ProjectDetailsAllOfDataCoverage
#'
#' @description
#' AI models, countries and languages the project has data for
#'
#' @docType class
#' @title ProjectDetailsAllOfDataCoverage
#' @description ProjectDetailsAllOfDataCoverage Class
#' @format An \code{R6Class} generator object
#' @field models  list(character) [optional]
#' @field countries  list(character) [optional]
#' @field languages  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDetailsAllOfDataCoverage <- R6::R6Class(
  "ProjectDetailsAllOfDataCoverage",
  public = list(
    `models` = NULL,
    `countries` = NULL,
    `languages` = NULL,

    #' @description
    #' Initialize a new ProjectDetailsAllOfDataCoverage class.
    #'
    #' @param models models
    #' @param countries countries
    #' @param languages languages
    #' @param ... Other optional arguments.
    initialize = function(`models` = NULL, `countries` = NULL, `languages` = NULL, ...) {
      if (!is.null(`models`)) {
        stopifnot(is.vector(`models`), length(`models`) != 0)
        sapply(`models`, function(x) stopifnot(is.character(x)))
        self$`models` <- `models`
      }
      if (!is.null(`countries`)) {
        stopifnot(is.vector(`countries`), length(`countries`) != 0)
        sapply(`countries`, function(x) stopifnot(is.character(x)))
        self$`countries` <- `countries`
      }
      if (!is.null(`languages`)) {
        stopifnot(is.vector(`languages`), length(`languages`) != 0)
        sapply(`languages`, function(x) stopifnot(is.character(x)))
        self$`languages` <- `languages`
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
    #' @return ProjectDetailsAllOfDataCoverage as a base R list.
    #' @examples
    #' # convert array of ProjectDetailsAllOfDataCoverage (x) to a data frame
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
    #' Convert ProjectDetailsAllOfDataCoverage to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectDetailsAllOfDataCoverageObject <- list()
      if (!is.null(self$`models`)) {
        ProjectDetailsAllOfDataCoverageObject[["models"]] <-
          self$`models`
      }
      if (!is.null(self$`countries`)) {
        ProjectDetailsAllOfDataCoverageObject[["countries"]] <-
          self$`countries`
      }
      if (!is.null(self$`languages`)) {
        ProjectDetailsAllOfDataCoverageObject[["languages"]] <-
          self$`languages`
      }
      return(ProjectDetailsAllOfDataCoverageObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetailsAllOfDataCoverage
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetailsAllOfDataCoverage
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`models`)) {
        self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`countries`)) {
        self$`countries` <- ApiClient$new()$deserializeObj(this_object$`countries`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`languages`)) {
        self$`languages` <- ApiClient$new()$deserializeObj(this_object$`languages`, "array[character]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectDetailsAllOfDataCoverage in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetailsAllOfDataCoverage
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetailsAllOfDataCoverage
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[character]", loadNamespace("llmpulse"))
      self$`countries` <- ApiClient$new()$deserializeObj(this_object$`countries`, "array[character]", loadNamespace("llmpulse"))
      self$`languages` <- ApiClient$new()$deserializeObj(this_object$`languages`, "array[character]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectDetailsAllOfDataCoverage and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectDetailsAllOfDataCoverage
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
# ProjectDetailsAllOfDataCoverage$unlock()
#
## Below is an example to define the print function
# ProjectDetailsAllOfDataCoverage$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectDetailsAllOfDataCoverage$lock()

