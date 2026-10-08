#' Create a new GeoAudit
#'
#' @description
#' GeoAudit Class
#'
#' @docType class
#' @title GeoAudit
#' @description GeoAudit Class
#' @format An \code{R6Class} generator object
#' @field id Stable audit id character [optional]
#' @field audit_type  character [optional]
#' @field target The audited domain (site-wide types) or page URL, normalized character [optional]
#' @field country_code  character [optional]
#' @field cadence  character [optional]
#' @field status  character [optional]
#' @field paused_reason user, or unreachable when three runs in a row could not reach the site character [optional]
#' @field schedule  \link{GeoAuditSchedule} [optional]
#' @field next_run_at  character [optional]
#' @field email_alerts  character [optional]
#' @field recurring_available Whether this audit type can run weekly or monthly character [optional]
#' @field checks_tracked Whether runs of this type produce findings and issues, or a score only character [optional]
#' @field latest_run  \link{GeoAuditRun} [optional]
#' @field open_issues  integer [optional]
#' @field open_critical_issues  integer [optional]
#' @field created_at  character [optional]
#' @field app_url  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoAudit <- R6::R6Class(
  "GeoAudit",
  public = list(
    `id` = NULL,
    `audit_type` = NULL,
    `target` = NULL,
    `country_code` = NULL,
    `cadence` = NULL,
    `status` = NULL,
    `paused_reason` = NULL,
    `schedule` = NULL,
    `next_run_at` = NULL,
    `email_alerts` = NULL,
    `recurring_available` = NULL,
    `checks_tracked` = NULL,
    `latest_run` = NULL,
    `open_issues` = NULL,
    `open_critical_issues` = NULL,
    `created_at` = NULL,
    `app_url` = NULL,

    #' @description
    #' Initialize a new GeoAudit class.
    #'
    #' @param id Stable audit id
    #' @param audit_type audit_type
    #' @param target The audited domain (site-wide types) or page URL, normalized
    #' @param country_code country_code
    #' @param cadence cadence
    #' @param status status
    #' @param paused_reason user, or unreachable when three runs in a row could not reach the site
    #' @param schedule schedule
    #' @param next_run_at next_run_at
    #' @param email_alerts email_alerts
    #' @param recurring_available Whether this audit type can run weekly or monthly
    #' @param checks_tracked Whether runs of this type produce findings and issues, or a score only
    #' @param latest_run latest_run
    #' @param open_issues open_issues
    #' @param open_critical_issues open_critical_issues
    #' @param created_at created_at
    #' @param app_url app_url
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `audit_type` = NULL, `target` = NULL, `country_code` = NULL, `cadence` = NULL, `status` = NULL, `paused_reason` = NULL, `schedule` = NULL, `next_run_at` = NULL, `email_alerts` = NULL, `recurring_available` = NULL, `checks_tracked` = NULL, `latest_run` = NULL, `open_issues` = NULL, `open_critical_issues` = NULL, `created_at` = NULL, `app_url` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`audit_type`)) {
        if (!(`audit_type` %in% c("agent_readiness", "robots_txt", "crawlability", "schema", "content_readiness", "discoverability", "site_structure"))) {
          stop(paste("Error! \"", `audit_type`, "\" cannot be assigned to `audit_type`. Must be \"agent_readiness\", \"robots_txt\", \"crawlability\", \"schema\", \"content_readiness\", \"discoverability\", \"site_structure\".", sep = ""))
        }
        if (!(is.character(`audit_type`) && length(`audit_type`) == 1)) {
          stop(paste("Error! Invalid data for `audit_type`. Must be a string:", `audit_type`))
        }
        self$`audit_type` <- `audit_type`
      }
      if (!is.null(`target`)) {
        if (!(is.character(`target`) && length(`target`) == 1)) {
          stop(paste("Error! Invalid data for `target`. Must be a string:", `target`))
        }
        self$`target` <- `target`
      }
      if (!is.null(`country_code`)) {
        if (!(is.character(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", `country_code`))
        }
        self$`country_code` <- `country_code`
      }
      if (!is.null(`cadence`)) {
        if (!(`cadence` %in% c("once", "weekly", "monthly"))) {
          stop(paste("Error! \"", `cadence`, "\" cannot be assigned to `cadence`. Must be \"once\", \"weekly\", \"monthly\".", sep = ""))
        }
        if (!(is.character(`cadence`) && length(`cadence`) == 1)) {
          stop(paste("Error! Invalid data for `cadence`. Must be a string:", `cadence`))
        }
        self$`cadence` <- `cadence`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("active", "paused", "archived"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"active\", \"paused\", \"archived\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`paused_reason`)) {
        if (!(is.character(`paused_reason`) && length(`paused_reason`) == 1)) {
          stop(paste("Error! Invalid data for `paused_reason`. Must be a string:", `paused_reason`))
        }
        self$`paused_reason` <- `paused_reason`
      }
      if (!is.null(`schedule`)) {
        stopifnot(R6::is.R6(`schedule`))
        self$`schedule` <- `schedule`
      }
      if (!is.null(`next_run_at`)) {
        if (!is.character(`next_run_at`)) {
          stop(paste("Error! Invalid data for `next_run_at`. Must be a string:", `next_run_at`))
        }
        self$`next_run_at` <- `next_run_at`
      }
      if (!is.null(`email_alerts`)) {
        if (!(is.logical(`email_alerts`) && length(`email_alerts`) == 1)) {
          stop(paste("Error! Invalid data for `email_alerts`. Must be a boolean:", `email_alerts`))
        }
        self$`email_alerts` <- `email_alerts`
      }
      if (!is.null(`recurring_available`)) {
        if (!(is.logical(`recurring_available`) && length(`recurring_available`) == 1)) {
          stop(paste("Error! Invalid data for `recurring_available`. Must be a boolean:", `recurring_available`))
        }
        self$`recurring_available` <- `recurring_available`
      }
      if (!is.null(`checks_tracked`)) {
        if (!(is.logical(`checks_tracked`) && length(`checks_tracked`) == 1)) {
          stop(paste("Error! Invalid data for `checks_tracked`. Must be a boolean:", `checks_tracked`))
        }
        self$`checks_tracked` <- `checks_tracked`
      }
      if (!is.null(`latest_run`)) {
        stopifnot(R6::is.R6(`latest_run`))
        self$`latest_run` <- `latest_run`
      }
      if (!is.null(`open_issues`)) {
        if (!(is.numeric(`open_issues`) && length(`open_issues`) == 1)) {
          stop(paste("Error! Invalid data for `open_issues`. Must be an integer:", `open_issues`))
        }
        self$`open_issues` <- `open_issues`
      }
      if (!is.null(`open_critical_issues`)) {
        if (!(is.numeric(`open_critical_issues`) && length(`open_critical_issues`) == 1)) {
          stop(paste("Error! Invalid data for `open_critical_issues`. Must be an integer:", `open_critical_issues`))
        }
        self$`open_critical_issues` <- `open_critical_issues`
      }
      if (!is.null(`created_at`)) {
        if (!is.character(`created_at`)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!is.null(`app_url`)) {
        if (!(is.character(`app_url`) && length(`app_url`) == 1)) {
          stop(paste("Error! Invalid data for `app_url`. Must be a string:", `app_url`))
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
    #' @return GeoAudit as a base R list.
    #' @examples
    #' # convert array of GeoAudit (x) to a data frame
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
    #' Convert GeoAudit to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoAuditObject <- list()
      if (!is.null(self$`id`)) {
        GeoAuditObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`audit_type`)) {
        GeoAuditObject[["audit_type"]] <-
          self$`audit_type`
      }
      if (!is.null(self$`target`)) {
        GeoAuditObject[["target"]] <-
          self$`target`
      }
      if (!is.null(self$`country_code`)) {
        GeoAuditObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`cadence`)) {
        GeoAuditObject[["cadence"]] <-
          self$`cadence`
      }
      if (!is.null(self$`status`)) {
        GeoAuditObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`paused_reason`)) {
        GeoAuditObject[["paused_reason"]] <-
          self$`paused_reason`
      }
      if (!is.null(self$`schedule`)) {
        GeoAuditObject[["schedule"]] <-
          self$extractSimpleType(self$`schedule`)
      }
      if (!is.null(self$`next_run_at`)) {
        GeoAuditObject[["next_run_at"]] <-
          self$`next_run_at`
      }
      if (!is.null(self$`email_alerts`)) {
        GeoAuditObject[["email_alerts"]] <-
          self$`email_alerts`
      }
      if (!is.null(self$`recurring_available`)) {
        GeoAuditObject[["recurring_available"]] <-
          self$`recurring_available`
      }
      if (!is.null(self$`checks_tracked`)) {
        GeoAuditObject[["checks_tracked"]] <-
          self$`checks_tracked`
      }
      if (!is.null(self$`latest_run`)) {
        GeoAuditObject[["latest_run"]] <-
          self$extractSimpleType(self$`latest_run`)
      }
      if (!is.null(self$`open_issues`)) {
        GeoAuditObject[["open_issues"]] <-
          self$`open_issues`
      }
      if (!is.null(self$`open_critical_issues`)) {
        GeoAuditObject[["open_critical_issues"]] <-
          self$`open_critical_issues`
      }
      if (!is.null(self$`created_at`)) {
        GeoAuditObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`app_url`)) {
        GeoAuditObject[["app_url"]] <-
          self$`app_url`
      }
      return(GeoAuditObject)
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
    #' Deserialize JSON string into an instance of GeoAudit
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAudit
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`audit_type`)) {
        if (!is.null(this_object$`audit_type`) && !(this_object$`audit_type` %in% c("agent_readiness", "robots_txt", "crawlability", "schema", "content_readiness", "discoverability", "site_structure"))) {
          stop(paste("Error! \"", this_object$`audit_type`, "\" cannot be assigned to `audit_type`. Must be \"agent_readiness\", \"robots_txt\", \"crawlability\", \"schema\", \"content_readiness\", \"discoverability\", \"site_structure\".", sep = ""))
        }
        self$`audit_type` <- this_object$`audit_type`
      }
      if (!is.null(this_object$`target`)) {
        self$`target` <- this_object$`target`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`cadence`)) {
        if (!is.null(this_object$`cadence`) && !(this_object$`cadence` %in% c("once", "weekly", "monthly"))) {
          stop(paste("Error! \"", this_object$`cadence`, "\" cannot be assigned to `cadence`. Must be \"once\", \"weekly\", \"monthly\".", sep = ""))
        }
        self$`cadence` <- this_object$`cadence`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("active", "paused", "archived"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"active\", \"paused\", \"archived\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`paused_reason`)) {
        self$`paused_reason` <- this_object$`paused_reason`
      }
      if (!is.null(this_object$`schedule`)) {
        `schedule_object` <- GeoAuditSchedule$new()
        `schedule_object`$fromJSON(jsonlite::toJSON(this_object$`schedule`, auto_unbox = TRUE, digits = NA))
        self$`schedule` <- `schedule_object`
      }
      if (!is.null(this_object$`next_run_at`)) {
        self$`next_run_at` <- this_object$`next_run_at`
      }
      if (!is.null(this_object$`email_alerts`)) {
        self$`email_alerts` <- this_object$`email_alerts`
      }
      if (!is.null(this_object$`recurring_available`)) {
        self$`recurring_available` <- this_object$`recurring_available`
      }
      if (!is.null(this_object$`checks_tracked`)) {
        self$`checks_tracked` <- this_object$`checks_tracked`
      }
      if (!is.null(this_object$`latest_run`)) {
        `latest_run_object` <- GeoAuditRun$new()
        `latest_run_object`$fromJSON(jsonlite::toJSON(this_object$`latest_run`, auto_unbox = TRUE, digits = NA))
        self$`latest_run` <- `latest_run_object`
      }
      if (!is.null(this_object$`open_issues`)) {
        self$`open_issues` <- this_object$`open_issues`
      }
      if (!is.null(this_object$`open_critical_issues`)) {
        self$`open_critical_issues` <- this_object$`open_critical_issues`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`app_url`)) {
        self$`app_url` <- this_object$`app_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeoAudit in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAudit
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAudit
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      if (!is.null(this_object$`audit_type`) && !(this_object$`audit_type` %in% c("agent_readiness", "robots_txt", "crawlability", "schema", "content_readiness", "discoverability", "site_structure"))) {
        stop(paste("Error! \"", this_object$`audit_type`, "\" cannot be assigned to `audit_type`. Must be \"agent_readiness\", \"robots_txt\", \"crawlability\", \"schema\", \"content_readiness\", \"discoverability\", \"site_structure\".", sep = ""))
      }
      self$`audit_type` <- this_object$`audit_type`
      self$`target` <- this_object$`target`
      self$`country_code` <- this_object$`country_code`
      if (!is.null(this_object$`cadence`) && !(this_object$`cadence` %in% c("once", "weekly", "monthly"))) {
        stop(paste("Error! \"", this_object$`cadence`, "\" cannot be assigned to `cadence`. Must be \"once\", \"weekly\", \"monthly\".", sep = ""))
      }
      self$`cadence` <- this_object$`cadence`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("active", "paused", "archived"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"active\", \"paused\", \"archived\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`paused_reason` <- this_object$`paused_reason`
      self$`schedule` <- GeoAuditSchedule$new()$fromJSON(jsonlite::toJSON(this_object$`schedule`, auto_unbox = TRUE, digits = NA))
      self$`next_run_at` <- this_object$`next_run_at`
      self$`email_alerts` <- this_object$`email_alerts`
      self$`recurring_available` <- this_object$`recurring_available`
      self$`checks_tracked` <- this_object$`checks_tracked`
      self$`latest_run` <- GeoAuditRun$new()$fromJSON(jsonlite::toJSON(this_object$`latest_run`, auto_unbox = TRUE, digits = NA))
      self$`open_issues` <- this_object$`open_issues`
      self$`open_critical_issues` <- this_object$`open_critical_issues`
      self$`created_at` <- this_object$`created_at`
      self$`app_url` <- this_object$`app_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoAudit and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoAudit
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
# GeoAudit$unlock()
#
## Below is an example to define the print function
# GeoAudit$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoAudit$lock()

