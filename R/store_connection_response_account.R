#' Create a new StoreConnectionResponseAccount
#'
#' @description
#' StoreConnectionResponseAccount Class
#'
#' @docType class
#' @title StoreConnectionResponseAccount
#' @description StoreConnectionResponseAccount Class
#' @format An \code{R6Class} generator object
#' @field plan Internal plan key of the account, e.g. scale or scaleplus; null for a key limited to some projects character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StoreConnectionResponseAccount <- R6::R6Class(
  "StoreConnectionResponseAccount",
  public = list(
    `plan` = NULL,

    #' @description
    #' Initialize a new StoreConnectionResponseAccount class.
    #'
    #' @param plan Internal plan key of the account, e.g. scale or scaleplus; null for a key limited to some projects
    #' @param ... Other optional arguments.
    initialize = function(`plan` = NULL, ...) {
      if (!is.null(`plan`)) {
        if (!(is.character(`plan`) && length(`plan`) == 1)) {
          stop(paste("Error! Invalid data for `plan`. Must be a string:", `plan`))
        }
        self$`plan` <- `plan`
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
    #' @return StoreConnectionResponseAccount as a base R list.
    #' @examples
    #' # convert array of StoreConnectionResponseAccount (x) to a data frame
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
    #' Convert StoreConnectionResponseAccount to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StoreConnectionResponseAccountObject <- list()
      if (!is.null(self$`plan`)) {
        StoreConnectionResponseAccountObject[["plan"]] <-
          self$`plan`
      }
      return(StoreConnectionResponseAccountObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of StoreConnectionResponseAccount
    #'
    #' @param input_json the JSON input
    #' @return the instance of StoreConnectionResponseAccount
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`plan`)) {
        self$`plan` <- this_object$`plan`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return StoreConnectionResponseAccount in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StoreConnectionResponseAccount
    #'
    #' @param input_json the JSON input
    #' @return the instance of StoreConnectionResponseAccount
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`plan` <- this_object$`plan`
      self
    },

    #' @description
    #' Validate JSON input with respect to StoreConnectionResponseAccount and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StoreConnectionResponseAccount
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
# StoreConnectionResponseAccount$unlock()
#
## Below is an example to define the print function
# StoreConnectionResponseAccount$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StoreConnectionResponseAccount$lock()

