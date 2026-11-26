#' Create a new StudyResponse
#'
#' @description
#' One custom AI study with its brief, subjects, dimensions and latest reports
#'
#' @docType class
#' @title StudyResponse
#' @description StudyResponse Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field title  character
#' @field study_type brand_set, sector, geo, topic or custom character
#' @field cadence one_shot or monthly character
#' @field status active or archived character
#' @field project_id The project the study is attached to; null for an account-level study integer
#' @field subjects_count  integer
#' @field ai_models Analyst models the study runs on list(character)
#' @field output_language_code ISO 639-1 code of the language the reports are written in character
#' @field created_at  character
#' @field last_report_at When the latest report started; null before the first one character
#' @field brief What the study asks the analyst models; null when none was written character
#' @field subjects Names of the subjects it compares list(character)
#' @field dimensions Keys of the dimensions it scores, as the dimension filter takes them list(character)
#' @field reports The 24 latest reports, newest first list(\link{ReputationReportSummary})
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StudyResponse <- R6::R6Class(
  "StudyResponse",
  public = list(
    `id` = NULL,
    `title` = NULL,
    `study_type` = NULL,
    `cadence` = NULL,
    `status` = NULL,
    `project_id` = NULL,
    `subjects_count` = NULL,
    `ai_models` = NULL,
    `output_language_code` = NULL,
    `created_at` = NULL,
    `last_report_at` = NULL,
    `brief` = NULL,
    `subjects` = NULL,
    `dimensions` = NULL,
    `reports` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new StudyResponse class.
    #'
    #' @param id id
    #' @param title title
    #' @param study_type brand_set, sector, geo, topic or custom
    #' @param cadence one_shot or monthly
    #' @param status active or archived
    #' @param project_id The project the study is attached to; null for an account-level study
    #' @param subjects_count subjects_count
    #' @param ai_models Analyst models the study runs on
    #' @param output_language_code ISO 639-1 code of the language the reports are written in
    #' @param created_at created_at
    #' @param last_report_at When the latest report started; null before the first one
    #' @param brief What the study asks the analyst models; null when none was written
    #' @param subjects Names of the subjects it compares
    #' @param dimensions Keys of the dimensions it scores, as the dimension filter takes them
    #' @param reports The 24 latest reports, newest first
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`id`, `title`, `study_type`, `cadence`, `status`, `project_id`, `subjects_count`, `ai_models`, `output_language_code`, `created_at`, `last_report_at`, `brief`, `subjects`, `dimensions`, `reports`, `request_id`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!missing(`study_type`)) {
        if (!(is.character(`study_type`) && length(`study_type`) == 1)) {
          stop(paste("Error! Invalid data for `study_type`. Must be a string:", `study_type`))
        }
        self$`study_type` <- `study_type`
      }
      if (!missing(`cadence`)) {
        if (!(is.character(`cadence`) && length(`cadence`) == 1)) {
          stop(paste("Error! Invalid data for `cadence`. Must be a string:", `cadence`))
        }
        self$`cadence` <- `cadence`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`subjects_count`)) {
        if (!(is.numeric(`subjects_count`) && length(`subjects_count`) == 1)) {
          stop(paste("Error! Invalid data for `subjects_count`. Must be an integer:", `subjects_count`))
        }
        self$`subjects_count` <- `subjects_count`
      }
      if (!missing(`ai_models`)) {
        stopifnot(is.vector(`ai_models`), length(`ai_models`) != 0)
        sapply(`ai_models`, function(x) stopifnot(is.character(x)))
        self$`ai_models` <- `ai_models`
      }
      if (!missing(`output_language_code`)) {
        if (!(is.character(`output_language_code`) && length(`output_language_code`) == 1)) {
          stop(paste("Error! Invalid data for `output_language_code`. Must be a string:", `output_language_code`))
        }
        self$`output_language_code` <- `output_language_code`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`last_report_at`)) {
        if (!(is.character(`last_report_at`) && length(`last_report_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_report_at`. Must be a string:", `last_report_at`))
        }
        self$`last_report_at` <- `last_report_at`
      }
      if (!missing(`brief`)) {
        if (!(is.character(`brief`) && length(`brief`) == 1)) {
          stop(paste("Error! Invalid data for `brief`. Must be a string:", `brief`))
        }
        self$`brief` <- `brief`
      }
      if (!missing(`subjects`)) {
        stopifnot(is.vector(`subjects`), length(`subjects`) != 0)
        sapply(`subjects`, function(x) stopifnot(is.character(x)))
        self$`subjects` <- `subjects`
      }
      if (!missing(`dimensions`)) {
        stopifnot(is.vector(`dimensions`), length(`dimensions`) != 0)
        sapply(`dimensions`, function(x) stopifnot(is.character(x)))
        self$`dimensions` <- `dimensions`
      }
      if (!missing(`reports`)) {
        stopifnot(is.vector(`reports`), length(`reports`) != 0)
        sapply(`reports`, function(x) stopifnot(R6::is.R6(x)))
        self$`reports` <- `reports`
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
    #' @return StudyResponse as a base R list.
    #' @examples
    #' # convert array of StudyResponse (x) to a data frame
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
    #' Convert StudyResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StudyResponseObject <- list()
      if (!is.null(self$`id`)) {
        StudyResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`title`)) {
        StudyResponseObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`study_type`)) {
        StudyResponseObject[["study_type"]] <-
          self$`study_type`
      }
      if (!is.null(self$`cadence`)) {
        StudyResponseObject[["cadence"]] <-
          self$`cadence`
      }
      if (!is.null(self$`status`)) {
        StudyResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`project_id`)) {
        StudyResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`subjects_count`)) {
        StudyResponseObject[["subjects_count"]] <-
          self$`subjects_count`
      }
      if (!is.null(self$`ai_models`)) {
        StudyResponseObject[["ai_models"]] <-
          self$`ai_models`
      }
      if (!is.null(self$`output_language_code`)) {
        StudyResponseObject[["output_language_code"]] <-
          self$`output_language_code`
      }
      if (!is.null(self$`created_at`)) {
        StudyResponseObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`last_report_at`)) {
        StudyResponseObject[["last_report_at"]] <-
          self$`last_report_at`
      }
      if (!is.null(self$`brief`)) {
        StudyResponseObject[["brief"]] <-
          self$`brief`
      }
      if (!is.null(self$`subjects`)) {
        StudyResponseObject[["subjects"]] <-
          self$`subjects`
      }
      if (!is.null(self$`dimensions`)) {
        StudyResponseObject[["dimensions"]] <-
          self$`dimensions`
      }
      if (!is.null(self$`reports`)) {
        StudyResponseObject[["reports"]] <-
          self$extractSimpleType(self$`reports`)
      }
      if (!is.null(self$`request_id`)) {
        StudyResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(StudyResponseObject)
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
    #' Deserialize JSON string into an instance of StudyResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of StudyResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`study_type`)) {
        self$`study_type` <- this_object$`study_type`
      }
      if (!is.null(this_object$`cadence`)) {
        self$`cadence` <- this_object$`cadence`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`subjects_count`)) {
        self$`subjects_count` <- this_object$`subjects_count`
      }
      if (!is.null(this_object$`ai_models`)) {
        self$`ai_models` <- ApiClient$new()$deserializeObj(this_object$`ai_models`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`output_language_code`)) {
        self$`output_language_code` <- this_object$`output_language_code`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`last_report_at`)) {
        self$`last_report_at` <- this_object$`last_report_at`
      }
      if (!is.null(this_object$`brief`)) {
        self$`brief` <- this_object$`brief`
      }
      if (!is.null(this_object$`subjects`)) {
        self$`subjects` <- ApiClient$new()$deserializeObj(this_object$`subjects`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`dimensions`)) {
        self$`dimensions` <- ApiClient$new()$deserializeObj(this_object$`dimensions`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`reports`)) {
        self$`reports` <- ApiClient$new()$deserializeObj(this_object$`reports`, "array[ReputationReportSummary]", loadNamespace("llmpulse"))
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
    #' @return StudyResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StudyResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of StudyResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`title` <- this_object$`title`
      self$`study_type` <- this_object$`study_type`
      self$`cadence` <- this_object$`cadence`
      self$`status` <- this_object$`status`
      self$`project_id` <- this_object$`project_id`
      self$`subjects_count` <- this_object$`subjects_count`
      self$`ai_models` <- ApiClient$new()$deserializeObj(this_object$`ai_models`, "array[character]", loadNamespace("llmpulse"))
      self$`output_language_code` <- this_object$`output_language_code`
      self$`created_at` <- this_object$`created_at`
      self$`last_report_at` <- this_object$`last_report_at`
      self$`brief` <- this_object$`brief`
      self$`subjects` <- ApiClient$new()$deserializeObj(this_object$`subjects`, "array[character]", loadNamespace("llmpulse"))
      self$`dimensions` <- ApiClient$new()$deserializeObj(this_object$`dimensions`, "array[character]", loadNamespace("llmpulse"))
      self$`reports` <- ApiClient$new()$deserializeObj(this_object$`reports`, "array[ReputationReportSummary]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to StudyResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `id` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `title` is missing."))
      }
      # check the required field `study_type`
      if (!is.null(input_json$`study_type`)) {
        if (!(is.character(input_json$`study_type`) && length(input_json$`study_type`) == 1)) {
          stop(paste("Error! Invalid data for `study_type`. Must be a string:", input_json$`study_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `study_type` is missing."))
      }
      # check the required field `cadence`
      if (!is.null(input_json$`cadence`)) {
        if (!(is.character(input_json$`cadence`) && length(input_json$`cadence`) == 1)) {
          stop(paste("Error! Invalid data for `cadence`. Must be a string:", input_json$`cadence`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `cadence` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `status` is missing."))
      }
      # check the required field `project_id`
      if (!is.null(input_json$`project_id`)) {
        if (!(is.numeric(input_json$`project_id`) && length(input_json$`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", input_json$`project_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `project_id` is missing."))
      }
      # check the required field `subjects_count`
      if (!is.null(input_json$`subjects_count`)) {
        if (!(is.numeric(input_json$`subjects_count`) && length(input_json$`subjects_count`) == 1)) {
          stop(paste("Error! Invalid data for `subjects_count`. Must be an integer:", input_json$`subjects_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `subjects_count` is missing."))
      }
      # check the required field `ai_models`
      if (!is.null(input_json$`ai_models`)) {
        stopifnot(is.vector(input_json$`ai_models`), length(input_json$`ai_models`) != 0)
        tmp <- sapply(input_json$`ai_models`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `ai_models` is missing."))
      }
      # check the required field `output_language_code`
      if (!is.null(input_json$`output_language_code`)) {
        if (!(is.character(input_json$`output_language_code`) && length(input_json$`output_language_code`) == 1)) {
          stop(paste("Error! Invalid data for `output_language_code`. Must be a string:", input_json$`output_language_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `output_language_code` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `created_at` is missing."))
      }
      # check the required field `last_report_at`
      if (!is.null(input_json$`last_report_at`)) {
        if (!(is.character(input_json$`last_report_at`) && length(input_json$`last_report_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_report_at`. Must be a string:", input_json$`last_report_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `last_report_at` is missing."))
      }
      # check the required field `brief`
      if (!is.null(input_json$`brief`)) {
        if (!(is.character(input_json$`brief`) && length(input_json$`brief`) == 1)) {
          stop(paste("Error! Invalid data for `brief`. Must be a string:", input_json$`brief`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `brief` is missing."))
      }
      # check the required field `subjects`
      if (!is.null(input_json$`subjects`)) {
        stopifnot(is.vector(input_json$`subjects`), length(input_json$`subjects`) != 0)
        tmp <- sapply(input_json$`subjects`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `subjects` is missing."))
      }
      # check the required field `dimensions`
      if (!is.null(input_json$`dimensions`)) {
        stopifnot(is.vector(input_json$`dimensions`), length(input_json$`dimensions`) != 0)
        tmp <- sapply(input_json$`dimensions`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `dimensions` is missing."))
      }
      # check the required field `reports`
      if (!is.null(input_json$`reports`)) {
        stopifnot(is.vector(input_json$`reports`), length(input_json$`reports`) != 0)
        tmp <- sapply(input_json$`reports`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `reports` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StudyResponse
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

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        return(FALSE)
      }

      # check if the required `study_type` is null
      if (is.null(self$`study_type`)) {
        return(FALSE)
      }

      # check if the required `cadence` is null
      if (is.null(self$`cadence`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `subjects_count` is null
      if (is.null(self$`subjects_count`)) {
        return(FALSE)
      }

      # check if the required `ai_models` is null
      if (is.null(self$`ai_models`)) {
        return(FALSE)
      }

      # check if the required `output_language_code` is null
      if (is.null(self$`output_language_code`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `subjects` is null
      if (is.null(self$`subjects`)) {
        return(FALSE)
      }

      # check if the required `dimensions` is null
      if (is.null(self$`dimensions`)) {
        return(FALSE)
      }

      # check if the required `reports` is null
      if (is.null(self$`reports`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      # check if the required `study_type` is null
      if (is.null(self$`study_type`)) {
        invalid_fields["study_type"] <- "Non-nullable required field `study_type` cannot be null."
      }

      # check if the required `cadence` is null
      if (is.null(self$`cadence`)) {
        invalid_fields["cadence"] <- "Non-nullable required field `cadence` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `subjects_count` is null
      if (is.null(self$`subjects_count`)) {
        invalid_fields["subjects_count"] <- "Non-nullable required field `subjects_count` cannot be null."
      }

      # check if the required `ai_models` is null
      if (is.null(self$`ai_models`)) {
        invalid_fields["ai_models"] <- "Non-nullable required field `ai_models` cannot be null."
      }

      # check if the required `output_language_code` is null
      if (is.null(self$`output_language_code`)) {
        invalid_fields["output_language_code"] <- "Non-nullable required field `output_language_code` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `subjects` is null
      if (is.null(self$`subjects`)) {
        invalid_fields["subjects"] <- "Non-nullable required field `subjects` cannot be null."
      }

      # check if the required `dimensions` is null
      if (is.null(self$`dimensions`)) {
        invalid_fields["dimensions"] <- "Non-nullable required field `dimensions` cannot be null."
      }

      # check if the required `reports` is null
      if (is.null(self$`reports`)) {
        invalid_fields["reports"] <- "Non-nullable required field `reports` cannot be null."
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
# StudyResponse$unlock()
#
## Below is an example to define the print function
# StudyResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StudyResponse$lock()

