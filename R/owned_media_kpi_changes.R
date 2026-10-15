#' Create a new OwnedMediaKpiChanges
#'
#' @description
#' Change against the previous period. Counts in percent, share_pct in percentage points; null when the previous period has nothing to compare with
#'
#' @docType class
#' @title OwnedMediaKpiChanges
#' @description OwnedMediaKpiChanges Class
#' @format An \code{R6Class} generator object
#' @field total  numeric [optional]
#' @field yours  numeric [optional]
#' @field your_profile  numeric [optional]
#' @field your_content  numeric [optional]
#' @field share_pct  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaKpiChanges <- R6::R6Class(
  "OwnedMediaKpiChanges",
  public = list(
    `total` = NULL,
    `yours` = NULL,
    `your_profile` = NULL,
    `your_content` = NULL,
    `share_pct` = NULL,

    #' @description
    #' Initialize a new OwnedMediaKpiChanges class.
    #'
    #' @param total total
    #' @param yours yours
    #' @param your_profile your_profile
    #' @param your_content your_content
    #' @param share_pct share_pct
    #' @param ... Other optional arguments.
    initialize = function(`total` = NULL, `yours` = NULL, `your_profile` = NULL, `your_content` = NULL, `share_pct` = NULL, ...) {
      if (!is.null(`total`)) {
        self$`total` <- `total`
      }
      if (!is.null(`yours`)) {
        self$`yours` <- `yours`
      }
      if (!is.null(`your_profile`)) {
        self$`your_profile` <- `your_profile`
      }
      if (!is.null(`your_content`)) {
        self$`your_content` <- `your_content`
      }
      if (!is.null(`share_pct`)) {
        self$`share_pct` <- `share_pct`
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
    #' @return OwnedMediaKpiChanges as a base R list.
    #' @examples
    #' # convert array of OwnedMediaKpiChanges (x) to a data frame
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
    #' Convert OwnedMediaKpiChanges to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaKpiChangesObject <- list()
      if (!is.null(self$`total`)) {
        OwnedMediaKpiChangesObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`yours`)) {
        OwnedMediaKpiChangesObject[["yours"]] <-
          self$`yours`
      }
      if (!is.null(self$`your_profile`)) {
        OwnedMediaKpiChangesObject[["your_profile"]] <-
          self$`your_profile`
      }
      if (!is.null(self$`your_content`)) {
        OwnedMediaKpiChangesObject[["your_content"]] <-
          self$`your_content`
      }
      if (!is.null(self$`share_pct`)) {
        OwnedMediaKpiChangesObject[["share_pct"]] <-
          self$`share_pct`
      }
      return(OwnedMediaKpiChangesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaKpiChanges
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaKpiChanges
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`yours`)) {
        self$`yours` <- this_object$`yours`
      }
      if (!is.null(this_object$`your_profile`)) {
        self$`your_profile` <- this_object$`your_profile`
      }
      if (!is.null(this_object$`your_content`)) {
        self$`your_content` <- this_object$`your_content`
      }
      if (!is.null(this_object$`share_pct`)) {
        self$`share_pct` <- this_object$`share_pct`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaKpiChanges in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaKpiChanges
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaKpiChanges
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`total` <- this_object$`total`
      self$`yours` <- this_object$`yours`
      self$`your_profile` <- this_object$`your_profile`
      self$`your_content` <- this_object$`your_content`
      self$`share_pct` <- this_object$`share_pct`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaKpiChanges and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaKpiChanges
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
# OwnedMediaKpiChanges$unlock()
#
## Below is an example to define the print function
# OwnedMediaKpiChanges$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaKpiChanges$lock()

