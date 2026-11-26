#' Create a new RecommendationDetailResponse
#'
#' @description
#' One recommendation run with its items
#'
#' @docType class
#' @title RecommendationDetailResponse
#' @description RecommendationDetailResponse Class
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
#' @field summary  \link{RecommendationDetailResponseSummary}
#' @field context Generation context and run diagnostics as stored; empty until the generation completes. Its keys are not a stable contract object
#' @field report_data The stored run, including the evidence indices (prompts_index, citations_index, own_content_index and others) that the source_refs codes of the items point to. Its keys are not a stable contract named list(object)
#' @field item_counts  \link{RecommendationDetailResponseItemCounts}
#' @field items  list(\link{RecommendationItem})
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RecommendationDetailResponse <- R6::R6Class(
  "RecommendationDetailResponse",
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
    `report_data` = NULL,
    `item_counts` = NULL,
    `items` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new RecommendationDetailResponse class.
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
    #' @param report_data The stored run, including the evidence indices (prompts_index, citations_index, own_content_index and others) that the source_refs codes of the items point to. Its keys are not a stable contract
    #' @param item_counts item_counts
    #' @param items items
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`id`, `project_id`, `recommendation_type`, `status`, `error_message`, `generated_at`, `created_at`, `updated_at`, `total_recommendations`, `high_priority_count`, `summary`, `context`, `report_data`, `item_counts`, `items`, `request_id`, ...) {
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
      if (!missing(`report_data`)) {
        stopifnot(is.vector(`report_data`), length(`report_data`) != 0)
        sapply(`report_data`, function(x) stopifnot(is.character(x)))
        self$`report_data` <- `report_data`
      }
      if (!missing(`item_counts`)) {
        stopifnot(R6::is.R6(`item_counts`))
        self$`item_counts` <- `item_counts`
      }
      if (!missing(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
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
    #' @return RecommendationDetailResponse as a base R list.
    #' @examples
    #' # convert array of RecommendationDetailResponse (x) to a data frame
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
    #' Convert RecommendationDetailResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RecommendationDetailResponseObject <- list()
      if (!is.null(self$`id`)) {
        RecommendationDetailResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`project_id`)) {
        RecommendationDetailResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`recommendation_type`)) {
        RecommendationDetailResponseObject[["recommendation_type"]] <-
          self$`recommendation_type`
      }
      if (!is.null(self$`status`)) {
        RecommendationDetailResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`error_message`)) {
        RecommendationDetailResponseObject[["error_message"]] <-
          self$`error_message`
      }
      if (!is.null(self$`generated_at`)) {
        RecommendationDetailResponseObject[["generated_at"]] <-
          self$`generated_at`
      }
      if (!is.null(self$`created_at`)) {
        RecommendationDetailResponseObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        RecommendationDetailResponseObject[["updated_at"]] <-
          self$`updated_at`
      }
      if (!is.null(self$`total_recommendations`)) {
        RecommendationDetailResponseObject[["total_recommendations"]] <-
          self$`total_recommendations`
      }
      if (!is.null(self$`high_priority_count`)) {
        RecommendationDetailResponseObject[["high_priority_count"]] <-
          self$`high_priority_count`
      }
      if (!is.null(self$`summary`)) {
        RecommendationDetailResponseObject[["summary"]] <-
          self$extractSimpleType(self$`summary`)
      }
      if (!is.null(self$`context`)) {
        RecommendationDetailResponseObject[["context"]] <-
          self$`context`
      }
      if (!is.null(self$`report_data`)) {
        RecommendationDetailResponseObject[["report_data"]] <-
          self$`report_data`
      }
      if (!is.null(self$`item_counts`)) {
        RecommendationDetailResponseObject[["item_counts"]] <-
          self$extractSimpleType(self$`item_counts`)
      }
      if (!is.null(self$`items`)) {
        RecommendationDetailResponseObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`request_id`)) {
        RecommendationDetailResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(RecommendationDetailResponseObject)
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
    #' Deserialize JSON string into an instance of RecommendationDetailResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecommendationDetailResponse
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
        `summary_object` <- RecommendationDetailResponseSummary$new()
        `summary_object`$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
        self$`summary` <- `summary_object`
      }
      if (!is.null(this_object$`context`)) {
        self$`context` <- this_object$`context`
      }
      if (!is.null(this_object$`report_data`)) {
        self$`report_data` <- ApiClient$new()$deserializeObj(this_object$`report_data`, "map(object)", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`item_counts`)) {
        `item_counts_object` <- RecommendationDetailResponseItemCounts$new()
        `item_counts_object`$fromJSON(jsonlite::toJSON(this_object$`item_counts`, auto_unbox = TRUE, digits = NA))
        self$`item_counts` <- `item_counts_object`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[RecommendationItem]", loadNamespace("llmpulse"))
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
    #' @return RecommendationDetailResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RecommendationDetailResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecommendationDetailResponse
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
      self$`summary` <- RecommendationDetailResponseSummary$new()$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
      self$`context` <- this_object$`context`
      self$`report_data` <- ApiClient$new()$deserializeObj(this_object$`report_data`, "map(object)", loadNamespace("llmpulse"))
      self$`item_counts` <- RecommendationDetailResponseItemCounts$new()$fromJSON(jsonlite::toJSON(this_object$`item_counts`, auto_unbox = TRUE, digits = NA))
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[RecommendationItem]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to RecommendationDetailResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `id` is missing."))
      }
      # check the required field `project_id`
      if (!is.null(input_json$`project_id`)) {
        if (!(is.numeric(input_json$`project_id`) && length(input_json$`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", input_json$`project_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `project_id` is missing."))
      }
      # check the required field `recommendation_type`
      if (!is.null(input_json$`recommendation_type`)) {
        if (!(is.character(input_json$`recommendation_type`) && length(input_json$`recommendation_type`) == 1)) {
          stop(paste("Error! Invalid data for `recommendation_type`. Must be a string:", input_json$`recommendation_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `recommendation_type` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `status` is missing."))
      }
      # check the required field `error_message`
      if (!is.null(input_json$`error_message`)) {
        if (!(is.character(input_json$`error_message`) && length(input_json$`error_message`) == 1)) {
          stop(paste("Error! Invalid data for `error_message`. Must be a string:", input_json$`error_message`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `error_message` is missing."))
      }
      # check the required field `generated_at`
      if (!is.null(input_json$`generated_at`)) {
        if (!(is.character(input_json$`generated_at`) && length(input_json$`generated_at`) == 1)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", input_json$`generated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `generated_at` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `created_at` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `updated_at` is missing."))
      }
      # check the required field `total_recommendations`
      if (!is.null(input_json$`total_recommendations`)) {
        if (!(is.numeric(input_json$`total_recommendations`) && length(input_json$`total_recommendations`) == 1)) {
          stop(paste("Error! Invalid data for `total_recommendations`. Must be an integer:", input_json$`total_recommendations`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `total_recommendations` is missing."))
      }
      # check the required field `high_priority_count`
      if (!is.null(input_json$`high_priority_count`)) {
        if (!(is.numeric(input_json$`high_priority_count`) && length(input_json$`high_priority_count`) == 1)) {
          stop(paste("Error! Invalid data for `high_priority_count`. Must be an integer:", input_json$`high_priority_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `high_priority_count` is missing."))
      }
      # check the required field `summary`
      if (!is.null(input_json$`summary`)) {
        stopifnot(R6::is.R6(input_json$`summary`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `summary` is missing."))
      }
      # check the required field `context`
      if (!is.null(input_json$`context`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `context` is missing."))
      }
      # check the required field `report_data`
      if (!is.null(input_json$`report_data`)) {
        stopifnot(is.vector(input_json$`report_data`), length(input_json$`report_data`) != 0)
        tmp <- sapply(input_json$`report_data`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `report_data` is missing."))
      }
      # check the required field `item_counts`
      if (!is.null(input_json$`item_counts`)) {
        stopifnot(R6::is.R6(input_json$`item_counts`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `item_counts` is missing."))
      }
      # check the required field `items`
      if (!is.null(input_json$`items`)) {
        stopifnot(is.vector(input_json$`items`), length(input_json$`items`) != 0)
        tmp <- sapply(input_json$`items`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `items` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RecommendationDetailResponse
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

      # check if the required `report_data` is null
      if (is.null(self$`report_data`)) {
        return(FALSE)
      }

      # check if the required `item_counts` is null
      if (is.null(self$`item_counts`)) {
        return(FALSE)
      }

      # check if the required `items` is null
      if (is.null(self$`items`)) {
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

      # check if the required `report_data` is null
      if (is.null(self$`report_data`)) {
        invalid_fields["report_data"] <- "Non-nullable required field `report_data` cannot be null."
      }

      # check if the required `item_counts` is null
      if (is.null(self$`item_counts`)) {
        invalid_fields["item_counts"] <- "Non-nullable required field `item_counts` cannot be null."
      }

      # check if the required `items` is null
      if (is.null(self$`items`)) {
        invalid_fields["items"] <- "Non-nullable required field `items` cannot be null."
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
# RecommendationDetailResponse$unlock()
#
## Below is an example to define the print function
# RecommendationDetailResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RecommendationDetailResponse$lock()

