#' Create a new FinalizeProjectDraftRequest
#'
#' @description
#' FinalizeProjectDraftRequest Class
#'
#' @docType class
#' @title FinalizeProjectDraftRequest
#' @description FinalizeProjectDraftRequest Class
#' @format An \code{R6Class} generator object
#' @field weekly_email_subscribed  character [optional]
#' @field execute_prompts_immediately  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FinalizeProjectDraftRequest <- R6::R6Class(
  "FinalizeProjectDraftRequest",
  public = list(
    `weekly_email_subscribed` = NULL,
    `execute_prompts_immediately` = NULL,

    #' @description
    #' Initialize a new FinalizeProjectDraftRequest class.
    #'
    #' @param weekly_email_subscribed weekly_email_subscribed
    #' @param execute_prompts_immediately execute_prompts_immediately
    #' @param ... Other optional arguments.
    initialize = function(`weekly_email_subscribed` = NULL, `execute_prompts_immediately` = NULL, ...) {
      if (!is.null(`weekly_email_subscribed`)) {
        if (!(is.logical(`weekly_email_subscribed`) && length(`weekly_email_subscribed`) == 1)) {
          stop(paste("Error! Invalid data for `weekly_email_subscribed`. Must be a boolean:", `weekly_email_subscribed`))
        }
        self$`weekly_email_subscribed` <- `weekly_email_subscribed`
      }
      if (!is.null(`execute_prompts_immediately`)) {
        if (!(is.logical(`execute_prompts_immediately`) && length(`execute_prompts_immediately`) == 1)) {
          stop(paste("Error! Invalid data for `execute_prompts_immediately`. Must be a boolean:", `execute_prompts_immediately`))
        }
        self$`execute_prompts_immediately` <- `execute_prompts_immediately`
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
    #' @return FinalizeProjectDraftRequest as a base R list.
    #' @examples
    #' # convert array of FinalizeProjectDraftRequest (x) to a data frame
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
    #' Convert FinalizeProjectDraftRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FinalizeProjectDraftRequestObject <- list()
      if (!is.null(self$`weekly_email_subscribed`)) {
        FinalizeProjectDraftRequestObject[["weekly_email_subscribed"]] <-
          self$`weekly_email_subscribed`
      }
      if (!is.null(self$`execute_prompts_immediately`)) {
        FinalizeProjectDraftRequestObject[["execute_prompts_immediately"]] <-
          self$`execute_prompts_immediately`
      }
      return(FinalizeProjectDraftRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FinalizeProjectDraftRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FinalizeProjectDraftRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`weekly_email_subscribed`)) {
        self$`weekly_email_subscribed` <- this_object$`weekly_email_subscribed`
      }
      if (!is.null(this_object$`execute_prompts_immediately`)) {
        self$`execute_prompts_immediately` <- this_object$`execute_prompts_immediately`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FinalizeProjectDraftRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FinalizeProjectDraftRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FinalizeProjectDraftRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`weekly_email_subscribed` <- this_object$`weekly_email_subscribed`
      self$`execute_prompts_immediately` <- this_object$`execute_prompts_immediately`
      self
    },

    #' @description
    #' Validate JSON input with respect to FinalizeProjectDraftRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FinalizeProjectDraftRequest
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
# FinalizeProjectDraftRequest$unlock()
#
## Below is an example to define the print function
# FinalizeProjectDraftRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FinalizeProjectDraftRequest$lock()

