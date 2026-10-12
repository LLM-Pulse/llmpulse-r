#' Create a new ProjectUpdateResponse
#'
#' @description
#' ProjectUpdateResponse Class
#'
#' @docType class
#' @title ProjectUpdateResponse
#' @description ProjectUpdateResponse Class
#' @format An \code{R6Class} generator object
#' @field project  \link{ProjectProfile}
#' @field updated_fields The fields the request sent list(character)
#' @field rematching True when a matching_names or additional_owned_domains change started a background recalculation of past answers; further edits are rejected until it finishes character
#' @field note What the change does to mention detection, citation ownership and historical numbers character
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectUpdateResponse <- R6::R6Class(
  "ProjectUpdateResponse",
  public = list(
    `project` = NULL,
    `updated_fields` = NULL,
    `rematching` = NULL,
    `note` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new ProjectUpdateResponse class.
    #'
    #' @param project project
    #' @param updated_fields The fields the request sent
    #' @param rematching True when a matching_names or additional_owned_domains change started a background recalculation of past answers; further edits are rejected until it finishes
    #' @param note What the change does to mention detection, citation ownership and historical numbers
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project`, `updated_fields`, `rematching`, `note`, `request_id`, ...) {
      if (!missing(`project`)) {
        stopifnot(R6::is.R6(`project`))
        self$`project` <- `project`
      }
      if (!missing(`updated_fields`)) {
        stopifnot(is.vector(`updated_fields`), length(`updated_fields`) != 0)
        sapply(`updated_fields`, function(x) stopifnot(is.character(x)))
        self$`updated_fields` <- `updated_fields`
      }
      if (!missing(`rematching`)) {
        if (!(is.logical(`rematching`) && length(`rematching`) == 1)) {
          stop(paste("Error! Invalid data for `rematching`. Must be a boolean:", `rematching`))
        }
        self$`rematching` <- `rematching`
      }
      if (!missing(`note`)) {
        if (!(is.character(`note`) && length(`note`) == 1)) {
          stop(paste("Error! Invalid data for `note`. Must be a string:", `note`))
        }
        self$`note` <- `note`
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
    #' @return ProjectUpdateResponse as a base R list.
    #' @examples
    #' # convert array of ProjectUpdateResponse (x) to a data frame
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
    #' Convert ProjectUpdateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectUpdateResponseObject <- list()
      if (!is.null(self$`project`)) {
        ProjectUpdateResponseObject[["project"]] <-
          self$extractSimpleType(self$`project`)
      }
      if (!is.null(self$`updated_fields`)) {
        ProjectUpdateResponseObject[["updated_fields"]] <-
          self$`updated_fields`
      }
      if (!is.null(self$`rematching`)) {
        ProjectUpdateResponseObject[["rematching"]] <-
          self$`rematching`
      }
      if (!is.null(self$`note`)) {
        ProjectUpdateResponseObject[["note"]] <-
          self$`note`
      }
      if (!is.null(self$`request_id`)) {
        ProjectUpdateResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(ProjectUpdateResponseObject)
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
    #' Deserialize JSON string into an instance of ProjectUpdateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectUpdateResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project`)) {
        `project_object` <- ProjectProfile$new()
        `project_object`$fromJSON(jsonlite::toJSON(this_object$`project`, auto_unbox = TRUE, digits = NA))
        self$`project` <- `project_object`
      }
      if (!is.null(this_object$`updated_fields`)) {
        self$`updated_fields` <- ApiClient$new()$deserializeObj(this_object$`updated_fields`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`rematching`)) {
        self$`rematching` <- this_object$`rematching`
      }
      if (!is.null(this_object$`note`)) {
        self$`note` <- this_object$`note`
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
    #' @return ProjectUpdateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectUpdateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectUpdateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project` <- ProjectProfile$new()$fromJSON(jsonlite::toJSON(this_object$`project`, auto_unbox = TRUE, digits = NA))
      self$`updated_fields` <- ApiClient$new()$deserializeObj(this_object$`updated_fields`, "array[character]", loadNamespace("llmpulse"))
      self$`rematching` <- this_object$`rematching`
      self$`note` <- this_object$`note`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectUpdateResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `project`
      if (!is.null(input_json$`project`)) {
        stopifnot(R6::is.R6(input_json$`project`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectUpdateResponse: the required field `project` is missing."))
      }
      # check the required field `updated_fields`
      if (!is.null(input_json$`updated_fields`)) {
        stopifnot(is.vector(input_json$`updated_fields`), length(input_json$`updated_fields`) != 0)
        tmp <- sapply(input_json$`updated_fields`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectUpdateResponse: the required field `updated_fields` is missing."))
      }
      # check the required field `rematching`
      if (!is.null(input_json$`rematching`)) {
        if (!(is.logical(input_json$`rematching`) && length(input_json$`rematching`) == 1)) {
          stop(paste("Error! Invalid data for `rematching`. Must be a boolean:", input_json$`rematching`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectUpdateResponse: the required field `rematching` is missing."))
      }
      # check the required field `note`
      if (!is.null(input_json$`note`)) {
        if (!(is.character(input_json$`note`) && length(input_json$`note`) == 1)) {
          stop(paste("Error! Invalid data for `note`. Must be a string:", input_json$`note`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectUpdateResponse: the required field `note` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectUpdateResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectUpdateResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `project` is null
      if (is.null(self$`project`)) {
        return(FALSE)
      }

      # check if the required `updated_fields` is null
      if (is.null(self$`updated_fields`)) {
        return(FALSE)
      }

      # check if the required `rematching` is null
      if (is.null(self$`rematching`)) {
        return(FALSE)
      }

      # check if the required `note` is null
      if (is.null(self$`note`)) {
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
      # check if the required `project` is null
      if (is.null(self$`project`)) {
        invalid_fields["project"] <- "Non-nullable required field `project` cannot be null."
      }

      # check if the required `updated_fields` is null
      if (is.null(self$`updated_fields`)) {
        invalid_fields["updated_fields"] <- "Non-nullable required field `updated_fields` cannot be null."
      }

      # check if the required `rematching` is null
      if (is.null(self$`rematching`)) {
        invalid_fields["rematching"] <- "Non-nullable required field `rematching` cannot be null."
      }

      # check if the required `note` is null
      if (is.null(self$`note`)) {
        invalid_fields["note"] <- "Non-nullable required field `note` cannot be null."
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
# ProjectUpdateResponse$unlock()
#
## Below is an example to define the print function
# ProjectUpdateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectUpdateResponse$lock()

