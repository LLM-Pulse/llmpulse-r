#' Create a new AiOrdersUpdateResponse
#'
#' @description
#' AiOrdersUpdateResponse Class
#'
#' @docType class
#' @title AiOrdersUpdateResponse
#' @description AiOrdersUpdateResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field platform  character
#' @field stored Rows stored, one per day and AI assistant integer
#' @field ignored Entries whose referrer is not an AI assistant integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiOrdersUpdateResponse <- R6::R6Class(
  "AiOrdersUpdateResponse",
  public = list(
    `project_id` = NULL,
    `platform` = NULL,
    `stored` = NULL,
    `ignored` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new AiOrdersUpdateResponse class.
    #'
    #' @param project_id project_id
    #' @param platform platform
    #' @param stored Rows stored, one per day and AI assistant
    #' @param ignored Entries whose referrer is not an AI assistant
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `platform`, `stored`, `ignored`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`platform`)) {
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!missing(`stored`)) {
        if (!(is.numeric(`stored`) && length(`stored`) == 1)) {
          stop(paste("Error! Invalid data for `stored`. Must be an integer:", `stored`))
        }
        self$`stored` <- `stored`
      }
      if (!missing(`ignored`)) {
        if (!(is.numeric(`ignored`) && length(`ignored`) == 1)) {
          stop(paste("Error! Invalid data for `ignored`. Must be an integer:", `ignored`))
        }
        self$`ignored` <- `ignored`
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
    #' @return AiOrdersUpdateResponse as a base R list.
    #' @examples
    #' # convert array of AiOrdersUpdateResponse (x) to a data frame
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
    #' Convert AiOrdersUpdateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiOrdersUpdateResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        AiOrdersUpdateResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`platform`)) {
        AiOrdersUpdateResponseObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`stored`)) {
        AiOrdersUpdateResponseObject[["stored"]] <-
          self$`stored`
      }
      if (!is.null(self$`ignored`)) {
        AiOrdersUpdateResponseObject[["ignored"]] <-
          self$`ignored`
      }
      if (!is.null(self$`request_id`)) {
        AiOrdersUpdateResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(AiOrdersUpdateResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiOrdersUpdateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiOrdersUpdateResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`platform`)) {
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`stored`)) {
        self$`stored` <- this_object$`stored`
      }
      if (!is.null(this_object$`ignored`)) {
        self$`ignored` <- this_object$`ignored`
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
    #' @return AiOrdersUpdateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiOrdersUpdateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiOrdersUpdateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`platform` <- this_object$`platform`
      self$`stored` <- this_object$`stored`
      self$`ignored` <- this_object$`ignored`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiOrdersUpdateResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateResponse: the required field `project_id` is missing."))
      }
      # check the required field `platform`
      if (!is.null(input_json$`platform`)) {
        if (!(is.character(input_json$`platform`) && length(input_json$`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", input_json$`platform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateResponse: the required field `platform` is missing."))
      }
      # check the required field `stored`
      if (!is.null(input_json$`stored`)) {
        if (!(is.numeric(input_json$`stored`) && length(input_json$`stored`) == 1)) {
          stop(paste("Error! Invalid data for `stored`. Must be an integer:", input_json$`stored`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateResponse: the required field `stored` is missing."))
      }
      # check the required field `ignored`
      if (!is.null(input_json$`ignored`)) {
        if (!(is.numeric(input_json$`ignored`) && length(input_json$`ignored`) == 1)) {
          stop(paste("Error! Invalid data for `ignored`. Must be an integer:", input_json$`ignored`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateResponse: the required field `ignored` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiOrdersUpdateResponse
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

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        return(FALSE)
      }

      # check if the required `stored` is null
      if (is.null(self$`stored`)) {
        return(FALSE)
      }

      # check if the required `ignored` is null
      if (is.null(self$`ignored`)) {
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

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        invalid_fields["platform"] <- "Non-nullable required field `platform` cannot be null."
      }

      # check if the required `stored` is null
      if (is.null(self$`stored`)) {
        invalid_fields["stored"] <- "Non-nullable required field `stored` cannot be null."
      }

      # check if the required `ignored` is null
      if (is.null(self$`ignored`)) {
        invalid_fields["ignored"] <- "Non-nullable required field `ignored` cannot be null."
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
# AiOrdersUpdateResponse$unlock()
#
## Below is an example to define the print function
# AiOrdersUpdateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiOrdersUpdateResponse$lock()

