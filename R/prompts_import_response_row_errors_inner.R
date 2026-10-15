#' Create a new PromptsImportResponseRowErrorsInner
#'
#' @description
#' PromptsImportResponseRowErrorsInner Class
#'
#' @docType class
#' @title PromptsImportResponseRowErrorsInner
#' @description PromptsImportResponseRowErrorsInner Class
#' @format An \code{R6Class} generator object
#' @field row  integer
#' @field error  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptsImportResponseRowErrorsInner <- R6::R6Class(
  "PromptsImportResponseRowErrorsInner",
  public = list(
    `row` = NULL,
    `error` = NULL,

    #' @description
    #' Initialize a new PromptsImportResponseRowErrorsInner class.
    #'
    #' @param row row
    #' @param error error
    #' @param ... Other optional arguments.
    initialize = function(`row`, `error`, ...) {
      if (!missing(`row`)) {
        if (!(is.numeric(`row`) && length(`row`) == 1)) {
          stop(paste("Error! Invalid data for `row`. Must be an integer:", `row`))
        }
        self$`row` <- `row`
      }
      if (!missing(`error`)) {
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
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
    #' @return PromptsImportResponseRowErrorsInner as a base R list.
    #' @examples
    #' # convert array of PromptsImportResponseRowErrorsInner (x) to a data frame
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
    #' Convert PromptsImportResponseRowErrorsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptsImportResponseRowErrorsInnerObject <- list()
      if (!is.null(self$`row`)) {
        PromptsImportResponseRowErrorsInnerObject[["row"]] <-
          self$`row`
      }
      if (!is.null(self$`error`)) {
        PromptsImportResponseRowErrorsInnerObject[["error"]] <-
          self$`error`
      }
      return(PromptsImportResponseRowErrorsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptsImportResponseRowErrorsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptsImportResponseRowErrorsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`row`)) {
        self$`row` <- this_object$`row`
      }
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PromptsImportResponseRowErrorsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptsImportResponseRowErrorsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptsImportResponseRowErrorsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`row` <- this_object$`row`
      self$`error` <- this_object$`error`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptsImportResponseRowErrorsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `row`
      if (!is.null(input_json$`row`)) {
        if (!(is.numeric(input_json$`row`) && length(input_json$`row`) == 1)) {
          stop(paste("Error! Invalid data for `row`. Must be an integer:", input_json$`row`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportResponseRowErrorsInner: the required field `row` is missing."))
      }
      # check the required field `error`
      if (!is.null(input_json$`error`)) {
        if (!(is.character(input_json$`error`) && length(input_json$`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", input_json$`error`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptsImportResponseRowErrorsInner: the required field `error` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptsImportResponseRowErrorsInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `row` is null
      if (is.null(self$`row`)) {
        return(FALSE)
      }

      # check if the required `error` is null
      if (is.null(self$`error`)) {
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
      # check if the required `row` is null
      if (is.null(self$`row`)) {
        invalid_fields["row"] <- "Non-nullable required field `row` cannot be null."
      }

      # check if the required `error` is null
      if (is.null(self$`error`)) {
        invalid_fields["error"] <- "Non-nullable required field `error` cannot be null."
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
# PromptsImportResponseRowErrorsInner$unlock()
#
## Below is an example to define the print function
# PromptsImportResponseRowErrorsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptsImportResponseRowErrorsInner$lock()

