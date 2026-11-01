#' Create a new AccountPitchQuota
#'
#' @description
#' Pitch projects created this calendar month (Europe/Madrid) against the monthly allowance, which pitch projects use instead of a project slot. limit and remaining are null when unlimited is true.
#'
#' @docType class
#' @title AccountPitchQuota
#' @description AccountPitchQuota Class
#' @format An \code{R6Class} generator object
#' @field limit  integer [optional]
#' @field used  integer [optional]
#' @field remaining  integer [optional]
#' @field unlimited  character [optional]
#' @field period Always month character [optional]
#' @field resets_on The first day of next month, when the allowance starts again character [optional]
#' @field access Whether the account may create pitch projects. The account owner or an account admin (co-owner) requests access in Account Settings > Pitch projects and our team reviews it; approved access goes dormant while the account is below the Scale tier, on a trial, has a payment problem, is set to cancel or has an allowance of 0 character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccountPitchQuota <- R6::R6Class(
  "AccountPitchQuota",
  public = list(
    `limit` = NULL,
    `used` = NULL,
    `remaining` = NULL,
    `unlimited` = NULL,
    `period` = NULL,
    `resets_on` = NULL,
    `access` = NULL,

    #' @description
    #' Initialize a new AccountPitchQuota class.
    #'
    #' @param limit limit
    #' @param used used
    #' @param remaining remaining
    #' @param unlimited unlimited
    #' @param period Always month
    #' @param resets_on The first day of next month, when the allowance starts again
    #' @param access Whether the account may create pitch projects. The account owner or an account admin (co-owner) requests access in Account Settings > Pitch projects and our team reviews it; approved access goes dormant while the account is below the Scale tier, on a trial, has a payment problem, is set to cancel or has an allowance of 0
    #' @param ... Other optional arguments.
    initialize = function(`limit` = NULL, `used` = NULL, `remaining` = NULL, `unlimited` = NULL, `period` = NULL, `resets_on` = NULL, `access` = NULL, ...) {
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
      if (!is.null(`access`)) {
        if (!(`access` %in% c("none", "pending", "approved", "dormant", "rejected", "revoked"))) {
          stop(paste("Error! \"", `access`, "\" cannot be assigned to `access`. Must be \"none\", \"pending\", \"approved\", \"dormant\", \"rejected\", \"revoked\".", sep = ""))
        }
        if (!(is.character(`access`) && length(`access`) == 1)) {
          stop(paste("Error! Invalid data for `access`. Must be a string:", `access`))
        }
        self$`access` <- `access`
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
    #' @return AccountPitchQuota as a base R list.
    #' @examples
    #' # convert array of AccountPitchQuota (x) to a data frame
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
    #' Convert AccountPitchQuota to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AccountPitchQuotaObject <- list()
      if (!is.null(self$`limit`)) {
        AccountPitchQuotaObject[["limit"]] <-
          self$`limit`
      }
      if (!is.null(self$`used`)) {
        AccountPitchQuotaObject[["used"]] <-
          self$`used`
      }
      if (!is.null(self$`remaining`)) {
        AccountPitchQuotaObject[["remaining"]] <-
          self$`remaining`
      }
      if (!is.null(self$`unlimited`)) {
        AccountPitchQuotaObject[["unlimited"]] <-
          self$`unlimited`
      }
      if (!is.null(self$`period`)) {
        AccountPitchQuotaObject[["period"]] <-
          self$`period`
      }
      if (!is.null(self$`resets_on`)) {
        AccountPitchQuotaObject[["resets_on"]] <-
          self$`resets_on`
      }
      if (!is.null(self$`access`)) {
        AccountPitchQuotaObject[["access"]] <-
          self$`access`
      }
      return(AccountPitchQuotaObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountPitchQuota
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountPitchQuota
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
        self$`period` <- this_object$`period`
      }
      if (!is.null(this_object$`resets_on`)) {
        self$`resets_on` <- this_object$`resets_on`
      }
      if (!is.null(this_object$`access`)) {
        if (!is.null(this_object$`access`) && !(this_object$`access` %in% c("none", "pending", "approved", "dormant", "rejected", "revoked"))) {
          stop(paste("Error! \"", this_object$`access`, "\" cannot be assigned to `access`. Must be \"none\", \"pending\", \"approved\", \"dormant\", \"rejected\", \"revoked\".", sep = ""))
        }
        self$`access` <- this_object$`access`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AccountPitchQuota in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountPitchQuota
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountPitchQuota
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`limit` <- this_object$`limit`
      self$`used` <- this_object$`used`
      self$`remaining` <- this_object$`remaining`
      self$`unlimited` <- this_object$`unlimited`
      self$`period` <- this_object$`period`
      self$`resets_on` <- this_object$`resets_on`
      if (!is.null(this_object$`access`) && !(this_object$`access` %in% c("none", "pending", "approved", "dormant", "rejected", "revoked"))) {
        stop(paste("Error! \"", this_object$`access`, "\" cannot be assigned to `access`. Must be \"none\", \"pending\", \"approved\", \"dormant\", \"rejected\", \"revoked\".", sep = ""))
      }
      self$`access` <- this_object$`access`
      self
    },

    #' @description
    #' Validate JSON input with respect to AccountPitchQuota and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AccountPitchQuota
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
# AccountPitchQuota$unlock()
#
## Below is an example to define the print function
# AccountPitchQuota$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccountPitchQuota$lock()

