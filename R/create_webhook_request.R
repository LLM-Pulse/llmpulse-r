#' Create a new CreateWebhookRequest
#'
#' @description
#' CreateWebhookRequest Class
#'
#' @docType class
#' @title CreateWebhookRequest
#' @description CreateWebhookRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field event_type  character
#' @field target_url Public HTTPS URL that will receive signed event payloads character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateWebhookRequest <- R6::R6Class(
  "CreateWebhookRequest",
  public = list(
    `project_id` = NULL,
    `event_type` = NULL,
    `target_url` = NULL,

    #' @description
    #' Initialize a new CreateWebhookRequest class.
    #'
    #' @param project_id project_id
    #' @param event_type event_type
    #' @param target_url Public HTTPS URL that will receive signed event payloads
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `event_type`, `target_url`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`event_type`)) {
        if (!(`event_type` %in% c("mention.created", "competitor_mention.created", "citation.created", "prompt_execution.completed", "sentiment.negative_detected", "recommendation.completed", "intelligence_task.completed"))) {
          stop(paste("Error! \"", `event_type`, "\" cannot be assigned to `event_type`. Must be \"mention.created\", \"competitor_mention.created\", \"citation.created\", \"prompt_execution.completed\", \"sentiment.negative_detected\", \"recommendation.completed\", \"intelligence_task.completed\".", sep = ""))
        }
        if (!(is.character(`event_type`) && length(`event_type`) == 1)) {
          stop(paste("Error! Invalid data for `event_type`. Must be a string:", `event_type`))
        }
        self$`event_type` <- `event_type`
      }
      if (!missing(`target_url`)) {
        if (!(is.character(`target_url`) && length(`target_url`) == 1)) {
          stop(paste("Error! Invalid data for `target_url`. Must be a string:", `target_url`))
        }
        self$`target_url` <- `target_url`
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
    #' @return CreateWebhookRequest as a base R list.
    #' @examples
    #' # convert array of CreateWebhookRequest (x) to a data frame
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
    #' Convert CreateWebhookRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateWebhookRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        CreateWebhookRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`event_type`)) {
        CreateWebhookRequestObject[["event_type"]] <-
          self$`event_type`
      }
      if (!is.null(self$`target_url`)) {
        CreateWebhookRequestObject[["target_url"]] <-
          self$`target_url`
      }
      return(CreateWebhookRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateWebhookRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateWebhookRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateWebhookRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateWebhookRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateWebhookRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`event_type`) && !(this_object$`event_type` %in% c("mention.created", "competitor_mention.created", "citation.created", "prompt_execution.completed", "sentiment.negative_detected", "recommendation.completed", "intelligence_task.completed"))) {
        stop(paste("Error! \"", this_object$`event_type`, "\" cannot be assigned to `event_type`. Must be \"mention.created\", \"competitor_mention.created\", \"citation.created\", \"prompt_execution.completed\", \"sentiment.negative_detected\", \"recommendation.completed\", \"intelligence_task.completed\".", sep = ""))
      }
      self$`event_type` <- this_object$`event_type`
      self$`target_url` <- this_object$`target_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateWebhookRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CreateWebhookRequest: the required field `project_id` is missing."))
      }
      # check the required field `event_type`
      if (!is.null(input_json$`event_type`)) {
        if (!(is.character(input_json$`event_type`) && length(input_json$`event_type`) == 1)) {
          stop(paste("Error! Invalid data for `event_type`. Must be a string:", input_json$`event_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateWebhookRequest: the required field `event_type` is missing."))
      }
      # check the required field `target_url`
      if (!is.null(input_json$`target_url`)) {
        if (!(is.character(input_json$`target_url`) && length(input_json$`target_url`) == 1)) {
          stop(paste("Error! Invalid data for `target_url`. Must be a string:", input_json$`target_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateWebhookRequest: the required field `target_url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateWebhookRequest
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

      # check if the required `event_type` is null
      if (is.null(self$`event_type`)) {
        return(FALSE)
      }

      # check if the required `target_url` is null
      if (is.null(self$`target_url`)) {
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

      # check if the required `event_type` is null
      if (is.null(self$`event_type`)) {
        invalid_fields["event_type"] <- "Non-nullable required field `event_type` cannot be null."
      }

      # check if the required `target_url` is null
      if (is.null(self$`target_url`)) {
        invalid_fields["target_url"] <- "Non-nullable required field `target_url` cannot be null."
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
# CreateWebhookRequest$unlock()
#
## Below is an example to define the print function
# CreateWebhookRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateWebhookRequest$lock()

