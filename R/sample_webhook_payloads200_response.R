#' Create a new SampleWebhookPayloads200Response
#'
#' @description
#' SampleWebhookPayloads200Response Class
#'
#' @docType class
#' @title SampleWebhookPayloads200Response
#' @description SampleWebhookPayloads200Response Class
#' @format An \code{R6Class} generator object
#' @field event_type  character [optional]
#' @field data  list(\link{SampleWebhookPayloads200ResponseDataInner}) [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SampleWebhookPayloads200Response <- R6::R6Class(
  "SampleWebhookPayloads200Response",
  public = list(
    `event_type` = NULL,
    `data` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new SampleWebhookPayloads200Response class.
    #'
    #' @param event_type event_type
    #' @param data data
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`event_type` = NULL, `data` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`event_type`)) {
        if (!(is.character(`event_type`) && length(`event_type`) == 1)) {
          stop(paste("Error! Invalid data for `event_type`. Must be a string:", `event_type`))
        }
        self$`event_type` <- `event_type`
      }
      if (!is.null(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
      if (!is.null(`request_id`)) {
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
    #' @return SampleWebhookPayloads200Response as a base R list.
    #' @examples
    #' # convert array of SampleWebhookPayloads200Response (x) to a data frame
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
    #' Convert SampleWebhookPayloads200Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SampleWebhookPayloads200ResponseObject <- list()
      if (!is.null(self$`event_type`)) {
        SampleWebhookPayloads200ResponseObject[["event_type"]] <-
          self$`event_type`
      }
      if (!is.null(self$`data`)) {
        SampleWebhookPayloads200ResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      if (!is.null(self$`request_id`)) {
        SampleWebhookPayloads200ResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(SampleWebhookPayloads200ResponseObject)
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
    #' Deserialize JSON string into an instance of SampleWebhookPayloads200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of SampleWebhookPayloads200Response
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`event_type`)) {
        self$`event_type` <- this_object$`event_type`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[SampleWebhookPayloads200ResponseDataInner]", loadNamespace("llmpulse"))
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
    #' @return SampleWebhookPayloads200Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SampleWebhookPayloads200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of SampleWebhookPayloads200Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`event_type` <- this_object$`event_type`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[SampleWebhookPayloads200ResponseDataInner]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to SampleWebhookPayloads200Response and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SampleWebhookPayloads200Response
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
# SampleWebhookPayloads200Response$unlock()
#
## Below is an example to define the print function
# SampleWebhookPayloads200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SampleWebhookPayloads200Response$lock()

