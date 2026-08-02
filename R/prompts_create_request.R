#' Create a new PromptsCreateRequest
#'
#' @description
#' PromptsCreateRequest Class
#'
#' @docType class
#' @title PromptsCreateRequest
#' @description PromptsCreateRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field prompts  list(character)
#' @field country_code  character
#' @field language_code  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptsCreateRequest <- R6::R6Class(
  "PromptsCreateRequest",
  public = list(
    `project_id` = NULL,
    `prompts` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,

    #' @description
    #' Initialize a new PromptsCreateRequest class.
    #'
    #' @param project_id project_id
    #' @param prompts prompts
    #' @param country_code country_code
    #' @param language_code language_code
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `prompts`, `country_code`, `language_code`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`prompts`)) {
        stopifnot(is.vector(`prompts`), length(`prompts`) != 0)
        sapply(`prompts`, function(x) stopifnot(is.character(x)))
        self$`prompts` <- `prompts`
      }
      if (!missing(`country_code`)) {
        if (!(is.character(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", `country_code`))
        }
        self$`country_code` <- `country_code`
      }
      if (!missing(`language_code`)) {
        if (!(is.character(`language_code`) && length(`language_code`) == 1)) {
          stop(paste("Error! Invalid data for `language_code`. Must be a string:", `language_code`))
        }
        self$`language_code` <- `language_code`
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
    #' @return PromptsCreateRequest as a base R list.
    #' @examples
    #' # convert array of PromptsCreateRequest (x) to a data frame
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
    #' Convert PromptsCreateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptsCreateRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        PromptsCreateRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`prompts`)) {
        PromptsCreateRequestObject[["prompts"]] <-
          self$`prompts`
      }
      if (!is.null(self$`country_code`)) {
        PromptsCreateRequestObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        PromptsCreateRequestObject[["language_code"]] <-
          self$`language_code`
      }
      return(PromptsCreateRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptsCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptsCreateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`prompts`)) {
        self$`prompts` <- ApiClient$new()$deserializeObj(this_object$`prompts`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PromptsCreateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptsCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptsCreateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`prompts` <- ApiClient$new()$deserializeObj(this_object$`prompts`, "array[character]", loadNamespace("llmpulse"))
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptsCreateRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PromptsCreateRequest: the required field `project_id` is missing."))
      }
      # check the required field `prompts`
      if (!is.null(input_json$`prompts`)) {
        stopifnot(is.vector(input_json$`prompts`), length(input_json$`prompts`) != 0)
        tmp <- sapply(input_json$`prompts`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsCreateRequest: the required field `prompts` is missing."))
      }
      # check the required field `country_code`
      if (!is.null(input_json$`country_code`)) {
        if (!(is.character(input_json$`country_code`) && length(input_json$`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", input_json$`country_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsCreateRequest: the required field `country_code` is missing."))
      }
      # check the required field `language_code`
      if (!is.null(input_json$`language_code`)) {
        if (!(is.character(input_json$`language_code`) && length(input_json$`language_code`) == 1)) {
          stop(paste("Error! Invalid data for `language_code`. Must be a string:", input_json$`language_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsCreateRequest: the required field `language_code` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptsCreateRequest
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

      # check if the required `prompts` is null
      if (is.null(self$`prompts`)) {
        return(FALSE)
      }

      if (length(self$`prompts`) > 100) {
        return(FALSE)
      }

      # check if the required `country_code` is null
      if (is.null(self$`country_code`)) {
        return(FALSE)
      }

      # check if the required `language_code` is null
      if (is.null(self$`language_code`)) {
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

      # check if the required `prompts` is null
      if (is.null(self$`prompts`)) {
        invalid_fields["prompts"] <- "Non-nullable required field `prompts` cannot be null."
      }

      if (length(self$`prompts`) > 100) {
        invalid_fields["prompts"] <- "Invalid length for `prompts`, number of items must be less than or equal to 100."
      }

      # check if the required `country_code` is null
      if (is.null(self$`country_code`)) {
        invalid_fields["country_code"] <- "Non-nullable required field `country_code` cannot be null."
      }

      # check if the required `language_code` is null
      if (is.null(self$`language_code`)) {
        invalid_fields["language_code"] <- "Non-nullable required field `language_code` cannot be null."
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
# PromptsCreateRequest$unlock()
#
## Below is an example to define the print function
# PromptsCreateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptsCreateRequest$lock()

