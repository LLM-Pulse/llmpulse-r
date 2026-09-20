#' Create a new AccountCapacity
#'
#' @description
#' A ceiling with no usage counter attached. limit is null when unlimited is true.
#'
#' @docType class
#' @title AccountCapacity
#' @description AccountCapacity Class
#' @format An \code{R6Class} generator object
#' @field limit  integer [optional]
#' @field unlimited  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AccountCapacity <- R6::R6Class(
  "AccountCapacity",
  public = list(
    `limit` = NULL,
    `unlimited` = NULL,

    #' @description
    #' Initialize a new AccountCapacity class.
    #'
    #' @param limit limit
    #' @param unlimited unlimited
    #' @param ... Other optional arguments.
    initialize = function(`limit` = NULL, `unlimited` = NULL, ...) {
      if (!is.null(`limit`)) {
        if (!(is.numeric(`limit`) && length(`limit`) == 1)) {
          stop(paste("Error! Invalid data for `limit`. Must be an integer:", `limit`))
        }
        self$`limit` <- `limit`
      }
      if (!is.null(`unlimited`)) {
        if (!(is.logical(`unlimited`) && length(`unlimited`) == 1)) {
          stop(paste("Error! Invalid data for `unlimited`. Must be a boolean:", `unlimited`))
        }
        self$`unlimited` <- `unlimited`
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
    #' @return AccountCapacity as a base R list.
    #' @examples
    #' # convert array of AccountCapacity (x) to a data frame
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
    #' Convert AccountCapacity to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AccountCapacityObject <- list()
      if (!is.null(self$`limit`)) {
        AccountCapacityObject[["limit"]] <-
          self$`limit`
      }
      if (!is.null(self$`unlimited`)) {
        AccountCapacityObject[["unlimited"]] <-
          self$`unlimited`
      }
      return(AccountCapacityObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountCapacity
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountCapacity
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`limit`)) {
        self$`limit` <- this_object$`limit`
      }
      if (!is.null(this_object$`unlimited`)) {
        self$`unlimited` <- this_object$`unlimited`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AccountCapacity in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AccountCapacity
    #'
    #' @param input_json the JSON input
    #' @return the instance of AccountCapacity
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`limit` <- this_object$`limit`
      self$`unlimited` <- this_object$`unlimited`
      self
    },

    #' @description
    #' Validate JSON input with respect to AccountCapacity and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AccountCapacity
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
# AccountCapacity$unlock()
#
## Below is an example to define the print function
# AccountCapacity$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AccountCapacity$lock()

