#' Create a new AiModelDeclinedAnswersResponse
#'
#' @description
#' How often one AI model declined to answer the project's prompts. An answer is a finished run of the model, a declined one included; a declined answer counts as no answer and never enters the metrics. The window starts at the tracking period holding its first day, and summary, chart and by_prompt count that same window.
#'
#' @docType class
#' @title AiModelDeclinedAnswersResponse
#' @description AiModelDeclinedAnswersResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field from Start of the tracking period holding the first day asked for character
#' @field to  character
#' @field model The model the counts are for character
#' @field cadence The account's current tracking cadence: daily, weekly or monthly. Chart periods before a switch from weekly to daily stay weekly. character
#' @field filters  \link{AiModelDeclinedAnswersResponseFilters} [optional]
#' @field summary  \link{AiModelDeclinedAnswersResponseSummary}
#' @field chart One point per tracking period holding an answer, oldest first. A period without answers has no point; a period with answers and no declines is a real 0. list(\link{AiModelDeclinedAnswersResponseChartInner})
#' @field by_prompt  \link{AiModelDeclinedAnswersResponseByPrompt}
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelDeclinedAnswersResponse <- R6::R6Class(
  "AiModelDeclinedAnswersResponse",
  public = list(
    `project_id` = NULL,
    `from` = NULL,
    `to` = NULL,
    `model` = NULL,
    `cadence` = NULL,
    `filters` = NULL,
    `summary` = NULL,
    `chart` = NULL,
    `by_prompt` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new AiModelDeclinedAnswersResponse class.
    #'
    #' @param project_id project_id
    #' @param from Start of the tracking period holding the first day asked for
    #' @param to to
    #' @param model The model the counts are for
    #' @param cadence The account's current tracking cadence: daily, weekly or monthly. Chart periods before a switch from weekly to daily stay weekly.
    #' @param summary summary
    #' @param chart One point per tracking period holding an answer, oldest first. A period without answers has no point; a period with answers and no declines is a real 0.
    #' @param by_prompt by_prompt
    #' @param filters filters
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `from`, `to`, `model`, `cadence`, `summary`, `chart`, `by_prompt`, `filters` = NULL, `request_id` = NULL, ...) {
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
      if (!missing(`model`)) {
        if (!(`model` %in% c("gemini"))) {
          stop(paste("Error! \"", `model`, "\" cannot be assigned to `model`. Must be \"gemini\".", sep = ""))
        }
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!missing(`cadence`)) {
        if (!(is.character(`cadence`) && length(`cadence`) == 1)) {
          stop(paste("Error! Invalid data for `cadence`. Must be a string:", `cadence`))
        }
        self$`cadence` <- `cadence`
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
      if (!is.null(`filters`)) {
        stopifnot(R6::is.R6(`filters`))
        self$`filters` <- `filters`
      }
      if (!is.null(`request_id`)) {
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
    #' @return AiModelDeclinedAnswersResponse as a base R list.
    #' @examples
    #' # convert array of AiModelDeclinedAnswersResponse (x) to a data frame
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
    #' Convert AiModelDeclinedAnswersResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelDeclinedAnswersResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        AiModelDeclinedAnswersResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`from`)) {
        AiModelDeclinedAnswersResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        AiModelDeclinedAnswersResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`model`)) {
        AiModelDeclinedAnswersResponseObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`cadence`)) {
        AiModelDeclinedAnswersResponseObject[["cadence"]] <-
          self$`cadence`
      }
      if (!is.null(self$`filters`)) {
        AiModelDeclinedAnswersResponseObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`summary`)) {
        AiModelDeclinedAnswersResponseObject[["summary"]] <-
          self$extractSimpleType(self$`summary`)
      }
      if (!is.null(self$`chart`)) {
        AiModelDeclinedAnswersResponseObject[["chart"]] <-
          self$extractSimpleType(self$`chart`)
      }
      if (!is.null(self$`by_prompt`)) {
        AiModelDeclinedAnswersResponseObject[["by_prompt"]] <-
          self$extractSimpleType(self$`by_prompt`)
      }
      if (!is.null(self$`request_id`)) {
        AiModelDeclinedAnswersResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(AiModelDeclinedAnswersResponseObject)
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
    #' Deserialize JSON string into an instance of AiModelDeclinedAnswersResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelDeclinedAnswersResponse
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
      if (!is.null(this_object$`model`)) {
        if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("gemini"))) {
          stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"gemini\".", sep = ""))
        }
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`cadence`)) {
        self$`cadence` <- this_object$`cadence`
      }
      if (!is.null(this_object$`filters`)) {
        `filters_object` <- AiModelDeclinedAnswersResponseFilters$new()
        `filters_object`$fromJSON(jsonlite::toJSON(this_object$`filters`, auto_unbox = TRUE, digits = NA))
        self$`filters` <- `filters_object`
      }
      if (!is.null(this_object$`summary`)) {
        `summary_object` <- AiModelDeclinedAnswersResponseSummary$new()
        `summary_object`$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
        self$`summary` <- `summary_object`
      }
      if (!is.null(this_object$`chart`)) {
        self$`chart` <- ApiClient$new()$deserializeObj(this_object$`chart`, "array[AiModelDeclinedAnswersResponseChartInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`by_prompt`)) {
        `by_prompt_object` <- AiModelDeclinedAnswersResponseByPrompt$new()
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
    #' @return AiModelDeclinedAnswersResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelDeclinedAnswersResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelDeclinedAnswersResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("gemini"))) {
        stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"gemini\".", sep = ""))
      }
      self$`model` <- this_object$`model`
      self$`cadence` <- this_object$`cadence`
      self$`filters` <- AiModelDeclinedAnswersResponseFilters$new()$fromJSON(jsonlite::toJSON(this_object$`filters`, auto_unbox = TRUE, digits = NA))
      self$`summary` <- AiModelDeclinedAnswersResponseSummary$new()$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
      self$`chart` <- ApiClient$new()$deserializeObj(this_object$`chart`, "array[AiModelDeclinedAnswersResponseChartInner]", loadNamespace("llmpulse"))
      self$`by_prompt` <- AiModelDeclinedAnswersResponseByPrompt$new()$fromJSON(jsonlite::toJSON(this_object$`by_prompt`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelDeclinedAnswersResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AiModelDeclinedAnswersResponse: the required field `project_id` is missing."))
      }
      # check the required field `from`
      if (!is.null(input_json$`from`)) {
        if (!(is.character(input_json$`from`) && length(input_json$`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", input_json$`from`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelDeclinedAnswersResponse: the required field `from` is missing."))
      }
      # check the required field `to`
      if (!is.null(input_json$`to`)) {
        if (!(is.character(input_json$`to`) && length(input_json$`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", input_json$`to`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelDeclinedAnswersResponse: the required field `to` is missing."))
      }
      # check the required field `model`
      if (!is.null(input_json$`model`)) {
        if (!(is.character(input_json$`model`) && length(input_json$`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", input_json$`model`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelDeclinedAnswersResponse: the required field `model` is missing."))
      }
      # check the required field `cadence`
      if (!is.null(input_json$`cadence`)) {
        if (!(is.character(input_json$`cadence`) && length(input_json$`cadence`) == 1)) {
          stop(paste("Error! Invalid data for `cadence`. Must be a string:", input_json$`cadence`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelDeclinedAnswersResponse: the required field `cadence` is missing."))
      }
      # check the required field `summary`
      if (!is.null(input_json$`summary`)) {
        stopifnot(R6::is.R6(input_json$`summary`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelDeclinedAnswersResponse: the required field `summary` is missing."))
      }
      # check the required field `chart`
      if (!is.null(input_json$`chart`)) {
        stopifnot(is.vector(input_json$`chart`), length(input_json$`chart`) != 0)
        tmp <- sapply(input_json$`chart`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelDeclinedAnswersResponse: the required field `chart` is missing."))
      }
      # check the required field `by_prompt`
      if (!is.null(input_json$`by_prompt`)) {
        stopifnot(R6::is.R6(input_json$`by_prompt`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelDeclinedAnswersResponse: the required field `by_prompt` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelDeclinedAnswersResponse
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

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        return(FALSE)
      }

      # check if the required `cadence` is null
      if (is.null(self$`cadence`)) {
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

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        invalid_fields["model"] <- "Non-nullable required field `model` cannot be null."
      }

      # check if the required `cadence` is null
      if (is.null(self$`cadence`)) {
        invalid_fields["cadence"] <- "Non-nullable required field `cadence` cannot be null."
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
# AiModelDeclinedAnswersResponse$unlock()
#
## Below is an example to define the print function
# AiModelDeclinedAnswersResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelDeclinedAnswersResponse$lock()

