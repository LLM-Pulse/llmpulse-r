#' Create a new ProjectCreateResponseCollectionsInner
#'
#' @description
#' ProjectCreateResponseCollectionsInner Class
#'
#' @docType class
#' @title ProjectCreateResponseCollectionsInner
#' @description ProjectCreateResponseCollectionsInner Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field name  character [optional]
#' @field prompts_attached  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectCreateResponseCollectionsInner <- R6::R6Class(
  "ProjectCreateResponseCollectionsInner",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `prompts_attached` = NULL,

    #' @description
    #' Initialize a new ProjectCreateResponseCollectionsInner class.
    #'
    #' @param id id
    #' @param name name
    #' @param prompts_attached prompts_attached
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `prompts_attached` = NULL, ...) {
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
      if (!is.null(`prompts_attached`)) {
        if (!(is.numeric(`prompts_attached`) && length(`prompts_attached`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_attached`. Must be an integer:", `prompts_attached`))
        }
        self$`prompts_attached` <- `prompts_attached`
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
    #' @return ProjectCreateResponseCollectionsInner as a base R list.
    #' @examples
    #' # convert array of ProjectCreateResponseCollectionsInner (x) to a data frame
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
    #' Convert ProjectCreateResponseCollectionsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectCreateResponseCollectionsInnerObject <- list()
      if (!is.null(self$`id`)) {
        ProjectCreateResponseCollectionsInnerObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        ProjectCreateResponseCollectionsInnerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`prompts_attached`)) {
        ProjectCreateResponseCollectionsInnerObject[["prompts_attached"]] <-
          self$`prompts_attached`
      }
      return(ProjectCreateResponseCollectionsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateResponseCollectionsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateResponseCollectionsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`prompts_attached`)) {
        self$`prompts_attached` <- this_object$`prompts_attached`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectCreateResponseCollectionsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateResponseCollectionsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateResponseCollectionsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`prompts_attached` <- this_object$`prompts_attached`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectCreateResponseCollectionsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectCreateResponseCollectionsInner
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
# ProjectCreateResponseCollectionsInner$unlock()
#
## Below is an example to define the print function
# ProjectCreateResponseCollectionsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectCreateResponseCollectionsInner$lock()

