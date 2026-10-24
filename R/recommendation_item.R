#' Create a new RecommendationItem
#'
#' @description
#' One recommendation item, in the shape GET /recommendations/{id} lists items
#'
#' @docType class
#' @title RecommendationItem
#' @description RecommendationItem Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field recommendation_id  integer
#' @field recommendation_type  character
#' @field category  character
#' @field title  character
#' @field description  character [optional]
#' @field priority  character
#' @field estimated_impact  character [optional]
#' @field action_items  list(character)
#' @field source_refs Evidence codes (e.g. P1, C2) resolved in resolved_source_refs list(character)
#' @field status  character
#' @field status_changed_at  character [optional]
#' @field position  integer
#' @field metadata Free-form details. Carries effort (low, medium or high) when the generator rated it, archive_reason (not_relevant, too_complex or competitor) on an item archived with a reason, and domain on PR & Citation Building items. named list(object) [optional]
#' @field created_at  character
#' @field updated_at  character
#' @field resolved_source_refs The evidence each source_refs code points to (prompt, citation or own page) list(named list(object)) [optional]
#' @field unresolved_source_refs Present only when a code points to no stored evidence list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RecommendationItem <- R6::R6Class(
  "RecommendationItem",
  public = list(
    `id` = NULL,
    `recommendation_id` = NULL,
    `recommendation_type` = NULL,
    `category` = NULL,
    `title` = NULL,
    `description` = NULL,
    `priority` = NULL,
    `estimated_impact` = NULL,
    `action_items` = NULL,
    `source_refs` = NULL,
    `status` = NULL,
    `status_changed_at` = NULL,
    `position` = NULL,
    `metadata` = NULL,
    `created_at` = NULL,
    `updated_at` = NULL,
    `resolved_source_refs` = NULL,
    `unresolved_source_refs` = NULL,

    #' @description
    #' Initialize a new RecommendationItem class.
    #'
    #' @param id id
    #' @param recommendation_id recommendation_id
    #' @param recommendation_type recommendation_type
    #' @param category category
    #' @param title title
    #' @param priority priority
    #' @param action_items action_items
    #' @param source_refs Evidence codes (e.g. P1, C2) resolved in resolved_source_refs
    #' @param status status
    #' @param position position
    #' @param created_at created_at
    #' @param updated_at updated_at
    #' @param description description
    #' @param estimated_impact estimated_impact
    #' @param status_changed_at status_changed_at
    #' @param metadata Free-form details. Carries effort (low, medium or high) when the generator rated it, archive_reason (not_relevant, too_complex or competitor) on an item archived with a reason, and domain on PR & Citation Building items.
    #' @param resolved_source_refs The evidence each source_refs code points to (prompt, citation or own page)
    #' @param unresolved_source_refs Present only when a code points to no stored evidence
    #' @param ... Other optional arguments.
    initialize = function(`id`, `recommendation_id`, `recommendation_type`, `category`, `title`, `priority`, `action_items`, `source_refs`, `status`, `position`, `created_at`, `updated_at`, `description` = NULL, `estimated_impact` = NULL, `status_changed_at` = NULL, `metadata` = NULL, `resolved_source_refs` = NULL, `unresolved_source_refs` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`recommendation_id`)) {
        if (!(is.numeric(`recommendation_id`) && length(`recommendation_id`) == 1)) {
          stop(paste("Error! Invalid data for `recommendation_id`. Must be an integer:", `recommendation_id`))
        }
        self$`recommendation_id` <- `recommendation_id`
      }
      if (!missing(`recommendation_type`)) {
        if (!(is.character(`recommendation_type`) && length(`recommendation_type`) == 1)) {
          stop(paste("Error! Invalid data for `recommendation_type`. Must be a string:", `recommendation_type`))
        }
        self$`recommendation_type` <- `recommendation_type`
      }
      if (!missing(`category`)) {
        if (!(is.character(`category`) && length(`category`) == 1)) {
          stop(paste("Error! Invalid data for `category`. Must be a string:", `category`))
        }
        self$`category` <- `category`
      }
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!missing(`priority`)) {
        if (!(`priority` %in% c("high", "medium", "low"))) {
          stop(paste("Error! \"", `priority`, "\" cannot be assigned to `priority`. Must be \"high\", \"medium\", \"low\".", sep = ""))
        }
        if (!(is.character(`priority`) && length(`priority`) == 1)) {
          stop(paste("Error! Invalid data for `priority`. Must be a string:", `priority`))
        }
        self$`priority` <- `priority`
      }
      if (!missing(`action_items`)) {
        stopifnot(is.vector(`action_items`), length(`action_items`) != 0)
        sapply(`action_items`, function(x) stopifnot(is.character(x)))
        self$`action_items` <- `action_items`
      }
      if (!missing(`source_refs`)) {
        stopifnot(is.vector(`source_refs`), length(`source_refs`) != 0)
        sapply(`source_refs`, function(x) stopifnot(is.character(x)))
        self$`source_refs` <- `source_refs`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c("active", "completed", "archived"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"active\", \"completed\", \"archived\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`position`)) {
        if (!(is.numeric(`position`) && length(`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", `position`))
        }
        self$`position` <- `position`
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
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`estimated_impact`)) {
        if (!(is.character(`estimated_impact`) && length(`estimated_impact`) == 1)) {
          stop(paste("Error! Invalid data for `estimated_impact`. Must be a string:", `estimated_impact`))
        }
        self$`estimated_impact` <- `estimated_impact`
      }
      if (!is.null(`status_changed_at`)) {
        if (!is.character(`status_changed_at`)) {
          stop(paste("Error! Invalid data for `status_changed_at`. Must be a string:", `status_changed_at`))
        }
        self$`status_changed_at` <- `status_changed_at`
      }
      if (!is.null(`metadata`)) {
        stopifnot(is.vector(`metadata`), length(`metadata`) != 0)
        sapply(`metadata`, function(x) stopifnot(is.character(x)))
        self$`metadata` <- `metadata`
      }
      if (!is.null(`resolved_source_refs`)) {
        stopifnot(is.vector(`resolved_source_refs`), length(`resolved_source_refs`) != 0)
        sapply(`resolved_source_refs`, function(x) stopifnot(R6::is.R6(x)))
        self$`resolved_source_refs` <- `resolved_source_refs`
      }
      if (!is.null(`unresolved_source_refs`)) {
        stopifnot(is.vector(`unresolved_source_refs`), length(`unresolved_source_refs`) != 0)
        sapply(`unresolved_source_refs`, function(x) stopifnot(is.character(x)))
        self$`unresolved_source_refs` <- `unresolved_source_refs`
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
    #' @return RecommendationItem as a base R list.
    #' @examples
    #' # convert array of RecommendationItem (x) to a data frame
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
    #' Convert RecommendationItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RecommendationItemObject <- list()
      if (!is.null(self$`id`)) {
        RecommendationItemObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`recommendation_id`)) {
        RecommendationItemObject[["recommendation_id"]] <-
          self$`recommendation_id`
      }
      if (!is.null(self$`recommendation_type`)) {
        RecommendationItemObject[["recommendation_type"]] <-
          self$`recommendation_type`
      }
      if (!is.null(self$`category`)) {
        RecommendationItemObject[["category"]] <-
          self$`category`
      }
      if (!is.null(self$`title`)) {
        RecommendationItemObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        RecommendationItemObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`priority`)) {
        RecommendationItemObject[["priority"]] <-
          self$`priority`
      }
      if (!is.null(self$`estimated_impact`)) {
        RecommendationItemObject[["estimated_impact"]] <-
          self$`estimated_impact`
      }
      if (!is.null(self$`action_items`)) {
        RecommendationItemObject[["action_items"]] <-
          self$`action_items`
      }
      if (!is.null(self$`source_refs`)) {
        RecommendationItemObject[["source_refs"]] <-
          self$`source_refs`
      }
      if (!is.null(self$`status`)) {
        RecommendationItemObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`status_changed_at`)) {
        RecommendationItemObject[["status_changed_at"]] <-
          self$`status_changed_at`
      }
      if (!is.null(self$`position`)) {
        RecommendationItemObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`metadata`)) {
        RecommendationItemObject[["metadata"]] <-
          self$`metadata`
      }
      if (!is.null(self$`created_at`)) {
        RecommendationItemObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        RecommendationItemObject[["updated_at"]] <-
          self$`updated_at`
      }
      if (!is.null(self$`resolved_source_refs`)) {
        RecommendationItemObject[["resolved_source_refs"]] <-
          self$extractSimpleType(self$`resolved_source_refs`)
      }
      if (!is.null(self$`unresolved_source_refs`)) {
        RecommendationItemObject[["unresolved_source_refs"]] <-
          self$`unresolved_source_refs`
      }
      return(RecommendationItemObject)
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
    #' Deserialize JSON string into an instance of RecommendationItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecommendationItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`recommendation_id`)) {
        self$`recommendation_id` <- this_object$`recommendation_id`
      }
      if (!is.null(this_object$`recommendation_type`)) {
        self$`recommendation_type` <- this_object$`recommendation_type`
      }
      if (!is.null(this_object$`category`)) {
        self$`category` <- this_object$`category`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`priority`)) {
        if (!is.null(this_object$`priority`) && !(this_object$`priority` %in% c("high", "medium", "low"))) {
          stop(paste("Error! \"", this_object$`priority`, "\" cannot be assigned to `priority`. Must be \"high\", \"medium\", \"low\".", sep = ""))
        }
        self$`priority` <- this_object$`priority`
      }
      if (!is.null(this_object$`estimated_impact`)) {
        self$`estimated_impact` <- this_object$`estimated_impact`
      }
      if (!is.null(this_object$`action_items`)) {
        self$`action_items` <- ApiClient$new()$deserializeObj(this_object$`action_items`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`source_refs`)) {
        self$`source_refs` <- ApiClient$new()$deserializeObj(this_object$`source_refs`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("active", "completed", "archived"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"active\", \"completed\", \"archived\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`status_changed_at`)) {
        self$`status_changed_at` <- this_object$`status_changed_at`
      }
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- ApiClient$new()$deserializeObj(this_object$`metadata`, "map(object)", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      if (!is.null(this_object$`resolved_source_refs`)) {
        self$`resolved_source_refs` <- ApiClient$new()$deserializeObj(this_object$`resolved_source_refs`, "array[map(object)]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`unresolved_source_refs`)) {
        self$`unresolved_source_refs` <- ApiClient$new()$deserializeObj(this_object$`unresolved_source_refs`, "array[character]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RecommendationItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RecommendationItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecommendationItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`recommendation_id` <- this_object$`recommendation_id`
      self$`recommendation_type` <- this_object$`recommendation_type`
      self$`category` <- this_object$`category`
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`priority`) && !(this_object$`priority` %in% c("high", "medium", "low"))) {
        stop(paste("Error! \"", this_object$`priority`, "\" cannot be assigned to `priority`. Must be \"high\", \"medium\", \"low\".", sep = ""))
      }
      self$`priority` <- this_object$`priority`
      self$`estimated_impact` <- this_object$`estimated_impact`
      self$`action_items` <- ApiClient$new()$deserializeObj(this_object$`action_items`, "array[character]", loadNamespace("llmpulse"))
      self$`source_refs` <- ApiClient$new()$deserializeObj(this_object$`source_refs`, "array[character]", loadNamespace("llmpulse"))
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("active", "completed", "archived"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"active\", \"completed\", \"archived\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`status_changed_at` <- this_object$`status_changed_at`
      self$`position` <- this_object$`position`
      self$`metadata` <- ApiClient$new()$deserializeObj(this_object$`metadata`, "map(object)", loadNamespace("llmpulse"))
      self$`created_at` <- this_object$`created_at`
      self$`updated_at` <- this_object$`updated_at`
      self$`resolved_source_refs` <- ApiClient$new()$deserializeObj(this_object$`resolved_source_refs`, "array[map(object)]", loadNamespace("llmpulse"))
      self$`unresolved_source_refs` <- ApiClient$new()$deserializeObj(this_object$`unresolved_source_refs`, "array[character]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to RecommendationItem and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for RecommendationItem: the required field `id` is missing."))
      }
      # check the required field `recommendation_id`
      if (!is.null(input_json$`recommendation_id`)) {
        if (!(is.numeric(input_json$`recommendation_id`) && length(input_json$`recommendation_id`) == 1)) {
          stop(paste("Error! Invalid data for `recommendation_id`. Must be an integer:", input_json$`recommendation_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationItem: the required field `recommendation_id` is missing."))
      }
      # check the required field `recommendation_type`
      if (!is.null(input_json$`recommendation_type`)) {
        if (!(is.character(input_json$`recommendation_type`) && length(input_json$`recommendation_type`) == 1)) {
          stop(paste("Error! Invalid data for `recommendation_type`. Must be a string:", input_json$`recommendation_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationItem: the required field `recommendation_type` is missing."))
      }
      # check the required field `category`
      if (!is.null(input_json$`category`)) {
        if (!(is.character(input_json$`category`) && length(input_json$`category`) == 1)) {
          stop(paste("Error! Invalid data for `category`. Must be a string:", input_json$`category`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationItem: the required field `category` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationItem: the required field `title` is missing."))
      }
      # check the required field `priority`
      if (!is.null(input_json$`priority`)) {
        if (!(is.character(input_json$`priority`) && length(input_json$`priority`) == 1)) {
          stop(paste("Error! Invalid data for `priority`. Must be a string:", input_json$`priority`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationItem: the required field `priority` is missing."))
      }
      # check the required field `action_items`
      if (!is.null(input_json$`action_items`)) {
        stopifnot(is.vector(input_json$`action_items`), length(input_json$`action_items`) != 0)
        tmp <- sapply(input_json$`action_items`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationItem: the required field `action_items` is missing."))
      }
      # check the required field `source_refs`
      if (!is.null(input_json$`source_refs`)) {
        stopifnot(is.vector(input_json$`source_refs`), length(input_json$`source_refs`) != 0)
        tmp <- sapply(input_json$`source_refs`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationItem: the required field `source_refs` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationItem: the required field `status` is missing."))
      }
      # check the required field `position`
      if (!is.null(input_json$`position`)) {
        if (!(is.numeric(input_json$`position`) && length(input_json$`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", input_json$`position`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationItem: the required field `position` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationItem: the required field `created_at` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationItem: the required field `updated_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RecommendationItem
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

      # check if the required `recommendation_id` is null
      if (is.null(self$`recommendation_id`)) {
        return(FALSE)
      }

      # check if the required `recommendation_type` is null
      if (is.null(self$`recommendation_type`)) {
        return(FALSE)
      }

      # check if the required `category` is null
      if (is.null(self$`category`)) {
        return(FALSE)
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        return(FALSE)
      }

      # check if the required `priority` is null
      if (is.null(self$`priority`)) {
        return(FALSE)
      }

      # check if the required `action_items` is null
      if (is.null(self$`action_items`)) {
        return(FALSE)
      }

      # check if the required `source_refs` is null
      if (is.null(self$`source_refs`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `position` is null
      if (is.null(self$`position`)) {
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

      # check if the required `recommendation_id` is null
      if (is.null(self$`recommendation_id`)) {
        invalid_fields["recommendation_id"] <- "Non-nullable required field `recommendation_id` cannot be null."
      }

      # check if the required `recommendation_type` is null
      if (is.null(self$`recommendation_type`)) {
        invalid_fields["recommendation_type"] <- "Non-nullable required field `recommendation_type` cannot be null."
      }

      # check if the required `category` is null
      if (is.null(self$`category`)) {
        invalid_fields["category"] <- "Non-nullable required field `category` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      # check if the required `priority` is null
      if (is.null(self$`priority`)) {
        invalid_fields["priority"] <- "Non-nullable required field `priority` cannot be null."
      }

      # check if the required `action_items` is null
      if (is.null(self$`action_items`)) {
        invalid_fields["action_items"] <- "Non-nullable required field `action_items` cannot be null."
      }

      # check if the required `source_refs` is null
      if (is.null(self$`source_refs`)) {
        invalid_fields["source_refs"] <- "Non-nullable required field `source_refs` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `position` is null
      if (is.null(self$`position`)) {
        invalid_fields["position"] <- "Non-nullable required field `position` cannot be null."
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
# RecommendationItem$unlock()
#
## Below is an example to define the print function
# RecommendationItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RecommendationItem$lock()

