#' Create a new CustomReportSummary
#'
#' @description
#' CustomReportSummary Class
#'
#' @docType class
#' @title CustomReportSummary
#' @description CustomReportSummary Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field name  character
#' @field date_range  \link{CustomReportDateRange}
#' @field schedule  \link{CustomReportSchedule}
#' @field recipients_count  integer
#' @field published Whether the shared link is published character
#' @field public_link_active Whether the shared link opens (published and not made inside a client portal) character
#' @field password_protected  character
#' @field portal_only Made inside a client portal, so it cannot be shared or emailed character
#' @field widget_count  integer
#' @field widgets  list(\link{CustomReportWidgetRef})
#' @field last_sent_at When the report was last emailed, on its schedule or with Send now character [optional]
#' @field created_at  character
#' @field updated_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomReportSummary <- R6::R6Class(
  "CustomReportSummary",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `date_range` = NULL,
    `schedule` = NULL,
    `recipients_count` = NULL,
    `published` = NULL,
    `public_link_active` = NULL,
    `password_protected` = NULL,
    `portal_only` = NULL,
    `widget_count` = NULL,
    `widgets` = NULL,
    `last_sent_at` = NULL,
    `created_at` = NULL,
    `updated_at` = NULL,

    #' @description
    #' Initialize a new CustomReportSummary class.
    #'
    #' @param id id
    #' @param name name
    #' @param date_range date_range
    #' @param schedule schedule
    #' @param recipients_count recipients_count
    #' @param published Whether the shared link is published
    #' @param public_link_active Whether the shared link opens (published and not made inside a client portal)
    #' @param password_protected password_protected
    #' @param portal_only Made inside a client portal, so it cannot be shared or emailed
    #' @param widget_count widget_count
    #' @param widgets widgets
    #' @param created_at created_at
    #' @param updated_at updated_at
    #' @param last_sent_at When the report was last emailed, on its schedule or with Send now
    #' @param ... Other optional arguments.
    initialize = function(`id`, `name`, `date_range`, `schedule`, `recipients_count`, `published`, `public_link_active`, `password_protected`, `portal_only`, `widget_count`, `widgets`, `created_at`, `updated_at`, `last_sent_at` = NULL, ...) {
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
      if (!missing(`recipients_count`)) {
        if (!(is.numeric(`recipients_count`) && length(`recipients_count`) == 1)) {
          stop(paste("Error! Invalid data for `recipients_count`. Must be an integer:", `recipients_count`))
        }
        self$`recipients_count` <- `recipients_count`
      }
      if (!missing(`published`)) {
        if (!(is.logical(`published`) && length(`published`) == 1)) {
          stop(paste("Error! Invalid data for `published`. Must be a boolean:", `published`))
        }
        self$`published` <- `published`
      }
      if (!missing(`public_link_active`)) {
        if (!(is.logical(`public_link_active`) && length(`public_link_active`) == 1)) {
          stop(paste("Error! Invalid data for `public_link_active`. Must be a boolean:", `public_link_active`))
        }
        self$`public_link_active` <- `public_link_active`
      }
      if (!missing(`password_protected`)) {
        if (!(is.logical(`password_protected`) && length(`password_protected`) == 1)) {
          stop(paste("Error! Invalid data for `password_protected`. Must be a boolean:", `password_protected`))
        }
        self$`password_protected` <- `password_protected`
      }
      if (!missing(`portal_only`)) {
        if (!(is.logical(`portal_only`) && length(`portal_only`) == 1)) {
          stop(paste("Error! Invalid data for `portal_only`. Must be a boolean:", `portal_only`))
        }
        self$`portal_only` <- `portal_only`
      }
      if (!missing(`widget_count`)) {
        if (!(is.numeric(`widget_count`) && length(`widget_count`) == 1)) {
          stop(paste("Error! Invalid data for `widget_count`. Must be an integer:", `widget_count`))
        }
        self$`widget_count` <- `widget_count`
      }
      if (!missing(`widgets`)) {
        stopifnot(is.vector(`widgets`), length(`widgets`) != 0)
        sapply(`widgets`, function(x) stopifnot(R6::is.R6(x)))
        self$`widgets` <- `widgets`
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
      if (!is.null(`last_sent_at`)) {
        if (!is.character(`last_sent_at`)) {
          stop(paste("Error! Invalid data for `last_sent_at`. Must be a string:", `last_sent_at`))
        }
        self$`last_sent_at` <- `last_sent_at`
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
    #' @return CustomReportSummary as a base R list.
    #' @examples
    #' # convert array of CustomReportSummary (x) to a data frame
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
    #' Convert CustomReportSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomReportSummaryObject <- list()
      if (!is.null(self$`id`)) {
        CustomReportSummaryObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CustomReportSummaryObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`date_range`)) {
        CustomReportSummaryObject[["date_range"]] <-
          self$extractSimpleType(self$`date_range`)
      }
      if (!is.null(self$`schedule`)) {
        CustomReportSummaryObject[["schedule"]] <-
          self$extractSimpleType(self$`schedule`)
      }
      if (!is.null(self$`recipients_count`)) {
        CustomReportSummaryObject[["recipients_count"]] <-
          self$`recipients_count`
      }
      if (!is.null(self$`published`)) {
        CustomReportSummaryObject[["published"]] <-
          self$`published`
      }
      if (!is.null(self$`public_link_active`)) {
        CustomReportSummaryObject[["public_link_active"]] <-
          self$`public_link_active`
      }
      if (!is.null(self$`password_protected`)) {
        CustomReportSummaryObject[["password_protected"]] <-
          self$`password_protected`
      }
      if (!is.null(self$`portal_only`)) {
        CustomReportSummaryObject[["portal_only"]] <-
          self$`portal_only`
      }
      if (!is.null(self$`widget_count`)) {
        CustomReportSummaryObject[["widget_count"]] <-
          self$`widget_count`
      }
      if (!is.null(self$`widgets`)) {
        CustomReportSummaryObject[["widgets"]] <-
          self$extractSimpleType(self$`widgets`)
      }
      if (!is.null(self$`last_sent_at`)) {
        CustomReportSummaryObject[["last_sent_at"]] <-
          self$`last_sent_at`
      }
      if (!is.null(self$`created_at`)) {
        CustomReportSummaryObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        CustomReportSummaryObject[["updated_at"]] <-
          self$`updated_at`
      }
      return(CustomReportSummaryObject)
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
    #' Deserialize JSON string into an instance of CustomReportSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
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
      if (!is.null(this_object$`widget_count`)) {
        self$`widget_count` <- this_object$`widget_count`
      }
      if (!is.null(this_object$`widgets`)) {
        self$`widgets` <- ApiClient$new()$deserializeObj(this_object$`widgets`, "array[CustomReportWidgetRef]", loadNamespace("llmpulse"))
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CustomReportSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomReportSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`date_range` <- CustomReportDateRange$new()$fromJSON(jsonlite::toJSON(this_object$`date_range`, auto_unbox = TRUE, digits = NA))
      self$`schedule` <- CustomReportSchedule$new()$fromJSON(jsonlite::toJSON(this_object$`schedule`, auto_unbox = TRUE, digits = NA))
      self$`recipients_count` <- this_object$`recipients_count`
      self$`published` <- this_object$`published`
      self$`public_link_active` <- this_object$`public_link_active`
      self$`password_protected` <- this_object$`password_protected`
      self$`portal_only` <- this_object$`portal_only`
      self$`widget_count` <- this_object$`widget_count`
      self$`widgets` <- ApiClient$new()$deserializeObj(this_object$`widgets`, "array[CustomReportWidgetRef]", loadNamespace("llmpulse"))
      self$`last_sent_at` <- this_object$`last_sent_at`
      self$`created_at` <- this_object$`created_at`
      self$`updated_at` <- this_object$`updated_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to CustomReportSummary and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSummary: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSummary: the required field `name` is missing."))
      }
      # check the required field `date_range`
      if (!is.null(input_json$`date_range`)) {
        stopifnot(R6::is.R6(input_json$`date_range`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSummary: the required field `date_range` is missing."))
      }
      # check the required field `schedule`
      if (!is.null(input_json$`schedule`)) {
        stopifnot(R6::is.R6(input_json$`schedule`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSummary: the required field `schedule` is missing."))
      }
      # check the required field `recipients_count`
      if (!is.null(input_json$`recipients_count`)) {
        if (!(is.numeric(input_json$`recipients_count`) && length(input_json$`recipients_count`) == 1)) {
          stop(paste("Error! Invalid data for `recipients_count`. Must be an integer:", input_json$`recipients_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSummary: the required field `recipients_count` is missing."))
      }
      # check the required field `published`
      if (!is.null(input_json$`published`)) {
        if (!(is.logical(input_json$`published`) && length(input_json$`published`) == 1)) {
          stop(paste("Error! Invalid data for `published`. Must be a boolean:", input_json$`published`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSummary: the required field `published` is missing."))
      }
      # check the required field `public_link_active`
      if (!is.null(input_json$`public_link_active`)) {
        if (!(is.logical(input_json$`public_link_active`) && length(input_json$`public_link_active`) == 1)) {
          stop(paste("Error! Invalid data for `public_link_active`. Must be a boolean:", input_json$`public_link_active`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSummary: the required field `public_link_active` is missing."))
      }
      # check the required field `password_protected`
      if (!is.null(input_json$`password_protected`)) {
        if (!(is.logical(input_json$`password_protected`) && length(input_json$`password_protected`) == 1)) {
          stop(paste("Error! Invalid data for `password_protected`. Must be a boolean:", input_json$`password_protected`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSummary: the required field `password_protected` is missing."))
      }
      # check the required field `portal_only`
      if (!is.null(input_json$`portal_only`)) {
        if (!(is.logical(input_json$`portal_only`) && length(input_json$`portal_only`) == 1)) {
          stop(paste("Error! Invalid data for `portal_only`. Must be a boolean:", input_json$`portal_only`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSummary: the required field `portal_only` is missing."))
      }
      # check the required field `widget_count`
      if (!is.null(input_json$`widget_count`)) {
        if (!(is.numeric(input_json$`widget_count`) && length(input_json$`widget_count`) == 1)) {
          stop(paste("Error! Invalid data for `widget_count`. Must be an integer:", input_json$`widget_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSummary: the required field `widget_count` is missing."))
      }
      # check the required field `widgets`
      if (!is.null(input_json$`widgets`)) {
        stopifnot(is.vector(input_json$`widgets`), length(input_json$`widgets`) != 0)
        tmp <- sapply(input_json$`widgets`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSummary: the required field `widgets` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSummary: the required field `created_at` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSummary: the required field `updated_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CustomReportSummary
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

      # check if the required `recipients_count` is null
      if (is.null(self$`recipients_count`)) {
        return(FALSE)
      }

      # check if the required `published` is null
      if (is.null(self$`published`)) {
        return(FALSE)
      }

      # check if the required `public_link_active` is null
      if (is.null(self$`public_link_active`)) {
        return(FALSE)
      }

      # check if the required `password_protected` is null
      if (is.null(self$`password_protected`)) {
        return(FALSE)
      }

      # check if the required `portal_only` is null
      if (is.null(self$`portal_only`)) {
        return(FALSE)
      }

      # check if the required `widget_count` is null
      if (is.null(self$`widget_count`)) {
        return(FALSE)
      }

      # check if the required `widgets` is null
      if (is.null(self$`widgets`)) {
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

      # check if the required `recipients_count` is null
      if (is.null(self$`recipients_count`)) {
        invalid_fields["recipients_count"] <- "Non-nullable required field `recipients_count` cannot be null."
      }

      # check if the required `published` is null
      if (is.null(self$`published`)) {
        invalid_fields["published"] <- "Non-nullable required field `published` cannot be null."
      }

      # check if the required `public_link_active` is null
      if (is.null(self$`public_link_active`)) {
        invalid_fields["public_link_active"] <- "Non-nullable required field `public_link_active` cannot be null."
      }

      # check if the required `password_protected` is null
      if (is.null(self$`password_protected`)) {
        invalid_fields["password_protected"] <- "Non-nullable required field `password_protected` cannot be null."
      }

      # check if the required `portal_only` is null
      if (is.null(self$`portal_only`)) {
        invalid_fields["portal_only"] <- "Non-nullable required field `portal_only` cannot be null."
      }

      # check if the required `widget_count` is null
      if (is.null(self$`widget_count`)) {
        invalid_fields["widget_count"] <- "Non-nullable required field `widget_count` cannot be null."
      }

      # check if the required `widgets` is null
      if (is.null(self$`widgets`)) {
        invalid_fields["widgets"] <- "Non-nullable required field `widgets` cannot be null."
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
# CustomReportSummary$unlock()
#
## Below is an example to define the print function
# CustomReportSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CustomReportSummary$lock()

