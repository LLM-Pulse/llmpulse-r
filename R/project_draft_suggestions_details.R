#' Create a new ProjectDraftSuggestionsDetails
#'
#' @description
#' ProjectDraftSuggestionsDetails Class
#'
#' @docType class
#' @title ProjectDraftSuggestionsDetails
#' @description ProjectDraftSuggestionsDetails Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field description  character
#' @field industry  list(character)
#' @field matching_names  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDraftSuggestionsDetails <- R6::R6Class(
  "ProjectDraftSuggestionsDetails",
  public = list(
    `name` = NULL,
    `description` = NULL,
    `industry` = NULL,
    `matching_names` = NULL,

    #' @description
    #' Initialize a new ProjectDraftSuggestionsDetails class.
    #'
    #' @param name name
    #' @param description description
    #' @param industry industry
    #' @param matching_names matching_names
    #' @param ... Other optional arguments.
    initialize = function(`name`, `description`, `industry`, `matching_names`, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`industry`)) {
        stopifnot(is.vector(`industry`), length(`industry`) != 0)
        sapply(`industry`, function(x) stopifnot(is.character(x)))
        self$`industry` <- `industry`
      }
      if (!missing(`matching_names`)) {
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
    #' @return ProjectDraftSuggestionsDetails as a base R list.
    #' @examples
    #' # convert array of ProjectDraftSuggestionsDetails (x) to a data frame
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
    #' Convert ProjectDraftSuggestionsDetails to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectDraftSuggestionsDetailsObject <- list()
      if (!is.null(self$`name`)) {
        ProjectDraftSuggestionsDetailsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        ProjectDraftSuggestionsDetailsObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`industry`)) {
        ProjectDraftSuggestionsDetailsObject[["industry"]] <-
          self$`industry`
      }
      if (!is.null(self$`matching_names`)) {
        ProjectDraftSuggestionsDetailsObject[["matching_names"]] <-
          self$`matching_names`
      }
      return(ProjectDraftSuggestionsDetailsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDraftSuggestionsDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDraftSuggestionsDetails
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`industry`)) {
        self$`industry` <- ApiClient$new()$deserializeObj(this_object$`industry`, "array[character]", loadNamespace("llmpulse"))
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
    #' @return ProjectDraftSuggestionsDetails in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDraftSuggestionsDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDraftSuggestionsDetails
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`industry` <- ApiClient$new()$deserializeObj(this_object$`industry`, "array[character]", loadNamespace("llmpulse"))
      self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectDraftSuggestionsDetails and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftSuggestionsDetails: the required field `name` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftSuggestionsDetails: the required field `description` is missing."))
      }
      # check the required field `industry`
      if (!is.null(input_json$`industry`)) {
        stopifnot(is.vector(input_json$`industry`), length(input_json$`industry`) != 0)
        tmp <- sapply(input_json$`industry`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftSuggestionsDetails: the required field `industry` is missing."))
      }
      # check the required field `matching_names`
      if (!is.null(input_json$`matching_names`)) {
        stopifnot(is.vector(input_json$`matching_names`), length(input_json$`matching_names`) != 0)
        tmp <- sapply(input_json$`matching_names`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftSuggestionsDetails: the required field `matching_names` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectDraftSuggestionsDetails
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `industry` is null
      if (is.null(self$`industry`)) {
        return(FALSE)
      }

      # check if the required `matching_names` is null
      if (is.null(self$`matching_names`)) {
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
      # check if the required `industry` is null
      if (is.null(self$`industry`)) {
        invalid_fields["industry"] <- "Non-nullable required field `industry` cannot be null."
      }

      # check if the required `matching_names` is null
      if (is.null(self$`matching_names`)) {
        invalid_fields["matching_names"] <- "Non-nullable required field `matching_names` cannot be null."
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
# ProjectDraftSuggestionsDetails$unlock()
#
## Below is an example to define the print function
# ProjectDraftSuggestionsDetails$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectDraftSuggestionsDetails$lock()

