#' Create a new AccountAgentUsage
#'
#' @description
#' The share of this calendar month's allowance for the in-app AI assistant (Europe/Madrid) that the account's team has used, owner and members together; each embedded project has an allowance of its own, left out here. The allowance is published as a share only, never as an amount; longer questions and bigger analyses use more of it. Deleting conversations gives nothing back.
#'
#' @docType class
#' @title AccountAgentUsage
#' @description AccountAgentUsage Class
#' @format An \code{R6Class} generator object
#' @field percent_used Whole percent used, rounded down, from 0 to 100; 100 means the allowance is spent and new questions wait until resets_on. null when unlimited is true integer [optional]
#' @field unlimited  character [optional]
#' @field included Whether the plan includes the in-app AI assistant. false on a plan without it, where percent_used is 100 character [optional]
#' @field period Always month character [optional]
#' @field resets_on The first day of next month, when the allowance starts again character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccountAgentUsage <- R6::R6Class(
  "AccountAgentUsage",
  public = list(
    `percent_used` = NULL,
    `unlimited` = NULL,
    `included` = NULL,
    `period` = NULL,
    `resets_on` = NULL,

    #' @description
    #' Initialize a new AccountAgentUsage class.
    #'
    #' @param percent_used Whole percent used, rounded down, from 0 to 100; 100 means the allowance is spent and new questions wait until resets_on. null when unlimited is true
    #' @param unlimited unlimited
    #' @param included Whether the plan includes the in-app AI assistant. false on a plan without it, where percent_used is 100
    #' @param period Always month
    #' @param resets_on The first day of next month, when the allowance starts again
    #' @param ... Other optional arguments.
    initialize = function(`percent_used` = NULL, `unlimited` = NULL, `included` = NULL, `period` = NULL, `resets_on` = NULL, ...) {
      if (!is.null(`percent_used`)) {
        if (!(is.numeric(`percent_used`) && length(`percent_used`) == 1)) {
          stop(paste("Error! Invalid data for `percent_used`. Must be an integer:", `percent_used`))
        }
        self$`percent_used` <- `percent_used`
      }
      if (!is.null(`unlimited`)) {
        if (!(is.logical(`unlimited`) && length(`unlimited`) == 1)) {
          stop(paste("Error! Invalid data for `unlimited`. Must be a boolean:", `unlimited`))
        }
        self$`unlimited` <- `unlimited`
      }
      if (!is.null(`included`)) {
        if (!(is.logical(`included`) && length(`included`) == 1)) {
          stop(paste("Error! Invalid data for `included`. Must be a boolean:", `included`))
        }
        self$`included` <- `included`
      }
      if (!is.null(`period`)) {
        if (!(is.character(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", `period`))
        }
        self$`period` <- `period`
      }
      if (!is.null(`resets_on`)) {
        if (!is.character(`resets_on`)) {
          stop(paste("Error! Invalid data for `resets_on`. Must be a string:", `resets_on`))
        }
        self$`resets_on` <- `resets_on`
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
    #' @return AccountAgentUsage as a base R list.
    #' @examples
    #' # convert array of AccountAgentUsage (x) to a data frame
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
    #' Convert AccountAgentUsage to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AccountAgentUsageObject <- list()
      if (!is.null(self$`percent_used`)) {
        AccountAgentUsageObject[["percent_used"]] <-
          self$`percent_used`
      }
      if (!is.null(self$`unlimited`)) {
        AccountAgentUsageObject[["unlimited"]] <-
          self$`unlimited`
      }
      if (!is.null(self$`included`)) {
        AccountAgentUsageObject[["included"]] <-
          self$`included`
      }
      if (!is.null(self$`period`)) {
        AccountAgentUsageObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`resets_on`)) {
        AccountAgentUsageObject[["resets_on"]] <-
          self$`resets_on`
      }
      return(AccountAgentUsageObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountAgentUsage
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountAgentUsage
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`percent_used`)) {
        self$`percent_used` <- this_object$`percent_used`
      }
      if (!is.null(this_object$`unlimited`)) {
        self$`unlimited` <- this_object$`unlimited`
      }
      if (!is.null(this_object$`included`)) {
        self$`included` <- this_object$`included`
      }
      if (!is.null(this_object$`period`)) {
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`resets_on`)) {
        self$`resets_on` <- this_object$`resets_on`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AccountAgentUsage in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountAgentUsage
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountAgentUsage
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`percent_used` <- this_object$`percent_used`
      self$`unlimited` <- this_object$`unlimited`
      self$`included` <- this_object$`included`
      self$`period` <- this_object$`period`
      self$`resets_on` <- this_object$`resets_on`
      self
    },

    #' @description
    #' Validate JSON input with respect to AccountAgentUsage and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AccountAgentUsage
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
# AccountAgentUsage$unlock()
#
## Below is an example to define the print function
# AccountAgentUsage$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccountAgentUsage$lock()

