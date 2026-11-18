#' Create a new UrlListEntriesAddRequest
#'
#' @description
#' UrlListEntriesAddRequest Class
#'
#' @docType class
#' @title UrlListEntriesAddRequest
#' @description UrlListEntriesAddRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field entries  list(\link{UrlListEntryInput})
#' @field match_type  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListEntriesAddRequest <- R6::R6Class(
  "UrlListEntriesAddRequest",
  public = list(
    `project_id` = NULL,
    `entries` = NULL,
    `match_type` = NULL,

    #' @description
    #' Initialize a new UrlListEntriesAddRequest class.
    #'
    #' @param project_id project_id
    #' @param entries entries
    #' @param match_type match_type
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `entries`, `match_type` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`entries`)) {
        stopifnot(is.vector(`entries`), length(`entries`) != 0)
        sapply(`entries`, function(x) stopifnot(R6::is.R6(x)))
        self$`entries` <- `entries`
      }
      if (!is.null(`match_type`)) {
        if (!(`match_type` %in% c("url", "prefix", "domain"))) {
          stop(paste("Error! \"", `match_type`, "\" cannot be assigned to `match_type`. Must be \"url\", \"prefix\", \"domain\".", sep = ""))
        }
        if (!(is.character(`match_type`) && length(`match_type`) == 1)) {
          stop(paste("Error! Invalid data for `match_type`. Must be a string:", `match_type`))
        }
        self$`match_type` <- `match_type`
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
    #' @return UrlListEntriesAddRequest as a base R list.
    #' @examples
    #' # convert array of UrlListEntriesAddRequest (x) to a data frame
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
    #' Convert UrlListEntriesAddRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListEntriesAddRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        UrlListEntriesAddRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`entries`)) {
        UrlListEntriesAddRequestObject[["entries"]] <-
          self$extractSimpleType(self$`entries`)
      }
      if (!is.null(self$`match_type`)) {
        UrlListEntriesAddRequestObject[["match_type"]] <-
          self$`match_type`
      }
      return(UrlListEntriesAddRequestObject)
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
    #' Deserialize JSON string into an instance of UrlListEntriesAddRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListEntriesAddRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`entries`)) {
        self$`entries` <- ApiClient$new()$deserializeObj(this_object$`entries`, "array[UrlListEntryInput]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`match_type`)) {
        if (!is.null(this_object$`match_type`) && !(this_object$`match_type` %in% c("url", "prefix", "domain"))) {
          stop(paste("Error! \"", this_object$`match_type`, "\" cannot be assigned to `match_type`. Must be \"url\", \"prefix\", \"domain\".", sep = ""))
        }
        self$`match_type` <- this_object$`match_type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UrlListEntriesAddRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListEntriesAddRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListEntriesAddRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`entries` <- ApiClient$new()$deserializeObj(this_object$`entries`, "array[UrlListEntryInput]", loadNamespace("llmpulse"))
      if (!is.null(this_object$`match_type`) && !(this_object$`match_type` %in% c("url", "prefix", "domain"))) {
        stop(paste("Error! \"", this_object$`match_type`, "\" cannot be assigned to `match_type`. Must be \"url\", \"prefix\", \"domain\".", sep = ""))
      }
      self$`match_type` <- this_object$`match_type`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListEntriesAddRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesAddRequest: the required field `project_id` is missing."))
      }
      # check the required field `entries`
      if (!is.null(input_json$`entries`)) {
        stopifnot(is.vector(input_json$`entries`), length(input_json$`entries`) != 0)
        tmp <- sapply(input_json$`entries`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntriesAddRequest: the required field `entries` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListEntriesAddRequest
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

      # check if the required `entries` is null
      if (is.null(self$`entries`)) {
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

      # check if the required `entries` is null
      if (is.null(self$`entries`)) {
        invalid_fields["entries"] <- "Non-nullable required field `entries` cannot be null."
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
# UrlListEntriesAddRequest$unlock()
#
## Below is an example to define the print function
# UrlListEntriesAddRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListEntriesAddRequest$lock()

