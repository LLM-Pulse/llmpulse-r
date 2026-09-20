#' Create a new GetAccount200ResponseSubscription
#'
#' @description
#' Billing state. Present only for callers who can access Billing and Plans in the app; absent otherwise.
#'
#' @docType class
#' @title GetAccount200ResponseSubscription
#' @description GetAccount200ResponseSubscription Class
#' @format An \code{R6Class} generator object
#' @field status  character [optional]
#' @field trialing  character [optional]
#' @field current_period_ends_at  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetAccount200ResponseSubscription <- R6::R6Class(
  "GetAccount200ResponseSubscription",
  public = list(
    `status` = NULL,
    `trialing` = NULL,
    `current_period_ends_at` = NULL,

    #' @description
    #' Initialize a new GetAccount200ResponseSubscription class.
    #'
    #' @param status status
    #' @param trialing trialing
    #' @param current_period_ends_at current_period_ends_at
    #' @param ... Other optional arguments.
    initialize = function(`status` = NULL, `trialing` = NULL, `current_period_ends_at` = NULL, ...) {
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`trialing`)) {
        if (!(is.logical(`trialing`) && length(`trialing`) == 1)) {
          stop(paste("Error! Invalid data for `trialing`. Must be a boolean:", `trialing`))
        }
        self$`trialing` <- `trialing`
      }
      if (!is.null(`current_period_ends_at`)) {
        if (!is.character(`current_period_ends_at`)) {
          stop(paste("Error! Invalid data for `current_period_ends_at`. Must be a string:", `current_period_ends_at`))
        }
        self$`current_period_ends_at` <- `current_period_ends_at`
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
    #' @return GetAccount200ResponseSubscription as a base R list.
    #' @examples
    #' # convert array of GetAccount200ResponseSubscription (x) to a data frame
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
    #' Convert GetAccount200ResponseSubscription to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GetAccount200ResponseSubscriptionObject <- list()
      if (!is.null(self$`status`)) {
        GetAccount200ResponseSubscriptionObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`trialing`)) {
        GetAccount200ResponseSubscriptionObject[["trialing"]] <-
          self$`trialing`
      }
      if (!is.null(self$`current_period_ends_at`)) {
        GetAccount200ResponseSubscriptionObject[["current_period_ends_at"]] <-
          self$`current_period_ends_at`
      }
      return(GetAccount200ResponseSubscriptionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GetAccount200ResponseSubscription
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetAccount200ResponseSubscription
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`trialing`)) {
        self$`trialing` <- this_object$`trialing`
      }
      if (!is.null(this_object$`current_period_ends_at`)) {
        self$`current_period_ends_at` <- this_object$`current_period_ends_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GetAccount200ResponseSubscription in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GetAccount200ResponseSubscription
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetAccount200ResponseSubscription
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`status` <- this_object$`status`
      self$`trialing` <- this_object$`trialing`
      self$`current_period_ends_at` <- this_object$`current_period_ends_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to GetAccount200ResponseSubscription and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GetAccount200ResponseSubscription
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
# GetAccount200ResponseSubscription$unlock()
#
## Below is an example to define the print function
# GetAccount200ResponseSubscription$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetAccount200ResponseSubscription$lock()

