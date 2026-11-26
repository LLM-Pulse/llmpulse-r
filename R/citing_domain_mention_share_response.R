#' Create a new CitingDomainMentionShareResponse
#'
#' @description
#' CitingDomainMentionShareResponse Class
#'
#' @docType class
#' @title CitingDomainMentionShareResponse
#' @description CitingDomainMentionShareResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field filters  \link{CitationIntelligenceFiltersEcho}
#' @field normalization How the shares are computed character
#' @field data One row per requested domain (normalized, at most 50), in the order given list(\link{CitingDomainMentionShareResponseDataInner})
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitingDomainMentionShareResponse <- R6::R6Class(
  "CitingDomainMentionShareResponse",
  public = list(
    `project_id` = NULL,
    `filters` = NULL,
    `normalization` = NULL,
    `data` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new CitingDomainMentionShareResponse class.
    #'
    #' @param project_id project_id
    #' @param filters filters
    #' @param normalization How the shares are computed
    #' @param data One row per requested domain (normalized, at most 50), in the order given
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `filters`, `normalization`, `data`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`filters`)) {
        stopifnot(R6::is.R6(`filters`))
        self$`filters` <- `filters`
      }
      if (!missing(`normalization`)) {
        if (!(is.character(`normalization`) && length(`normalization`) == 1)) {
          stop(paste("Error! Invalid data for `normalization`. Must be a string:", `normalization`))
        }
        self$`normalization` <- `normalization`
      }
      if (!missing(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
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
    #' @return CitingDomainMentionShareResponse as a base R list.
    #' @examples
    #' # convert array of CitingDomainMentionShareResponse (x) to a data frame
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
    #' Convert CitingDomainMentionShareResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitingDomainMentionShareResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        CitingDomainMentionShareResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`filters`)) {
        CitingDomainMentionShareResponseObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`normalization`)) {
        CitingDomainMentionShareResponseObject[["normalization"]] <-
          self$`normalization`
      }
      if (!is.null(self$`data`)) {
        CitingDomainMentionShareResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      if (!is.null(self$`request_id`)) {
        CitingDomainMentionShareResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(CitingDomainMentionShareResponseObject)
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
    #' Deserialize JSON string into an instance of CitingDomainMentionShareResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitingDomainMentionShareResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`filters`)) {
        `filters_object` <- CitationIntelligenceFiltersEcho$new()
        `filters_object`$fromJSON(jsonlite::toJSON(this_object$`filters`, auto_unbox = TRUE, digits = NA))
        self$`filters` <- `filters_object`
      }
      if (!is.null(this_object$`normalization`)) {
        self$`normalization` <- this_object$`normalization`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[CitingDomainMentionShareResponseDataInner]", loadNamespace("llmpulse"))
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
    #' @return CitingDomainMentionShareResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitingDomainMentionShareResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitingDomainMentionShareResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`filters` <- CitationIntelligenceFiltersEcho$new()$fromJSON(jsonlite::toJSON(this_object$`filters`, auto_unbox = TRUE, digits = NA))
      self$`normalization` <- this_object$`normalization`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[CitingDomainMentionShareResponseDataInner]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CitingDomainMentionShareResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CitingDomainMentionShareResponse: the required field `project_id` is missing."))
      }
      # check the required field `filters`
      if (!is.null(input_json$`filters`)) {
        stopifnot(R6::is.R6(input_json$`filters`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitingDomainMentionShareResponse: the required field `filters` is missing."))
      }
      # check the required field `normalization`
      if (!is.null(input_json$`normalization`)) {
        if (!(is.character(input_json$`normalization`) && length(input_json$`normalization`) == 1)) {
          stop(paste("Error! Invalid data for `normalization`. Must be a string:", input_json$`normalization`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitingDomainMentionShareResponse: the required field `normalization` is missing."))
      }
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(is.vector(input_json$`data`), length(input_json$`data`) != 0)
        tmp <- sapply(input_json$`data`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitingDomainMentionShareResponse: the required field `data` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitingDomainMentionShareResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitingDomainMentionShareResponse
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

      # check if the required `filters` is null
      if (is.null(self$`filters`)) {
        return(FALSE)
      }

      # check if the required `normalization` is null
      if (is.null(self$`normalization`)) {
        return(FALSE)
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
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

      # check if the required `filters` is null
      if (is.null(self$`filters`)) {
        invalid_fields["filters"] <- "Non-nullable required field `filters` cannot be null."
      }

      # check if the required `normalization` is null
      if (is.null(self$`normalization`)) {
        invalid_fields["normalization"] <- "Non-nullable required field `normalization` cannot be null."
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
        invalid_fields["data"] <- "Non-nullable required field `data` cannot be null."
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
# CitingDomainMentionShareResponse$unlock()
#
## Below is an example to define the print function
# CitingDomainMentionShareResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitingDomainMentionShareResponse$lock()

