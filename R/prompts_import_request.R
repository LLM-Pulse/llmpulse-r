#' Create a new PromptsImportRequest
#'
#' @description
#' PromptsImportRequest Class
#'
#' @docType class
#' @title PromptsImportRequest
#' @description PromptsImportRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field rows One object per prompt (max 500) list(\link{PromptsImportRequestRowsInner})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptsImportRequest <- R6::R6Class(
  "PromptsImportRequest",
  public = list(
    `project_id` = NULL,
    `rows` = NULL,

    #' @description
    #' Initialize a new PromptsImportRequest class.
    #'
    #' @param project_id project_id
    #' @param rows One object per prompt (max 500)
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `rows`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`rows`)) {
        stopifnot(is.vector(`rows`), length(`rows`) != 0)
        sapply(`rows`, function(x) stopifnot(R6::is.R6(x)))
        self$`rows` <- `rows`
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
    #' @return PromptsImportRequest as a base R list.
    #' @examples
    #' # convert array of PromptsImportRequest (x) to a data frame
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
    #' Convert PromptsImportRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptsImportRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        PromptsImportRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`rows`)) {
        PromptsImportRequestObject[["rows"]] <-
          self$extractSimpleType(self$`rows`)
      }
      return(PromptsImportRequestObject)
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
    #' Deserialize JSON string into an instance of PromptsImportRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptsImportRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`rows`)) {
        self$`rows` <- ApiClient$new()$deserializeObj(this_object$`rows`, "array[PromptsImportRequestRowsInner]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PromptsImportRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptsImportRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptsImportRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`rows` <- ApiClient$new()$deserializeObj(this_object$`rows`, "array[PromptsImportRequestRowsInner]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptsImportRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportRequest: the required field `project_id` is missing."))
      }
      # check the required field `rows`
      if (!is.null(input_json$`rows`)) {
        stopifnot(is.vector(input_json$`rows`), length(input_json$`rows`) != 0)
        tmp <- sapply(input_json$`rows`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportRequest: the required field `rows` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptsImportRequest
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

      # check if the required `rows` is null
      if (is.null(self$`rows`)) {
        return(FALSE)
      }

      if (length(self$`rows`) > 500) {
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

      # check if the required `rows` is null
      if (is.null(self$`rows`)) {
        invalid_fields["rows"] <- "Non-nullable required field `rows` cannot be null."
      }

      if (length(self$`rows`) > 500) {
        invalid_fields["rows"] <- "Invalid length for `rows`, number of items must be less than or equal to 500."
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
# PromptsImportRequest$unlock()
#
## Below is an example to define the print function
# PromptsImportRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptsImportRequest$lock()

