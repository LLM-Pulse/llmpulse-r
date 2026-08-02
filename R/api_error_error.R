#' Create a new ApiErrorError
#'
#' @description
#' ApiErrorError Class
#'
#' @docType class
#' @title ApiErrorError
#' @description ApiErrorError Class
#' @format An \code{R6Class} generator object
#' @field code  character [optional]
#' @field message  character [optional]
#' @field meta  object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiErrorError <- R6::R6Class(
  "ApiErrorError",
  public = list(
    `code` = NULL,
    `message` = NULL,
    `meta` = NULL,

    #' @description
    #' Initialize a new ApiErrorError class.
    #'
    #' @param code code
    #' @param message message
    #' @param meta meta
    #' @param ... Other optional arguments.
    initialize = function(`code` = NULL, `message` = NULL, `meta` = NULL, ...) {
      if (!is.null(`code`)) {
        if (!(`code` %in% c("ERR_MISSING_AUTH", "ERR_INVALID_API_KEY", "ERR_REVOKED_API_KEY", "ERR_INSUFFICIENT_SCOPE", "ERR_INSUFFICIENT_PERMISSION", "ERR_PLAN_REQUIRED", "ERR_ACCOUNT_INACTIVE", "ERR_DRAFT_NOT_FOUND", "ERR_DRAFT_STATE", "ERR_PROJECT_NOT_FOUND", "ERR_NOT_FOUND", "ERR_SEARCH_CONSOLE_NOT_CONNECTED", "ERR_AI_TRAFFIC_NOT_CONNECTED", "ERR_AGENT_TRAFFIC_NOT_CONNECTED", "ERR_INVALID_PARAM", "ERR_INVALID_RANGE", "ERR_LIMIT_REACHED", "ERR_QUOTA_EXCEEDED", "ERR_RATE_LIMITED"))) {
          stop(paste("Error! \"", `code`, "\" cannot be assigned to `code`. Must be \"ERR_MISSING_AUTH\", \"ERR_INVALID_API_KEY\", \"ERR_REVOKED_API_KEY\", \"ERR_INSUFFICIENT_SCOPE\", \"ERR_INSUFFICIENT_PERMISSION\", \"ERR_PLAN_REQUIRED\", \"ERR_ACCOUNT_INACTIVE\", \"ERR_DRAFT_NOT_FOUND\", \"ERR_DRAFT_STATE\", \"ERR_PROJECT_NOT_FOUND\", \"ERR_NOT_FOUND\", \"ERR_SEARCH_CONSOLE_NOT_CONNECTED\", \"ERR_AI_TRAFFIC_NOT_CONNECTED\", \"ERR_AGENT_TRAFFIC_NOT_CONNECTED\", \"ERR_INVALID_PARAM\", \"ERR_INVALID_RANGE\", \"ERR_LIMIT_REACHED\", \"ERR_QUOTA_EXCEEDED\", \"ERR_RATE_LIMITED\".", sep = ""))
        }
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`meta`)) {
        self$`meta` <- `meta`
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
    #' @return ApiErrorError as a base R list.
    #' @examples
    #' # convert array of ApiErrorError (x) to a data frame
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
    #' Convert ApiErrorError to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApiErrorErrorObject <- list()
      if (!is.null(self$`code`)) {
        ApiErrorErrorObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`message`)) {
        ApiErrorErrorObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`meta`)) {
        ApiErrorErrorObject[["meta"]] <-
          self$`meta`
      }
      return(ApiErrorErrorObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ApiErrorError
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiErrorError
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`)) {
        if (!is.null(this_object$`code`) && !(this_object$`code` %in% c("ERR_MISSING_AUTH", "ERR_INVALID_API_KEY", "ERR_REVOKED_API_KEY", "ERR_INSUFFICIENT_SCOPE", "ERR_INSUFFICIENT_PERMISSION", "ERR_PLAN_REQUIRED", "ERR_ACCOUNT_INACTIVE", "ERR_DRAFT_NOT_FOUND", "ERR_DRAFT_STATE", "ERR_PROJECT_NOT_FOUND", "ERR_NOT_FOUND", "ERR_SEARCH_CONSOLE_NOT_CONNECTED", "ERR_AI_TRAFFIC_NOT_CONNECTED", "ERR_AGENT_TRAFFIC_NOT_CONNECTED", "ERR_INVALID_PARAM", "ERR_INVALID_RANGE", "ERR_LIMIT_REACHED", "ERR_QUOTA_EXCEEDED", "ERR_RATE_LIMITED"))) {
          stop(paste("Error! \"", this_object$`code`, "\" cannot be assigned to `code`. Must be \"ERR_MISSING_AUTH\", \"ERR_INVALID_API_KEY\", \"ERR_REVOKED_API_KEY\", \"ERR_INSUFFICIENT_SCOPE\", \"ERR_INSUFFICIENT_PERMISSION\", \"ERR_PLAN_REQUIRED\", \"ERR_ACCOUNT_INACTIVE\", \"ERR_DRAFT_NOT_FOUND\", \"ERR_DRAFT_STATE\", \"ERR_PROJECT_NOT_FOUND\", \"ERR_NOT_FOUND\", \"ERR_SEARCH_CONSOLE_NOT_CONNECTED\", \"ERR_AI_TRAFFIC_NOT_CONNECTED\", \"ERR_AGENT_TRAFFIC_NOT_CONNECTED\", \"ERR_INVALID_PARAM\", \"ERR_INVALID_RANGE\", \"ERR_LIMIT_REACHED\", \"ERR_QUOTA_EXCEEDED\", \"ERR_RATE_LIMITED\".", sep = ""))
        }
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`meta`)) {
        self$`meta` <- this_object$`meta`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ApiErrorError in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApiErrorError
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiErrorError
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`) && !(this_object$`code` %in% c("ERR_MISSING_AUTH", "ERR_INVALID_API_KEY", "ERR_REVOKED_API_KEY", "ERR_INSUFFICIENT_SCOPE", "ERR_INSUFFICIENT_PERMISSION", "ERR_PLAN_REQUIRED", "ERR_ACCOUNT_INACTIVE", "ERR_DRAFT_NOT_FOUND", "ERR_DRAFT_STATE", "ERR_PROJECT_NOT_FOUND", "ERR_NOT_FOUND", "ERR_SEARCH_CONSOLE_NOT_CONNECTED", "ERR_AI_TRAFFIC_NOT_CONNECTED", "ERR_AGENT_TRAFFIC_NOT_CONNECTED", "ERR_INVALID_PARAM", "ERR_INVALID_RANGE", "ERR_LIMIT_REACHED", "ERR_QUOTA_EXCEEDED", "ERR_RATE_LIMITED"))) {
        stop(paste("Error! \"", this_object$`code`, "\" cannot be assigned to `code`. Must be \"ERR_MISSING_AUTH\", \"ERR_INVALID_API_KEY\", \"ERR_REVOKED_API_KEY\", \"ERR_INSUFFICIENT_SCOPE\", \"ERR_INSUFFICIENT_PERMISSION\", \"ERR_PLAN_REQUIRED\", \"ERR_ACCOUNT_INACTIVE\", \"ERR_DRAFT_NOT_FOUND\", \"ERR_DRAFT_STATE\", \"ERR_PROJECT_NOT_FOUND\", \"ERR_NOT_FOUND\", \"ERR_SEARCH_CONSOLE_NOT_CONNECTED\", \"ERR_AI_TRAFFIC_NOT_CONNECTED\", \"ERR_AGENT_TRAFFIC_NOT_CONNECTED\", \"ERR_INVALID_PARAM\", \"ERR_INVALID_RANGE\", \"ERR_LIMIT_REACHED\", \"ERR_QUOTA_EXCEEDED\", \"ERR_RATE_LIMITED\".", sep = ""))
      }
      self$`code` <- this_object$`code`
      self$`message` <- this_object$`message`
      self$`meta` <- this_object$`meta`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApiErrorError and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApiErrorError
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
# ApiErrorError$unlock()
#
## Below is an example to define the print function
# ApiErrorError$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApiErrorError$lock()

