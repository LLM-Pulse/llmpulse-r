#' Create a new SampleWebhookPayloads200ResponseDataInner
#'
#' @description
#' SampleWebhookPayloads200ResponseDataInner Class
#'
#' @docType class
#' @title SampleWebhookPayloads200ResponseDataInner
#' @description SampleWebhookPayloads200ResponseDataInner Class
#' @format An \code{R6Class} generator object
#' @field event  character [optional]
#' @field occurred_at  character [optional]
#' @field project_id  integer [optional]
#' @field subscription_id  integer [optional]
#' @field data  object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SampleWebhookPayloads200ResponseDataInner <- R6::R6Class(
  "SampleWebhookPayloads200ResponseDataInner",
  public = list(
    `event` = NULL,
    `occurred_at` = NULL,
    `project_id` = NULL,
    `subscription_id` = NULL,
    `data` = NULL,

    #' @description
    #' Initialize a new SampleWebhookPayloads200ResponseDataInner class.
    #'
    #' @param event event
    #' @param occurred_at occurred_at
    #' @param project_id project_id
    #' @param subscription_id subscription_id
    #' @param data data
    #' @param ... Other optional arguments.
    initialize = function(`event` = NULL, `occurred_at` = NULL, `project_id` = NULL, `subscription_id` = NULL, `data` = NULL, ...) {
      if (!is.null(`event`)) {
        if (!(is.character(`event`) && length(`event`) == 1)) {
          stop(paste("Error! Invalid data for `event`. Must be a string:", `event`))
        }
        self$`event` <- `event`
      }
      if (!is.null(`occurred_at`)) {
        if (!is.character(`occurred_at`)) {
          stop(paste("Error! Invalid data for `occurred_at`. Must be a string:", `occurred_at`))
        }
        self$`occurred_at` <- `occurred_at`
      }
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`subscription_id`)) {
        if (!(is.numeric(`subscription_id`) && length(`subscription_id`) == 1)) {
          stop(paste("Error! Invalid data for `subscription_id`. Must be an integer:", `subscription_id`))
        }
        self$`subscription_id` <- `subscription_id`
      }
      if (!is.null(`data`)) {
        self$`data` <- `data`
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
    #' @return SampleWebhookPayloads200ResponseDataInner as a base R list.
    #' @examples
    #' # convert array of SampleWebhookPayloads200ResponseDataInner (x) to a data frame
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
    #' Convert SampleWebhookPayloads200ResponseDataInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SampleWebhookPayloads200ResponseDataInnerObject <- list()
      if (!is.null(self$`event`)) {
        SampleWebhookPayloads200ResponseDataInnerObject[["event"]] <-
          self$`event`
      }
      if (!is.null(self$`occurred_at`)) {
        SampleWebhookPayloads200ResponseDataInnerObject[["occurred_at"]] <-
          self$`occurred_at`
      }
      if (!is.null(self$`project_id`)) {
        SampleWebhookPayloads200ResponseDataInnerObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`subscription_id`)) {
        SampleWebhookPayloads200ResponseDataInnerObject[["subscription_id"]] <-
          self$`subscription_id`
      }
      if (!is.null(self$`data`)) {
        SampleWebhookPayloads200ResponseDataInnerObject[["data"]] <-
          self$`data`
      }
      return(SampleWebhookPayloads200ResponseDataInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SampleWebhookPayloads200ResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SampleWebhookPayloads200ResponseDataInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`event`)) {
        self$`event` <- this_object$`event`
      }
      if (!is.null(this_object$`occurred_at`)) {
        self$`occurred_at` <- this_object$`occurred_at`
      }
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`subscription_id`)) {
        self$`subscription_id` <- this_object$`subscription_id`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- this_object$`data`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SampleWebhookPayloads200ResponseDataInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SampleWebhookPayloads200ResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SampleWebhookPayloads200ResponseDataInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`event` <- this_object$`event`
      self$`occurred_at` <- this_object$`occurred_at`
      self$`project_id` <- this_object$`project_id`
      self$`subscription_id` <- this_object$`subscription_id`
      self$`data` <- this_object$`data`
      self
    },

    #' @description
    #' Validate JSON input with respect to SampleWebhookPayloads200ResponseDataInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SampleWebhookPayloads200ResponseDataInner
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
# SampleWebhookPayloads200ResponseDataInner$unlock()
#
## Below is an example to define the print function
# SampleWebhookPayloads200ResponseDataInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SampleWebhookPayloads200ResponseDataInner$lock()

