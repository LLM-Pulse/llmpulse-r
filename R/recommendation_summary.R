#' Create a new RecommendationSummary
#'
#' @description
#' RecommendationSummary Class
#'
#' @docType class
#' @title RecommendationSummary
#' @description RecommendationSummary Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field project_id  integer
#' @field recommendation_type  character
#' @field status  character
#' @field error_message Set only when status is failed character
#' @field generated_at Null until the generation completes character
#' @field created_at  character
#' @field updated_at  character
#' @field total_recommendations  integer
#' @field high_priority_count  integer
#' @field summary  \link{RecommendationSummarySummary}
#' @field context Generation context and run diagnostics as stored; empty until the generation completes. Its keys are not a stable contract object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RecommendationSummary <- R6::R6Class(
  "RecommendationSummary",
  public = list(
    `id` = NULL,
    `project_id` = NULL,
    `recommendation_type` = NULL,
    `status` = NULL,
    `error_message` = NULL,
    `generated_at` = NULL,
    `created_at` = NULL,
    `updated_at` = NULL,
    `total_recommendations` = NULL,
    `high_priority_count` = NULL,
    `summary` = NULL,
    `context` = NULL,

    #' @description
    #' Initialize a new RecommendationSummary class.
    #'
    #' @param id id
    #' @param project_id project_id
    #' @param recommendation_type recommendation_type
    #' @param status status
    #' @param error_message Set only when status is failed
    #' @param generated_at Null until the generation completes
    #' @param created_at created_at
    #' @param updated_at updated_at
    #' @param total_recommendations total_recommendations
    #' @param high_priority_count high_priority_count
    #' @param summary summary
    #' @param context Generation context and run diagnostics as stored; empty until the generation completes. Its keys are not a stable contract
    #' @param ... Other optional arguments.
    initialize = function(`id`, `project_id`, `recommendation_type`, `status`, `error_message`, `generated_at`, `created_at`, `updated_at`, `total_recommendations`, `high_priority_count`, `summary`, `context`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`recommendation_type`)) {
        if (!(`recommendation_type` %in% c("ai_visibility", "social_community", "brand_building", "sentiment_reputation"))) {
          stop(paste("Error! \"", `recommendation_type`, "\" cannot be assigned to `recommendation_type`. Must be \"ai_visibility\", \"social_community\", \"brand_building\", \"sentiment_reputation\".", sep = ""))
        }
        if (!(is.character(`recommendation_type`) && length(`recommendation_type`) == 1)) {
          stop(paste("Error! Invalid data for `recommendation_type`. Must be a string:", `recommendation_type`))
        }
        self$`recommendation_type` <- `recommendation_type`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c("pending", "processing", "completed", "failed"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"pending\", \"processing\", \"completed\", \"failed\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`error_message`)) {
        if (!(is.character(`error_message`) && length(`error_message`) == 1)) {
          stop(paste("Error! Invalid data for `error_message`. Must be a string:", `error_message`))
        }
        self$`error_message` <- `error_message`
      }
      if (!missing(`generated_at`)) {
        if (!(is.character(`generated_at`) && length(`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", `generated_at`))
        }
        self$`generated_at` <- `generated_at`
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
      if (!missing(`total_recommendations`)) {
        if (!(is.numeric(`total_recommendations`) && length(`total_recommendations`) == 1)) {
          stop(paste("Error! Invalid data for `total_recommendations`. Must be an integer:", `total_recommendations`))
        }
        self$`total_recommendations` <- `total_recommendations`
      }
      if (!missing(`high_priority_count`)) {
        if (!(is.numeric(`high_priority_count`) && length(`high_priority_count`) == 1)) {
          stop(paste("Error! Invalid data for `high_priority_count`. Must be an integer:", `high_priority_count`))
        }
        self$`high_priority_count` <- `high_priority_count`
      }
      if (!missing(`summary`)) {
        stopifnot(R6::is.R6(`summary`))
        self$`summary` <- `summary`
      }
      if (!missing(`context`)) {
        self$`context` <- `context`
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
    #' @return RecommendationSummary as a base R list.
    #' @examples
    #' # convert array of RecommendationSummary (x) to a data frame
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
    #' Convert RecommendationSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RecommendationSummaryObject <- list()
      if (!is.null(self$`id`)) {
        RecommendationSummaryObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`project_id`)) {
        RecommendationSummaryObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`recommendation_type`)) {
        RecommendationSummaryObject[["recommendation_type"]] <-
          self$`recommendation_type`
      }
      if (!is.null(self$`status`)) {
        RecommendationSummaryObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`error_message`)) {
        RecommendationSummaryObject[["error_message"]] <-
          self$`error_message`
      }
      if (!is.null(self$`generated_at`)) {
        RecommendationSummaryObject[["generated_at"]] <-
          self$`generated_at`
      }
      if (!is.null(self$`created_at`)) {
        RecommendationSummaryObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        RecommendationSummaryObject[["updated_at"]] <-
          self$`updated_at`
      }
      if (!is.null(self$`total_recommendations`)) {
        RecommendationSummaryObject[["total_recommendations"]] <-
          self$`total_recommendations`
      }
      if (!is.null(self$`high_priority_count`)) {
        RecommendationSummaryObject[["high_priority_count"]] <-
          self$`high_priority_count`
      }
      if (!is.null(self$`summary`)) {
        RecommendationSummaryObject[["summary"]] <-
          self$extractSimpleType(self$`summary`)
      }
      if (!is.null(self$`context`)) {
        RecommendationSummaryObject[["context"]] <-
          self$`context`
      }
      return(RecommendationSummaryObject)
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
    #' Deserialize JSON string into an instance of RecommendationSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecommendationSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`recommendation_type`)) {
        if (!is.null(this_object$`recommendation_type`) && !(this_object$`recommendation_type` %in% c("ai_visibility", "social_community", "brand_building", "sentiment_reputation"))) {
          stop(paste("Error! \"", this_object$`recommendation_type`, "\" cannot be assigned to `recommendation_type`. Must be \"ai_visibility\", \"social_community\", \"brand_building\", \"sentiment_reputation\".", sep = ""))
        }
        self$`recommendation_type` <- this_object$`recommendation_type`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("pending", "processing", "completed", "failed"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"pending\", \"processing\", \"completed\", \"failed\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`error_message`)) {
        self$`error_message` <- this_object$`error_message`
      }
      if (!is.null(this_object$`generated_at`)) {
        self$`generated_at` <- this_object$`generated_at`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      if (!is.null(this_object$`total_recommendations`)) {
        self$`total_recommendations` <- this_object$`total_recommendations`
      }
      if (!is.null(this_object$`high_priority_count`)) {
        self$`high_priority_count` <- this_object$`high_priority_count`
      }
      if (!is.null(this_object$`summary`)) {
        `summary_object` <- RecommendationSummarySummary$new()
        `summary_object`$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
        self$`summary` <- `summary_object`
      }
      if (!is.null(this_object$`context`)) {
        self$`context` <- this_object$`context`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RecommendationSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RecommendationSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecommendationSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`recommendation_type`) && !(this_object$`recommendation_type` %in% c("ai_visibility", "social_community", "brand_building", "sentiment_reputation"))) {
        stop(paste("Error! \"", this_object$`recommendation_type`, "\" cannot be assigned to `recommendation_type`. Must be \"ai_visibility\", \"social_community\", \"brand_building\", \"sentiment_reputation\".", sep = ""))
      }
      self$`recommendation_type` <- this_object$`recommendation_type`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("pending", "processing", "completed", "failed"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"pending\", \"processing\", \"completed\", \"failed\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`error_message` <- this_object$`error_message`
      self$`generated_at` <- this_object$`generated_at`
      self$`created_at` <- this_object$`created_at`
      self$`updated_at` <- this_object$`updated_at`
      self$`total_recommendations` <- this_object$`total_recommendations`
      self$`high_priority_count` <- this_object$`high_priority_count`
      self$`summary` <- RecommendationSummarySummary$new()$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
      self$`context` <- this_object$`context`
      self
    },

    #' @description
    #' Validate JSON input with respect to RecommendationSummary and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for RecommendationSummary: the required field `id` is missing."))
      }
      # check the required field `project_id`
      if (!is.null(input_json$`project_id`)) {
        if (!(is.numeric(input_json$`project_id`) && length(input_json$`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", input_json$`project_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationSummary: the required field `project_id` is missing."))
      }
      # check the required field `recommendation_type`
      if (!is.null(input_json$`recommendation_type`)) {
        if (!(is.character(input_json$`recommendation_type`) && length(input_json$`recommendation_type`) == 1)) {
          stop(paste("Error! Invalid data for `recommendation_type`. Must be a string:", input_json$`recommendation_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationSummary: the required field `recommendation_type` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationSummary: the required field `status` is missing."))
      }
      # check the required field `error_message`
      if (!is.null(input_json$`error_message`)) {
        if (!(is.character(input_json$`error_message`) && length(input_json$`error_message`) == 1)) {
          stop(paste("Error! Invalid data for `error_message`. Must be a string:", input_json$`error_message`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationSummary: the required field `error_message` is missing."))
      }
      # check the required field `generated_at`
      if (!is.null(input_json$`generated_at`)) {
        if (!(is.character(input_json$`generated_at`) && length(input_json$`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", input_json$`generated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationSummary: the required field `generated_at` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationSummary: the required field `created_at` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationSummary: the required field `updated_at` is missing."))
      }
      # check the required field `total_recommendations`
      if (!is.null(input_json$`total_recommendations`)) {
        if (!(is.numeric(input_json$`total_recommendations`) && length(input_json$`total_recommendations`) == 1)) {
          stop(paste("Error! Invalid data for `total_recommendations`. Must be an integer:", input_json$`total_recommendations`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationSummary: the required field `total_recommendations` is missing."))
      }
      # check the required field `high_priority_count`
      if (!is.null(input_json$`high_priority_count`)) {
        if (!(is.numeric(input_json$`high_priority_count`) && length(input_json$`high_priority_count`) == 1)) {
          stop(paste("Error! Invalid data for `high_priority_count`. Must be an integer:", input_json$`high_priority_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationSummary: the required field `high_priority_count` is missing."))
      }
      # check the required field `summary`
      if (!is.null(input_json$`summary`)) {
        stopifnot(R6::is.R6(input_json$`summary`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationSummary: the required field `summary` is missing."))
      }
      # check the required field `context`
      if (!is.null(input_json$`context`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationSummary: the required field `context` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RecommendationSummary
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

      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        return(FALSE)
      }

      # check if the required `recommendation_type` is null
      if (is.null(self$`recommendation_type`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
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

      # check if the required `total_recommendations` is null
      if (is.null(self$`total_recommendations`)) {
        return(FALSE)
      }

      # check if the required `high_priority_count` is null
      if (is.null(self$`high_priority_count`)) {
        return(FALSE)
      }

      # check if the required `summary` is null
      if (is.null(self$`summary`)) {
        return(FALSE)
      }

      # check if the required `context` is null
      if (is.null(self$`context`)) {
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

      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        invalid_fields["project_id"] <- "Non-nullable required field `project_id` cannot be null."
      }

      # check if the required `recommendation_type` is null
      if (is.null(self$`recommendation_type`)) {
        invalid_fields["recommendation_type"] <- "Non-nullable required field `recommendation_type` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
        invalid_fields["updated_at"] <- "Non-nullable required field `updated_at` cannot be null."
      }

      # check if the required `total_recommendations` is null
      if (is.null(self$`total_recommendations`)) {
        invalid_fields["total_recommendations"] <- "Non-nullable required field `total_recommendations` cannot be null."
      }

      # check if the required `high_priority_count` is null
      if (is.null(self$`high_priority_count`)) {
        invalid_fields["high_priority_count"] <- "Non-nullable required field `high_priority_count` cannot be null."
      }

      # check if the required `summary` is null
      if (is.null(self$`summary`)) {
        invalid_fields["summary"] <- "Non-nullable required field `summary` cannot be null."
      }

      # check if the required `context` is null
      if (is.null(self$`context`)) {
        invalid_fields["context"] <- "Non-nullable required field `context` cannot be null."
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
# RecommendationSummary$unlock()
#
## Below is an example to define the print function
# RecommendationSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RecommendationSummary$lock()

