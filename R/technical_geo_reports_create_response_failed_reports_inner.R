#' Create a new TechnicalGeoReportsCreateResponseFailedReportsInner
#'
#' @description
#' TechnicalGeoReportsCreateResponseFailedReportsInner Class
#'
#' @docType class
#' @title TechnicalGeoReportsCreateResponseFailedReportsInner
#' @description TechnicalGeoReportsCreateResponseFailedReportsInner Class
#' @format An \code{R6Class} generator object
#' @field type The report_type character
#' @field errors  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TechnicalGeoReportsCreateResponseFailedReportsInner <- R6::R6Class(
  "TechnicalGeoReportsCreateResponseFailedReportsInner",
  public = list(
    `type` = NULL,
    `errors` = NULL,

    #' @description
    #' Initialize a new TechnicalGeoReportsCreateResponseFailedReportsInner class.
    #'
    #' @param type The report_type
    #' @param errors errors
    #' @param ... Other optional arguments.
    initialize = function(`type`, `errors`, ...) {
      if (!missing(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!missing(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(is.character(x)))
        self$`errors` <- `errors`
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
    #' @return TechnicalGeoReportsCreateResponseFailedReportsInner as a base R list.
    #' @examples
    #' # convert array of TechnicalGeoReportsCreateResponseFailedReportsInner (x) to a data frame
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
    #' Convert TechnicalGeoReportsCreateResponseFailedReportsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TechnicalGeoReportsCreateResponseFailedReportsInnerObject <- list()
      if (!is.null(self$`type`)) {
        TechnicalGeoReportsCreateResponseFailedReportsInnerObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`errors`)) {
        TechnicalGeoReportsCreateResponseFailedReportsInnerObject[["errors"]] <-
          self$`errors`
      }
      return(TechnicalGeoReportsCreateResponseFailedReportsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TechnicalGeoReportsCreateResponseFailedReportsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of TechnicalGeoReportsCreateResponseFailedReportsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[character]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TechnicalGeoReportsCreateResponseFailedReportsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TechnicalGeoReportsCreateResponseFailedReportsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of TechnicalGeoReportsCreateResponseFailedReportsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`type` <- this_object$`type`
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[character]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to TechnicalGeoReportsCreateResponseFailedReportsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportsCreateResponseFailedReportsInner: the required field `type` is missing."))
      }
      # check the required field `errors`
      if (!is.null(input_json$`errors`)) {
        stopifnot(is.vector(input_json$`errors`), length(input_json$`errors`) != 0)
        tmp <- sapply(input_json$`errors`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportsCreateResponseFailedReportsInner: the required field `errors` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TechnicalGeoReportsCreateResponseFailedReportsInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      # check if the required `errors` is null
      if (is.null(self$`errors`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

      # check if the required `errors` is null
      if (is.null(self$`errors`)) {
        invalid_fields["errors"] <- "Non-nullable required field `errors` cannot be null."
      }

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
# TechnicalGeoReportsCreateResponseFailedReportsInner$unlock()
#
## Below is an example to define the print function
# TechnicalGeoReportsCreateResponseFailedReportsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TechnicalGeoReportsCreateResponseFailedReportsInner$lock()

