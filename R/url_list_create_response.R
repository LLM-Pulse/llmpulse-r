#' Create a new UrlListCreateResponse
#'
#' @description
#' UrlListCreateResponse Class
#'
#' @docType class
#' @title UrlListCreateResponse
#' @description UrlListCreateResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field url_list  \link{UrlListWithCounts}
#' @field entries_added  integer
#' @field invalid_entries  list(\link{UrlListInvalidEntry})
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListCreateResponse <- R6::R6Class(
  "UrlListCreateResponse",
  public = list(
    `project_id` = NULL,
    `url_list` = NULL,
    `entries_added` = NULL,
    `invalid_entries` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new UrlListCreateResponse class.
    #'
    #' @param project_id project_id
    #' @param url_list url_list
    #' @param entries_added entries_added
    #' @param invalid_entries invalid_entries
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `url_list`, `entries_added`, `invalid_entries`, `request_id`, ...) {
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
      if (!missing(`entries_added`)) {
        if (!(is.numeric(`entries_added`) && length(`entries_added`) == 1)) {
          stop(paste("Error! Invalid data for `entries_added`. Must be an integer:", `entries_added`))
        }
        self$`entries_added` <- `entries_added`
      }
      if (!missing(`invalid_entries`)) {
        stopifnot(is.vector(`invalid_entries`), length(`invalid_entries`) != 0)
        sapply(`invalid_entries`, function(x) stopifnot(R6::is.R6(x)))
        self$`invalid_entries` <- `invalid_entries`
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
    #' @return UrlListCreateResponse as a base R list.
    #' @examples
    #' # convert array of UrlListCreateResponse (x) to a data frame
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
    #' Convert UrlListCreateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListCreateResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        UrlListCreateResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`url_list`)) {
        UrlListCreateResponseObject[["url_list"]] <-
          self$extractSimpleType(self$`url_list`)
      }
      if (!is.null(self$`entries_added`)) {
        UrlListCreateResponseObject[["entries_added"]] <-
          self$`entries_added`
      }
      if (!is.null(self$`invalid_entries`)) {
        UrlListCreateResponseObject[["invalid_entries"]] <-
          self$extractSimpleType(self$`invalid_entries`)
      }
      if (!is.null(self$`request_id`)) {
        UrlListCreateResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(UrlListCreateResponseObject)
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
    #' Deserialize JSON string into an instance of UrlListCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListCreateResponse
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
      if (!is.null(this_object$`entries_added`)) {
        self$`entries_added` <- this_object$`entries_added`
      }
      if (!is.null(this_object$`invalid_entries`)) {
        self$`invalid_entries` <- ApiClient$new()$deserializeObj(this_object$`invalid_entries`, "array[UrlListInvalidEntry]", loadNamespace("llmpulse"))
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
    #' @return UrlListCreateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListCreateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`url_list` <- UrlListWithCounts$new()$fromJSON(jsonlite::toJSON(this_object$`url_list`, auto_unbox = TRUE, digits = NA))
      self$`entries_added` <- this_object$`entries_added`
      self$`invalid_entries` <- ApiClient$new()$deserializeObj(this_object$`invalid_entries`, "array[UrlListInvalidEntry]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListCreateResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UrlListCreateResponse: the required field `project_id` is missing."))
      }
      # check the required field `url_list`
      if (!is.null(input_json$`url_list`)) {
        stopifnot(R6::is.R6(input_json$`url_list`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListCreateResponse: the required field `url_list` is missing."))
      }
      # check the required field `entries_added`
      if (!is.null(input_json$`entries_added`)) {
        if (!(is.numeric(input_json$`entries_added`) && length(input_json$`entries_added`) == 1)) {
          stop(paste("Error! Invalid data for `entries_added`. Must be an integer:", input_json$`entries_added`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListCreateResponse: the required field `entries_added` is missing."))
      }
      # check the required field `invalid_entries`
      if (!is.null(input_json$`invalid_entries`)) {
        stopifnot(is.vector(input_json$`invalid_entries`), length(input_json$`invalid_entries`) != 0)
        tmp <- sapply(input_json$`invalid_entries`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListCreateResponse: the required field `invalid_entries` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListCreateResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListCreateResponse
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

      # check if the required `entries_added` is null
      if (is.null(self$`entries_added`)) {
        return(FALSE)
      }

      # check if the required `invalid_entries` is null
      if (is.null(self$`invalid_entries`)) {
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

      # check if the required `entries_added` is null
      if (is.null(self$`entries_added`)) {
        invalid_fields["entries_added"] <- "Non-nullable required field `entries_added` cannot be null."
      }

      # check if the required `invalid_entries` is null
      if (is.null(self$`invalid_entries`)) {
        invalid_fields["invalid_entries"] <- "Non-nullable required field `invalid_entries` cannot be null."
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
# UrlListCreateResponse$unlock()
#
## Below is an example to define the print function
# UrlListCreateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListCreateResponse$lock()

