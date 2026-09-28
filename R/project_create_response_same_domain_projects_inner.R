#' Create a new ProjectCreateResponseSameDomainProjectsInner
#'
#' @description
#' ProjectCreateResponseSameDomainProjectsInner Class
#'
#' @docType class
#' @title ProjectCreateResponseSameDomainProjectsInner
#' @description ProjectCreateResponseSameDomainProjectsInner Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field name  character [optional]
#' @field country_code  character [optional]
#' @field language_code  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectCreateResponseSameDomainProjectsInner <- R6::R6Class(
  "ProjectCreateResponseSameDomainProjectsInner",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,

    #' @description
    #' Initialize a new ProjectCreateResponseSameDomainProjectsInner class.
    #'
    #' @param id id
    #' @param name name
    #' @param country_code country_code
    #' @param language_code language_code
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `country_code` = NULL, `language_code` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`country_code`)) {
        if (!(is.character(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", `country_code`))
        }
        self$`country_code` <- `country_code`
      }
      if (!is.null(`language_code`)) {
        if (!(is.character(`language_code`) && length(`language_code`) == 1)) {
          stop(paste("Error! Invalid data for `language_code`. Must be a string:", `language_code`))
        }
        self$`language_code` <- `language_code`
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
    #' @return ProjectCreateResponseSameDomainProjectsInner as a base R list.
    #' @examples
    #' # convert array of ProjectCreateResponseSameDomainProjectsInner (x) to a data frame
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
    #' Convert ProjectCreateResponseSameDomainProjectsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectCreateResponseSameDomainProjectsInnerObject <- list()
      if (!is.null(self$`id`)) {
        ProjectCreateResponseSameDomainProjectsInnerObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        ProjectCreateResponseSameDomainProjectsInnerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`country_code`)) {
        ProjectCreateResponseSameDomainProjectsInnerObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        ProjectCreateResponseSameDomainProjectsInnerObject[["language_code"]] <-
          self$`language_code`
      }
      return(ProjectCreateResponseSameDomainProjectsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateResponseSameDomainProjectsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateResponseSameDomainProjectsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectCreateResponseSameDomainProjectsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateResponseSameDomainProjectsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateResponseSameDomainProjectsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectCreateResponseSameDomainProjectsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectCreateResponseSameDomainProjectsInner
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
# ProjectCreateResponseSameDomainProjectsInner$unlock()
#
## Below is an example to define the print function
# ProjectCreateResponseSameDomainProjectsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectCreateResponseSameDomainProjectsInner$lock()

