#' Create a new CreateProjectDraftRequest
#'
#' @description
#' CreateProjectDraftRequest Class
#'
#' @docType class
#' @title CreateProjectDraftRequest
#' @description CreateProjectDraftRequest Class
#' @format An \code{R6Class} generator object
#' @field website_url Public HTTP(S) URL with a DNS hostname or public IP address. Credentials, private and special IP addresses, localhost and internal hostnames are rejected. character
#' @field main_country  character
#' @field main_language  character
#' @field use_subdomain  character [optional]
#' @field suggest  character [optional]
#' @field execute_prompts_immediately  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateProjectDraftRequest <- R6::R6Class(
  "CreateProjectDraftRequest",
  public = list(
    `website_url` = NULL,
    `main_country` = NULL,
    `main_language` = NULL,
    `use_subdomain` = NULL,
    `suggest` = NULL,
    `execute_prompts_immediately` = NULL,

    #' @description
    #' Initialize a new CreateProjectDraftRequest class.
    #'
    #' @param website_url Public HTTP(S) URL with a DNS hostname or public IP address. Credentials, private and special IP addresses, localhost and internal hostnames are rejected.
    #' @param main_country main_country
    #' @param main_language main_language
    #' @param use_subdomain use_subdomain. Default to FALSE.
    #' @param suggest suggest. Default to TRUE.
    #' @param execute_prompts_immediately execute_prompts_immediately. Default to TRUE.
    #' @param ... Other optional arguments.
    initialize = function(`website_url`, `main_country`, `main_language`, `use_subdomain` = FALSE, `suggest` = TRUE, `execute_prompts_immediately` = TRUE, ...) {
      if (!missing(`website_url`)) {
        if (!(is.character(`website_url`) && length(`website_url`) == 1)) {
          stop(paste("Error! Invalid data for `website_url`. Must be a string:", `website_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`website_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `website_url`. Must be a URL:", `website_url`))
        }
        self$`website_url` <- `website_url`
      }
      if (!missing(`main_country`)) {
        if (!(is.character(`main_country`) && length(`main_country`) == 1)) {
          stop(paste("Error! Invalid data for `main_country`. Must be a string:", `main_country`))
        }
        self$`main_country` <- `main_country`
      }
      if (!missing(`main_language`)) {
        if (!(is.character(`main_language`) && length(`main_language`) == 1)) {
          stop(paste("Error! Invalid data for `main_language`. Must be a string:", `main_language`))
        }
        self$`main_language` <- `main_language`
      }
      if (!is.null(`use_subdomain`)) {
        if (!(is.logical(`use_subdomain`) && length(`use_subdomain`) == 1)) {
          stop(paste("Error! Invalid data for `use_subdomain`. Must be a boolean:", `use_subdomain`))
        }
        self$`use_subdomain` <- `use_subdomain`
      }
      if (!is.null(`suggest`)) {
        if (!(is.logical(`suggest`) && length(`suggest`) == 1)) {
          stop(paste("Error! Invalid data for `suggest`. Must be a boolean:", `suggest`))
        }
        self$`suggest` <- `suggest`
      }
      if (!is.null(`execute_prompts_immediately`)) {
        if (!(is.logical(`execute_prompts_immediately`) && length(`execute_prompts_immediately`) == 1)) {
          stop(paste("Error! Invalid data for `execute_prompts_immediately`. Must be a boolean:", `execute_prompts_immediately`))
        }
        self$`execute_prompts_immediately` <- `execute_prompts_immediately`
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
    #' @return CreateProjectDraftRequest as a base R list.
    #' @examples
    #' # convert array of CreateProjectDraftRequest (x) to a data frame
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
    #' Convert CreateProjectDraftRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateProjectDraftRequestObject <- list()
      if (!is.null(self$`website_url`)) {
        CreateProjectDraftRequestObject[["website_url"]] <-
          self$`website_url`
      }
      if (!is.null(self$`main_country`)) {
        CreateProjectDraftRequestObject[["main_country"]] <-
          self$`main_country`
      }
      if (!is.null(self$`main_language`)) {
        CreateProjectDraftRequestObject[["main_language"]] <-
          self$`main_language`
      }
      if (!is.null(self$`use_subdomain`)) {
        CreateProjectDraftRequestObject[["use_subdomain"]] <-
          self$`use_subdomain`
      }
      if (!is.null(self$`suggest`)) {
        CreateProjectDraftRequestObject[["suggest"]] <-
          self$`suggest`
      }
      if (!is.null(self$`execute_prompts_immediately`)) {
        CreateProjectDraftRequestObject[["execute_prompts_immediately"]] <-
          self$`execute_prompts_immediately`
      }
      return(CreateProjectDraftRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateProjectDraftRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateProjectDraftRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`website_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`website_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `website_url`. Must be a URL:", this_object$`website_url`))
        }
        self$`website_url` <- this_object$`website_url`
      }
      if (!is.null(this_object$`main_country`)) {
        self$`main_country` <- this_object$`main_country`
      }
      if (!is.null(this_object$`main_language`)) {
        self$`main_language` <- this_object$`main_language`
      }
      if (!is.null(this_object$`use_subdomain`)) {
        self$`use_subdomain` <- this_object$`use_subdomain`
      }
      if (!is.null(this_object$`suggest`)) {
        self$`suggest` <- this_object$`suggest`
      }
      if (!is.null(this_object$`execute_prompts_immediately`)) {
        self$`execute_prompts_immediately` <- this_object$`execute_prompts_immediately`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateProjectDraftRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateProjectDraftRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateProjectDraftRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`website_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `website_url`. Must be a URL:", this_object$`website_url`))
      }
      self$`website_url` <- this_object$`website_url`
      self$`main_country` <- this_object$`main_country`
      self$`main_language` <- this_object$`main_language`
      self$`use_subdomain` <- this_object$`use_subdomain`
      self$`suggest` <- this_object$`suggest`
      self$`execute_prompts_immediately` <- this_object$`execute_prompts_immediately`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateProjectDraftRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `website_url`
      if (!is.null(input_json$`website_url`)) {
        if (!(is.character(input_json$`website_url`) && length(input_json$`website_url`) == 1)) {
          stop(paste("Error! Invalid data for `website_url`. Must be a string:", input_json$`website_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(input_json$`website_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `website_url`. Must be a URL:", input_json$`website_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateProjectDraftRequest: the required field `website_url` is missing."))
      }
      # check the required field `main_country`
      if (!is.null(input_json$`main_country`)) {
        if (!(is.character(input_json$`main_country`) && length(input_json$`main_country`) == 1)) {
          stop(paste("Error! Invalid data for `main_country`. Must be a string:", input_json$`main_country`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateProjectDraftRequest: the required field `main_country` is missing."))
      }
      # check the required field `main_language`
      if (!is.null(input_json$`main_language`)) {
        if (!(is.character(input_json$`main_language`) && length(input_json$`main_language`) == 1)) {
          stop(paste("Error! Invalid data for `main_language`. Must be a string:", input_json$`main_language`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateProjectDraftRequest: the required field `main_language` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateProjectDraftRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `website_url` is null
      if (is.null(self$`website_url`)) {
        return(FALSE)
      }

      # check if the required `main_country` is null
      if (is.null(self$`main_country`)) {
        return(FALSE)
      }

      # check if the required `main_language` is null
      if (is.null(self$`main_language`)) {
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
      # check if the required `website_url` is null
      if (is.null(self$`website_url`)) {
        invalid_fields["website_url"] <- "Non-nullable required field `website_url` cannot be null."
      }

      # check if the required `main_country` is null
      if (is.null(self$`main_country`)) {
        invalid_fields["main_country"] <- "Non-nullable required field `main_country` cannot be null."
      }

      # check if the required `main_language` is null
      if (is.null(self$`main_language`)) {
        invalid_fields["main_language"] <- "Non-nullable required field `main_language` cannot be null."
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
# CreateProjectDraftRequest$unlock()
#
## Below is an example to define the print function
# CreateProjectDraftRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateProjectDraftRequest$lock()

