#' Create a new ProjectDraftResponseLimits
#'
#' @description
#' ProjectDraftResponseLimits Class
#'
#' @docType class
#' @title ProjectDraftResponseLimits
#' @description ProjectDraftResponseLimits Class
#' @format An \code{R6Class} generator object
#' @field prompts_available Prompts the account can still add; null when unlimited integer
#' @field max_prompts_per_request  integer
#' @field max_competitors Competitors the plan allows per project integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDraftResponseLimits <- R6::R6Class(
  "ProjectDraftResponseLimits",
  public = list(
    `prompts_available` = NULL,
    `max_prompts_per_request` = NULL,
    `max_competitors` = NULL,

    #' @description
    #' Initialize a new ProjectDraftResponseLimits class.
    #'
    #' @param prompts_available Prompts the account can still add; null when unlimited
    #' @param max_prompts_per_request max_prompts_per_request
    #' @param max_competitors Competitors the plan allows per project
    #' @param ... Other optional arguments.
    initialize = function(`prompts_available`, `max_prompts_per_request`, `max_competitors`, ...) {
      if (!missing(`prompts_available`)) {
        if (!(is.numeric(`prompts_available`) && length(`prompts_available`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_available`. Must be an integer:", `prompts_available`))
        }
        self$`prompts_available` <- `prompts_available`
      }
      if (!missing(`max_prompts_per_request`)) {
        if (!(is.numeric(`max_prompts_per_request`) && length(`max_prompts_per_request`) == 1)) {
          stop(paste("Error! Invalid data for `max_prompts_per_request`. Must be an integer:", `max_prompts_per_request`))
        }
        self$`max_prompts_per_request` <- `max_prompts_per_request`
      }
      if (!missing(`max_competitors`)) {
        if (!(is.numeric(`max_competitors`) && length(`max_competitors`) == 1)) {
          stop(paste("Error! Invalid data for `max_competitors`. Must be an integer:", `max_competitors`))
        }
        self$`max_competitors` <- `max_competitors`
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
    #' @return ProjectDraftResponseLimits as a base R list.
    #' @examples
    #' # convert array of ProjectDraftResponseLimits (x) to a data frame
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
    #' Convert ProjectDraftResponseLimits to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectDraftResponseLimitsObject <- list()
      if (!is.null(self$`prompts_available`)) {
        ProjectDraftResponseLimitsObject[["prompts_available"]] <-
          self$`prompts_available`
      }
      if (!is.null(self$`max_prompts_per_request`)) {
        ProjectDraftResponseLimitsObject[["max_prompts_per_request"]] <-
          self$`max_prompts_per_request`
      }
      if (!is.null(self$`max_competitors`)) {
        ProjectDraftResponseLimitsObject[["max_competitors"]] <-
          self$`max_competitors`
      }
      return(ProjectDraftResponseLimitsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDraftResponseLimits
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDraftResponseLimits
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`prompts_available`)) {
        self$`prompts_available` <- this_object$`prompts_available`
      }
      if (!is.null(this_object$`max_prompts_per_request`)) {
        self$`max_prompts_per_request` <- this_object$`max_prompts_per_request`
      }
      if (!is.null(this_object$`max_competitors`)) {
        self$`max_competitors` <- this_object$`max_competitors`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectDraftResponseLimits in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDraftResponseLimits
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDraftResponseLimits
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`prompts_available` <- this_object$`prompts_available`
      self$`max_prompts_per_request` <- this_object$`max_prompts_per_request`
      self$`max_competitors` <- this_object$`max_competitors`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectDraftResponseLimits and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `prompts_available`
      if (!is.null(input_json$`prompts_available`)) {
        if (!(is.numeric(input_json$`prompts_available`) && length(input_json$`prompts_available`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_available`. Must be an integer:", input_json$`prompts_available`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftResponseLimits: the required field `prompts_available` is missing."))
      }
      # check the required field `max_prompts_per_request`
      if (!is.null(input_json$`max_prompts_per_request`)) {
        if (!(is.numeric(input_json$`max_prompts_per_request`) && length(input_json$`max_prompts_per_request`) == 1)) {
          stop(paste("Error! Invalid data for `max_prompts_per_request`. Must be an integer:", input_json$`max_prompts_per_request`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftResponseLimits: the required field `max_prompts_per_request` is missing."))
      }
      # check the required field `max_competitors`
      if (!is.null(input_json$`max_competitors`)) {
        if (!(is.numeric(input_json$`max_competitors`) && length(input_json$`max_competitors`) == 1)) {
          stop(paste("Error! Invalid data for `max_competitors`. Must be an integer:", input_json$`max_competitors`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftResponseLimits: the required field `max_competitors` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectDraftResponseLimits
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `max_prompts_per_request` is null
      if (is.null(self$`max_prompts_per_request`)) {
        return(FALSE)
      }

      # check if the required `max_competitors` is null
      if (is.null(self$`max_competitors`)) {
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
      # check if the required `max_prompts_per_request` is null
      if (is.null(self$`max_prompts_per_request`)) {
        invalid_fields["max_prompts_per_request"] <- "Non-nullable required field `max_prompts_per_request` cannot be null."
      }

      # check if the required `max_competitors` is null
      if (is.null(self$`max_competitors`)) {
        invalid_fields["max_competitors"] <- "Non-nullable required field `max_competitors` cannot be null."
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
# ProjectDraftResponseLimits$unlock()
#
## Below is an example to define the print function
# ProjectDraftResponseLimits$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectDraftResponseLimits$lock()

