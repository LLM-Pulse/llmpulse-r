#' Create a new AiOrdersResponse
#'
#' @description
#' AiOrdersResponse Class
#'
#' @docType class
#' @title AiOrdersResponse
#' @description AiOrdersResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field platform  character
#' @field currency ISO 4217 code of the most recent stored day; null when the window holds no stored order character
#' @field from  character
#' @field to  character
#' @field totals  \link{AiOrdersResponseTotals}
#' @field by_source One row per AI assistant, highest revenue first list(\link{AiOrdersResponseBySourceInner})
#' @field series Days that have stored orders, oldest first list(\link{AiOrdersResponseSeriesInner})
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiOrdersResponse <- R6::R6Class(
  "AiOrdersResponse",
  public = list(
    `project_id` = NULL,
    `platform` = NULL,
    `currency` = NULL,
    `from` = NULL,
    `to` = NULL,
    `totals` = NULL,
    `by_source` = NULL,
    `series` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new AiOrdersResponse class.
    #'
    #' @param project_id project_id
    #' @param platform platform
    #' @param currency ISO 4217 code of the most recent stored day; null when the window holds no stored order
    #' @param from from
    #' @param to to
    #' @param totals totals
    #' @param by_source One row per AI assistant, highest revenue first
    #' @param series Days that have stored orders, oldest first
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `platform`, `currency`, `from`, `to`, `totals`, `by_source`, `series`, `request_id`, ...) {
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
      if (!missing(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!missing(`from`)) {
        if (!(is.character(`from`) && length(`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!missing(`to`)) {
        if (!(is.character(`to`) && length(`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!missing(`totals`)) {
        stopifnot(R6::is.R6(`totals`))
        self$`totals` <- `totals`
      }
      if (!missing(`by_source`)) {
        stopifnot(is.vector(`by_source`), length(`by_source`) != 0)
        sapply(`by_source`, function(x) stopifnot(R6::is.R6(x)))
        self$`by_source` <- `by_source`
      }
      if (!missing(`series`)) {
        stopifnot(is.vector(`series`), length(`series`) != 0)
        sapply(`series`, function(x) stopifnot(R6::is.R6(x)))
        self$`series` <- `series`
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
    #' @return AiOrdersResponse as a base R list.
    #' @examples
    #' # convert array of AiOrdersResponse (x) to a data frame
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
    #' Convert AiOrdersResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiOrdersResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        AiOrdersResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`platform`)) {
        AiOrdersResponseObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`currency`)) {
        AiOrdersResponseObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`from`)) {
        AiOrdersResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        AiOrdersResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`totals`)) {
        AiOrdersResponseObject[["totals"]] <-
          self$extractSimpleType(self$`totals`)
      }
      if (!is.null(self$`by_source`)) {
        AiOrdersResponseObject[["by_source"]] <-
          self$extractSimpleType(self$`by_source`)
      }
      if (!is.null(self$`series`)) {
        AiOrdersResponseObject[["series"]] <-
          self$extractSimpleType(self$`series`)
      }
      if (!is.null(self$`request_id`)) {
        AiOrdersResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(AiOrdersResponseObject)
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
    #' Deserialize JSON string into an instance of AiOrdersResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiOrdersResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`platform`)) {
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`totals`)) {
        `totals_object` <- AiOrdersResponseTotals$new()
        `totals_object`$fromJSON(jsonlite::toJSON(this_object$`totals`, auto_unbox = TRUE, digits = NA))
        self$`totals` <- `totals_object`
      }
      if (!is.null(this_object$`by_source`)) {
        self$`by_source` <- ApiClient$new()$deserializeObj(this_object$`by_source`, "array[AiOrdersResponseBySourceInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`series`)) {
        self$`series` <- ApiClient$new()$deserializeObj(this_object$`series`, "array[AiOrdersResponseSeriesInner]", loadNamespace("llmpulse"))
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
    #' @return AiOrdersResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiOrdersResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiOrdersResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`platform` <- this_object$`platform`
      self$`currency` <- this_object$`currency`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`totals` <- AiOrdersResponseTotals$new()$fromJSON(jsonlite::toJSON(this_object$`totals`, auto_unbox = TRUE, digits = NA))
      self$`by_source` <- ApiClient$new()$deserializeObj(this_object$`by_source`, "array[AiOrdersResponseBySourceInner]", loadNamespace("llmpulse"))
      self$`series` <- ApiClient$new()$deserializeObj(this_object$`series`, "array[AiOrdersResponseSeriesInner]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiOrdersResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersResponse: the required field `project_id` is missing."))
      }
      # check the required field `platform`
      if (!is.null(input_json$`platform`)) {
        if (!(is.character(input_json$`platform`) && length(input_json$`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", input_json$`platform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersResponse: the required field `platform` is missing."))
      }
      # check the required field `currency`
      if (!is.null(input_json$`currency`)) {
        if (!(is.character(input_json$`currency`) && length(input_json$`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", input_json$`currency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersResponse: the required field `currency` is missing."))
      }
      # check the required field `from`
      if (!is.null(input_json$`from`)) {
        if (!(is.character(input_json$`from`) && length(input_json$`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", input_json$`from`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersResponse: the required field `from` is missing."))
      }
      # check the required field `to`
      if (!is.null(input_json$`to`)) {
        if (!(is.character(input_json$`to`) && length(input_json$`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", input_json$`to`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersResponse: the required field `to` is missing."))
      }
      # check the required field `totals`
      if (!is.null(input_json$`totals`)) {
        stopifnot(R6::is.R6(input_json$`totals`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersResponse: the required field `totals` is missing."))
      }
      # check the required field `by_source`
      if (!is.null(input_json$`by_source`)) {
        stopifnot(is.vector(input_json$`by_source`), length(input_json$`by_source`) != 0)
        tmp <- sapply(input_json$`by_source`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersResponse: the required field `by_source` is missing."))
      }
      # check the required field `series`
      if (!is.null(input_json$`series`)) {
        stopifnot(is.vector(input_json$`series`), length(input_json$`series`) != 0)
        tmp <- sapply(input_json$`series`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersResponse: the required field `series` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiOrdersResponse
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

      # check if the required `from` is null
      if (is.null(self$`from`)) {
        return(FALSE)
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        return(FALSE)
      }

      # check if the required `totals` is null
      if (is.null(self$`totals`)) {
        return(FALSE)
      }

      # check if the required `by_source` is null
      if (is.null(self$`by_source`)) {
        return(FALSE)
      }

      # check if the required `series` is null
      if (is.null(self$`series`)) {
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

      # check if the required `from` is null
      if (is.null(self$`from`)) {
        invalid_fields["from"] <- "Non-nullable required field `from` cannot be null."
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        invalid_fields["to"] <- "Non-nullable required field `to` cannot be null."
      }

      # check if the required `totals` is null
      if (is.null(self$`totals`)) {
        invalid_fields["totals"] <- "Non-nullable required field `totals` cannot be null."
      }

      # check if the required `by_source` is null
      if (is.null(self$`by_source`)) {
        invalid_fields["by_source"] <- "Non-nullable required field `by_source` cannot be null."
      }

      # check if the required `series` is null
      if (is.null(self$`series`)) {
        invalid_fields["series"] <- "Non-nullable required field `series` cannot be null."
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
# AiOrdersResponse$unlock()
#
## Below is an example to define the print function
# AiOrdersResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiOrdersResponse$lock()

