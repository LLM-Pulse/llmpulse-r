#' Create a new AccountExecutionQuota
#'
#' @description
#' The account's allowance of AI answers for the current tracking window: its prompt limit times its enabled AI models, plus 5% so prompts can be replaced during the window. Every scheduled run and every first run of a new prompt spends one answer per AI model, and deleting a prompt gives nothing back. When it is used up, new prompts wait until resets_at. limit and remaining are null when unlimited is true. For a key limited to some projects, only remaining and unlimited (the account-wide answers left), period and resets_at.
#'
#' @docType class
#' @title AccountExecutionQuota
#' @description AccountExecutionQuota Class
#' @format An \code{R6Class} generator object
#' @field limit  integer [optional]
#' @field used  integer [optional]
#' @field remaining  integer [optional]
#' @field unlimited  character [optional]
#' @field period The tracking window, from the account's tracking cadence (week runs Monday to Sunday) character [optional]
#' @field resets_at When the next window starts and the allowance is full again (00:00 Europe/Madrid) character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccountExecutionQuota <- R6::R6Class(
  "AccountExecutionQuota",
  public = list(
    `limit` = NULL,
    `used` = NULL,
    `remaining` = NULL,
    `unlimited` = NULL,
    `period` = NULL,
    `resets_at` = NULL,

    #' @description
    #' Initialize a new AccountExecutionQuota class.
    #'
    #' @param limit limit
    #' @param used used
    #' @param remaining remaining
    #' @param unlimited unlimited
    #' @param period The tracking window, from the account's tracking cadence (week runs Monday to Sunday)
    #' @param resets_at When the next window starts and the allowance is full again (00:00 Europe/Madrid)
    #' @param ... Other optional arguments.
    initialize = function(`limit` = NULL, `used` = NULL, `remaining` = NULL, `unlimited` = NULL, `period` = NULL, `resets_at` = NULL, ...) {
      if (!is.null(`limit`)) {
        if (!(is.numeric(`limit`) && length(`limit`) == 1)) {
          stop(paste("Error! Invalid data for `limit`. Must be an integer:", `limit`))
        }
        self$`limit` <- `limit`
      }
      if (!is.null(`used`)) {
        if (!(is.numeric(`used`) && length(`used`) == 1)) {
          stop(paste("Error! Invalid data for `used`. Must be an integer:", `used`))
        }
        self$`used` <- `used`
      }
      if (!is.null(`remaining`)) {
        if (!(is.numeric(`remaining`) && length(`remaining`) == 1)) {
          stop(paste("Error! Invalid data for `remaining`. Must be an integer:", `remaining`))
        }
        self$`remaining` <- `remaining`
      }
      if (!is.null(`unlimited`)) {
        if (!(is.logical(`unlimited`) && length(`unlimited`) == 1)) {
          stop(paste("Error! Invalid data for `unlimited`. Must be a boolean:", `unlimited`))
        }
        self$`unlimited` <- `unlimited`
      }
      if (!is.null(`period`)) {
        if (!(`period` %in% c("day", "week", "month"))) {
          stop(paste("Error! \"", `period`, "\" cannot be assigned to `period`. Must be \"day\", \"week\", \"month\".", sep = ""))
        }
        if (!(is.character(`period`) && length(`period`) == 1)) {
          stop(paste("Error! Invalid data for `period`. Must be a string:", `period`))
        }
        self$`period` <- `period`
      }
      if (!is.null(`resets_at`)) {
        if (!is.character(`resets_at`)) {
          stop(paste("Error! Invalid data for `resets_at`. Must be a string:", `resets_at`))
        }
        self$`resets_at` <- `resets_at`
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
    #' @return AccountExecutionQuota as a base R list.
    #' @examples
    #' # convert array of AccountExecutionQuota (x) to a data frame
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
    #' Convert AccountExecutionQuota to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AccountExecutionQuotaObject <- list()
      if (!is.null(self$`limit`)) {
        AccountExecutionQuotaObject[["limit"]] <-
          self$`limit`
      }
      if (!is.null(self$`used`)) {
        AccountExecutionQuotaObject[["used"]] <-
          self$`used`
      }
      if (!is.null(self$`remaining`)) {
        AccountExecutionQuotaObject[["remaining"]] <-
          self$`remaining`
      }
      if (!is.null(self$`unlimited`)) {
        AccountExecutionQuotaObject[["unlimited"]] <-
          self$`unlimited`
      }
      if (!is.null(self$`period`)) {
        AccountExecutionQuotaObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`resets_at`)) {
        AccountExecutionQuotaObject[["resets_at"]] <-
          self$`resets_at`
      }
      return(AccountExecutionQuotaObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountExecutionQuota
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountExecutionQuota
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`limit`)) {
        self$`limit` <- this_object$`limit`
      }
      if (!is.null(this_object$`used`)) {
        self$`used` <- this_object$`used`
      }
      if (!is.null(this_object$`remaining`)) {
        self$`remaining` <- this_object$`remaining`
      }
      if (!is.null(this_object$`unlimited`)) {
        self$`unlimited` <- this_object$`unlimited`
      }
      if (!is.null(this_object$`period`)) {
        if (!is.null(this_object$`period`) && !(this_object$`period` %in% c("day", "week", "month"))) {
          stop(paste("Error! \"", this_object$`period`, "\" cannot be assigned to `period`. Must be \"day\", \"week\", \"month\".", sep = ""))
        }
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`resets_at`)) {
        self$`resets_at` <- this_object$`resets_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AccountExecutionQuota in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountExecutionQuota
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountExecutionQuota
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`limit` <- this_object$`limit`
      self$`used` <- this_object$`used`
      self$`remaining` <- this_object$`remaining`
      self$`unlimited` <- this_object$`unlimited`
      if (!is.null(this_object$`period`) && !(this_object$`period` %in% c("day", "week", "month"))) {
        stop(paste("Error! \"", this_object$`period`, "\" cannot be assigned to `period`. Must be \"day\", \"week\", \"month\".", sep = ""))
      }
      self$`period` <- this_object$`period`
      self$`resets_at` <- this_object$`resets_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to AccountExecutionQuota and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AccountExecutionQuota
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
# AccountExecutionQuota$unlock()
#
## Below is an example to define the print function
# AccountExecutionQuota$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccountExecutionQuota$lock()

