#' Create a new AiModelDeclinedAnswersResponseByPrompt
#'
#' @description
#' One row per prompt with an answer in the window, highest decline rate first, then more declines, more answers and the prompt id
#'
#' @docType class
#' @title AiModelDeclinedAnswersResponseByPrompt
#' @description AiModelDeclinedAnswersResponseByPrompt Class
#' @format An \code{R6Class} generator object
#' @field page  integer [optional]
#' @field per_page  integer [optional]
#' @field total Prompts with an answer in the window integer [optional]
#' @field data  list(\link{AiModelDeclinedAnswersResponseByPromptDataInner}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelDeclinedAnswersResponseByPrompt <- R6::R6Class(
  "AiModelDeclinedAnswersResponseByPrompt",
  public = list(
    `page` = NULL,
    `per_page` = NULL,
    `total` = NULL,
    `data` = NULL,

    #' @description
    #' Initialize a new AiModelDeclinedAnswersResponseByPrompt class.
    #'
    #' @param page page
    #' @param per_page per_page
    #' @param total Prompts with an answer in the window
    #' @param data data
    #' @param ... Other optional arguments.
    initialize = function(`page` = NULL, `per_page` = NULL, `total` = NULL, `data` = NULL, ...) {
      if (!is.null(`page`)) {
        if (!(is.numeric(`page`) && length(`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", `page`))
        }
        self$`page` <- `page`
      }
      if (!is.null(`per_page`)) {
        if (!(is.numeric(`per_page`) && length(`per_page`) == 1)) {
          stop(paste("Error! Invalid data for `per_page`. Must be an integer:", `per_page`))
        }
        self$`per_page` <- `per_page`
      }
      if (!is.null(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!is.null(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
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
    #' @return AiModelDeclinedAnswersResponseByPrompt as a base R list.
    #' @examples
    #' # convert array of AiModelDeclinedAnswersResponseByPrompt (x) to a data frame
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
    #' Convert AiModelDeclinedAnswersResponseByPrompt to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelDeclinedAnswersResponseByPromptObject <- list()
      if (!is.null(self$`page`)) {
        AiModelDeclinedAnswersResponseByPromptObject[["page"]] <-
          self$`page`
      }
      if (!is.null(self$`per_page`)) {
        AiModelDeclinedAnswersResponseByPromptObject[["per_page"]] <-
          self$`per_page`
      }
      if (!is.null(self$`total`)) {
        AiModelDeclinedAnswersResponseByPromptObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`data`)) {
        AiModelDeclinedAnswersResponseByPromptObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      return(AiModelDeclinedAnswersResponseByPromptObject)
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
    #' Deserialize JSON string into an instance of AiModelDeclinedAnswersResponseByPrompt
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelDeclinedAnswersResponseByPrompt
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`page`)) {
        self$`page` <- this_object$`page`
      }
      if (!is.null(this_object$`per_page`)) {
        self$`per_page` <- this_object$`per_page`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[AiModelDeclinedAnswersResponseByPromptDataInner]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelDeclinedAnswersResponseByPrompt in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelDeclinedAnswersResponseByPrompt
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelDeclinedAnswersResponseByPrompt
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`page` <- this_object$`page`
      self$`per_page` <- this_object$`per_page`
      self$`total` <- this_object$`total`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[AiModelDeclinedAnswersResponseByPromptDataInner]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelDeclinedAnswersResponseByPrompt and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelDeclinedAnswersResponseByPrompt
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
# AiModelDeclinedAnswersResponseByPrompt$unlock()
#
## Below is an example to define the print function
# AiModelDeclinedAnswersResponseByPrompt$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelDeclinedAnswersResponseByPrompt$lock()

