#' Create a new CmsPublication
#'
#' @description
#' CmsPublication Class
#'
#' @docType class
#' @title CmsPublication
#' @description CmsPublication Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field platform  character [optional]
#' @field site_url  character [optional]
#' @field status queued and sending are on their way; unknown means a send timed out and the next attempt looks the draft up before creating one; drafted carries remote_id and edit_url; failed carries error_code character [optional]
#' @field title  character [optional]
#' @field slug  character [optional]
#' @field source_url For an update task, the page the draft revises character [optional]
#' @field remote_id WordPress post id of the draft integer [optional]
#' @field remote_status WordPress status of the post when the draft was created (draft) character [optional]
#' @field remote_url  character [optional]
#' @field edit_url The post's edit screen in the WordPress admin character [optional]
#' @field error_code Why the send failed, the same token as error.meta.reason, for example reconnect_required, authorization_header_lost, missing_capability, firewall_blocked, timeout, unreachable or rejected character [optional]
#' @field created_at  character [optional]
#' @field sent_at  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CmsPublication <- R6::R6Class(
  "CmsPublication",
  public = list(
    `id` = NULL,
    `platform` = NULL,
    `site_url` = NULL,
    `status` = NULL,
    `title` = NULL,
    `slug` = NULL,
    `source_url` = NULL,
    `remote_id` = NULL,
    `remote_status` = NULL,
    `remote_url` = NULL,
    `edit_url` = NULL,
    `error_code` = NULL,
    `created_at` = NULL,
    `sent_at` = NULL,

    #' @description
    #' Initialize a new CmsPublication class.
    #'
    #' @param id id
    #' @param platform platform
    #' @param site_url site_url
    #' @param status queued and sending are on their way; unknown means a send timed out and the next attempt looks the draft up before creating one; drafted carries remote_id and edit_url; failed carries error_code
    #' @param title title
    #' @param slug slug
    #' @param source_url For an update task, the page the draft revises
    #' @param remote_id WordPress post id of the draft
    #' @param remote_status WordPress status of the post when the draft was created (draft)
    #' @param remote_url remote_url
    #' @param edit_url The post's edit screen in the WordPress admin
    #' @param error_code Why the send failed, the same token as error.meta.reason, for example reconnect_required, authorization_header_lost, missing_capability, firewall_blocked, timeout, unreachable or rejected
    #' @param created_at created_at
    #' @param sent_at sent_at
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `platform` = NULL, `site_url` = NULL, `status` = NULL, `title` = NULL, `slug` = NULL, `source_url` = NULL, `remote_id` = NULL, `remote_status` = NULL, `remote_url` = NULL, `edit_url` = NULL, `error_code` = NULL, `created_at` = NULL, `sent_at` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`platform`)) {
        if (!(`platform` %in% c("wordpress"))) {
          stop(paste("Error! \"", `platform`, "\" cannot be assigned to `platform`. Must be \"wordpress\".", sep = ""))
        }
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!is.null(`site_url`)) {
        if (!(is.character(`site_url`) && length(`site_url`) == 1)) {
          stop(paste("Error! Invalid data for `site_url`. Must be a string:", `site_url`))
        }
        self$`site_url` <- `site_url`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("queued", "sending", "unknown", "drafted", "failed"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"queued\", \"sending\", \"unknown\", \"drafted\", \"failed\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`slug`)) {
        if (!(is.character(`slug`) && length(`slug`) == 1)) {
          stop(paste("Error! Invalid data for `slug`. Must be a string:", `slug`))
        }
        self$`slug` <- `slug`
      }
      if (!is.null(`source_url`)) {
        if (!(is.character(`source_url`) && length(`source_url`) == 1)) {
          stop(paste("Error! Invalid data for `source_url`. Must be a string:", `source_url`))
        }
        self$`source_url` <- `source_url`
      }
      if (!is.null(`remote_id`)) {
        if (!(is.numeric(`remote_id`) && length(`remote_id`) == 1)) {
          stop(paste("Error! Invalid data for `remote_id`. Must be an integer:", `remote_id`))
        }
        self$`remote_id` <- `remote_id`
      }
      if (!is.null(`remote_status`)) {
        if (!(is.character(`remote_status`) && length(`remote_status`) == 1)) {
          stop(paste("Error! Invalid data for `remote_status`. Must be a string:", `remote_status`))
        }
        self$`remote_status` <- `remote_status`
      }
      if (!is.null(`remote_url`)) {
        if (!(is.character(`remote_url`) && length(`remote_url`) == 1)) {
          stop(paste("Error! Invalid data for `remote_url`. Must be a string:", `remote_url`))
        }
        self$`remote_url` <- `remote_url`
      }
      if (!is.null(`edit_url`)) {
        if (!(is.character(`edit_url`) && length(`edit_url`) == 1)) {
          stop(paste("Error! Invalid data for `edit_url`. Must be a string:", `edit_url`))
        }
        self$`edit_url` <- `edit_url`
      }
      if (!is.null(`error_code`)) {
        if (!(is.character(`error_code`) && length(`error_code`) == 1)) {
          stop(paste("Error! Invalid data for `error_code`. Must be a string:", `error_code`))
        }
        self$`error_code` <- `error_code`
      }
      if (!is.null(`created_at`)) {
        if (!is.character(`created_at`)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!is.null(`sent_at`)) {
        if (!is.character(`sent_at`)) {
          stop(paste("Error! Invalid data for `sent_at`. Must be a string:", `sent_at`))
        }
        self$`sent_at` <- `sent_at`
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
    #' @return CmsPublication as a base R list.
    #' @examples
    #' # convert array of CmsPublication (x) to a data frame
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
    #' Convert CmsPublication to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CmsPublicationObject <- list()
      if (!is.null(self$`id`)) {
        CmsPublicationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`platform`)) {
        CmsPublicationObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`site_url`)) {
        CmsPublicationObject[["site_url"]] <-
          self$`site_url`
      }
      if (!is.null(self$`status`)) {
        CmsPublicationObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`title`)) {
        CmsPublicationObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`slug`)) {
        CmsPublicationObject[["slug"]] <-
          self$`slug`
      }
      if (!is.null(self$`source_url`)) {
        CmsPublicationObject[["source_url"]] <-
          self$`source_url`
      }
      if (!is.null(self$`remote_id`)) {
        CmsPublicationObject[["remote_id"]] <-
          self$`remote_id`
      }
      if (!is.null(self$`remote_status`)) {
        CmsPublicationObject[["remote_status"]] <-
          self$`remote_status`
      }
      if (!is.null(self$`remote_url`)) {
        CmsPublicationObject[["remote_url"]] <-
          self$`remote_url`
      }
      if (!is.null(self$`edit_url`)) {
        CmsPublicationObject[["edit_url"]] <-
          self$`edit_url`
      }
      if (!is.null(self$`error_code`)) {
        CmsPublicationObject[["error_code"]] <-
          self$`error_code`
      }
      if (!is.null(self$`created_at`)) {
        CmsPublicationObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`sent_at`)) {
        CmsPublicationObject[["sent_at"]] <-
          self$`sent_at`
      }
      return(CmsPublicationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CmsPublication
    #'
    #' @param input_json the JSON input
    #' @return the instance of CmsPublication
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`platform`)) {
        if (!is.null(this_object$`platform`) && !(this_object$`platform` %in% c("wordpress"))) {
          stop(paste("Error! \"", this_object$`platform`, "\" cannot be assigned to `platform`. Must be \"wordpress\".", sep = ""))
        }
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`site_url`)) {
        self$`site_url` <- this_object$`site_url`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("queued", "sending", "unknown", "drafted", "failed"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"queued\", \"sending\", \"unknown\", \"drafted\", \"failed\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`slug`)) {
        self$`slug` <- this_object$`slug`
      }
      if (!is.null(this_object$`source_url`)) {
        self$`source_url` <- this_object$`source_url`
      }
      if (!is.null(this_object$`remote_id`)) {
        self$`remote_id` <- this_object$`remote_id`
      }
      if (!is.null(this_object$`remote_status`)) {
        self$`remote_status` <- this_object$`remote_status`
      }
      if (!is.null(this_object$`remote_url`)) {
        self$`remote_url` <- this_object$`remote_url`
      }
      if (!is.null(this_object$`edit_url`)) {
        self$`edit_url` <- this_object$`edit_url`
      }
      if (!is.null(this_object$`error_code`)) {
        self$`error_code` <- this_object$`error_code`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`sent_at`)) {
        self$`sent_at` <- this_object$`sent_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CmsPublication in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CmsPublication
    #'
    #' @param input_json the JSON input
    #' @return the instance of CmsPublication
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      if (!is.null(this_object$`platform`) && !(this_object$`platform` %in% c("wordpress"))) {
        stop(paste("Error! \"", this_object$`platform`, "\" cannot be assigned to `platform`. Must be \"wordpress\".", sep = ""))
      }
      self$`platform` <- this_object$`platform`
      self$`site_url` <- this_object$`site_url`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("queued", "sending", "unknown", "drafted", "failed"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"queued\", \"sending\", \"unknown\", \"drafted\", \"failed\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`title` <- this_object$`title`
      self$`slug` <- this_object$`slug`
      self$`source_url` <- this_object$`source_url`
      self$`remote_id` <- this_object$`remote_id`
      self$`remote_status` <- this_object$`remote_status`
      self$`remote_url` <- this_object$`remote_url`
      self$`edit_url` <- this_object$`edit_url`
      self$`error_code` <- this_object$`error_code`
      self$`created_at` <- this_object$`created_at`
      self$`sent_at` <- this_object$`sent_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to CmsPublication and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CmsPublication
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
# CmsPublication$unlock()
#
## Below is an example to define the print function
# CmsPublication$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CmsPublication$lock()

