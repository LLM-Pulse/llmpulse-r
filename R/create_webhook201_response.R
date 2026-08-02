#' Create a new CreateWebhook201Response
#'
#' @description
#' CreateWebhook201Response Class
#'
#' @docType class
#' @title CreateWebhook201Response
#' @description CreateWebhook201Response Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field project_id  integer [optional]
#' @field event_type  character [optional]
#' @field target_url  character [optional]
#' @field disabled  character [optional]
#' @field failure_count  integer [optional]
#' @field last_delivered_at  character [optional]
#' @field created_at  character [optional]
#' @field secret HMAC signing secret (whsec_...). Only returned on create. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateWebhook201Response <- R6::R6Class(
  "CreateWebhook201Response",
  public = list(
    `id` = NULL,
    `project_id` = NULL,
    `event_type` = NULL,
    `target_url` = NULL,
    `disabled` = NULL,
    `failure_count` = NULL,
    `last_delivered_at` = NULL,
    `created_at` = NULL,
    `secret` = NULL,

    #' @description
    #' Initialize a new CreateWebhook201Response class.
    #'
    #' @param id id
    #' @param project_id project_id
    #' @param event_type event_type
    #' @param target_url target_url
    #' @param disabled disabled
    #' @param failure_count failure_count
    #' @param last_delivered_at last_delivered_at
    #' @param created_at created_at
    #' @param secret HMAC signing secret (whsec_...). Only returned on create.
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `project_id` = NULL, `event_type` = NULL, `target_url` = NULL, `disabled` = NULL, `failure_count` = NULL, `last_delivered_at` = NULL, `created_at` = NULL, `secret` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`event_type`)) {
        if (!(`event_type` %in% c("mention.created", "competitor_mention.created", "citation.created", "prompt_execution.completed", "sentiment.negative_detected", "recommendation.completed", "intelligence_task.completed"))) {
          stop(paste("Error! \"", `event_type`, "\" cannot be assigned to `event_type`. Must be \"mention.created\", \"competitor_mention.created\", \"citation.created\", \"prompt_execution.completed\", \"sentiment.negative_detected\", \"recommendation.completed\", \"intelligence_task.completed\".", sep = ""))
        }
        if (!(is.character(`event_type`) && length(`event_type`) == 1)) {
          stop(paste("Error! Invalid data for `event_type`. Must be a string:", `event_type`))
        }
        self$`event_type` <- `event_type`
      }
      if (!is.null(`target_url`)) {
        if (!(is.character(`target_url`) && length(`target_url`) == 1)) {
          stop(paste("Error! Invalid data for `target_url`. Must be a string:", `target_url`))
        }
        self$`target_url` <- `target_url`
      }
      if (!is.null(`disabled`)) {
        if (!(is.logical(`disabled`) && length(`disabled`) == 1)) {
          stop(paste("Error! Invalid data for `disabled`. Must be a boolean:", `disabled`))
        }
        self$`disabled` <- `disabled`
      }
      if (!is.null(`failure_count`)) {
        if (!(is.numeric(`failure_count`) && length(`failure_count`) == 1)) {
          stop(paste("Error! Invalid data for `failure_count`. Must be an integer:", `failure_count`))
        }
        self$`failure_count` <- `failure_count`
      }
      if (!is.null(`last_delivered_at`)) {
        if (!is.character(`last_delivered_at`)) {
          stop(paste("Error! Invalid data for `last_delivered_at`. Must be a string:", `last_delivered_at`))
        }
        self$`last_delivered_at` <- `last_delivered_at`
      }
      if (!is.null(`created_at`)) {
        if (!is.character(`created_at`)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!is.null(`secret`)) {
        if (!(is.character(`secret`) && length(`secret`) == 1)) {
          stop(paste("Error! Invalid data for `secret`. Must be a string:", `secret`))
        }
        self$`secret` <- `secret`
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
    #' @return CreateWebhook201Response as a base R list.
    #' @examples
    #' # convert array of CreateWebhook201Response (x) to a data frame
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
    #' Convert CreateWebhook201Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateWebhook201ResponseObject <- list()
      if (!is.null(self$`id`)) {
        CreateWebhook201ResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`project_id`)) {
        CreateWebhook201ResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`event_type`)) {
        CreateWebhook201ResponseObject[["event_type"]] <-
          self$`event_type`
      }
      if (!is.null(self$`target_url`)) {
        CreateWebhook201ResponseObject[["target_url"]] <-
          self$`target_url`
      }
      if (!is.null(self$`disabled`)) {
        CreateWebhook201ResponseObject[["disabled"]] <-
          self$`disabled`
      }
      if (!is.null(self$`failure_count`)) {
        CreateWebhook201ResponseObject[["failure_count"]] <-
          self$`failure_count`
      }
      if (!is.null(self$`last_delivered_at`)) {
        CreateWebhook201ResponseObject[["last_delivered_at"]] <-
          self$`last_delivered_at`
      }
      if (!is.null(self$`created_at`)) {
        CreateWebhook201ResponseObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`secret`)) {
        CreateWebhook201ResponseObject[["secret"]] <-
          self$`secret`
      }
      return(CreateWebhook201ResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateWebhook201Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateWebhook201Response
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`event_type`)) {
        if (!is.null(this_object$`event_type`) && !(this_object$`event_type` %in% c("mention.created", "competitor_mention.created", "citation.created", "prompt_execution.completed", "sentiment.negative_detected", "recommendation.completed", "intelligence_task.completed"))) {
          stop(paste("Error! \"", this_object$`event_type`, "\" cannot be assigned to `event_type`. Must be \"mention.created\", \"competitor_mention.created\", \"citation.created\", \"prompt_execution.completed\", \"sentiment.negative_detected\", \"recommendation.completed\", \"intelligence_task.completed\".", sep = ""))
        }
        self$`event_type` <- this_object$`event_type`
      }
      if (!is.null(this_object$`target_url`)) {
        self$`target_url` <- this_object$`target_url`
      }
      if (!is.null(this_object$`disabled`)) {
        self$`disabled` <- this_object$`disabled`
      }
      if (!is.null(this_object$`failure_count`)) {
        self$`failure_count` <- this_object$`failure_count`
      }
      if (!is.null(this_object$`last_delivered_at`)) {
        self$`last_delivered_at` <- this_object$`last_delivered_at`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`secret`)) {
        self$`secret` <- this_object$`secret`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateWebhook201Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateWebhook201Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateWebhook201Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`event_type`) && !(this_object$`event_type` %in% c("mention.created", "competitor_mention.created", "citation.created", "prompt_execution.completed", "sentiment.negative_detected", "recommendation.completed", "intelligence_task.completed"))) {
        stop(paste("Error! \"", this_object$`event_type`, "\" cannot be assigned to `event_type`. Must be \"mention.created\", \"competitor_mention.created\", \"citation.created\", \"prompt_execution.completed\", \"sentiment.negative_detected\", \"recommendation.completed\", \"intelligence_task.completed\".", sep = ""))
      }
      self$`event_type` <- this_object$`event_type`
      self$`target_url` <- this_object$`target_url`
      self$`disabled` <- this_object$`disabled`
      self$`failure_count` <- this_object$`failure_count`
      self$`last_delivered_at` <- this_object$`last_delivered_at`
      self$`created_at` <- this_object$`created_at`
      self$`secret` <- this_object$`secret`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateWebhook201Response and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateWebhook201Response
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
# CreateWebhook201Response$unlock()
#
## Below is an example to define the print function
# CreateWebhook201Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateWebhook201Response$lock()

