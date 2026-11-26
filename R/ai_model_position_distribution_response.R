#' Create a new AiModelPositionDistributionResponse
#'
#' @description
#' The positions at which one or two brands were mentioned, in four buckets, per period of the window.
#'
#' @docType class
#' @title AiModelPositionDistributionResponse
#' @description AiModelPositionDistributionResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field from  character
#' @field to  character
#' @field filters  \link{AiModelInsightsReportFiltersEcho}
#' @field granularity  character
#' @field brands The first brand (brand1, else the project) and the second (brand2, else the competitor with the most mentions, else the project), each left out when it has no mention in the window list(\link{AiModelPositionDistributionBrand})
#' @field max_stacked_value The largest mentions count of one period across the brands, for a shared chart axis integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelPositionDistributionResponse <- R6::R6Class(
  "AiModelPositionDistributionResponse",
  public = list(
    `project_id` = NULL,
    `from` = NULL,
    `to` = NULL,
    `filters` = NULL,
    `granularity` = NULL,
    `brands` = NULL,
    `max_stacked_value` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new AiModelPositionDistributionResponse class.
    #'
    #' @param project_id project_id
    #' @param from from
    #' @param to to
    #' @param filters filters
    #' @param granularity granularity
    #' @param brands The first brand (brand1, else the project) and the second (brand2, else the competitor with the most mentions, else the project), each left out when it has no mention in the window
    #' @param max_stacked_value The largest mentions count of one period across the brands, for a shared chart axis
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `from`, `to`, `filters`, `granularity`, `brands`, `max_stacked_value`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
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
      if (!missing(`filters`)) {
        stopifnot(R6::is.R6(`filters`))
        self$`filters` <- `filters`
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
      if (!missing(`brands`)) {
        stopifnot(is.vector(`brands`), length(`brands`) != 0)
        sapply(`brands`, function(x) stopifnot(R6::is.R6(x)))
        self$`brands` <- `brands`
      }
      if (!missing(`max_stacked_value`)) {
        if (!(is.numeric(`max_stacked_value`) && length(`max_stacked_value`) == 1)) {
          stop(paste("Error! Invalid data for `max_stacked_value`. Must be an integer:", `max_stacked_value`))
        }
        self$`max_stacked_value` <- `max_stacked_value`
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
    #' @return AiModelPositionDistributionResponse as a base R list.
    #' @examples
    #' # convert array of AiModelPositionDistributionResponse (x) to a data frame
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
    #' Convert AiModelPositionDistributionResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelPositionDistributionResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        AiModelPositionDistributionResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`from`)) {
        AiModelPositionDistributionResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        AiModelPositionDistributionResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`filters`)) {
        AiModelPositionDistributionResponseObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`granularity`)) {
        AiModelPositionDistributionResponseObject[["granularity"]] <-
          self$`granularity`
      }
      if (!is.null(self$`brands`)) {
        AiModelPositionDistributionResponseObject[["brands"]] <-
          self$extractSimpleType(self$`brands`)
      }
      if (!is.null(self$`max_stacked_value`)) {
        AiModelPositionDistributionResponseObject[["max_stacked_value"]] <-
          self$`max_stacked_value`
      }
      if (!is.null(self$`request_id`)) {
        AiModelPositionDistributionResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(AiModelPositionDistributionResponseObject)
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
    #' Deserialize JSON string into an instance of AiModelPositionDistributionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelPositionDistributionResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`filters`)) {
        `filters_object` <- AiModelInsightsReportFiltersEcho$new()
        `filters_object`$fromJSON(jsonlite::toJSON(this_object$`filters`, auto_unbox = TRUE, digits = NA))
        self$`filters` <- `filters_object`
      }
      if (!is.null(this_object$`granularity`)) {
        if (!is.null(this_object$`granularity`) && !(this_object$`granularity` %in% c("day", "week", "month"))) {
          stop(paste("Error! \"", this_object$`granularity`, "\" cannot be assigned to `granularity`. Must be \"day\", \"week\", \"month\".", sep = ""))
        }
        self$`granularity` <- this_object$`granularity`
      }
      if (!is.null(this_object$`brands`)) {
        self$`brands` <- ApiClient$new()$deserializeObj(this_object$`brands`, "array[AiModelPositionDistributionBrand]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`max_stacked_value`)) {
        self$`max_stacked_value` <- this_object$`max_stacked_value`
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
    #' @return AiModelPositionDistributionResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelPositionDistributionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelPositionDistributionResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`filters` <- AiModelInsightsReportFiltersEcho$new()$fromJSON(jsonlite::toJSON(this_object$`filters`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`granularity`) && !(this_object$`granularity` %in% c("day", "week", "month"))) {
        stop(paste("Error! \"", this_object$`granularity`, "\" cannot be assigned to `granularity`. Must be \"day\", \"week\", \"month\".", sep = ""))
      }
      self$`granularity` <- this_object$`granularity`
      self$`brands` <- ApiClient$new()$deserializeObj(this_object$`brands`, "array[AiModelPositionDistributionBrand]", loadNamespace("llmpulse"))
      self$`max_stacked_value` <- this_object$`max_stacked_value`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelPositionDistributionResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionResponse: the required field `project_id` is missing."))
      }
      # check the required field `from`
      if (!is.null(input_json$`from`)) {
        if (!(is.character(input_json$`from`) && length(input_json$`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", input_json$`from`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionResponse: the required field `from` is missing."))
      }
      # check the required field `to`
      if (!is.null(input_json$`to`)) {
        if (!(is.character(input_json$`to`) && length(input_json$`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", input_json$`to`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionResponse: the required field `to` is missing."))
      }
      # check the required field `filters`
      if (!is.null(input_json$`filters`)) {
        stopifnot(R6::is.R6(input_json$`filters`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionResponse: the required field `filters` is missing."))
      }
      # check the required field `granularity`
      if (!is.null(input_json$`granularity`)) {
        if (!(is.character(input_json$`granularity`) && length(input_json$`granularity`) == 1)) {
          stop(paste("Error! Invalid data for `granularity`. Must be a string:", input_json$`granularity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionResponse: the required field `granularity` is missing."))
      }
      # check the required field `brands`
      if (!is.null(input_json$`brands`)) {
        stopifnot(is.vector(input_json$`brands`), length(input_json$`brands`) != 0)
        tmp <- sapply(input_json$`brands`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionResponse: the required field `brands` is missing."))
      }
      # check the required field `max_stacked_value`
      if (!is.null(input_json$`max_stacked_value`)) {
        if (!(is.numeric(input_json$`max_stacked_value`) && length(input_json$`max_stacked_value`) == 1)) {
          stop(paste("Error! Invalid data for `max_stacked_value`. Must be an integer:", input_json$`max_stacked_value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionResponse: the required field `max_stacked_value` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelPositionDistributionResponse
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

      # check if the required `from` is null
      if (is.null(self$`from`)) {
        return(FALSE)
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        return(FALSE)
      }

      # check if the required `filters` is null
      if (is.null(self$`filters`)) {
        return(FALSE)
      }

      # check if the required `granularity` is null
      if (is.null(self$`granularity`)) {
        return(FALSE)
      }

      # check if the required `brands` is null
      if (is.null(self$`brands`)) {
        return(FALSE)
      }

      # check if the required `max_stacked_value` is null
      if (is.null(self$`max_stacked_value`)) {
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

      # check if the required `from` is null
      if (is.null(self$`from`)) {
        invalid_fields["from"] <- "Non-nullable required field `from` cannot be null."
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        invalid_fields["to"] <- "Non-nullable required field `to` cannot be null."
      }

      # check if the required `filters` is null
      if (is.null(self$`filters`)) {
        invalid_fields["filters"] <- "Non-nullable required field `filters` cannot be null."
      }

      # check if the required `granularity` is null
      if (is.null(self$`granularity`)) {
        invalid_fields["granularity"] <- "Non-nullable required field `granularity` cannot be null."
      }

      # check if the required `brands` is null
      if (is.null(self$`brands`)) {
        invalid_fields["brands"] <- "Non-nullable required field `brands` cannot be null."
      }

      # check if the required `max_stacked_value` is null
      if (is.null(self$`max_stacked_value`)) {
        invalid_fields["max_stacked_value"] <- "Non-nullable required field `max_stacked_value` cannot be null."
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
# AiModelPositionDistributionResponse$unlock()
#
## Below is an example to define the print function
# AiModelPositionDistributionResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelPositionDistributionResponse$lock()

