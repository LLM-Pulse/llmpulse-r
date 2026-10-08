#' Create a new LocalesResponse
#'
#' @description
#' LocalesResponse Class
#'
#' @docType class
#' @title LocalesResponse
#' @description LocalesResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field countries Country codes with data list(character)
#' @field languages Language codes with data list(character)
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LocalesResponse <- R6::R6Class(
  "LocalesResponse",
  public = list(
    `project_id` = NULL,
    `countries` = NULL,
    `languages` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new LocalesResponse class.
    #'
    #' @param project_id project_id
    #' @param countries Country codes with data
    #' @param languages Language codes with data
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `countries`, `languages`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`countries`)) {
        stopifnot(is.vector(`countries`), length(`countries`) != 0)
        sapply(`countries`, function(x) stopifnot(is.character(x)))
        self$`countries` <- `countries`
      }
      if (!missing(`languages`)) {
        stopifnot(is.vector(`languages`), length(`languages`) != 0)
        sapply(`languages`, function(x) stopifnot(is.character(x)))
        self$`languages` <- `languages`
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
    #' @return LocalesResponse as a base R list.
    #' @examples
    #' # convert array of LocalesResponse (x) to a data frame
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
    #' Convert LocalesResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LocalesResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        LocalesResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`countries`)) {
        LocalesResponseObject[["countries"]] <-
          self$`countries`
      }
      if (!is.null(self$`languages`)) {
        LocalesResponseObject[["languages"]] <-
          self$`languages`
      }
      if (!is.null(self$`request_id`)) {
        LocalesResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(LocalesResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LocalesResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of LocalesResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`countries`)) {
        self$`countries` <- ApiClient$new()$deserializeObj(this_object$`countries`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`languages`)) {
        self$`languages` <- ApiClient$new()$deserializeObj(this_object$`languages`, "array[character]", loadNamespace("llmpulse"))
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
    #' @return LocalesResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LocalesResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of LocalesResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`countries` <- ApiClient$new()$deserializeObj(this_object$`countries`, "array[character]", loadNamespace("llmpulse"))
      self$`languages` <- ApiClient$new()$deserializeObj(this_object$`languages`, "array[character]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to LocalesResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for LocalesResponse: the required field `project_id` is missing."))
      }
      # check the required field `countries`
      if (!is.null(input_json$`countries`)) {
        stopifnot(is.vector(input_json$`countries`), length(input_json$`countries`) != 0)
        tmp <- sapply(input_json$`countries`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LocalesResponse: the required field `countries` is missing."))
      }
      # check the required field `languages`
      if (!is.null(input_json$`languages`)) {
        stopifnot(is.vector(input_json$`languages`), length(input_json$`languages`) != 0)
        tmp <- sapply(input_json$`languages`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LocalesResponse: the required field `languages` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LocalesResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LocalesResponse
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

      # check if the required `countries` is null
      if (is.null(self$`countries`)) {
        return(FALSE)
      }

      # check if the required `languages` is null
      if (is.null(self$`languages`)) {
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

      # check if the required `countries` is null
      if (is.null(self$`countries`)) {
        invalid_fields["countries"] <- "Non-nullable required field `countries` cannot be null."
      }

      # check if the required `languages` is null
      if (is.null(self$`languages`)) {
        invalid_fields["languages"] <- "Non-nullable required field `languages` cannot be null."
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
# LocalesResponse$unlock()
#
## Below is an example to define the print function
# LocalesResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LocalesResponse$lock()

