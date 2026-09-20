#' Create a new AccountQuota
#'
#' @description
#' A consumable quota. limit and remaining are null when unlimited is true.
#'
#' @docType class
#' @title AccountQuota
#' @description AccountQuota Class
#' @format An \code{R6Class} generator object
#' @field limit  integer [optional]
#' @field used  integer [optional]
#' @field remaining  integer [optional]
#' @field unlimited  character [optional]
#' @field period Reset window for quotas that reset (e.g. month) character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccountQuota <- R6::R6Class(
  "AccountQuota",
  public = list(
    `limit` = NULL,
    `used` = NULL,
    `remaining` = NULL,
    `unlimited` = NULL,
    `period` = NULL,

    #' @description
    #' Initialize a new AccountQuota class.
    #'
    #' @param limit limit
    #' @param used used
    #' @param remaining remaining
    #' @param unlimited unlimited
    #' @param period Reset window for quotas that reset (e.g. month)
    #' @param ... Other optional arguments.
    initialize = function(`limit` = NULL, `used` = NULL, `remaining` = NULL, `unlimited` = NULL, `period` = NULL, ...) {
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
    #' @return AccountQuota as a base R list.
    #' @examples
    #' # convert array of AccountQuota (x) to a data frame
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
    #' Convert AccountQuota to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AccountQuotaObject <- list()
      if (!is.null(self$`limit`)) {
        AccountQuotaObject[["limit"]] <-
          self$`limit`
      }
      if (!is.null(self$`used`)) {
        AccountQuotaObject[["used"]] <-
          self$`used`
      }
      if (!is.null(self$`remaining`)) {
        AccountQuotaObject[["remaining"]] <-
          self$`remaining`
      }
      if (!is.null(self$`unlimited`)) {
        AccountQuotaObject[["unlimited"]] <-
          self$`unlimited`
      }
      if (!is.null(self$`period`)) {
        AccountQuotaObject[["period"]] <-
          self$`period`
      }
      return(AccountQuotaObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountQuota
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountQuota
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AccountQuota in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountQuota
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountQuota
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`limit` <- this_object$`limit`
      self$`used` <- this_object$`used`
      self$`remaining` <- this_object$`remaining`
      self$`unlimited` <- this_object$`unlimited`
      self$`period` <- this_object$`period`
      self
    },

    #' @description
    #' Validate JSON input with respect to AccountQuota and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AccountQuota
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
# AccountQuota$unlock()
#
## Below is an example to define the print function
# AccountQuota$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccountQuota$lock()

