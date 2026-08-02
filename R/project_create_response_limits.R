#' Create a new ProjectCreateResponseLimits
#'
#' @description
#' ProjectCreateResponseLimits Class
#'
#' @docType class
#' @title ProjectCreateResponseLimits
#' @description ProjectCreateResponseLimits Class
#' @format An \code{R6Class} generator object
#' @field projects_remaining  integer [optional]
#' @field prompts_available  integer [optional]
#' @field competitors_remaining  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectCreateResponseLimits <- R6::R6Class(
  "ProjectCreateResponseLimits",
  public = list(
    `projects_remaining` = NULL,
    `prompts_available` = NULL,
    `competitors_remaining` = NULL,

    #' @description
    #' Initialize a new ProjectCreateResponseLimits class.
    #'
    #' @param projects_remaining projects_remaining
    #' @param prompts_available prompts_available
    #' @param competitors_remaining competitors_remaining
    #' @param ... Other optional arguments.
    initialize = function(`projects_remaining` = NULL, `prompts_available` = NULL, `competitors_remaining` = NULL, ...) {
      if (!is.null(`projects_remaining`)) {
        if (!(is.numeric(`projects_remaining`) && length(`projects_remaining`) == 1)) {
          stop(paste("Error! Invalid data for `projects_remaining`. Must be an integer:", `projects_remaining`))
        }
        self$`projects_remaining` <- `projects_remaining`
      }
      if (!is.null(`prompts_available`)) {
        if (!(is.numeric(`prompts_available`) && length(`prompts_available`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_available`. Must be an integer:", `prompts_available`))
        }
        self$`prompts_available` <- `prompts_available`
      }
      if (!is.null(`competitors_remaining`)) {
        if (!(is.numeric(`competitors_remaining`) && length(`competitors_remaining`) == 1)) {
          stop(paste("Error! Invalid data for `competitors_remaining`. Must be an integer:", `competitors_remaining`))
        }
        self$`competitors_remaining` <- `competitors_remaining`
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
    #' @return ProjectCreateResponseLimits as a base R list.
    #' @examples
    #' # convert array of ProjectCreateResponseLimits (x) to a data frame
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
    #' Convert ProjectCreateResponseLimits to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectCreateResponseLimitsObject <- list()
      if (!is.null(self$`projects_remaining`)) {
        ProjectCreateResponseLimitsObject[["projects_remaining"]] <-
          self$`projects_remaining`
      }
      if (!is.null(self$`prompts_available`)) {
        ProjectCreateResponseLimitsObject[["prompts_available"]] <-
          self$`prompts_available`
      }
      if (!is.null(self$`competitors_remaining`)) {
        ProjectCreateResponseLimitsObject[["competitors_remaining"]] <-
          self$`competitors_remaining`
      }
      return(ProjectCreateResponseLimitsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateResponseLimits
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateResponseLimits
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`projects_remaining`)) {
        self$`projects_remaining` <- this_object$`projects_remaining`
      }
      if (!is.null(this_object$`prompts_available`)) {
        self$`prompts_available` <- this_object$`prompts_available`
      }
      if (!is.null(this_object$`competitors_remaining`)) {
        self$`competitors_remaining` <- this_object$`competitors_remaining`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectCreateResponseLimits in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateResponseLimits
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateResponseLimits
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`projects_remaining` <- this_object$`projects_remaining`
      self$`prompts_available` <- this_object$`prompts_available`
      self$`competitors_remaining` <- this_object$`competitors_remaining`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectCreateResponseLimits and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectCreateResponseLimits
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
# ProjectCreateResponseLimits$unlock()
#
## Below is an example to define the print function
# ProjectCreateResponseLimits$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectCreateResponseLimits$lock()

