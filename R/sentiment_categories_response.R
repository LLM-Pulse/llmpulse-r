#' Create a new SentimentCategoriesResponse
#'
#' @description
#' SentimentCategoriesResponse Class
#'
#' @docType class
#' @title SentimentCategoriesResponse
#' @description SentimentCategoriesResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field sentiments  list(\link{SentimentCategory})
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SentimentCategoriesResponse <- R6::R6Class(
  "SentimentCategoriesResponse",
  public = list(
    `project_id` = NULL,
    `sentiments` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new SentimentCategoriesResponse class.
    #'
    #' @param project_id project_id
    #' @param sentiments sentiments
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `sentiments`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`sentiments`)) {
        stopifnot(is.vector(`sentiments`), length(`sentiments`) != 0)
        sapply(`sentiments`, function(x) stopifnot(R6::is.R6(x)))
        self$`sentiments` <- `sentiments`
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
    #' @return SentimentCategoriesResponse as a base R list.
    #' @examples
    #' # convert array of SentimentCategoriesResponse (x) to a data frame
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
    #' Convert SentimentCategoriesResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SentimentCategoriesResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        SentimentCategoriesResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`sentiments`)) {
        SentimentCategoriesResponseObject[["sentiments"]] <-
          self$extractSimpleType(self$`sentiments`)
      }
      if (!is.null(self$`request_id`)) {
        SentimentCategoriesResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(SentimentCategoriesResponseObject)
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
    #' Deserialize JSON string into an instance of SentimentCategoriesResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentCategoriesResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`sentiments`)) {
        self$`sentiments` <- ApiClient$new()$deserializeObj(this_object$`sentiments`, "array[SentimentCategory]", loadNamespace("llmpulse"))
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
    #' @return SentimentCategoriesResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SentimentCategoriesResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentCategoriesResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`sentiments` <- ApiClient$new()$deserializeObj(this_object$`sentiments`, "array[SentimentCategory]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to SentimentCategoriesResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for SentimentCategoriesResponse: the required field `project_id` is missing."))
      }
      # check the required field `sentiments`
      if (!is.null(input_json$`sentiments`)) {
        stopifnot(is.vector(input_json$`sentiments`), length(input_json$`sentiments`) != 0)
        tmp <- sapply(input_json$`sentiments`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentCategoriesResponse: the required field `sentiments` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentCategoriesResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SentimentCategoriesResponse
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

      # check if the required `sentiments` is null
      if (is.null(self$`sentiments`)) {
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

      # check if the required `sentiments` is null
      if (is.null(self$`sentiments`)) {
        invalid_fields["sentiments"] <- "Non-nullable required field `sentiments` cannot be null."
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
# SentimentCategoriesResponse$unlock()
#
## Below is an example to define the print function
# SentimentCategoriesResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SentimentCategoriesResponse$lock()

