#' Create a new AiOverviewResultsResponse
#'
#' @description
#' How often Google AI Overviews returned a result for the project's prompts. A result rate is a percentage (0-100) of the AI Overview runs, 0 when there is none.
#'
#' @docType class
#' @title AiOverviewResultsResponse
#' @description AiOverviewResultsResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field from  character
#' @field to  character
#' @field filters  \link{AiModelInsightsReportFiltersEcho}
#' @field granularity  character
#' @field summary  \link{AiOverviewResultCounts}
#' @field chart One point per period of the window, oldest first, 0 included list(\link{AiOverviewResultsResponseChartInner})
#' @field by_prompt  \link{AiOverviewResultsResponseByPrompt}
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiOverviewResultsResponse <- R6::R6Class(
  "AiOverviewResultsResponse",
  public = list(
    `project_id` = NULL,
    `from` = NULL,
    `to` = NULL,
    `filters` = NULL,
    `granularity` = NULL,
    `summary` = NULL,
    `chart` = NULL,
    `by_prompt` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new AiOverviewResultsResponse class.
    #'
    #' @param project_id project_id
    #' @param from from
    #' @param to to
    #' @param filters filters
    #' @param granularity granularity
    #' @param summary summary
    #' @param chart One point per period of the window, oldest first, 0 included
    #' @param by_prompt by_prompt
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `from`, `to`, `filters`, `granularity`, `summary`, `chart`, `by_prompt`, `request_id`, ...) {
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
      if (!missing(`summary`)) {
        stopifnot(R6::is.R6(`summary`))
        self$`summary` <- `summary`
      }
      if (!missing(`chart`)) {
        stopifnot(is.vector(`chart`), length(`chart`) != 0)
        sapply(`chart`, function(x) stopifnot(R6::is.R6(x)))
        self$`chart` <- `chart`
      }
      if (!missing(`by_prompt`)) {
        stopifnot(R6::is.R6(`by_prompt`))
        self$`by_prompt` <- `by_prompt`
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
    #' @return AiOverviewResultsResponse as a base R list.
    #' @examples
    #' # convert array of AiOverviewResultsResponse (x) to a data frame
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
    #' Convert AiOverviewResultsResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiOverviewResultsResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        AiOverviewResultsResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`from`)) {
        AiOverviewResultsResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        AiOverviewResultsResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`filters`)) {
        AiOverviewResultsResponseObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`granularity`)) {
        AiOverviewResultsResponseObject[["granularity"]] <-
          self$`granularity`
      }
      if (!is.null(self$`summary`)) {
        AiOverviewResultsResponseObject[["summary"]] <-
          self$extractSimpleType(self$`summary`)
      }
      if (!is.null(self$`chart`)) {
        AiOverviewResultsResponseObject[["chart"]] <-
          self$extractSimpleType(self$`chart`)
      }
      if (!is.null(self$`by_prompt`)) {
        AiOverviewResultsResponseObject[["by_prompt"]] <-
          self$extractSimpleType(self$`by_prompt`)
      }
      if (!is.null(self$`request_id`)) {
        AiOverviewResultsResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(AiOverviewResultsResponseObject)
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
    #' Deserialize JSON string into an instance of AiOverviewResultsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiOverviewResultsResponse
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
      if (!is.null(this_object$`summary`)) {
        `summary_object` <- AiOverviewResultCounts$new()
        `summary_object`$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
        self$`summary` <- `summary_object`
      }
      if (!is.null(this_object$`chart`)) {
        self$`chart` <- ApiClient$new()$deserializeObj(this_object$`chart`, "array[AiOverviewResultsResponseChartInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`by_prompt`)) {
        `by_prompt_object` <- AiOverviewResultsResponseByPrompt$new()
        `by_prompt_object`$fromJSON(jsonlite::toJSON(this_object$`by_prompt`, auto_unbox = TRUE, digits = NA))
        self$`by_prompt` <- `by_prompt_object`
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
    #' @return AiOverviewResultsResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiOverviewResultsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiOverviewResultsResponse
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
      self$`summary` <- AiOverviewResultCounts$new()$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
      self$`chart` <- ApiClient$new()$deserializeObj(this_object$`chart`, "array[AiOverviewResultsResponseChartInner]", loadNamespace("llmpulse"))
      self$`by_prompt` <- AiOverviewResultsResponseByPrompt$new()$fromJSON(jsonlite::toJSON(this_object$`by_prompt`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiOverviewResultsResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AiOverviewResultsResponse: the required field `project_id` is missing."))
      }
      # check the required field `from`
      if (!is.null(input_json$`from`)) {
        if (!(is.character(input_json$`from`) && length(input_json$`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", input_json$`from`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOverviewResultsResponse: the required field `from` is missing."))
      }
      # check the required field `to`
      if (!is.null(input_json$`to`)) {
        if (!(is.character(input_json$`to`) && length(input_json$`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", input_json$`to`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOverviewResultsResponse: the required field `to` is missing."))
      }
      # check the required field `filters`
      if (!is.null(input_json$`filters`)) {
        stopifnot(R6::is.R6(input_json$`filters`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOverviewResultsResponse: the required field `filters` is missing."))
      }
      # check the required field `granularity`
      if (!is.null(input_json$`granularity`)) {
        if (!(is.character(input_json$`granularity`) && length(input_json$`granularity`) == 1)) {
          stop(paste("Error! Invalid data for `granularity`. Must be a string:", input_json$`granularity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOverviewResultsResponse: the required field `granularity` is missing."))
      }
      # check the required field `summary`
      if (!is.null(input_json$`summary`)) {
        stopifnot(R6::is.R6(input_json$`summary`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOverviewResultsResponse: the required field `summary` is missing."))
      }
      # check the required field `chart`
      if (!is.null(input_json$`chart`)) {
        stopifnot(is.vector(input_json$`chart`), length(input_json$`chart`) != 0)
        tmp <- sapply(input_json$`chart`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOverviewResultsResponse: the required field `chart` is missing."))
      }
      # check the required field `by_prompt`
      if (!is.null(input_json$`by_prompt`)) {
        stopifnot(R6::is.R6(input_json$`by_prompt`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOverviewResultsResponse: the required field `by_prompt` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOverviewResultsResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiOverviewResultsResponse
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

      # check if the required `summary` is null
      if (is.null(self$`summary`)) {
        return(FALSE)
      }

      # check if the required `chart` is null
      if (is.null(self$`chart`)) {
        return(FALSE)
      }

      # check if the required `by_prompt` is null
      if (is.null(self$`by_prompt`)) {
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

      # check if the required `summary` is null
      if (is.null(self$`summary`)) {
        invalid_fields["summary"] <- "Non-nullable required field `summary` cannot be null."
      }

      # check if the required `chart` is null
      if (is.null(self$`chart`)) {
        invalid_fields["chart"] <- "Non-nullable required field `chart` cannot be null."
      }

      # check if the required `by_prompt` is null
      if (is.null(self$`by_prompt`)) {
        invalid_fields["by_prompt"] <- "Non-nullable required field `by_prompt` cannot be null."
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
# AiOverviewResultsResponse$unlock()
#
## Below is an example to define the print function
# AiOverviewResultsResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiOverviewResultsResponse$lock()

