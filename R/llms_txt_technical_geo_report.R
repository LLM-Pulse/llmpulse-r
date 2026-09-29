#' Create a new LlmsTxtTechnicalGeoReport
#'
#' @description
#' An llms_txt technical GEO report with its files, in the shape GET /technical_geo_reports/{id} returns
#'
#' @docType class
#' @title LlmsTxtTechnicalGeoReport
#' @description LlmsTxtTechnicalGeoReport Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field report_type Always llms_txt character [optional]
#' @field project_id  integer [optional]
#' @field batch_id Bundle the report was created in; null for a report created on its own integer [optional]
#' @field url Always null for llms_txt reports; domain names the website character [optional]
#' @field domain  character [optional]
#' @field country_code  character [optional]
#' @field output_language_code ISO 639-1 code the files were requested in; null when they are written in the website's own language character [optional]
#' @field status  character [optional]
#' @field result_available  character [optional]
#' @field overall_score Always null for llms_txt reports numeric [optional]
#' @field created_at  character [optional]
#' @field updated_at  character [optional]
#' @field result_data  \link{LlmsTxtTechnicalGeoReportResultData} [optional]
#' @field error_message  character [optional]
#' @field poll_after_seconds Seconds to wait before polling again while the report runs; null once it has finished integer [optional]
#' @field app_url Opens this report in the app character [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LlmsTxtTechnicalGeoReport <- R6::R6Class(
  "LlmsTxtTechnicalGeoReport",
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
    `result_data` = NULL,
    `error_message` = NULL,
    `poll_after_seconds` = NULL,
    `app_url` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new LlmsTxtTechnicalGeoReport class.
    #'
    #' @param id id
    #' @param report_type Always llms_txt
    #' @param project_id project_id
    #' @param batch_id Bundle the report was created in; null for a report created on its own
    #' @param url Always null for llms_txt reports; domain names the website
    #' @param domain domain
    #' @param country_code country_code
    #' @param output_language_code ISO 639-1 code the files were requested in; null when they are written in the website's own language
    #' @param status status
    #' @param result_available result_available
    #' @param overall_score Always null for llms_txt reports
    #' @param created_at created_at
    #' @param updated_at updated_at
    #' @param result_data result_data
    #' @param error_message error_message
    #' @param poll_after_seconds Seconds to wait before polling again while the report runs; null once it has finished
    #' @param app_url Opens this report in the app
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `report_type` = NULL, `project_id` = NULL, `batch_id` = NULL, `url` = NULL, `domain` = NULL, `country_code` = NULL, `output_language_code` = NULL, `status` = NULL, `result_available` = NULL, `overall_score` = NULL, `created_at` = NULL, `updated_at` = NULL, `result_data` = NULL, `error_message` = NULL, `poll_after_seconds` = NULL, `app_url` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`report_type`)) {
        if (!(is.character(`report_type`) && length(`report_type`) == 1)) {
          stop(paste("Error! Invalid data for `report_type`. Must be a string:", `report_type`))
        }
        self$`report_type` <- `report_type`
      }
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`batch_id`)) {
        if (!(is.numeric(`batch_id`) && length(`batch_id`) == 1)) {
          stop(paste("Error! Invalid data for `batch_id`. Must be an integer:", `batch_id`))
        }
        self$`batch_id` <- `batch_id`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!is.null(`country_code`)) {
        if (!(is.character(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", `country_code`))
        }
        self$`country_code` <- `country_code`
      }
      if (!is.null(`output_language_code`)) {
        if (!(is.character(`output_language_code`) && length(`output_language_code`) == 1)) {
          stop(paste("Error! Invalid data for `output_language_code`. Must be a string:", `output_language_code`))
        }
        self$`output_language_code` <- `output_language_code`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`result_available`)) {
        if (!(is.logical(`result_available`) && length(`result_available`) == 1)) {
          stop(paste("Error! Invalid data for `result_available`. Must be a boolean:", `result_available`))
        }
        self$`result_available` <- `result_available`
      }
      if (!is.null(`overall_score`)) {
        self$`overall_score` <- `overall_score`
      }
      if (!is.null(`created_at`)) {
        if (!is.character(`created_at`)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!is.null(`updated_at`)) {
        if (!is.character(`updated_at`)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
      }
      if (!is.null(`result_data`)) {
        stopifnot(R6::is.R6(`result_data`))
        self$`result_data` <- `result_data`
      }
      if (!is.null(`error_message`)) {
        if (!(is.character(`error_message`) && length(`error_message`) == 1)) {
          stop(paste("Error! Invalid data for `error_message`. Must be a string:", `error_message`))
        }
        self$`error_message` <- `error_message`
      }
      if (!is.null(`poll_after_seconds`)) {
        if (!(is.numeric(`poll_after_seconds`) && length(`poll_after_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `poll_after_seconds`. Must be an integer:", `poll_after_seconds`))
        }
        self$`poll_after_seconds` <- `poll_after_seconds`
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
    #' @return LlmsTxtTechnicalGeoReport as a base R list.
    #' @examples
    #' # convert array of LlmsTxtTechnicalGeoReport (x) to a data frame
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
    #' Convert LlmsTxtTechnicalGeoReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LlmsTxtTechnicalGeoReportObject <- list()
      if (!is.null(self$`id`)) {
        LlmsTxtTechnicalGeoReportObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`report_type`)) {
        LlmsTxtTechnicalGeoReportObject[["report_type"]] <-
          self$`report_type`
      }
      if (!is.null(self$`project_id`)) {
        LlmsTxtTechnicalGeoReportObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`batch_id`)) {
        LlmsTxtTechnicalGeoReportObject[["batch_id"]] <-
          self$`batch_id`
      }
      if (!is.null(self$`url`)) {
        LlmsTxtTechnicalGeoReportObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`domain`)) {
        LlmsTxtTechnicalGeoReportObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`country_code`)) {
        LlmsTxtTechnicalGeoReportObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`output_language_code`)) {
        LlmsTxtTechnicalGeoReportObject[["output_language_code"]] <-
          self$`output_language_code`
      }
      if (!is.null(self$`status`)) {
        LlmsTxtTechnicalGeoReportObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`result_available`)) {
        LlmsTxtTechnicalGeoReportObject[["result_available"]] <-
          self$`result_available`
      }
      if (!is.null(self$`overall_score`)) {
        LlmsTxtTechnicalGeoReportObject[["overall_score"]] <-
          self$`overall_score`
      }
      if (!is.null(self$`created_at`)) {
        LlmsTxtTechnicalGeoReportObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        LlmsTxtTechnicalGeoReportObject[["updated_at"]] <-
          self$`updated_at`
      }
      if (!is.null(self$`result_data`)) {
        LlmsTxtTechnicalGeoReportObject[["result_data"]] <-
          self$extractSimpleType(self$`result_data`)
      }
      if (!is.null(self$`error_message`)) {
        LlmsTxtTechnicalGeoReportObject[["error_message"]] <-
          self$`error_message`
      }
      if (!is.null(self$`poll_after_seconds`)) {
        LlmsTxtTechnicalGeoReportObject[["poll_after_seconds"]] <-
          self$`poll_after_seconds`
      }
      if (!is.null(self$`app_url`)) {
        LlmsTxtTechnicalGeoReportObject[["app_url"]] <-
          self$`app_url`
      }
      if (!is.null(self$`request_id`)) {
        LlmsTxtTechnicalGeoReportObject[["request_id"]] <-
          self$`request_id`
      }
      return(LlmsTxtTechnicalGeoReportObject)
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
    #' Deserialize JSON string into an instance of LlmsTxtTechnicalGeoReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of LlmsTxtTechnicalGeoReport
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
      if (!is.null(this_object$`result_data`)) {
        `result_data_object` <- LlmsTxtTechnicalGeoReportResultData$new()
        `result_data_object`$fromJSON(jsonlite::toJSON(this_object$`result_data`, auto_unbox = TRUE, digits = NA))
        self$`result_data` <- `result_data_object`
      }
      if (!is.null(this_object$`error_message`)) {
        self$`error_message` <- this_object$`error_message`
      }
      if (!is.null(this_object$`poll_after_seconds`)) {
        self$`poll_after_seconds` <- this_object$`poll_after_seconds`
      }
      if (!is.null(this_object$`app_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `app_url`. Must be a URL:", this_object$`app_url`))
        }
        self$`app_url` <- this_object$`app_url`
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
    #' @return LlmsTxtTechnicalGeoReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LlmsTxtTechnicalGeoReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of LlmsTxtTechnicalGeoReport
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
      self$`result_data` <- LlmsTxtTechnicalGeoReportResultData$new()$fromJSON(jsonlite::toJSON(this_object$`result_data`, auto_unbox = TRUE, digits = NA))
      self$`error_message` <- this_object$`error_message`
      self$`poll_after_seconds` <- this_object$`poll_after_seconds`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `app_url`. Must be a URL:", this_object$`app_url`))
      }
      self$`app_url` <- this_object$`app_url`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to LlmsTxtTechnicalGeoReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LlmsTxtTechnicalGeoReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# LlmsTxtTechnicalGeoReport$unlock()
#
## Below is an example to define the print function
# LlmsTxtTechnicalGeoReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LlmsTxtTechnicalGeoReport$lock()

