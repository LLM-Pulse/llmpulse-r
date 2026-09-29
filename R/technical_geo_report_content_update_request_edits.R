#' Create a new TechnicalGeoReportContentUpdateRequestEdits
#'
#' @description
#' The files to replace, each mapped to its full replacement text: never blank, at most 200,000 characters. Send one file or both; a file identical to the stored one is ignored.
#'
#' @docType class
#' @title TechnicalGeoReportContentUpdateRequestEdits
#' @description TechnicalGeoReportContentUpdateRequestEdits Class
#' @format An \code{R6Class} generator object
#' @field llms_txt Full text of llms.txt character [optional]
#' @field llms_full_txt Full text of llms-full.txt character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TechnicalGeoReportContentUpdateRequestEdits <- R6::R6Class(
  "TechnicalGeoReportContentUpdateRequestEdits",
  public = list(
    `llms_txt` = NULL,
    `llms_full_txt` = NULL,

    #' @description
    #' Initialize a new TechnicalGeoReportContentUpdateRequestEdits class.
    #'
    #' @param llms_txt Full text of llms.txt
    #' @param llms_full_txt Full text of llms-full.txt
    #' @param ... Other optional arguments.
    initialize = function(`llms_txt` = NULL, `llms_full_txt` = NULL, ...) {
      if (!is.null(`llms_txt`)) {
        if (!(is.character(`llms_txt`) && length(`llms_txt`) == 1)) {
          stop(paste("Error! Invalid data for `llms_txt`. Must be a string:", `llms_txt`))
        }
        self$`llms_txt` <- `llms_txt`
      }
      if (!is.null(`llms_full_txt`)) {
        if (!(is.character(`llms_full_txt`) && length(`llms_full_txt`) == 1)) {
          stop(paste("Error! Invalid data for `llms_full_txt`. Must be a string:", `llms_full_txt`))
        }
        self$`llms_full_txt` <- `llms_full_txt`
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
    #' @return TechnicalGeoReportContentUpdateRequestEdits as a base R list.
    #' @examples
    #' # convert array of TechnicalGeoReportContentUpdateRequestEdits (x) to a data frame
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
    #' Convert TechnicalGeoReportContentUpdateRequestEdits to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TechnicalGeoReportContentUpdateRequestEditsObject <- list()
      if (!is.null(self$`llms_txt`)) {
        TechnicalGeoReportContentUpdateRequestEditsObject[["llms_txt"]] <-
          self$`llms_txt`
      }
      if (!is.null(self$`llms_full_txt`)) {
        TechnicalGeoReportContentUpdateRequestEditsObject[["llms_full_txt"]] <-
          self$`llms_full_txt`
      }
      return(TechnicalGeoReportContentUpdateRequestEditsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TechnicalGeoReportContentUpdateRequestEdits
    #'
    #' @param input_json the JSON input
    #' @return the instance of TechnicalGeoReportContentUpdateRequestEdits
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`llms_txt`)) {
        self$`llms_txt` <- this_object$`llms_txt`
      }
      if (!is.null(this_object$`llms_full_txt`)) {
        self$`llms_full_txt` <- this_object$`llms_full_txt`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TechnicalGeoReportContentUpdateRequestEdits in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TechnicalGeoReportContentUpdateRequestEdits
    #'
    #' @param input_json the JSON input
    #' @return the instance of TechnicalGeoReportContentUpdateRequestEdits
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`llms_txt` <- this_object$`llms_txt`
      self$`llms_full_txt` <- this_object$`llms_full_txt`
      self
    },

    #' @description
    #' Validate JSON input with respect to TechnicalGeoReportContentUpdateRequestEdits and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TechnicalGeoReportContentUpdateRequestEdits
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
# TechnicalGeoReportContentUpdateRequestEdits$unlock()
#
## Below is an example to define the print function
# TechnicalGeoReportContentUpdateRequestEdits$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TechnicalGeoReportContentUpdateRequestEdits$lock()

