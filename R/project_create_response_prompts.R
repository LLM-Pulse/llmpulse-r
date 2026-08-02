#' Create a new ProjectCreateResponsePrompts
#'
#' @description
#' ProjectCreateResponsePrompts Class
#'
#' @docType class
#' @title ProjectCreateResponsePrompts
#' @description ProjectCreateResponsePrompts Class
#' @format An \code{R6Class} generator object
#' @field created  integer [optional]
#' @field skipped  integer [optional]
#' @field execution  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectCreateResponsePrompts <- R6::R6Class(
  "ProjectCreateResponsePrompts",
  public = list(
    `created` = NULL,
    `skipped` = NULL,
    `execution` = NULL,

    #' @description
    #' Initialize a new ProjectCreateResponsePrompts class.
    #'
    #' @param created created
    #' @param skipped skipped
    #' @param execution execution
    #' @param ... Other optional arguments.
    initialize = function(`created` = NULL, `skipped` = NULL, `execution` = NULL, ...) {
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`skipped`)) {
        if (!(is.numeric(`skipped`) && length(`skipped`) == 1)) {
          stop(paste("Error! Invalid data for `skipped`. Must be an integer:", `skipped`))
        }
        self$`skipped` <- `skipped`
      }
      if (!is.null(`execution`)) {
        if (!(`execution` %in% c("immediate", "deferred_to_next_scheduled_run"))) {
          stop(paste("Error! \"", `execution`, "\" cannot be assigned to `execution`. Must be \"immediate\", \"deferred_to_next_scheduled_run\".", sep = ""))
        }
        if (!(is.character(`execution`) && length(`execution`) == 1)) {
          stop(paste("Error! Invalid data for `execution`. Must be a string:", `execution`))
        }
        self$`execution` <- `execution`
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
    #' @return ProjectCreateResponsePrompts as a base R list.
    #' @examples
    #' # convert array of ProjectCreateResponsePrompts (x) to a data frame
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
    #' Convert ProjectCreateResponsePrompts to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectCreateResponsePromptsObject <- list()
      if (!is.null(self$`created`)) {
        ProjectCreateResponsePromptsObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`skipped`)) {
        ProjectCreateResponsePromptsObject[["skipped"]] <-
          self$`skipped`
      }
      if (!is.null(self$`execution`)) {
        ProjectCreateResponsePromptsObject[["execution"]] <-
          self$`execution`
      }
      return(ProjectCreateResponsePromptsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateResponsePrompts
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateResponsePrompts
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`skipped`)) {
        self$`skipped` <- this_object$`skipped`
      }
      if (!is.null(this_object$`execution`)) {
        if (!is.null(this_object$`execution`) && !(this_object$`execution` %in% c("immediate", "deferred_to_next_scheduled_run"))) {
          stop(paste("Error! \"", this_object$`execution`, "\" cannot be assigned to `execution`. Must be \"immediate\", \"deferred_to_next_scheduled_run\".", sep = ""))
        }
        self$`execution` <- this_object$`execution`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectCreateResponsePrompts in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateResponsePrompts
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateResponsePrompts
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created` <- this_object$`created`
      self$`skipped` <- this_object$`skipped`
      if (!is.null(this_object$`execution`) && !(this_object$`execution` %in% c("immediate", "deferred_to_next_scheduled_run"))) {
        stop(paste("Error! \"", this_object$`execution`, "\" cannot be assigned to `execution`. Must be \"immediate\", \"deferred_to_next_scheduled_run\".", sep = ""))
      }
      self$`execution` <- this_object$`execution`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectCreateResponsePrompts and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectCreateResponsePrompts
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
# ProjectCreateResponsePrompts$unlock()
#
## Below is an example to define the print function
# ProjectCreateResponsePrompts$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectCreateResponsePrompts$lock()

