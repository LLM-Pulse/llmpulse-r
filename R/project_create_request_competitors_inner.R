#' Create a new ProjectCreateRequestCompetitorsInner
#'
#' @description
#' ProjectCreateRequestCompetitorsInner Class
#'
#' @docType class
#' @title ProjectCreateRequestCompetitorsInner
#' @description ProjectCreateRequestCompetitorsInner Class
#' @format An \code{R6Class} generator object
#' @field domain  character
#' @field brand_name  character [optional]
#' @field matching_names  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectCreateRequestCompetitorsInner <- R6::R6Class(
  "ProjectCreateRequestCompetitorsInner",
  public = list(
    `domain` = NULL,
    `brand_name` = NULL,
    `matching_names` = NULL,

    #' @description
    #' Initialize a new ProjectCreateRequestCompetitorsInner class.
    #'
    #' @param domain domain
    #' @param brand_name brand_name
    #' @param matching_names matching_names
    #' @param ... Other optional arguments.
    initialize = function(`domain`, `brand_name` = NULL, `matching_names` = NULL, ...) {
      if (!missing(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!is.null(`brand_name`)) {
        if (!(is.character(`brand_name`) && length(`brand_name`) == 1)) {
          stop(paste("Error! Invalid data for `brand_name`. Must be a string:", `brand_name`))
        }
        self$`brand_name` <- `brand_name`
      }
      if (!is.null(`matching_names`)) {
        stopifnot(is.vector(`matching_names`), length(`matching_names`) != 0)
        sapply(`matching_names`, function(x) stopifnot(is.character(x)))
        self$`matching_names` <- `matching_names`
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
    #' @return ProjectCreateRequestCompetitorsInner as a base R list.
    #' @examples
    #' # convert array of ProjectCreateRequestCompetitorsInner (x) to a data frame
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
    #' Convert ProjectCreateRequestCompetitorsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectCreateRequestCompetitorsInnerObject <- list()
      if (!is.null(self$`domain`)) {
        ProjectCreateRequestCompetitorsInnerObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`brand_name`)) {
        ProjectCreateRequestCompetitorsInnerObject[["brand_name"]] <-
          self$`brand_name`
      }
      if (!is.null(self$`matching_names`)) {
        ProjectCreateRequestCompetitorsInnerObject[["matching_names"]] <-
          self$`matching_names`
      }
      return(ProjectCreateRequestCompetitorsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateRequestCompetitorsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateRequestCompetitorsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`brand_name`)) {
        self$`brand_name` <- this_object$`brand_name`
      }
      if (!is.null(this_object$`matching_names`)) {
        self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectCreateRequestCompetitorsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateRequestCompetitorsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateRequestCompetitorsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`domain` <- this_object$`domain`
      self$`brand_name` <- this_object$`brand_name`
      self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectCreateRequestCompetitorsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `domain`
      if (!is.null(input_json$`domain`)) {
        if (!(is.character(input_json$`domain`) && length(input_json$`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", input_json$`domain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectCreateRequestCompetitorsInner: the required field `domain` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectCreateRequestCompetitorsInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        invalid_fields["domain"] <- "Non-nullable required field `domain` cannot be null."
      }

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
# ProjectCreateRequestCompetitorsInner$unlock()
#
## Below is an example to define the print function
# ProjectCreateRequestCompetitorsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectCreateRequestCompetitorsInner$lock()

