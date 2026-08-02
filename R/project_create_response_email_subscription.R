#' Create a new ProjectCreateResponseEmailSubscription
#'
#' @description
#' ProjectCreateResponseEmailSubscription Class
#'
#' @docType class
#' @title ProjectCreateResponseEmailSubscription
#' @description ProjectCreateResponseEmailSubscription Class
#' @format An \code{R6Class} generator object
#' @field weekly_email_subscribed  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectCreateResponseEmailSubscription <- R6::R6Class(
  "ProjectCreateResponseEmailSubscription",
  public = list(
    `weekly_email_subscribed` = NULL,

    #' @description
    #' Initialize a new ProjectCreateResponseEmailSubscription class.
    #'
    #' @param weekly_email_subscribed weekly_email_subscribed
    #' @param ... Other optional arguments.
    initialize = function(`weekly_email_subscribed` = NULL, ...) {
      if (!is.null(`weekly_email_subscribed`)) {
        if (!(is.logical(`weekly_email_subscribed`) && length(`weekly_email_subscribed`) == 1)) {
          stop(paste("Error! Invalid data for `weekly_email_subscribed`. Must be a boolean:", `weekly_email_subscribed`))
        }
        self$`weekly_email_subscribed` <- `weekly_email_subscribed`
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
    #' @return ProjectCreateResponseEmailSubscription as a base R list.
    #' @examples
    #' # convert array of ProjectCreateResponseEmailSubscription (x) to a data frame
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
    #' Convert ProjectCreateResponseEmailSubscription to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectCreateResponseEmailSubscriptionObject <- list()
      if (!is.null(self$`weekly_email_subscribed`)) {
        ProjectCreateResponseEmailSubscriptionObject[["weekly_email_subscribed"]] <-
          self$`weekly_email_subscribed`
      }
      return(ProjectCreateResponseEmailSubscriptionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateResponseEmailSubscription
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateResponseEmailSubscription
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`weekly_email_subscribed`)) {
        self$`weekly_email_subscribed` <- this_object$`weekly_email_subscribed`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectCreateResponseEmailSubscription in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateResponseEmailSubscription
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateResponseEmailSubscription
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`weekly_email_subscribed` <- this_object$`weekly_email_subscribed`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectCreateResponseEmailSubscription and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectCreateResponseEmailSubscription
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
# ProjectCreateResponseEmailSubscription$unlock()
#
## Below is an example to define the print function
# ProjectCreateResponseEmailSubscription$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectCreateResponseEmailSubscription$lock()

