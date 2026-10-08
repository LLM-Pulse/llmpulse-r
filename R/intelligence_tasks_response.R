#' Create a new IntelligenceTasksResponse
#'
#' @description
#' IntelligenceTasksResponse Class
#'
#' @docType class
#' @title IntelligenceTasksResponse
#' @description IntelligenceTasksResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field page  integer
#' @field per_page  integer
#' @field total Rows matching the filters across every page integer
#' @field request_id  character
#' @field data  list(\link{IntelligenceTaskSummary})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IntelligenceTasksResponse <- R6::R6Class(
  "IntelligenceTasksResponse",
  public = list(
    `project_id` = NULL,
    `page` = NULL,
    `per_page` = NULL,
    `total` = NULL,
    `request_id` = NULL,
    `data` = NULL,

    #' @description
    #' Initialize a new IntelligenceTasksResponse class.
    #'
    #' @param project_id project_id
    #' @param page page
    #' @param per_page per_page
    #' @param total Rows matching the filters across every page
    #' @param request_id request_id
    #' @param data data
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `page`, `per_page`, `total`, `request_id`, `data`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`page`)) {
        if (!(is.numeric(`page`) && length(`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", `page`))
        }
        self$`page` <- `page`
      }
      if (!missing(`per_page`)) {
        if (!(is.numeric(`per_page`) && length(`per_page`) == 1)) {
          stop(paste("Error! Invalid data for `per_page`. Must be an integer:", `per_page`))
        }
        self$`per_page` <- `per_page`
      }
      if (!missing(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!missing(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
      }
      if (!missing(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
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
    #' @return IntelligenceTasksResponse as a base R list.
    #' @examples
    #' # convert array of IntelligenceTasksResponse (x) to a data frame
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
    #' Convert IntelligenceTasksResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IntelligenceTasksResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        IntelligenceTasksResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`page`)) {
        IntelligenceTasksResponseObject[["page"]] <-
          self$`page`
      }
      if (!is.null(self$`per_page`)) {
        IntelligenceTasksResponseObject[["per_page"]] <-
          self$`per_page`
      }
      if (!is.null(self$`total`)) {
        IntelligenceTasksResponseObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`request_id`)) {
        IntelligenceTasksResponseObject[["request_id"]] <-
          self$`request_id`
      }
      if (!is.null(self$`data`)) {
        IntelligenceTasksResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      return(IntelligenceTasksResponseObject)
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
    #' Deserialize JSON string into an instance of IntelligenceTasksResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of IntelligenceTasksResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`page`)) {
        self$`page` <- this_object$`page`
      }
      if (!is.null(this_object$`per_page`)) {
        self$`per_page` <- this_object$`per_page`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`request_id`)) {
        self$`request_id` <- this_object$`request_id`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[IntelligenceTaskSummary]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IntelligenceTasksResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IntelligenceTasksResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of IntelligenceTasksResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`page` <- this_object$`page`
      self$`per_page` <- this_object$`per_page`
      self$`total` <- this_object$`total`
      self$`request_id` <- this_object$`request_id`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[IntelligenceTaskSummary]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to IntelligenceTasksResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTasksResponse: the required field `project_id` is missing."))
      }
      # check the required field `page`
      if (!is.null(input_json$`page`)) {
        if (!(is.numeric(input_json$`page`) && length(input_json$`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", input_json$`page`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTasksResponse: the required field `page` is missing."))
      }
      # check the required field `per_page`
      if (!is.null(input_json$`per_page`)) {
        if (!(is.numeric(input_json$`per_page`) && length(input_json$`per_page`) == 1)) {
          stop(paste("Error! Invalid data for `per_page`. Must be an integer:", input_json$`per_page`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTasksResponse: the required field `per_page` is missing."))
      }
      # check the required field `total`
      if (!is.null(input_json$`total`)) {
        if (!(is.numeric(input_json$`total`) && length(input_json$`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", input_json$`total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTasksResponse: the required field `total` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTasksResponse: the required field `request_id` is missing."))
      }
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(is.vector(input_json$`data`), length(input_json$`data`) != 0)
        tmp <- sapply(input_json$`data`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTasksResponse: the required field `data` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IntelligenceTasksResponse
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

      # check if the required `page` is null
      if (is.null(self$`page`)) {
        return(FALSE)
      }

      # check if the required `per_page` is null
      if (is.null(self$`per_page`)) {
        return(FALSE)
      }

      # check if the required `total` is null
      if (is.null(self$`total`)) {
        return(FALSE)
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
        return(FALSE)
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
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

      # check if the required `page` is null
      if (is.null(self$`page`)) {
        invalid_fields["page"] <- "Non-nullable required field `page` cannot be null."
      }

      # check if the required `per_page` is null
      if (is.null(self$`per_page`)) {
        invalid_fields["per_page"] <- "Non-nullable required field `per_page` cannot be null."
      }

      # check if the required `total` is null
      if (is.null(self$`total`)) {
        invalid_fields["total"] <- "Non-nullable required field `total` cannot be null."
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
        invalid_fields["request_id"] <- "Non-nullable required field `request_id` cannot be null."
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
        invalid_fields["data"] <- "Non-nullable required field `data` cannot be null."
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
# IntelligenceTasksResponse$unlock()
#
## Below is an example to define the print function
# IntelligenceTasksResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IntelligenceTasksResponse$lock()

