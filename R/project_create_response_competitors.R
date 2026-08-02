#' Create a new ProjectCreateResponseCompetitors
#'
#' @description
#' ProjectCreateResponseCompetitors Class
#'
#' @docType class
#' @title ProjectCreateResponseCompetitors
#' @description ProjectCreateResponseCompetitors Class
#' @format An \code{R6Class} generator object
#' @field created  integer [optional]
#' @field processing Always false; competitors are ready when the project transaction commits. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectCreateResponseCompetitors <- R6::R6Class(
  "ProjectCreateResponseCompetitors",
  public = list(
    `created` = NULL,
    `processing` = NULL,

    #' @description
    #' Initialize a new ProjectCreateResponseCompetitors class.
    #'
    #' @param created created
    #' @param processing Always false; competitors are ready when the project transaction commits.
    #' @param ... Other optional arguments.
    initialize = function(`created` = NULL, `processing` = NULL, ...) {
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`processing`)) {
        if (!(is.logical(`processing`) && length(`processing`) == 1)) {
          stop(paste("Error! Invalid data for `processing`. Must be a boolean:", `processing`))
        }
        self$`processing` <- `processing`
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
    #' @return ProjectCreateResponseCompetitors as a base R list.
    #' @examples
    #' # convert array of ProjectCreateResponseCompetitors (x) to a data frame
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
    #' Convert ProjectCreateResponseCompetitors to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectCreateResponseCompetitorsObject <- list()
      if (!is.null(self$`created`)) {
        ProjectCreateResponseCompetitorsObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`processing`)) {
        ProjectCreateResponseCompetitorsObject[["processing"]] <-
          self$`processing`
      }
      return(ProjectCreateResponseCompetitorsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateResponseCompetitors
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateResponseCompetitors
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`processing`)) {
        self$`processing` <- this_object$`processing`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectCreateResponseCompetitors in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateResponseCompetitors
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateResponseCompetitors
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created` <- this_object$`created`
      self$`processing` <- this_object$`processing`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectCreateResponseCompetitors and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectCreateResponseCompetitors
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
# ProjectCreateResponseCompetitors$unlock()
#
## Below is an example to define the print function
# ProjectCreateResponseCompetitors$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectCreateResponseCompetitors$lock()

