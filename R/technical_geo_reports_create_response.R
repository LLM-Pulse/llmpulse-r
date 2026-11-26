#' Create a new TechnicalGeoReportsCreateResponse
#'
#' @description
#' TechnicalGeoReportsCreateResponse Class
#'
#' @docType class
#' @title TechnicalGeoReportsCreateResponse
#' @description TechnicalGeoReportsCreateResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field url The URL analysed character
#' @field country_code The country used, the project country when none was sent character
#' @field output_language_code ISO 639-1 code the llms.txt files are written in, or auto for the website's own language character
#' @field batch_id Bundle id, for the batch_id filter of GET /technical_geo_reports; null when no report was created integer
#' @field created_reports The report_type of every report created list(character)
#' @field report_ids The id of each created report, by report_type named list(integer)
#' @field app_urls The link that opens each created report in the app, by report_type named list(character)
#' @field failed_reports Reports that could not be created, with the reasons list(\link{TechnicalGeoReportsCreateResponseFailedReportsInner})
#' @field next_endpoint Path template to poll each created report character
#' @field poll_after_seconds Seconds to wait before the first poll integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TechnicalGeoReportsCreateResponse <- R6::R6Class(
  "TechnicalGeoReportsCreateResponse",
  public = list(
    `project_id` = NULL,
    `url` = NULL,
    `country_code` = NULL,
    `output_language_code` = NULL,
    `batch_id` = NULL,
    `created_reports` = NULL,
    `report_ids` = NULL,
    `app_urls` = NULL,
    `failed_reports` = NULL,
    `next_endpoint` = NULL,
    `poll_after_seconds` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new TechnicalGeoReportsCreateResponse class.
    #'
    #' @param project_id project_id
    #' @param url The URL analysed
    #' @param country_code The country used, the project country when none was sent
    #' @param output_language_code ISO 639-1 code the llms.txt files are written in, or auto for the website's own language
    #' @param batch_id Bundle id, for the batch_id filter of GET /technical_geo_reports; null when no report was created
    #' @param created_reports The report_type of every report created
    #' @param report_ids The id of each created report, by report_type
    #' @param app_urls The link that opens each created report in the app, by report_type
    #' @param failed_reports Reports that could not be created, with the reasons
    #' @param next_endpoint Path template to poll each created report
    #' @param poll_after_seconds Seconds to wait before the first poll
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `url`, `country_code`, `output_language_code`, `batch_id`, `created_reports`, `report_ids`, `app_urls`, `failed_reports`, `next_endpoint`, `poll_after_seconds`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
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
      if (!missing(`batch_id`)) {
        if (!(is.numeric(`batch_id`) && length(`batch_id`) == 1)) {
          stop(paste("Error! Invalid data for `batch_id`. Must be an integer:", `batch_id`))
        }
        self$`batch_id` <- `batch_id`
      }
      if (!missing(`created_reports`)) {
        stopifnot(is.vector(`created_reports`), length(`created_reports`) != 0)
        sapply(`created_reports`, function(x) stopifnot(is.character(x)))
        self$`created_reports` <- `created_reports`
      }
      if (!missing(`report_ids`)) {
        stopifnot(is.vector(`report_ids`), length(`report_ids`) != 0)
        sapply(`report_ids`, function(x) stopifnot(is.character(x)))
        self$`report_ids` <- `report_ids`
      }
      if (!missing(`app_urls`)) {
        stopifnot(is.vector(`app_urls`), length(`app_urls`) != 0)
        sapply(`app_urls`, function(x) stopifnot(is.character(x)))
        self$`app_urls` <- `app_urls`
      }
      if (!missing(`failed_reports`)) {
        stopifnot(is.vector(`failed_reports`), length(`failed_reports`) != 0)
        sapply(`failed_reports`, function(x) stopifnot(R6::is.R6(x)))
        self$`failed_reports` <- `failed_reports`
      }
      if (!missing(`next_endpoint`)) {
        if (!(is.character(`next_endpoint`) && length(`next_endpoint`) == 1)) {
          stop(paste("Error! Invalid data for `next_endpoint`. Must be a string:", `next_endpoint`))
        }
        self$`next_endpoint` <- `next_endpoint`
      }
      if (!missing(`poll_after_seconds`)) {
        if (!(is.numeric(`poll_after_seconds`) && length(`poll_after_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `poll_after_seconds`. Must be an integer:", `poll_after_seconds`))
        }
        self$`poll_after_seconds` <- `poll_after_seconds`
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
    #' @return TechnicalGeoReportsCreateResponse as a base R list.
    #' @examples
    #' # convert array of TechnicalGeoReportsCreateResponse (x) to a data frame
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
    #' Convert TechnicalGeoReportsCreateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TechnicalGeoReportsCreateResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        TechnicalGeoReportsCreateResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`url`)) {
        TechnicalGeoReportsCreateResponseObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`country_code`)) {
        TechnicalGeoReportsCreateResponseObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`output_language_code`)) {
        TechnicalGeoReportsCreateResponseObject[["output_language_code"]] <-
          self$`output_language_code`
      }
      if (!is.null(self$`batch_id`)) {
        TechnicalGeoReportsCreateResponseObject[["batch_id"]] <-
          self$`batch_id`
      }
      if (!is.null(self$`created_reports`)) {
        TechnicalGeoReportsCreateResponseObject[["created_reports"]] <-
          self$`created_reports`
      }
      if (!is.null(self$`report_ids`)) {
        TechnicalGeoReportsCreateResponseObject[["report_ids"]] <-
          self$`report_ids`
      }
      if (!is.null(self$`app_urls`)) {
        TechnicalGeoReportsCreateResponseObject[["app_urls"]] <-
          self$`app_urls`
      }
      if (!is.null(self$`failed_reports`)) {
        TechnicalGeoReportsCreateResponseObject[["failed_reports"]] <-
          self$extractSimpleType(self$`failed_reports`)
      }
      if (!is.null(self$`next_endpoint`)) {
        TechnicalGeoReportsCreateResponseObject[["next_endpoint"]] <-
          self$`next_endpoint`
      }
      if (!is.null(self$`poll_after_seconds`)) {
        TechnicalGeoReportsCreateResponseObject[["poll_after_seconds"]] <-
          self$`poll_after_seconds`
      }
      if (!is.null(self$`request_id`)) {
        TechnicalGeoReportsCreateResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(TechnicalGeoReportsCreateResponseObject)
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
    #' Deserialize JSON string into an instance of TechnicalGeoReportsCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TechnicalGeoReportsCreateResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`output_language_code`)) {
        self$`output_language_code` <- this_object$`output_language_code`
      }
      if (!is.null(this_object$`batch_id`)) {
        self$`batch_id` <- this_object$`batch_id`
      }
      if (!is.null(this_object$`created_reports`)) {
        self$`created_reports` <- ApiClient$new()$deserializeObj(this_object$`created_reports`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`report_ids`)) {
        self$`report_ids` <- ApiClient$new()$deserializeObj(this_object$`report_ids`, "map(integer)", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`app_urls`)) {
        self$`app_urls` <- ApiClient$new()$deserializeObj(this_object$`app_urls`, "map(character)", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`failed_reports`)) {
        self$`failed_reports` <- ApiClient$new()$deserializeObj(this_object$`failed_reports`, "array[TechnicalGeoReportsCreateResponseFailedReportsInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`next_endpoint`)) {
        self$`next_endpoint` <- this_object$`next_endpoint`
      }
      if (!is.null(this_object$`poll_after_seconds`)) {
        self$`poll_after_seconds` <- this_object$`poll_after_seconds`
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
    #' @return TechnicalGeoReportsCreateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TechnicalGeoReportsCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TechnicalGeoReportsCreateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`url` <- this_object$`url`
      self$`country_code` <- this_object$`country_code`
      self$`output_language_code` <- this_object$`output_language_code`
      self$`batch_id` <- this_object$`batch_id`
      self$`created_reports` <- ApiClient$new()$deserializeObj(this_object$`created_reports`, "array[character]", loadNamespace("llmpulse"))
      self$`report_ids` <- ApiClient$new()$deserializeObj(this_object$`report_ids`, "map(integer)", loadNamespace("llmpulse"))
      self$`app_urls` <- ApiClient$new()$deserializeObj(this_object$`app_urls`, "map(character)", loadNamespace("llmpulse"))
      self$`failed_reports` <- ApiClient$new()$deserializeObj(this_object$`failed_reports`, "array[TechnicalGeoReportsCreateResponseFailedReportsInner]", loadNamespace("llmpulse"))
      self$`next_endpoint` <- this_object$`next_endpoint`
      self$`poll_after_seconds` <- this_object$`poll_after_seconds`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to TechnicalGeoReportsCreateResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportsCreateResponse: the required field `project_id` is missing."))
      }
      # check the required field `url`
      if (!is.null(input_json$`url`)) {
        if (!(is.character(input_json$`url`) && length(input_json$`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", input_json$`url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportsCreateResponse: the required field `url` is missing."))
      }
      # check the required field `country_code`
      if (!is.null(input_json$`country_code`)) {
        if (!(is.character(input_json$`country_code`) && length(input_json$`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", input_json$`country_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportsCreateResponse: the required field `country_code` is missing."))
      }
      # check the required field `output_language_code`
      if (!is.null(input_json$`output_language_code`)) {
        if (!(is.character(input_json$`output_language_code`) && length(input_json$`output_language_code`) == 1)) {
          stop(paste("Error! Invalid data for `output_language_code`. Must be a string:", input_json$`output_language_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportsCreateResponse: the required field `output_language_code` is missing."))
      }
      # check the required field `batch_id`
      if (!is.null(input_json$`batch_id`)) {
        if (!(is.numeric(input_json$`batch_id`) && length(input_json$`batch_id`) == 1)) {
          stop(paste("Error! Invalid data for `batch_id`. Must be an integer:", input_json$`batch_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportsCreateResponse: the required field `batch_id` is missing."))
      }
      # check the required field `created_reports`
      if (!is.null(input_json$`created_reports`)) {
        stopifnot(is.vector(input_json$`created_reports`), length(input_json$`created_reports`) != 0)
        tmp <- sapply(input_json$`created_reports`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportsCreateResponse: the required field `created_reports` is missing."))
      }
      # check the required field `report_ids`
      if (!is.null(input_json$`report_ids`)) {
        stopifnot(is.vector(input_json$`report_ids`), length(input_json$`report_ids`) != 0)
        tmp <- sapply(input_json$`report_ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportsCreateResponse: the required field `report_ids` is missing."))
      }
      # check the required field `app_urls`
      if (!is.null(input_json$`app_urls`)) {
        stopifnot(is.vector(input_json$`app_urls`), length(input_json$`app_urls`) != 0)
        tmp <- sapply(input_json$`app_urls`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportsCreateResponse: the required field `app_urls` is missing."))
      }
      # check the required field `failed_reports`
      if (!is.null(input_json$`failed_reports`)) {
        stopifnot(is.vector(input_json$`failed_reports`), length(input_json$`failed_reports`) != 0)
        tmp <- sapply(input_json$`failed_reports`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportsCreateResponse: the required field `failed_reports` is missing."))
      }
      # check the required field `next_endpoint`
      if (!is.null(input_json$`next_endpoint`)) {
        if (!(is.character(input_json$`next_endpoint`) && length(input_json$`next_endpoint`) == 1)) {
          stop(paste("Error! Invalid data for `next_endpoint`. Must be a string:", input_json$`next_endpoint`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportsCreateResponse: the required field `next_endpoint` is missing."))
      }
      # check the required field `poll_after_seconds`
      if (!is.null(input_json$`poll_after_seconds`)) {
        if (!(is.numeric(input_json$`poll_after_seconds`) && length(input_json$`poll_after_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `poll_after_seconds`. Must be an integer:", input_json$`poll_after_seconds`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportsCreateResponse: the required field `poll_after_seconds` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportsCreateResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TechnicalGeoReportsCreateResponse
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

      # check if the required `url` is null
      if (is.null(self$`url`)) {
        return(FALSE)
      }

      # check if the required `country_code` is null
      if (is.null(self$`country_code`)) {
        return(FALSE)
      }

      # check if the required `output_language_code` is null
      if (is.null(self$`output_language_code`)) {
        return(FALSE)
      }

      # check if the required `created_reports` is null
      if (is.null(self$`created_reports`)) {
        return(FALSE)
      }

      # check if the required `report_ids` is null
      if (is.null(self$`report_ids`)) {
        return(FALSE)
      }

      # check if the required `app_urls` is null
      if (is.null(self$`app_urls`)) {
        return(FALSE)
      }

      # check if the required `failed_reports` is null
      if (is.null(self$`failed_reports`)) {
        return(FALSE)
      }

      # check if the required `next_endpoint` is null
      if (is.null(self$`next_endpoint`)) {
        return(FALSE)
      }

      # check if the required `poll_after_seconds` is null
      if (is.null(self$`poll_after_seconds`)) {
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

      # check if the required `url` is null
      if (is.null(self$`url`)) {
        invalid_fields["url"] <- "Non-nullable required field `url` cannot be null."
      }

      # check if the required `country_code` is null
      if (is.null(self$`country_code`)) {
        invalid_fields["country_code"] <- "Non-nullable required field `country_code` cannot be null."
      }

      # check if the required `output_language_code` is null
      if (is.null(self$`output_language_code`)) {
        invalid_fields["output_language_code"] <- "Non-nullable required field `output_language_code` cannot be null."
      }

      # check if the required `created_reports` is null
      if (is.null(self$`created_reports`)) {
        invalid_fields["created_reports"] <- "Non-nullable required field `created_reports` cannot be null."
      }

      # check if the required `report_ids` is null
      if (is.null(self$`report_ids`)) {
        invalid_fields["report_ids"] <- "Non-nullable required field `report_ids` cannot be null."
      }

      # check if the required `app_urls` is null
      if (is.null(self$`app_urls`)) {
        invalid_fields["app_urls"] <- "Non-nullable required field `app_urls` cannot be null."
      }

      # check if the required `failed_reports` is null
      if (is.null(self$`failed_reports`)) {
        invalid_fields["failed_reports"] <- "Non-nullable required field `failed_reports` cannot be null."
      }

      # check if the required `next_endpoint` is null
      if (is.null(self$`next_endpoint`)) {
        invalid_fields["next_endpoint"] <- "Non-nullable required field `next_endpoint` cannot be null."
      }

      # check if the required `poll_after_seconds` is null
      if (is.null(self$`poll_after_seconds`)) {
        invalid_fields["poll_after_seconds"] <- "Non-nullable required field `poll_after_seconds` cannot be null."
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
# TechnicalGeoReportsCreateResponse$unlock()
#
## Below is an example to define the print function
# TechnicalGeoReportsCreateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TechnicalGeoReportsCreateResponse$lock()

