#' Create a new ProjectDraftResponse
#'
#' @description
#' ProjectDraftResponse Class
#'
#' @docType class
#' @title ProjectDraftResponse
#' @description ProjectDraftResponse Class
#' @format An \code{R6Class} generator object
#' @field draft  \link{ProjectDraftRecord}
#' @field suggestions  \link{ProjectDraftSuggestions}
#' @field limits  \link{ProjectDraftResponseLimits}
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDraftResponse <- R6::R6Class(
  "ProjectDraftResponse",
  public = list(
    `draft` = NULL,
    `suggestions` = NULL,
    `limits` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new ProjectDraftResponse class.
    #'
    #' @param draft draft
    #' @param suggestions suggestions
    #' @param limits limits
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`draft`, `suggestions`, `limits`, `request_id`, ...) {
      if (!missing(`draft`)) {
        stopifnot(R6::is.R6(`draft`))
        self$`draft` <- `draft`
      }
      if (!missing(`suggestions`)) {
        stopifnot(R6::is.R6(`suggestions`))
        self$`suggestions` <- `suggestions`
      }
      if (!missing(`limits`)) {
        stopifnot(R6::is.R6(`limits`))
        self$`limits` <- `limits`
      }
      if (!missing(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
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
    #' @return ProjectDraftResponse as a base R list.
    #' @examples
    #' # convert array of ProjectDraftResponse (x) to a data frame
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
    #' Convert ProjectDraftResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectDraftResponseObject <- list()
      if (!is.null(self$`draft`)) {
        ProjectDraftResponseObject[["draft"]] <-
          self$extractSimpleType(self$`draft`)
      }
      if (!is.null(self$`suggestions`)) {
        ProjectDraftResponseObject[["suggestions"]] <-
          self$extractSimpleType(self$`suggestions`)
      }
      if (!is.null(self$`limits`)) {
        ProjectDraftResponseObject[["limits"]] <-
          self$extractSimpleType(self$`limits`)
      }
      if (!is.null(self$`request_id`)) {
        ProjectDraftResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(ProjectDraftResponseObject)
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
    #' Deserialize JSON string into an instance of ProjectDraftResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDraftResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`draft`)) {
        `draft_object` <- ProjectDraftRecord$new()
        `draft_object`$fromJSON(jsonlite::toJSON(this_object$`draft`, auto_unbox = TRUE, digits = NA))
        self$`draft` <- `draft_object`
      }
      if (!is.null(this_object$`suggestions`)) {
        `suggestions_object` <- ProjectDraftSuggestions$new()
        `suggestions_object`$fromJSON(jsonlite::toJSON(this_object$`suggestions`, auto_unbox = TRUE, digits = NA))
        self$`suggestions` <- `suggestions_object`
      }
      if (!is.null(this_object$`limits`)) {
        `limits_object` <- ProjectDraftResponseLimits$new()
        `limits_object`$fromJSON(jsonlite::toJSON(this_object$`limits`, auto_unbox = TRUE, digits = NA))
        self$`limits` <- `limits_object`
      }
      if (!is.null(this_object$`request_id`)) {
        self$`request_id` <- this_object$`request_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectDraftResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDraftResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDraftResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`draft` <- ProjectDraftRecord$new()$fromJSON(jsonlite::toJSON(this_object$`draft`, auto_unbox = TRUE, digits = NA))
      self$`suggestions` <- ProjectDraftSuggestions$new()$fromJSON(jsonlite::toJSON(this_object$`suggestions`, auto_unbox = TRUE, digits = NA))
      self$`limits` <- ProjectDraftResponseLimits$new()$fromJSON(jsonlite::toJSON(this_object$`limits`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectDraftResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `draft`
      if (!is.null(input_json$`draft`)) {
        stopifnot(R6::is.R6(input_json$`draft`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftResponse: the required field `draft` is missing."))
      }
      # check the required field `suggestions`
      if (!is.null(input_json$`suggestions`)) {
        stopifnot(R6::is.R6(input_json$`suggestions`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftResponse: the required field `suggestions` is missing."))
      }
      # check the required field `limits`
      if (!is.null(input_json$`limits`)) {
        stopifnot(R6::is.R6(input_json$`limits`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftResponse: the required field `limits` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectDraftResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `draft` is null
      if (is.null(self$`draft`)) {
        return(FALSE)
      }

      # check if the required `suggestions` is null
      if (is.null(self$`suggestions`)) {
        return(FALSE)
      }

      # check if the required `limits` is null
      if (is.null(self$`limits`)) {
        return(FALSE)
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
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
      # check if the required `draft` is null
      if (is.null(self$`draft`)) {
        invalid_fields["draft"] <- "Non-nullable required field `draft` cannot be null."
      }

      # check if the required `suggestions` is null
      if (is.null(self$`suggestions`)) {
        invalid_fields["suggestions"] <- "Non-nullable required field `suggestions` cannot be null."
      }

      # check if the required `limits` is null
      if (is.null(self$`limits`)) {
        invalid_fields["limits"] <- "Non-nullable required field `limits` cannot be null."
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
        invalid_fields["request_id"] <- "Non-nullable required field `request_id` cannot be null."
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
# ProjectDraftResponse$unlock()
#
## Below is an example to define the print function
# ProjectDraftResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectDraftResponse$lock()

