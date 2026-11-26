#' Create a new ProjectDraftSuggestions
#'
#' @description
#' AI suggestions for a step. Only the key of the suggested step is sent, and only when status is ready
#'
#' @docType class
#' @title ProjectDraftSuggestions
#' @description ProjectDraftSuggestions Class
#' @format An \code{R6Class} generator object
#' @field step The step the suggestions are for (details, prompts or competitors) character [optional]
#' @field status ready, none (not requested, or nothing cached yet) or failed character
#' @field details  \link{ProjectDraftSuggestionsDetails} [optional]
#' @field prompts  list(character) [optional]
#' @field competitors  list(\link{ProjectDraftSuggestionsCompetitorsInner}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDraftSuggestions <- R6::R6Class(
  "ProjectDraftSuggestions",
  public = list(
    `step` = NULL,
    `status` = NULL,
    `details` = NULL,
    `prompts` = NULL,
    `competitors` = NULL,

    #' @description
    #' Initialize a new ProjectDraftSuggestions class.
    #'
    #' @param status ready, none (not requested, or nothing cached yet) or failed
    #' @param step The step the suggestions are for (details, prompts or competitors)
    #' @param details details
    #' @param prompts prompts
    #' @param competitors competitors
    #' @param ... Other optional arguments.
    initialize = function(`status`, `step` = NULL, `details` = NULL, `prompts` = NULL, `competitors` = NULL, ...) {
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`step`)) {
        if (!(is.character(`step`) && length(`step`) == 1)) {
          stop(paste("Error! Invalid data for `step`. Must be a string:", `step`))
        }
        self$`step` <- `step`
      }
      if (!is.null(`details`)) {
        stopifnot(R6::is.R6(`details`))
        self$`details` <- `details`
      }
      if (!is.null(`prompts`)) {
        stopifnot(is.vector(`prompts`), length(`prompts`) != 0)
        sapply(`prompts`, function(x) stopifnot(is.character(x)))
        self$`prompts` <- `prompts`
      }
      if (!is.null(`competitors`)) {
        stopifnot(is.vector(`competitors`), length(`competitors`) != 0)
        sapply(`competitors`, function(x) stopifnot(R6::is.R6(x)))
        self$`competitors` <- `competitors`
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
    #' @return ProjectDraftSuggestions as a base R list.
    #' @examples
    #' # convert array of ProjectDraftSuggestions (x) to a data frame
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
    #' Convert ProjectDraftSuggestions to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectDraftSuggestionsObject <- list()
      if (!is.null(self$`step`)) {
        ProjectDraftSuggestionsObject[["step"]] <-
          self$`step`
      }
      if (!is.null(self$`status`)) {
        ProjectDraftSuggestionsObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`details`)) {
        ProjectDraftSuggestionsObject[["details"]] <-
          self$extractSimpleType(self$`details`)
      }
      if (!is.null(self$`prompts`)) {
        ProjectDraftSuggestionsObject[["prompts"]] <-
          self$`prompts`
      }
      if (!is.null(self$`competitors`)) {
        ProjectDraftSuggestionsObject[["competitors"]] <-
          self$extractSimpleType(self$`competitors`)
      }
      return(ProjectDraftSuggestionsObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDraftSuggestions
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDraftSuggestions
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`step`)) {
        self$`step` <- this_object$`step`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`details`)) {
        `details_object` <- ProjectDraftSuggestionsDetails$new()
        `details_object`$fromJSON(jsonlite::toJSON(this_object$`details`, auto_unbox = TRUE, digits = NA))
        self$`details` <- `details_object`
      }
      if (!is.null(this_object$`prompts`)) {
        self$`prompts` <- ApiClient$new()$deserializeObj(this_object$`prompts`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`competitors`)) {
        self$`competitors` <- ApiClient$new()$deserializeObj(this_object$`competitors`, "array[ProjectDraftSuggestionsCompetitorsInner]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectDraftSuggestions in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDraftSuggestions
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDraftSuggestions
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`step` <- this_object$`step`
      self$`status` <- this_object$`status`
      self$`details` <- ProjectDraftSuggestionsDetails$new()$fromJSON(jsonlite::toJSON(this_object$`details`, auto_unbox = TRUE, digits = NA))
      self$`prompts` <- ApiClient$new()$deserializeObj(this_object$`prompts`, "array[character]", loadNamespace("llmpulse"))
      self$`competitors` <- ApiClient$new()$deserializeObj(this_object$`competitors`, "array[ProjectDraftSuggestionsCompetitorsInner]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectDraftSuggestions and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftSuggestions: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectDraftSuggestions
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `status` is null
      if (is.null(self$`status`)) {
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
      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# ProjectDraftSuggestions$unlock()
#
## Below is an example to define the print function
# ProjectDraftSuggestions$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectDraftSuggestions$lock()

