#' Create a new OwnedMediaSummaryResponsePrevious
#'
#' @description
#' The period of the same length that ends just before from
#'
#' @docType class
#' @title OwnedMediaSummaryResponsePrevious
#' @description OwnedMediaSummaryResponsePrevious Class
#' @format An \code{R6Class} generator object
#' @field from  character [optional]
#' @field to  character [optional]
#' @field kpis  \link{OwnedMediaKpis} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaSummaryResponsePrevious <- R6::R6Class(
  "OwnedMediaSummaryResponsePrevious",
  public = list(
    `from` = NULL,
    `to` = NULL,
    `kpis` = NULL,

    #' @description
    #' Initialize a new OwnedMediaSummaryResponsePrevious class.
    #'
    #' @param from from
    #' @param to to
    #' @param kpis kpis
    #' @param ... Other optional arguments.
    initialize = function(`from` = NULL, `to` = NULL, `kpis` = NULL, ...) {
      if (!is.null(`from`)) {
        if (!is.character(`from`)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!is.null(`to`)) {
        if (!is.character(`to`)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!is.null(`kpis`)) {
        stopifnot(R6::is.R6(`kpis`))
        self$`kpis` <- `kpis`
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
    #' @return OwnedMediaSummaryResponsePrevious as a base R list.
    #' @examples
    #' # convert array of OwnedMediaSummaryResponsePrevious (x) to a data frame
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
    #' Convert OwnedMediaSummaryResponsePrevious to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaSummaryResponsePreviousObject <- list()
      if (!is.null(self$`from`)) {
        OwnedMediaSummaryResponsePreviousObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        OwnedMediaSummaryResponsePreviousObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`kpis`)) {
        OwnedMediaSummaryResponsePreviousObject[["kpis"]] <-
          self$extractSimpleType(self$`kpis`)
      }
      return(OwnedMediaSummaryResponsePreviousObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaSummaryResponsePrevious
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaSummaryResponsePrevious
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`kpis`)) {
        `kpis_object` <- OwnedMediaKpis$new()
        `kpis_object`$fromJSON(jsonlite::toJSON(this_object$`kpis`, auto_unbox = TRUE, digits = NA))
        self$`kpis` <- `kpis_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaSummaryResponsePrevious in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaSummaryResponsePrevious
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaSummaryResponsePrevious
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`kpis` <- OwnedMediaKpis$new()$fromJSON(jsonlite::toJSON(this_object$`kpis`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaSummaryResponsePrevious and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaSummaryResponsePrevious
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
# OwnedMediaSummaryResponsePrevious$unlock()
#
## Below is an example to define the print function
# OwnedMediaSummaryResponsePrevious$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaSummaryResponsePrevious$lock()

