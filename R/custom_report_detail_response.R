#' Create a new CustomReportDetailResponse
#'
#' @description
#' CustomReportDetailResponse Class
#'
#' @docType class
#' @title CustomReportDetailResponse
#' @description CustomReportDetailResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field id  integer
#' @field name  character
#' @field date_range  \link{CustomReportDateRange}
#' @field schedule  \link{CustomReportSchedule}
#' @field recipients_count  integer [optional]
#' @field published  character [optional]
#' @field public_link_active  character [optional]
#' @field password_protected  character [optional]
#' @field portal_only  character [optional]
#' @field last_sent_at When the report was last emailed, on its schedule or with Send now character [optional]
#' @field created_at  character [optional]
#' @field updated_at  character [optional]
#' @field filters  \link{CustomReportFilters}
#' @field compare_previous  character [optional]
#' @field attach_excel  character [optional]
#' @field manual_send_available_at When the 10-minute cooldown after the last manual send ends; null when none is running character [optional]
#' @field generated_at  character
#' @field blocks The report layout in order list(\link{CustomReportBlock})
#' @field widgets  list(\link{CustomReportWidget})
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomReportDetailResponse <- R6::R6Class(
  "CustomReportDetailResponse",
  public = list(
    `project_id` = NULL,
    `id` = NULL,
    `name` = NULL,
    `date_range` = NULL,
    `schedule` = NULL,
    `recipients_count` = NULL,
    `published` = NULL,
    `public_link_active` = NULL,
    `password_protected` = NULL,
    `portal_only` = NULL,
    `last_sent_at` = NULL,
    `created_at` = NULL,
    `updated_at` = NULL,
    `filters` = NULL,
    `compare_previous` = NULL,
    `attach_excel` = NULL,
    `manual_send_available_at` = NULL,
    `generated_at` = NULL,
    `blocks` = NULL,
    `widgets` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new CustomReportDetailResponse class.
    #'
    #' @param project_id project_id
    #' @param id id
    #' @param name name
    #' @param date_range date_range
    #' @param schedule schedule
    #' @param filters filters
    #' @param generated_at generated_at
    #' @param blocks The report layout in order
    #' @param widgets widgets
    #' @param request_id request_id
    #' @param recipients_count recipients_count
    #' @param published published
    #' @param public_link_active public_link_active
    #' @param password_protected password_protected
    #' @param portal_only portal_only
    #' @param last_sent_at When the report was last emailed, on its schedule or with Send now
    #' @param created_at created_at
    #' @param updated_at updated_at
    #' @param compare_previous compare_previous
    #' @param attach_excel attach_excel
    #' @param manual_send_available_at When the 10-minute cooldown after the last manual send ends; null when none is running
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `id`, `name`, `date_range`, `schedule`, `filters`, `generated_at`, `blocks`, `widgets`, `request_id`, `recipients_count` = NULL, `published` = NULL, `public_link_active` = NULL, `password_protected` = NULL, `portal_only` = NULL, `last_sent_at` = NULL, `created_at` = NULL, `updated_at` = NULL, `compare_previous` = NULL, `attach_excel` = NULL, `manual_send_available_at` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`date_range`)) {
        stopifnot(R6::is.R6(`date_range`))
        self$`date_range` <- `date_range`
      }
      if (!missing(`schedule`)) {
        stopifnot(R6::is.R6(`schedule`))
        self$`schedule` <- `schedule`
      }
      if (!missing(`filters`)) {
        stopifnot(R6::is.R6(`filters`))
        self$`filters` <- `filters`
      }
      if (!missing(`generated_at`)) {
        if (!(is.character(`generated_at`) && length(`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", `generated_at`))
        }
        self$`generated_at` <- `generated_at`
      }
      if (!missing(`blocks`)) {
        stopifnot(is.vector(`blocks`), length(`blocks`) != 0)
        sapply(`blocks`, function(x) stopifnot(R6::is.R6(x)))
        self$`blocks` <- `blocks`
      }
      if (!missing(`widgets`)) {
        stopifnot(is.vector(`widgets`), length(`widgets`) != 0)
        sapply(`widgets`, function(x) stopifnot(R6::is.R6(x)))
        self$`widgets` <- `widgets`
      }
      if (!missing(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
      }
      if (!is.null(`recipients_count`)) {
        if (!(is.numeric(`recipients_count`) && length(`recipients_count`) == 1)) {
          stop(paste("Error! Invalid data for `recipients_count`. Must be an integer:", `recipients_count`))
        }
        self$`recipients_count` <- `recipients_count`
      }
      if (!is.null(`published`)) {
        if (!(is.logical(`published`) && length(`published`) == 1)) {
          stop(paste("Error! Invalid data for `published`. Must be a boolean:", `published`))
        }
        self$`published` <- `published`
      }
      if (!is.null(`public_link_active`)) {
        if (!(is.logical(`public_link_active`) && length(`public_link_active`) == 1)) {
          stop(paste("Error! Invalid data for `public_link_active`. Must be a boolean:", `public_link_active`))
        }
        self$`public_link_active` <- `public_link_active`
      }
      if (!is.null(`password_protected`)) {
        if (!(is.logical(`password_protected`) && length(`password_protected`) == 1)) {
          stop(paste("Error! Invalid data for `password_protected`. Must be a boolean:", `password_protected`))
        }
        self$`password_protected` <- `password_protected`
      }
      if (!is.null(`portal_only`)) {
        if (!(is.logical(`portal_only`) && length(`portal_only`) == 1)) {
          stop(paste("Error! Invalid data for `portal_only`. Must be a boolean:", `portal_only`))
        }
        self$`portal_only` <- `portal_only`
      }
      if (!is.null(`last_sent_at`)) {
        if (!is.character(`last_sent_at`)) {
          stop(paste("Error! Invalid data for `last_sent_at`. Must be a string:", `last_sent_at`))
        }
        self$`last_sent_at` <- `last_sent_at`
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
      if (!is.null(`compare_previous`)) {
        if (!(is.logical(`compare_previous`) && length(`compare_previous`) == 1)) {
          stop(paste("Error! Invalid data for `compare_previous`. Must be a boolean:", `compare_previous`))
        }
        self$`compare_previous` <- `compare_previous`
      }
      if (!is.null(`attach_excel`)) {
        if (!(is.logical(`attach_excel`) && length(`attach_excel`) == 1)) {
          stop(paste("Error! Invalid data for `attach_excel`. Must be a boolean:", `attach_excel`))
        }
        self$`attach_excel` <- `attach_excel`
      }
      if (!is.null(`manual_send_available_at`)) {
        if (!is.character(`manual_send_available_at`)) {
          stop(paste("Error! Invalid data for `manual_send_available_at`. Must be a string:", `manual_send_available_at`))
        }
        self$`manual_send_available_at` <- `manual_send_available_at`
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
    #' @return CustomReportDetailResponse as a base R list.
    #' @examples
    #' # convert array of CustomReportDetailResponse (x) to a data frame
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
    #' Convert CustomReportDetailResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomReportDetailResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        CustomReportDetailResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`id`)) {
        CustomReportDetailResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CustomReportDetailResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`date_range`)) {
        CustomReportDetailResponseObject[["date_range"]] <-
          self$extractSimpleType(self$`date_range`)
      }
      if (!is.null(self$`schedule`)) {
        CustomReportDetailResponseObject[["schedule"]] <-
          self$extractSimpleType(self$`schedule`)
      }
      if (!is.null(self$`recipients_count`)) {
        CustomReportDetailResponseObject[["recipients_count"]] <-
          self$`recipients_count`
      }
      if (!is.null(self$`published`)) {
        CustomReportDetailResponseObject[["published"]] <-
          self$`published`
      }
      if (!is.null(self$`public_link_active`)) {
        CustomReportDetailResponseObject[["public_link_active"]] <-
          self$`public_link_active`
      }
      if (!is.null(self$`password_protected`)) {
        CustomReportDetailResponseObject[["password_protected"]] <-
          self$`password_protected`
      }
      if (!is.null(self$`portal_only`)) {
        CustomReportDetailResponseObject[["portal_only"]] <-
          self$`portal_only`
      }
      if (!is.null(self$`last_sent_at`)) {
        CustomReportDetailResponseObject[["last_sent_at"]] <-
          self$`last_sent_at`
      }
      if (!is.null(self$`created_at`)) {
        CustomReportDetailResponseObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        CustomReportDetailResponseObject[["updated_at"]] <-
          self$`updated_at`
      }
      if (!is.null(self$`filters`)) {
        CustomReportDetailResponseObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`compare_previous`)) {
        CustomReportDetailResponseObject[["compare_previous"]] <-
          self$`compare_previous`
      }
      if (!is.null(self$`attach_excel`)) {
        CustomReportDetailResponseObject[["attach_excel"]] <-
          self$`attach_excel`
      }
      if (!is.null(self$`manual_send_available_at`)) {
        CustomReportDetailResponseObject[["manual_send_available_at"]] <-
          self$`manual_send_available_at`
      }
      if (!is.null(self$`generated_at`)) {
        CustomReportDetailResponseObject[["generated_at"]] <-
          self$`generated_at`
      }
      if (!is.null(self$`blocks`)) {
        CustomReportDetailResponseObject[["blocks"]] <-
          self$extractSimpleType(self$`blocks`)
      }
      if (!is.null(self$`widgets`)) {
        CustomReportDetailResponseObject[["widgets"]] <-
          self$extractSimpleType(self$`widgets`)
      }
      if (!is.null(self$`request_id`)) {
        CustomReportDetailResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(CustomReportDetailResponseObject)
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
    #' Deserialize JSON string into an instance of CustomReportDetailResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportDetailResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`date_range`)) {
        `date_range_object` <- CustomReportDateRange$new()
        `date_range_object`$fromJSON(jsonlite::toJSON(this_object$`date_range`, auto_unbox = TRUE, digits = NA))
        self$`date_range` <- `date_range_object`
      }
      if (!is.null(this_object$`schedule`)) {
        `schedule_object` <- CustomReportSchedule$new()
        `schedule_object`$fromJSON(jsonlite::toJSON(this_object$`schedule`, auto_unbox = TRUE, digits = NA))
        self$`schedule` <- `schedule_object`
      }
      if (!is.null(this_object$`recipients_count`)) {
        self$`recipients_count` <- this_object$`recipients_count`
      }
      if (!is.null(this_object$`published`)) {
        self$`published` <- this_object$`published`
      }
      if (!is.null(this_object$`public_link_active`)) {
        self$`public_link_active` <- this_object$`public_link_active`
      }
      if (!is.null(this_object$`password_protected`)) {
        self$`password_protected` <- this_object$`password_protected`
      }
      if (!is.null(this_object$`portal_only`)) {
        self$`portal_only` <- this_object$`portal_only`
      }
      if (!is.null(this_object$`last_sent_at`)) {
        self$`last_sent_at` <- this_object$`last_sent_at`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      if (!is.null(this_object$`filters`)) {
        `filters_object` <- CustomReportFilters$new()
        `filters_object`$fromJSON(jsonlite::toJSON(this_object$`filters`, auto_unbox = TRUE, digits = NA))
        self$`filters` <- `filters_object`
      }
      if (!is.null(this_object$`compare_previous`)) {
        self$`compare_previous` <- this_object$`compare_previous`
      }
      if (!is.null(this_object$`attach_excel`)) {
        self$`attach_excel` <- this_object$`attach_excel`
      }
      if (!is.null(this_object$`manual_send_available_at`)) {
        self$`manual_send_available_at` <- this_object$`manual_send_available_at`
      }
      if (!is.null(this_object$`generated_at`)) {
        self$`generated_at` <- this_object$`generated_at`
      }
      if (!is.null(this_object$`blocks`)) {
        self$`blocks` <- ApiClient$new()$deserializeObj(this_object$`blocks`, "array[CustomReportBlock]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`widgets`)) {
        self$`widgets` <- ApiClient$new()$deserializeObj(this_object$`widgets`, "array[CustomReportWidget]", loadNamespace("llmpulse"))
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
    #' @return CustomReportDetailResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomReportDetailResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportDetailResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`date_range` <- CustomReportDateRange$new()$fromJSON(jsonlite::toJSON(this_object$`date_range`, auto_unbox = TRUE, digits = NA))
      self$`schedule` <- CustomReportSchedule$new()$fromJSON(jsonlite::toJSON(this_object$`schedule`, auto_unbox = TRUE, digits = NA))
      self$`recipients_count` <- this_object$`recipients_count`
      self$`published` <- this_object$`published`
      self$`public_link_active` <- this_object$`public_link_active`
      self$`password_protected` <- this_object$`password_protected`
      self$`portal_only` <- this_object$`portal_only`
      self$`last_sent_at` <- this_object$`last_sent_at`
      self$`created_at` <- this_object$`created_at`
      self$`updated_at` <- this_object$`updated_at`
      self$`filters` <- CustomReportFilters$new()$fromJSON(jsonlite::toJSON(this_object$`filters`, auto_unbox = TRUE, digits = NA))
      self$`compare_previous` <- this_object$`compare_previous`
      self$`attach_excel` <- this_object$`attach_excel`
      self$`manual_send_available_at` <- this_object$`manual_send_available_at`
      self$`generated_at` <- this_object$`generated_at`
      self$`blocks` <- ApiClient$new()$deserializeObj(this_object$`blocks`, "array[CustomReportBlock]", loadNamespace("llmpulse"))
      self$`widgets` <- ApiClient$new()$deserializeObj(this_object$`widgets`, "array[CustomReportWidget]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CustomReportDetailResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CustomReportDetailResponse: the required field `project_id` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportDetailResponse: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportDetailResponse: the required field `name` is missing."))
      }
      # check the required field `date_range`
      if (!is.null(input_json$`date_range`)) {
        stopifnot(R6::is.R6(input_json$`date_range`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportDetailResponse: the required field `date_range` is missing."))
      }
      # check the required field `schedule`
      if (!is.null(input_json$`schedule`)) {
        stopifnot(R6::is.R6(input_json$`schedule`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportDetailResponse: the required field `schedule` is missing."))
      }
      # check the required field `filters`
      if (!is.null(input_json$`filters`)) {
        stopifnot(R6::is.R6(input_json$`filters`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportDetailResponse: the required field `filters` is missing."))
      }
      # check the required field `generated_at`
      if (!is.null(input_json$`generated_at`)) {
        if (!(is.character(input_json$`generated_at`) && length(input_json$`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", input_json$`generated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportDetailResponse: the required field `generated_at` is missing."))
      }
      # check the required field `blocks`
      if (!is.null(input_json$`blocks`)) {
        stopifnot(is.vector(input_json$`blocks`), length(input_json$`blocks`) != 0)
        tmp <- sapply(input_json$`blocks`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportDetailResponse: the required field `blocks` is missing."))
      }
      # check the required field `widgets`
      if (!is.null(input_json$`widgets`)) {
        stopifnot(is.vector(input_json$`widgets`), length(input_json$`widgets`) != 0)
        tmp <- sapply(input_json$`widgets`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportDetailResponse: the required field `widgets` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportDetailResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CustomReportDetailResponse
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

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `date_range` is null
      if (is.null(self$`date_range`)) {
        return(FALSE)
      }

      # check if the required `schedule` is null
      if (is.null(self$`schedule`)) {
        return(FALSE)
      }

      # check if the required `filters` is null
      if (is.null(self$`filters`)) {
        return(FALSE)
      }

      # check if the required `generated_at` is null
      if (is.null(self$`generated_at`)) {
        return(FALSE)
      }

      # check if the required `blocks` is null
      if (is.null(self$`blocks`)) {
        return(FALSE)
      }

      # check if the required `widgets` is null
      if (is.null(self$`widgets`)) {
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

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `date_range` is null
      if (is.null(self$`date_range`)) {
        invalid_fields["date_range"] <- "Non-nullable required field `date_range` cannot be null."
      }

      # check if the required `schedule` is null
      if (is.null(self$`schedule`)) {
        invalid_fields["schedule"] <- "Non-nullable required field `schedule` cannot be null."
      }

      # check if the required `filters` is null
      if (is.null(self$`filters`)) {
        invalid_fields["filters"] <- "Non-nullable required field `filters` cannot be null."
      }

      # check if the required `generated_at` is null
      if (is.null(self$`generated_at`)) {
        invalid_fields["generated_at"] <- "Non-nullable required field `generated_at` cannot be null."
      }

      # check if the required `blocks` is null
      if (is.null(self$`blocks`)) {
        invalid_fields["blocks"] <- "Non-nullable required field `blocks` cannot be null."
      }

      # check if the required `widgets` is null
      if (is.null(self$`widgets`)) {
        invalid_fields["widgets"] <- "Non-nullable required field `widgets` cannot be null."
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
# CustomReportDetailResponse$unlock()
#
## Below is an example to define the print function
# CustomReportDetailResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CustomReportDetailResponse$lock()

