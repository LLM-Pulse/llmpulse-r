#' Create a new CatalogPromptSuggestionsRejectResponse
#'
#' @description
#' CatalogPromptSuggestionsRejectResponse Class
#'
#' @docType class
#' @title CatalogPromptSuggestionsRejectResponse
#' @description CatalogPromptSuggestionsRejectResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field rejected  integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CatalogPromptSuggestionsRejectResponse <- R6::R6Class(
  "CatalogPromptSuggestionsRejectResponse",
  public = list(
    `project_id` = NULL,
    `rejected` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new CatalogPromptSuggestionsRejectResponse class.
    #'
    #' @param project_id project_id
    #' @param rejected rejected
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `rejected`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`rejected`)) {
        if (!(is.numeric(`rejected`) && length(`rejected`) == 1)) {
          stop(paste("Error! Invalid data for `rejected`. Must be an integer:", `rejected`))
        }
        self$`rejected` <- `rejected`
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
    #' @return CatalogPromptSuggestionsRejectResponse as a base R list.
    #' @examples
    #' # convert array of CatalogPromptSuggestionsRejectResponse (x) to a data frame
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
    #' Convert CatalogPromptSuggestionsRejectResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CatalogPromptSuggestionsRejectResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        CatalogPromptSuggestionsRejectResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`rejected`)) {
        CatalogPromptSuggestionsRejectResponseObject[["rejected"]] <-
          self$`rejected`
      }
      if (!is.null(self$`request_id`)) {
        CatalogPromptSuggestionsRejectResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(CatalogPromptSuggestionsRejectResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CatalogPromptSuggestionsRejectResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestionsRejectResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`rejected`)) {
        self$`rejected` <- this_object$`rejected`
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
    #' @return CatalogPromptSuggestionsRejectResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CatalogPromptSuggestionsRejectResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestionsRejectResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`rejected` <- this_object$`rejected`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CatalogPromptSuggestionsRejectResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `project_id`
      if (!is.null(input_json$`project_id`)) {
        if (!(is.numeric(input_json$`project_id`) && length(input_json$`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", input_json$`project_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsRejectResponse: the required field `project_id` is missing."))
      }
      # check the required field `rejected`
      if (!is.null(input_json$`rejected`)) {
        if (!(is.numeric(input_json$`rejected`) && length(input_json$`rejected`) == 1)) {
          stop(paste("Error! Invalid data for `rejected`. Must be an integer:", input_json$`rejected`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsRejectResponse: the required field `rejected` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsRejectResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CatalogPromptSuggestionsRejectResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        return(FALSE)
      }

      # check if the required `rejected` is null
      if (is.null(self$`rejected`)) {
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
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        invalid_fields["project_id"] <- "Non-nullable required field `project_id` cannot be null."
      }

      # check if the required `rejected` is null
      if (is.null(self$`rejected`)) {
        invalid_fields["rejected"] <- "Non-nullable required field `rejected` cannot be null."
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
# CatalogPromptSuggestionsRejectResponse$unlock()
#
## Below is an example to define the print function
# CatalogPromptSuggestionsRejectResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CatalogPromptSuggestionsRejectResponse$lock()

