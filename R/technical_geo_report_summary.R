#' Create a new TechnicalGeoReportSummary
#'
#' @description
#' One technical GEO report's status and score
#'
#' @docType class
#' @title TechnicalGeoReportSummary
#' @description TechnicalGeoReportSummary Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field report_type The report_type requested (agent_readiness for ai_readiness) character
#' @field project_id  integer
#' @field batch_id Bundle the report was created in; null for a report created on its own integer
#' @field url The page analysed; null for the domain-level types (robots_txt, agent_readiness, llms_txt, ai_visibility) character
#' @field domain  character
#' @field country_code Set only on llms_txt and ai_visibility reports character
#' @field output_language_code ISO 639-1 code an llms_txt report was requested in; null for an llms_txt report written in the website's own language and for every other type character
#' @field status Depends on report_type. Every type ends completed or failed; ai_visibility can also end insufficient_data character
#' @field result_available Whether status is completed character
#' @field overall_score Null until the report completes, and always for llms_txt numeric
#' @field created_at  character
#' @field updated_at  character
#' @field app_url Opens this report in the app character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TechnicalGeoReportSummary <- R6::R6Class(
  "TechnicalGeoReportSummary",
  public = list(
    `id` = NULL,
    `report_type` = NULL,
    `project_id` = NULL,
    `batch_id` = NULL,
    `url` = NULL,
    `domain` = NULL,
    `country_code` = NULL,
    `output_language_code` = NULL,
    `status` = NULL,
    `result_available` = NULL,
    `overall_score` = NULL,
    `created_at` = NULL,
    `updated_at` = NULL,
    `app_url` = NULL,

    #' @description
    #' Initialize a new TechnicalGeoReportSummary class.
    #'
    #' @param id id
    #' @param report_type The report_type requested (agent_readiness for ai_readiness)
    #' @param project_id project_id
    #' @param batch_id Bundle the report was created in; null for a report created on its own
    #' @param url The page analysed; null for the domain-level types (robots_txt, agent_readiness, llms_txt, ai_visibility)
    #' @param domain domain
    #' @param country_code Set only on llms_txt and ai_visibility reports
    #' @param output_language_code ISO 639-1 code an llms_txt report was requested in; null for an llms_txt report written in the website's own language and for every other type
    #' @param status Depends on report_type. Every type ends completed or failed; ai_visibility can also end insufficient_data
    #' @param result_available Whether status is completed
    #' @param overall_score Null until the report completes, and always for llms_txt
    #' @param created_at created_at
    #' @param updated_at updated_at
    #' @param app_url Opens this report in the app
    #' @param ... Other optional arguments.
    initialize = function(`id`, `report_type`, `project_id`, `batch_id`, `url`, `domain`, `country_code`, `output_language_code`, `status`, `result_available`, `overall_score`, `created_at`, `updated_at`, `app_url` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`report_type`)) {
        if (!(is.character(`report_type`) && length(`report_type`) == 1)) {
          stop(paste("Error! Invalid data for `report_type`. Must be a string:", `report_type`))
        }
        self$`report_type` <- `report_type`
      }
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`batch_id`)) {
        if (!(is.numeric(`batch_id`) && length(`batch_id`) == 1)) {
          stop(paste("Error! Invalid data for `batch_id`. Must be an integer:", `batch_id`))
        }
        self$`batch_id` <- `batch_id`
      }
      if (!missing(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!missing(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!missing(`country_code`)) {
        if (!(is.character(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", `country_code`))
        }
        self$`country_code` <- `country_code`
      }
      if (!missing(`output_language_code`)) {
        if (!(is.character(`output_language_code`) && length(`output_language_code`) == 1)) {
          stop(paste("Error! Invalid data for `output_language_code`. Must be a string:", `output_language_code`))
        }
        self$`output_language_code` <- `output_language_code`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`result_available`)) {
        if (!(is.logical(`result_available`) && length(`result_available`) == 1)) {
          stop(paste("Error! Invalid data for `result_available`. Must be a boolean:", `result_available`))
        }
        self$`result_available` <- `result_available`
      }
      if (!missing(`overall_score`)) {
        self$`overall_score` <- `overall_score`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`updated_at`)) {
        if (!(is.character(`updated_at`) && length(`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
      }
      if (!is.null(`app_url`)) {
        if (!(is.character(`app_url`) && length(`app_url`) == 1)) {
          stop(paste("Error! Invalid data for `app_url`. Must be a string:", `app_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `app_url`. Must be a URL:", `app_url`))
        }
        self$`app_url` <- `app_url`
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
    #' @return TechnicalGeoReportSummary as a base R list.
    #' @examples
    #' # convert array of TechnicalGeoReportSummary (x) to a data frame
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
    #' Convert TechnicalGeoReportSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TechnicalGeoReportSummaryObject <- list()
      if (!is.null(self$`id`)) {
        TechnicalGeoReportSummaryObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`report_type`)) {
        TechnicalGeoReportSummaryObject[["report_type"]] <-
          self$`report_type`
      }
      if (!is.null(self$`project_id`)) {
        TechnicalGeoReportSummaryObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`batch_id`)) {
        TechnicalGeoReportSummaryObject[["batch_id"]] <-
          self$`batch_id`
      }
      if (!is.null(self$`url`)) {
        TechnicalGeoReportSummaryObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`domain`)) {
        TechnicalGeoReportSummaryObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`country_code`)) {
        TechnicalGeoReportSummaryObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`output_language_code`)) {
        TechnicalGeoReportSummaryObject[["output_language_code"]] <-
          self$`output_language_code`
      }
      if (!is.null(self$`status`)) {
        TechnicalGeoReportSummaryObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`result_available`)) {
        TechnicalGeoReportSummaryObject[["result_available"]] <-
          self$`result_available`
      }
      if (!is.null(self$`overall_score`)) {
        TechnicalGeoReportSummaryObject[["overall_score"]] <-
          self$`overall_score`
      }
      if (!is.null(self$`created_at`)) {
        TechnicalGeoReportSummaryObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        TechnicalGeoReportSummaryObject[["updated_at"]] <-
          self$`updated_at`
      }
      if (!is.null(self$`app_url`)) {
        TechnicalGeoReportSummaryObject[["app_url"]] <-
          self$`app_url`
      }
      return(TechnicalGeoReportSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TechnicalGeoReportSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of TechnicalGeoReportSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`report_type`)) {
        self$`report_type` <- this_object$`report_type`
      }
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`batch_id`)) {
        self$`batch_id` <- this_object$`batch_id`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`output_language_code`)) {
        self$`output_language_code` <- this_object$`output_language_code`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`result_available`)) {
        self$`result_available` <- this_object$`result_available`
      }
      if (!is.null(this_object$`overall_score`)) {
        self$`overall_score` <- this_object$`overall_score`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      if (!is.null(this_object$`app_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `app_url`. Must be a URL:", this_object$`app_url`))
        }
        self$`app_url` <- this_object$`app_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TechnicalGeoReportSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TechnicalGeoReportSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of TechnicalGeoReportSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`report_type` <- this_object$`report_type`
      self$`project_id` <- this_object$`project_id`
      self$`batch_id` <- this_object$`batch_id`
      self$`url` <- this_object$`url`
      self$`domain` <- this_object$`domain`
      self$`country_code` <- this_object$`country_code`
      self$`output_language_code` <- this_object$`output_language_code`
      self$`status` <- this_object$`status`
      self$`result_available` <- this_object$`result_available`
      self$`overall_score` <- this_object$`overall_score`
      self$`created_at` <- this_object$`created_at`
      self$`updated_at` <- this_object$`updated_at`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `app_url`. Must be a URL:", this_object$`app_url`))
      }
      self$`app_url` <- this_object$`app_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to TechnicalGeoReportSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportSummary: the required field `id` is missing."))
      }
      # check the required field `report_type`
      if (!is.null(input_json$`report_type`)) {
        if (!(is.character(input_json$`report_type`) && length(input_json$`report_type`) == 1)) {
          stop(paste("Error! Invalid data for `report_type`. Must be a string:", input_json$`report_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportSummary: the required field `report_type` is missing."))
      }
      # check the required field `project_id`
      if (!is.null(input_json$`project_id`)) {
        if (!(is.numeric(input_json$`project_id`) && length(input_json$`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", input_json$`project_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportSummary: the required field `project_id` is missing."))
      }
      # check the required field `batch_id`
      if (!is.null(input_json$`batch_id`)) {
        if (!(is.numeric(input_json$`batch_id`) && length(input_json$`batch_id`) == 1)) {
          stop(paste("Error! Invalid data for `batch_id`. Must be an integer:", input_json$`batch_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportSummary: the required field `batch_id` is missing."))
      }
      # check the required field `url`
      if (!is.null(input_json$`url`)) {
        if (!(is.character(input_json$`url`) && length(input_json$`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", input_json$`url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportSummary: the required field `url` is missing."))
      }
      # check the required field `domain`
      if (!is.null(input_json$`domain`)) {
        if (!(is.character(input_json$`domain`) && length(input_json$`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", input_json$`domain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportSummary: the required field `domain` is missing."))
      }
      # check the required field `country_code`
      if (!is.null(input_json$`country_code`)) {
        if (!(is.character(input_json$`country_code`) && length(input_json$`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", input_json$`country_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportSummary: the required field `country_code` is missing."))
      }
      # check the required field `output_language_code`
      if (!is.null(input_json$`output_language_code`)) {
        if (!(is.character(input_json$`output_language_code`) && length(input_json$`output_language_code`) == 1)) {
          stop(paste("Error! Invalid data for `output_language_code`. Must be a string:", input_json$`output_language_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportSummary: the required field `output_language_code` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportSummary: the required field `status` is missing."))
      }
      # check the required field `result_available`
      if (!is.null(input_json$`result_available`)) {
        if (!(is.logical(input_json$`result_available`) && length(input_json$`result_available`) == 1)) {
          stop(paste("Error! Invalid data for `result_available`. Must be a boolean:", input_json$`result_available`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportSummary: the required field `result_available` is missing."))
      }
      # check the required field `overall_score`
      if (!is.null(input_json$`overall_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportSummary: the required field `overall_score` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportSummary: the required field `created_at` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportSummary: the required field `updated_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TechnicalGeoReportSummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `report_type` is null
      if (is.null(self$`report_type`)) {
        return(FALSE)
      }

      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        return(FALSE)
      }

      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `result_available` is null
      if (is.null(self$`result_available`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `report_type` is null
      if (is.null(self$`report_type`)) {
        invalid_fields["report_type"] <- "Non-nullable required field `report_type` cannot be null."
      }

      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        invalid_fields["project_id"] <- "Non-nullable required field `project_id` cannot be null."
      }

      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        invalid_fields["domain"] <- "Non-nullable required field `domain` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `result_available` is null
      if (is.null(self$`result_available`)) {
        invalid_fields["result_available"] <- "Non-nullable required field `result_available` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
        invalid_fields["updated_at"] <- "Non-nullable required field `updated_at` cannot be null."
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
# TechnicalGeoReportSummary$unlock()
#
## Below is an example to define the print function
# TechnicalGeoReportSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TechnicalGeoReportSummary$lock()

