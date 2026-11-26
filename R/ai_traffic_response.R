#' Create a new AiTrafficResponse
#'
#' @description
#' Visits from AI assistants measured by the connected web analytics provider, by day over the window.
#'
#' @docType class
#' @title AiTrafficResponse
#' @description AiTrafficResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field provider The connected provider: google_analytics, adobe_analytics, adobe_cja, posthog, plausible, matomo or piano character
#' @field from  character
#' @field to  character
#' @field granularity  character
#' @field totals  \link{AiTrafficResponseTotals}
#' @field by_source One row per AI source with traffic in the window, most sessions first list(\link{AiTrafficResponseBySourceInner})
#' @field timeseries Sessions keyed by AI source slug, then by the first day of the period (YYYY-MM-DD); a period without traffic is left out named list(named list(integer))
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiTrafficResponse <- R6::R6Class(
  "AiTrafficResponse",
  public = list(
    `project_id` = NULL,
    `provider` = NULL,
    `from` = NULL,
    `to` = NULL,
    `granularity` = NULL,
    `totals` = NULL,
    `by_source` = NULL,
    `timeseries` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new AiTrafficResponse class.
    #'
    #' @param project_id project_id
    #' @param provider The connected provider: google_analytics, adobe_analytics, adobe_cja, posthog, plausible, matomo or piano
    #' @param from from
    #' @param to to
    #' @param granularity granularity
    #' @param totals totals
    #' @param by_source One row per AI source with traffic in the window, most sessions first
    #' @param timeseries Sessions keyed by AI source slug, then by the first day of the period (YYYY-MM-DD); a period without traffic is left out
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `provider`, `from`, `to`, `granularity`, `totals`, `by_source`, `timeseries`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`provider`)) {
        if (!(is.character(`provider`) && length(`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", `provider`))
        }
        self$`provider` <- `provider`
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
      if (!missing(`granularity`)) {
        if (!(`granularity` %in% c("day", "week", "month"))) {
          stop(paste("Error! \"", `granularity`, "\" cannot be assigned to `granularity`. Must be \"day\", \"week\", \"month\".", sep = ""))
        }
        if (!(is.character(`granularity`) && length(`granularity`) == 1)) {
          stop(paste("Error! Invalid data for `granularity`. Must be a string:", `granularity`))
        }
        self$`granularity` <- `granularity`
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
      if (!missing(`timeseries`)) {
        stopifnot(is.vector(`timeseries`), length(`timeseries`) != 0)
        sapply(`timeseries`, function(x) stopifnot(R6::is.R6(x)))
        self$`timeseries` <- `timeseries`
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
    #' @return AiTrafficResponse as a base R list.
    #' @examples
    #' # convert array of AiTrafficResponse (x) to a data frame
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
    #' Convert AiTrafficResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiTrafficResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        AiTrafficResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`provider`)) {
        AiTrafficResponseObject[["provider"]] <-
          self$`provider`
      }
      if (!is.null(self$`from`)) {
        AiTrafficResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        AiTrafficResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`granularity`)) {
        AiTrafficResponseObject[["granularity"]] <-
          self$`granularity`
      }
      if (!is.null(self$`totals`)) {
        AiTrafficResponseObject[["totals"]] <-
          self$extractSimpleType(self$`totals`)
      }
      if (!is.null(self$`by_source`)) {
        AiTrafficResponseObject[["by_source"]] <-
          self$extractSimpleType(self$`by_source`)
      }
      if (!is.null(self$`timeseries`)) {
        AiTrafficResponseObject[["timeseries"]] <-
          self$extractSimpleType(self$`timeseries`)
      }
      if (!is.null(self$`request_id`)) {
        AiTrafficResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(AiTrafficResponseObject)
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
    #' Deserialize JSON string into an instance of AiTrafficResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiTrafficResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`provider`)) {
        self$`provider` <- this_object$`provider`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`granularity`)) {
        if (!is.null(this_object$`granularity`) && !(this_object$`granularity` %in% c("day", "week", "month"))) {
          stop(paste("Error! \"", this_object$`granularity`, "\" cannot be assigned to `granularity`. Must be \"day\", \"week\", \"month\".", sep = ""))
        }
        self$`granularity` <- this_object$`granularity`
      }
      if (!is.null(this_object$`totals`)) {
        `totals_object` <- AiTrafficResponseTotals$new()
        `totals_object`$fromJSON(jsonlite::toJSON(this_object$`totals`, auto_unbox = TRUE, digits = NA))
        self$`totals` <- `totals_object`
      }
      if (!is.null(this_object$`by_source`)) {
        self$`by_source` <- ApiClient$new()$deserializeObj(this_object$`by_source`, "array[AiTrafficResponseBySourceInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`timeseries`)) {
        self$`timeseries` <- ApiClient$new()$deserializeObj(this_object$`timeseries`, "map(map(integer))", loadNamespace("llmpulse"))
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
    #' @return AiTrafficResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiTrafficResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiTrafficResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`provider` <- this_object$`provider`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      if (!is.null(this_object$`granularity`) && !(this_object$`granularity` %in% c("day", "week", "month"))) {
        stop(paste("Error! \"", this_object$`granularity`, "\" cannot be assigned to `granularity`. Must be \"day\", \"week\", \"month\".", sep = ""))
      }
      self$`granularity` <- this_object$`granularity`
      self$`totals` <- AiTrafficResponseTotals$new()$fromJSON(jsonlite::toJSON(this_object$`totals`, auto_unbox = TRUE, digits = NA))
      self$`by_source` <- ApiClient$new()$deserializeObj(this_object$`by_source`, "array[AiTrafficResponseBySourceInner]", loadNamespace("llmpulse"))
      self$`timeseries` <- ApiClient$new()$deserializeObj(this_object$`timeseries`, "map(map(integer))", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiTrafficResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponse: the required field `project_id` is missing."))
      }
      # check the required field `provider`
      if (!is.null(input_json$`provider`)) {
        if (!(is.character(input_json$`provider`) && length(input_json$`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", input_json$`provider`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponse: the required field `provider` is missing."))
      }
      # check the required field `from`
      if (!is.null(input_json$`from`)) {
        if (!(is.character(input_json$`from`) && length(input_json$`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", input_json$`from`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponse: the required field `from` is missing."))
      }
      # check the required field `to`
      if (!is.null(input_json$`to`)) {
        if (!(is.character(input_json$`to`) && length(input_json$`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", input_json$`to`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponse: the required field `to` is missing."))
      }
      # check the required field `granularity`
      if (!is.null(input_json$`granularity`)) {
        if (!(is.character(input_json$`granularity`) && length(input_json$`granularity`) == 1)) {
          stop(paste("Error! Invalid data for `granularity`. Must be a string:", input_json$`granularity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponse: the required field `granularity` is missing."))
      }
      # check the required field `totals`
      if (!is.null(input_json$`totals`)) {
        stopifnot(R6::is.R6(input_json$`totals`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponse: the required field `totals` is missing."))
      }
      # check the required field `by_source`
      if (!is.null(input_json$`by_source`)) {
        stopifnot(is.vector(input_json$`by_source`), length(input_json$`by_source`) != 0)
        tmp <- sapply(input_json$`by_source`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponse: the required field `by_source` is missing."))
      }
      # check the required field `timeseries`
      if (!is.null(input_json$`timeseries`)) {
        stopifnot(is.vector(input_json$`timeseries`), length(input_json$`timeseries`) != 0)
        tmp <- sapply(input_json$`timeseries`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponse: the required field `timeseries` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiTrafficResponse
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

      # check if the required `provider` is null
      if (is.null(self$`provider`)) {
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

      # check if the required `granularity` is null
      if (is.null(self$`granularity`)) {
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

      # check if the required `timeseries` is null
      if (is.null(self$`timeseries`)) {
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

      # check if the required `provider` is null
      if (is.null(self$`provider`)) {
        invalid_fields["provider"] <- "Non-nullable required field `provider` cannot be null."
      }

      # check if the required `from` is null
      if (is.null(self$`from`)) {
        invalid_fields["from"] <- "Non-nullable required field `from` cannot be null."
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        invalid_fields["to"] <- "Non-nullable required field `to` cannot be null."
      }

      # check if the required `granularity` is null
      if (is.null(self$`granularity`)) {
        invalid_fields["granularity"] <- "Non-nullable required field `granularity` cannot be null."
      }

      # check if the required `totals` is null
      if (is.null(self$`totals`)) {
        invalid_fields["totals"] <- "Non-nullable required field `totals` cannot be null."
      }

      # check if the required `by_source` is null
      if (is.null(self$`by_source`)) {
        invalid_fields["by_source"] <- "Non-nullable required field `by_source` cannot be null."
      }

      # check if the required `timeseries` is null
      if (is.null(self$`timeseries`)) {
        invalid_fields["timeseries"] <- "Non-nullable required field `timeseries` cannot be null."
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
# AiTrafficResponse$unlock()
#
## Below is an example to define the print function
# AiTrafficResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiTrafficResponse$lock()

