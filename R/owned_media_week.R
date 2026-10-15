#' Create a new OwnedMediaWeek
#'
#' @description
#' OwnedMediaWeek Class
#'
#' @docType class
#' @title OwnedMediaWeek
#' @description OwnedMediaWeek Class
#' @format An \code{R6Class} generator object
#' @field week The Monday that starts the week character [optional]
#' @field citations  integer [optional]
#' @field yours Null for provider=overview, whose rollups have no weekly split integer [optional]
#' @field other  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaWeek <- R6::R6Class(
  "OwnedMediaWeek",
  public = list(
    `week` = NULL,
    `citations` = NULL,
    `yours` = NULL,
    `other` = NULL,

    #' @description
    #' Initialize a new OwnedMediaWeek class.
    #'
    #' @param week The Monday that starts the week
    #' @param citations citations
    #' @param yours Null for provider=overview, whose rollups have no weekly split
    #' @param other other
    #' @param ... Other optional arguments.
    initialize = function(`week` = NULL, `citations` = NULL, `yours` = NULL, `other` = NULL, ...) {
      if (!is.null(`week`)) {
        if (!is.character(`week`)) {
          stop(paste("Error! Invalid data for `week`. Must be a string:", `week`))
        }
        self$`week` <- `week`
      }
      if (!is.null(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
      }
      if (!is.null(`yours`)) {
        if (!(is.numeric(`yours`) && length(`yours`) == 1)) {
          stop(paste("Error! Invalid data for `yours`. Must be an integer:", `yours`))
        }
        self$`yours` <- `yours`
      }
      if (!is.null(`other`)) {
        if (!(is.numeric(`other`) && length(`other`) == 1)) {
          stop(paste("Error! Invalid data for `other`. Must be an integer:", `other`))
        }
        self$`other` <- `other`
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
    #' @return OwnedMediaWeek as a base R list.
    #' @examples
    #' # convert array of OwnedMediaWeek (x) to a data frame
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
    #' Convert OwnedMediaWeek to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaWeekObject <- list()
      if (!is.null(self$`week`)) {
        OwnedMediaWeekObject[["week"]] <-
          self$`week`
      }
      if (!is.null(self$`citations`)) {
        OwnedMediaWeekObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`yours`)) {
        OwnedMediaWeekObject[["yours"]] <-
          self$`yours`
      }
      if (!is.null(self$`other`)) {
        OwnedMediaWeekObject[["other"]] <-
          self$`other`
      }
      return(OwnedMediaWeekObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaWeek
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaWeek
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`week`)) {
        self$`week` <- this_object$`week`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      if (!is.null(this_object$`yours`)) {
        self$`yours` <- this_object$`yours`
      }
      if (!is.null(this_object$`other`)) {
        self$`other` <- this_object$`other`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaWeek in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaWeek
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaWeek
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`week` <- this_object$`week`
      self$`citations` <- this_object$`citations`
      self$`yours` <- this_object$`yours`
      self$`other` <- this_object$`other`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaWeek and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaWeek
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
# OwnedMediaWeek$unlock()
#
## Below is an example to define the print function
# OwnedMediaWeek$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaWeek$lock()

