#' Create a new UrlListUpdateResponse
#'
#' @description
#' UrlListUpdateResponse Class
#'
#' @docType class
#' @title UrlListUpdateResponse
#' @description UrlListUpdateResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field url_list  \link{UrlListWithCounts}
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListUpdateResponse <- R6::R6Class(
  "UrlListUpdateResponse",
  public = list(
    `project_id` = NULL,
    `url_list` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new UrlListUpdateResponse class.
    #'
    #' @param project_id project_id
    #' @param url_list url_list
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `url_list`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`url_list`)) {
        stopifnot(R6::is.R6(`url_list`))
        self$`url_list` <- `url_list`
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
    #' @return UrlListUpdateResponse as a base R list.
    #' @examples
    #' # convert array of UrlListUpdateResponse (x) to a data frame
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
    #' Convert UrlListUpdateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListUpdateResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        UrlListUpdateResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`url_list`)) {
        UrlListUpdateResponseObject[["url_list"]] <-
          self$extractSimpleType(self$`url_list`)
      }
      if (!is.null(self$`request_id`)) {
        UrlListUpdateResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(UrlListUpdateResponseObject)
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
    #' Deserialize JSON string into an instance of UrlListUpdateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListUpdateResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`url_list`)) {
        `url_list_object` <- UrlListWithCounts$new()
        `url_list_object`$fromJSON(jsonlite::toJSON(this_object$`url_list`, auto_unbox = TRUE, digits = NA))
        self$`url_list` <- `url_list_object`
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
    #' @return UrlListUpdateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListUpdateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListUpdateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`url_list` <- UrlListWithCounts$new()$fromJSON(jsonlite::toJSON(this_object$`url_list`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListUpdateResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UrlListUpdateResponse: the required field `project_id` is missing."))
      }
      # check the required field `url_list`
      if (!is.null(input_json$`url_list`)) {
        stopifnot(R6::is.R6(input_json$`url_list`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListUpdateResponse: the required field `url_list` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListUpdateResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListUpdateResponse
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

      # check if the required `url_list` is null
      if (is.null(self$`url_list`)) {
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

      # check if the required `url_list` is null
      if (is.null(self$`url_list`)) {
        invalid_fields["url_list"] <- "Non-nullable required field `url_list` cannot be null."
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
# UrlListUpdateResponse$unlock()
#
## Below is an example to define the print function
# UrlListUpdateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListUpdateResponse$lock()

