#' Create a new ProjectDraftRecord
#'
#' @description
#' ProjectDraftRecord Class
#'
#' @docType class
#' @title ProjectDraftRecord
#' @description ProjectDraftRecord Class
#' @format An \code{R6Class} generator object
#' @field draft_id Draft id (draft_...) character
#' @field status open, finalized or expired character
#' @field current_step The next step to submit (details, prompts, competitors, owned_media), or ready when the draft can be finalized character
#' @field steps_completed  list(character)
#' @field steps_remaining Required steps not submitted yet list(character)
#' @field optional_steps Steps the plan allows but finalize does not require (owned_media from Growth) list(character)
#' @field finalizable  character
#' @field website_url  character
#' @field main_country  character
#' @field main_language  character
#' @field use_subdomain  character
#' @field name Null until the details step character
#' @field brand_name  character
#' @field description  character
#' @field industry  list(character)
#' @field matching_names  list(character)
#' @field prompts  list(character)
#' @field competitors  list(\link{ProjectDraftRecordCompetitorsInner})
#' @field owned_media  \link{ProjectDraftRecordOwnedMedia}
#' @field weekly_email_subscribed  character
#' @field external_identifier  character
#' @field execute_prompts_immediately  character
#' @field project_id The project the draft became; null until finalized integer
#' @field expires_at  character
#' @field created_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDraftRecord <- R6::R6Class(
  "ProjectDraftRecord",
  public = list(
    `draft_id` = NULL,
    `status` = NULL,
    `current_step` = NULL,
    `steps_completed` = NULL,
    `steps_remaining` = NULL,
    `optional_steps` = NULL,
    `finalizable` = NULL,
    `website_url` = NULL,
    `main_country` = NULL,
    `main_language` = NULL,
    `use_subdomain` = NULL,
    `name` = NULL,
    `brand_name` = NULL,
    `description` = NULL,
    `industry` = NULL,
    `matching_names` = NULL,
    `prompts` = NULL,
    `competitors` = NULL,
    `owned_media` = NULL,
    `weekly_email_subscribed` = NULL,
    `external_identifier` = NULL,
    `execute_prompts_immediately` = NULL,
    `project_id` = NULL,
    `expires_at` = NULL,
    `created_at` = NULL,

    #' @description
    #' Initialize a new ProjectDraftRecord class.
    #'
    #' @param draft_id Draft id (draft_...)
    #' @param status open, finalized or expired
    #' @param current_step The next step to submit (details, prompts, competitors, owned_media), or ready when the draft can be finalized
    #' @param steps_completed steps_completed
    #' @param steps_remaining Required steps not submitted yet
    #' @param optional_steps Steps the plan allows but finalize does not require (owned_media from Growth)
    #' @param finalizable finalizable
    #' @param website_url website_url
    #' @param main_country main_country
    #' @param main_language main_language
    #' @param use_subdomain use_subdomain
    #' @param name Null until the details step
    #' @param brand_name brand_name
    #' @param description description
    #' @param industry industry
    #' @param matching_names matching_names
    #' @param prompts prompts
    #' @param competitors competitors
    #' @param owned_media owned_media
    #' @param weekly_email_subscribed weekly_email_subscribed
    #' @param external_identifier external_identifier
    #' @param execute_prompts_immediately execute_prompts_immediately
    #' @param project_id The project the draft became; null until finalized
    #' @param expires_at expires_at
    #' @param created_at created_at
    #' @param ... Other optional arguments.
    initialize = function(`draft_id`, `status`, `current_step`, `steps_completed`, `steps_remaining`, `optional_steps`, `finalizable`, `website_url`, `main_country`, `main_language`, `use_subdomain`, `name`, `brand_name`, `description`, `industry`, `matching_names`, `prompts`, `competitors`, `owned_media`, `weekly_email_subscribed`, `external_identifier`, `execute_prompts_immediately`, `project_id`, `expires_at`, `created_at`, ...) {
      if (!missing(`draft_id`)) {
        if (!(is.character(`draft_id`) && length(`draft_id`) == 1)) {
          stop(paste("Error! Invalid data for `draft_id`. Must be a string:", `draft_id`))
        }
        self$`draft_id` <- `draft_id`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`current_step`)) {
        if (!(is.character(`current_step`) && length(`current_step`) == 1)) {
          stop(paste("Error! Invalid data for `current_step`. Must be a string:", `current_step`))
        }
        self$`current_step` <- `current_step`
      }
      if (!missing(`steps_completed`)) {
        stopifnot(is.vector(`steps_completed`), length(`steps_completed`) != 0)
        sapply(`steps_completed`, function(x) stopifnot(is.character(x)))
        self$`steps_completed` <- `steps_completed`
      }
      if (!missing(`steps_remaining`)) {
        stopifnot(is.vector(`steps_remaining`), length(`steps_remaining`) != 0)
        sapply(`steps_remaining`, function(x) stopifnot(is.character(x)))
        self$`steps_remaining` <- `steps_remaining`
      }
      if (!missing(`optional_steps`)) {
        stopifnot(is.vector(`optional_steps`), length(`optional_steps`) != 0)
        sapply(`optional_steps`, function(x) stopifnot(is.character(x)))
        self$`optional_steps` <- `optional_steps`
      }
      if (!missing(`finalizable`)) {
        if (!(is.logical(`finalizable`) && length(`finalizable`) == 1)) {
          stop(paste("Error! Invalid data for `finalizable`. Must be a boolean:", `finalizable`))
        }
        self$`finalizable` <- `finalizable`
      }
      if (!missing(`website_url`)) {
        if (!(is.character(`website_url`) && length(`website_url`) == 1)) {
          stop(paste("Error! Invalid data for `website_url`. Must be a string:", `website_url`))
        }
        self$`website_url` <- `website_url`
      }
      if (!missing(`main_country`)) {
        if (!(is.character(`main_country`) && length(`main_country`) == 1)) {
          stop(paste("Error! Invalid data for `main_country`. Must be a string:", `main_country`))
        }
        self$`main_country` <- `main_country`
      }
      if (!missing(`main_language`)) {
        if (!(is.character(`main_language`) && length(`main_language`) == 1)) {
          stop(paste("Error! Invalid data for `main_language`. Must be a string:", `main_language`))
        }
        self$`main_language` <- `main_language`
      }
      if (!missing(`use_subdomain`)) {
        if (!(is.logical(`use_subdomain`) && length(`use_subdomain`) == 1)) {
          stop(paste("Error! Invalid data for `use_subdomain`. Must be a boolean:", `use_subdomain`))
        }
        self$`use_subdomain` <- `use_subdomain`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`brand_name`)) {
        if (!(is.character(`brand_name`) && length(`brand_name`) == 1)) {
          stop(paste("Error! Invalid data for `brand_name`. Must be a string:", `brand_name`))
        }
        self$`brand_name` <- `brand_name`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`industry`)) {
        stopifnot(is.vector(`industry`), length(`industry`) != 0)
        sapply(`industry`, function(x) stopifnot(is.character(x)))
        self$`industry` <- `industry`
      }
      if (!missing(`matching_names`)) {
        stopifnot(is.vector(`matching_names`), length(`matching_names`) != 0)
        sapply(`matching_names`, function(x) stopifnot(is.character(x)))
        self$`matching_names` <- `matching_names`
      }
      if (!missing(`prompts`)) {
        stopifnot(is.vector(`prompts`), length(`prompts`) != 0)
        sapply(`prompts`, function(x) stopifnot(is.character(x)))
        self$`prompts` <- `prompts`
      }
      if (!missing(`competitors`)) {
        stopifnot(is.vector(`competitors`), length(`competitors`) != 0)
        sapply(`competitors`, function(x) stopifnot(R6::is.R6(x)))
        self$`competitors` <- `competitors`
      }
      if (!missing(`owned_media`)) {
        stopifnot(R6::is.R6(`owned_media`))
        self$`owned_media` <- `owned_media`
      }
      if (!missing(`weekly_email_subscribed`)) {
        if (!(is.logical(`weekly_email_subscribed`) && length(`weekly_email_subscribed`) == 1)) {
          stop(paste("Error! Invalid data for `weekly_email_subscribed`. Must be a boolean:", `weekly_email_subscribed`))
        }
        self$`weekly_email_subscribed` <- `weekly_email_subscribed`
      }
      if (!missing(`external_identifier`)) {
        if (!(is.character(`external_identifier`) && length(`external_identifier`) == 1)) {
          stop(paste("Error! Invalid data for `external_identifier`. Must be a string:", `external_identifier`))
        }
        self$`external_identifier` <- `external_identifier`
      }
      if (!missing(`execute_prompts_immediately`)) {
        if (!(is.logical(`execute_prompts_immediately`) && length(`execute_prompts_immediately`) == 1)) {
          stop(paste("Error! Invalid data for `execute_prompts_immediately`. Must be a boolean:", `execute_prompts_immediately`))
        }
        self$`execute_prompts_immediately` <- `execute_prompts_immediately`
      }
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`expires_at`)) {
        if (!(is.character(`expires_at`) && length(`expires_at`) == 1)) {
          stop(paste("Error! Invalid data for `expires_at`. Must be a string:", `expires_at`))
        }
        self$`expires_at` <- `expires_at`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
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
    #' @return ProjectDraftRecord as a base R list.
    #' @examples
    #' # convert array of ProjectDraftRecord (x) to a data frame
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
    #' Convert ProjectDraftRecord to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectDraftRecordObject <- list()
      if (!is.null(self$`draft_id`)) {
        ProjectDraftRecordObject[["draft_id"]] <-
          self$`draft_id`
      }
      if (!is.null(self$`status`)) {
        ProjectDraftRecordObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`current_step`)) {
        ProjectDraftRecordObject[["current_step"]] <-
          self$`current_step`
      }
      if (!is.null(self$`steps_completed`)) {
        ProjectDraftRecordObject[["steps_completed"]] <-
          self$`steps_completed`
      }
      if (!is.null(self$`steps_remaining`)) {
        ProjectDraftRecordObject[["steps_remaining"]] <-
          self$`steps_remaining`
      }
      if (!is.null(self$`optional_steps`)) {
        ProjectDraftRecordObject[["optional_steps"]] <-
          self$`optional_steps`
      }
      if (!is.null(self$`finalizable`)) {
        ProjectDraftRecordObject[["finalizable"]] <-
          self$`finalizable`
      }
      if (!is.null(self$`website_url`)) {
        ProjectDraftRecordObject[["website_url"]] <-
          self$`website_url`
      }
      if (!is.null(self$`main_country`)) {
        ProjectDraftRecordObject[["main_country"]] <-
          self$`main_country`
      }
      if (!is.null(self$`main_language`)) {
        ProjectDraftRecordObject[["main_language"]] <-
          self$`main_language`
      }
      if (!is.null(self$`use_subdomain`)) {
        ProjectDraftRecordObject[["use_subdomain"]] <-
          self$`use_subdomain`
      }
      if (!is.null(self$`name`)) {
        ProjectDraftRecordObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`brand_name`)) {
        ProjectDraftRecordObject[["brand_name"]] <-
          self$`brand_name`
      }
      if (!is.null(self$`description`)) {
        ProjectDraftRecordObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`industry`)) {
        ProjectDraftRecordObject[["industry"]] <-
          self$`industry`
      }
      if (!is.null(self$`matching_names`)) {
        ProjectDraftRecordObject[["matching_names"]] <-
          self$`matching_names`
      }
      if (!is.null(self$`prompts`)) {
        ProjectDraftRecordObject[["prompts"]] <-
          self$`prompts`
      }
      if (!is.null(self$`competitors`)) {
        ProjectDraftRecordObject[["competitors"]] <-
          self$extractSimpleType(self$`competitors`)
      }
      if (!is.null(self$`owned_media`)) {
        ProjectDraftRecordObject[["owned_media"]] <-
          self$extractSimpleType(self$`owned_media`)
      }
      if (!is.null(self$`weekly_email_subscribed`)) {
        ProjectDraftRecordObject[["weekly_email_subscribed"]] <-
          self$`weekly_email_subscribed`
      }
      if (!is.null(self$`external_identifier`)) {
        ProjectDraftRecordObject[["external_identifier"]] <-
          self$`external_identifier`
      }
      if (!is.null(self$`execute_prompts_immediately`)) {
        ProjectDraftRecordObject[["execute_prompts_immediately"]] <-
          self$`execute_prompts_immediately`
      }
      if (!is.null(self$`project_id`)) {
        ProjectDraftRecordObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`expires_at`)) {
        ProjectDraftRecordObject[["expires_at"]] <-
          self$`expires_at`
      }
      if (!is.null(self$`created_at`)) {
        ProjectDraftRecordObject[["created_at"]] <-
          self$`created_at`
      }
      return(ProjectDraftRecordObject)
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
    #' Deserialize JSON string into an instance of ProjectDraftRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDraftRecord
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`draft_id`)) {
        self$`draft_id` <- this_object$`draft_id`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`current_step`)) {
        self$`current_step` <- this_object$`current_step`
      }
      if (!is.null(this_object$`steps_completed`)) {
        self$`steps_completed` <- ApiClient$new()$deserializeObj(this_object$`steps_completed`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`steps_remaining`)) {
        self$`steps_remaining` <- ApiClient$new()$deserializeObj(this_object$`steps_remaining`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`optional_steps`)) {
        self$`optional_steps` <- ApiClient$new()$deserializeObj(this_object$`optional_steps`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`finalizable`)) {
        self$`finalizable` <- this_object$`finalizable`
      }
      if (!is.null(this_object$`website_url`)) {
        self$`website_url` <- this_object$`website_url`
      }
      if (!is.null(this_object$`main_country`)) {
        self$`main_country` <- this_object$`main_country`
      }
      if (!is.null(this_object$`main_language`)) {
        self$`main_language` <- this_object$`main_language`
      }
      if (!is.null(this_object$`use_subdomain`)) {
        self$`use_subdomain` <- this_object$`use_subdomain`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`brand_name`)) {
        self$`brand_name` <- this_object$`brand_name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`industry`)) {
        self$`industry` <- ApiClient$new()$deserializeObj(this_object$`industry`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`matching_names`)) {
        self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`prompts`)) {
        self$`prompts` <- ApiClient$new()$deserializeObj(this_object$`prompts`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`competitors`)) {
        self$`competitors` <- ApiClient$new()$deserializeObj(this_object$`competitors`, "array[ProjectDraftRecordCompetitorsInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`owned_media`)) {
        `owned_media_object` <- ProjectDraftRecordOwnedMedia$new()
        `owned_media_object`$fromJSON(jsonlite::toJSON(this_object$`owned_media`, auto_unbox = TRUE, digits = NA))
        self$`owned_media` <- `owned_media_object`
      }
      if (!is.null(this_object$`weekly_email_subscribed`)) {
        self$`weekly_email_subscribed` <- this_object$`weekly_email_subscribed`
      }
      if (!is.null(this_object$`external_identifier`)) {
        self$`external_identifier` <- this_object$`external_identifier`
      }
      if (!is.null(this_object$`execute_prompts_immediately`)) {
        self$`execute_prompts_immediately` <- this_object$`execute_prompts_immediately`
      }
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`expires_at`)) {
        self$`expires_at` <- this_object$`expires_at`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectDraftRecord in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDraftRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDraftRecord
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`draft_id` <- this_object$`draft_id`
      self$`status` <- this_object$`status`
      self$`current_step` <- this_object$`current_step`
      self$`steps_completed` <- ApiClient$new()$deserializeObj(this_object$`steps_completed`, "array[character]", loadNamespace("llmpulse"))
      self$`steps_remaining` <- ApiClient$new()$deserializeObj(this_object$`steps_remaining`, "array[character]", loadNamespace("llmpulse"))
      self$`optional_steps` <- ApiClient$new()$deserializeObj(this_object$`optional_steps`, "array[character]", loadNamespace("llmpulse"))
      self$`finalizable` <- this_object$`finalizable`
      self$`website_url` <- this_object$`website_url`
      self$`main_country` <- this_object$`main_country`
      self$`main_language` <- this_object$`main_language`
      self$`use_subdomain` <- this_object$`use_subdomain`
      self$`name` <- this_object$`name`
      self$`brand_name` <- this_object$`brand_name`
      self$`description` <- this_object$`description`
      self$`industry` <- ApiClient$new()$deserializeObj(this_object$`industry`, "array[character]", loadNamespace("llmpulse"))
      self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      self$`prompts` <- ApiClient$new()$deserializeObj(this_object$`prompts`, "array[character]", loadNamespace("llmpulse"))
      self$`competitors` <- ApiClient$new()$deserializeObj(this_object$`competitors`, "array[ProjectDraftRecordCompetitorsInner]", loadNamespace("llmpulse"))
      self$`owned_media` <- ProjectDraftRecordOwnedMedia$new()$fromJSON(jsonlite::toJSON(this_object$`owned_media`, auto_unbox = TRUE, digits = NA))
      self$`weekly_email_subscribed` <- this_object$`weekly_email_subscribed`
      self$`external_identifier` <- this_object$`external_identifier`
      self$`execute_prompts_immediately` <- this_object$`execute_prompts_immediately`
      self$`project_id` <- this_object$`project_id`
      self$`expires_at` <- this_object$`expires_at`
      self$`created_at` <- this_object$`created_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectDraftRecord and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `draft_id`
      if (!is.null(input_json$`draft_id`)) {
        if (!(is.character(input_json$`draft_id`) && length(input_json$`draft_id`) == 1)) {
          stop(paste("Error! Invalid data for `draft_id`. Must be a string:", input_json$`draft_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `draft_id` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `status` is missing."))
      }
      # check the required field `current_step`
      if (!is.null(input_json$`current_step`)) {
        if (!(is.character(input_json$`current_step`) && length(input_json$`current_step`) == 1)) {
          stop(paste("Error! Invalid data for `current_step`. Must be a string:", input_json$`current_step`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `current_step` is missing."))
      }
      # check the required field `steps_completed`
      if (!is.null(input_json$`steps_completed`)) {
        stopifnot(is.vector(input_json$`steps_completed`), length(input_json$`steps_completed`) != 0)
        tmp <- sapply(input_json$`steps_completed`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `steps_completed` is missing."))
      }
      # check the required field `steps_remaining`
      if (!is.null(input_json$`steps_remaining`)) {
        stopifnot(is.vector(input_json$`steps_remaining`), length(input_json$`steps_remaining`) != 0)
        tmp <- sapply(input_json$`steps_remaining`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `steps_remaining` is missing."))
      }
      # check the required field `optional_steps`
      if (!is.null(input_json$`optional_steps`)) {
        stopifnot(is.vector(input_json$`optional_steps`), length(input_json$`optional_steps`) != 0)
        tmp <- sapply(input_json$`optional_steps`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `optional_steps` is missing."))
      }
      # check the required field `finalizable`
      if (!is.null(input_json$`finalizable`)) {
        if (!(is.logical(input_json$`finalizable`) && length(input_json$`finalizable`) == 1)) {
          stop(paste("Error! Invalid data for `finalizable`. Must be a boolean:", input_json$`finalizable`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `finalizable` is missing."))
      }
      # check the required field `website_url`
      if (!is.null(input_json$`website_url`)) {
        if (!(is.character(input_json$`website_url`) && length(input_json$`website_url`) == 1)) {
          stop(paste("Error! Invalid data for `website_url`. Must be a string:", input_json$`website_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `website_url` is missing."))
      }
      # check the required field `main_country`
      if (!is.null(input_json$`main_country`)) {
        if (!(is.character(input_json$`main_country`) && length(input_json$`main_country`) == 1)) {
          stop(paste("Error! Invalid data for `main_country`. Must be a string:", input_json$`main_country`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `main_country` is missing."))
      }
      # check the required field `main_language`
      if (!is.null(input_json$`main_language`)) {
        if (!(is.character(input_json$`main_language`) && length(input_json$`main_language`) == 1)) {
          stop(paste("Error! Invalid data for `main_language`. Must be a string:", input_json$`main_language`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `main_language` is missing."))
      }
      # check the required field `use_subdomain`
      if (!is.null(input_json$`use_subdomain`)) {
        if (!(is.logical(input_json$`use_subdomain`) && length(input_json$`use_subdomain`) == 1)) {
          stop(paste("Error! Invalid data for `use_subdomain`. Must be a boolean:", input_json$`use_subdomain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `use_subdomain` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `name` is missing."))
      }
      # check the required field `brand_name`
      if (!is.null(input_json$`brand_name`)) {
        if (!(is.character(input_json$`brand_name`) && length(input_json$`brand_name`) == 1)) {
          stop(paste("Error! Invalid data for `brand_name`. Must be a string:", input_json$`brand_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `brand_name` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `description` is missing."))
      }
      # check the required field `industry`
      if (!is.null(input_json$`industry`)) {
        stopifnot(is.vector(input_json$`industry`), length(input_json$`industry`) != 0)
        tmp <- sapply(input_json$`industry`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `industry` is missing."))
      }
      # check the required field `matching_names`
      if (!is.null(input_json$`matching_names`)) {
        stopifnot(is.vector(input_json$`matching_names`), length(input_json$`matching_names`) != 0)
        tmp <- sapply(input_json$`matching_names`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `matching_names` is missing."))
      }
      # check the required field `prompts`
      if (!is.null(input_json$`prompts`)) {
        stopifnot(is.vector(input_json$`prompts`), length(input_json$`prompts`) != 0)
        tmp <- sapply(input_json$`prompts`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `prompts` is missing."))
      }
      # check the required field `competitors`
      if (!is.null(input_json$`competitors`)) {
        stopifnot(is.vector(input_json$`competitors`), length(input_json$`competitors`) != 0)
        tmp <- sapply(input_json$`competitors`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `competitors` is missing."))
      }
      # check the required field `owned_media`
      if (!is.null(input_json$`owned_media`)) {
        stopifnot(R6::is.R6(input_json$`owned_media`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `owned_media` is missing."))
      }
      # check the required field `weekly_email_subscribed`
      if (!is.null(input_json$`weekly_email_subscribed`)) {
        if (!(is.logical(input_json$`weekly_email_subscribed`) && length(input_json$`weekly_email_subscribed`) == 1)) {
          stop(paste("Error! Invalid data for `weekly_email_subscribed`. Must be a boolean:", input_json$`weekly_email_subscribed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `weekly_email_subscribed` is missing."))
      }
      # check the required field `external_identifier`
      if (!is.null(input_json$`external_identifier`)) {
        if (!(is.character(input_json$`external_identifier`) && length(input_json$`external_identifier`) == 1)) {
          stop(paste("Error! Invalid data for `external_identifier`. Must be a string:", input_json$`external_identifier`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `external_identifier` is missing."))
      }
      # check the required field `execute_prompts_immediately`
      if (!is.null(input_json$`execute_prompts_immediately`)) {
        if (!(is.logical(input_json$`execute_prompts_immediately`) && length(input_json$`execute_prompts_immediately`) == 1)) {
          stop(paste("Error! Invalid data for `execute_prompts_immediately`. Must be a boolean:", input_json$`execute_prompts_immediately`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `execute_prompts_immediately` is missing."))
      }
      # check the required field `project_id`
      if (!is.null(input_json$`project_id`)) {
        if (!(is.numeric(input_json$`project_id`) && length(input_json$`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", input_json$`project_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `project_id` is missing."))
      }
      # check the required field `expires_at`
      if (!is.null(input_json$`expires_at`)) {
        if (!(is.character(input_json$`expires_at`) && length(input_json$`expires_at`) == 1)) {
          stop(paste("Error! Invalid data for `expires_at`. Must be a string:", input_json$`expires_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `expires_at` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectDraftRecord: the required field `created_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectDraftRecord
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `draft_id` is null
      if (is.null(self$`draft_id`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `current_step` is null
      if (is.null(self$`current_step`)) {
        return(FALSE)
      }

      # check if the required `steps_completed` is null
      if (is.null(self$`steps_completed`)) {
        return(FALSE)
      }

      # check if the required `steps_remaining` is null
      if (is.null(self$`steps_remaining`)) {
        return(FALSE)
      }

      # check if the required `optional_steps` is null
      if (is.null(self$`optional_steps`)) {
        return(FALSE)
      }

      # check if the required `finalizable` is null
      if (is.null(self$`finalizable`)) {
        return(FALSE)
      }

      # check if the required `website_url` is null
      if (is.null(self$`website_url`)) {
        return(FALSE)
      }

      # check if the required `main_country` is null
      if (is.null(self$`main_country`)) {
        return(FALSE)
      }

      # check if the required `main_language` is null
      if (is.null(self$`main_language`)) {
        return(FALSE)
      }

      # check if the required `use_subdomain` is null
      if (is.null(self$`use_subdomain`)) {
        return(FALSE)
      }

      # check if the required `industry` is null
      if (is.null(self$`industry`)) {
        return(FALSE)
      }

      # check if the required `matching_names` is null
      if (is.null(self$`matching_names`)) {
        return(FALSE)
      }

      # check if the required `prompts` is null
      if (is.null(self$`prompts`)) {
        return(FALSE)
      }

      # check if the required `competitors` is null
      if (is.null(self$`competitors`)) {
        return(FALSE)
      }

      # check if the required `owned_media` is null
      if (is.null(self$`owned_media`)) {
        return(FALSE)
      }

      # check if the required `weekly_email_subscribed` is null
      if (is.null(self$`weekly_email_subscribed`)) {
        return(FALSE)
      }

      # check if the required `execute_prompts_immediately` is null
      if (is.null(self$`execute_prompts_immediately`)) {
        return(FALSE)
      }

      # check if the required `expires_at` is null
      if (is.null(self$`expires_at`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
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
      # check if the required `draft_id` is null
      if (is.null(self$`draft_id`)) {
        invalid_fields["draft_id"] <- "Non-nullable required field `draft_id` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `current_step` is null
      if (is.null(self$`current_step`)) {
        invalid_fields["current_step"] <- "Non-nullable required field `current_step` cannot be null."
      }

      # check if the required `steps_completed` is null
      if (is.null(self$`steps_completed`)) {
        invalid_fields["steps_completed"] <- "Non-nullable required field `steps_completed` cannot be null."
      }

      # check if the required `steps_remaining` is null
      if (is.null(self$`steps_remaining`)) {
        invalid_fields["steps_remaining"] <- "Non-nullable required field `steps_remaining` cannot be null."
      }

      # check if the required `optional_steps` is null
      if (is.null(self$`optional_steps`)) {
        invalid_fields["optional_steps"] <- "Non-nullable required field `optional_steps` cannot be null."
      }

      # check if the required `finalizable` is null
      if (is.null(self$`finalizable`)) {
        invalid_fields["finalizable"] <- "Non-nullable required field `finalizable` cannot be null."
      }

      # check if the required `website_url` is null
      if (is.null(self$`website_url`)) {
        invalid_fields["website_url"] <- "Non-nullable required field `website_url` cannot be null."
      }

      # check if the required `main_country` is null
      if (is.null(self$`main_country`)) {
        invalid_fields["main_country"] <- "Non-nullable required field `main_country` cannot be null."
      }

      # check if the required `main_language` is null
      if (is.null(self$`main_language`)) {
        invalid_fields["main_language"] <- "Non-nullable required field `main_language` cannot be null."
      }

      # check if the required `use_subdomain` is null
      if (is.null(self$`use_subdomain`)) {
        invalid_fields["use_subdomain"] <- "Non-nullable required field `use_subdomain` cannot be null."
      }

      # check if the required `industry` is null
      if (is.null(self$`industry`)) {
        invalid_fields["industry"] <- "Non-nullable required field `industry` cannot be null."
      }

      # check if the required `matching_names` is null
      if (is.null(self$`matching_names`)) {
        invalid_fields["matching_names"] <- "Non-nullable required field `matching_names` cannot be null."
      }

      # check if the required `prompts` is null
      if (is.null(self$`prompts`)) {
        invalid_fields["prompts"] <- "Non-nullable required field `prompts` cannot be null."
      }

      # check if the required `competitors` is null
      if (is.null(self$`competitors`)) {
        invalid_fields["competitors"] <- "Non-nullable required field `competitors` cannot be null."
      }

      # check if the required `owned_media` is null
      if (is.null(self$`owned_media`)) {
        invalid_fields["owned_media"] <- "Non-nullable required field `owned_media` cannot be null."
      }

      # check if the required `weekly_email_subscribed` is null
      if (is.null(self$`weekly_email_subscribed`)) {
        invalid_fields["weekly_email_subscribed"] <- "Non-nullable required field `weekly_email_subscribed` cannot be null."
      }

      # check if the required `execute_prompts_immediately` is null
      if (is.null(self$`execute_prompts_immediately`)) {
        invalid_fields["execute_prompts_immediately"] <- "Non-nullable required field `execute_prompts_immediately` cannot be null."
      }

      # check if the required `expires_at` is null
      if (is.null(self$`expires_at`)) {
        invalid_fields["expires_at"] <- "Non-nullable required field `expires_at` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
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
# ProjectDraftRecord$unlock()
#
## Below is an example to define the print function
# ProjectDraftRecord$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectDraftRecord$lock()

