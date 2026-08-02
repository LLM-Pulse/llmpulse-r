#' Create a new ProjectDetailsAllOfStats
#'
#' @description
#' ProjectDetailsAllOfStats Class
#'
#' @docType class
#' @title ProjectDetailsAllOfStats
#' @description ProjectDetailsAllOfStats Class
#' @format An \code{R6Class} generator object
#' @field prompts_count  integer [optional]
#' @field competitors_count  integer [optional]
#' @field collections_count  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDetailsAllOfStats <- R6::R6Class(
  "ProjectDetailsAllOfStats",
  public = list(
    `prompts_count` = NULL,
    `competitors_count` = NULL,
    `collections_count` = NULL,

    #' @description
    #' Initialize a new ProjectDetailsAllOfStats class.
    #'
    #' @param prompts_count prompts_count
    #' @param competitors_count competitors_count
    #' @param collections_count collections_count
    #' @param ... Other optional arguments.
    initialize = function(`prompts_count` = NULL, `competitors_count` = NULL, `collections_count` = NULL, ...) {
      if (!is.null(`prompts_count`)) {
        if (!(is.numeric(`prompts_count`) && length(`prompts_count`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_count`. Must be an integer:", `prompts_count`))
        }
        self$`prompts_count` <- `prompts_count`
      }
      if (!is.null(`competitors_count`)) {
        if (!(is.numeric(`competitors_count`) && length(`competitors_count`) == 1)) {
          stop(paste("Error! Invalid data for `competitors_count`. Must be an integer:", `competitors_count`))
        }
        self$`competitors_count` <- `competitors_count`
      }
      if (!is.null(`collections_count`)) {
        if (!(is.numeric(`collections_count`) && length(`collections_count`) == 1)) {
          stop(paste("Error! Invalid data for `collections_count`. Must be an integer:", `collections_count`))
        }
        self$`collections_count` <- `collections_count`
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
    #' @return ProjectDetailsAllOfStats as a base R list.
    #' @examples
    #' # convert array of ProjectDetailsAllOfStats (x) to a data frame
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
    #' Convert ProjectDetailsAllOfStats to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectDetailsAllOfStatsObject <- list()
      if (!is.null(self$`prompts_count`)) {
        ProjectDetailsAllOfStatsObject[["prompts_count"]] <-
          self$`prompts_count`
      }
      if (!is.null(self$`competitors_count`)) {
        ProjectDetailsAllOfStatsObject[["competitors_count"]] <-
          self$`competitors_count`
      }
      if (!is.null(self$`collections_count`)) {
        ProjectDetailsAllOfStatsObject[["collections_count"]] <-
          self$`collections_count`
      }
      return(ProjectDetailsAllOfStatsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetailsAllOfStats
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetailsAllOfStats
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`prompts_count`)) {
        self$`prompts_count` <- this_object$`prompts_count`
      }
      if (!is.null(this_object$`competitors_count`)) {
        self$`competitors_count` <- this_object$`competitors_count`
      }
      if (!is.null(this_object$`collections_count`)) {
        self$`collections_count` <- this_object$`collections_count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectDetailsAllOfStats in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetailsAllOfStats
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetailsAllOfStats
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`prompts_count` <- this_object$`prompts_count`
      self$`competitors_count` <- this_object$`competitors_count`
      self$`collections_count` <- this_object$`collections_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectDetailsAllOfStats and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectDetailsAllOfStats
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
# ProjectDetailsAllOfStats$unlock()
#
## Below is an example to define the print function
# ProjectDetailsAllOfStats$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectDetailsAllOfStats$lock()

