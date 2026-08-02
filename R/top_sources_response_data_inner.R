#' Create a new TopSourcesResponseDataInner
#'
#' @description
#' TopSourcesResponseDataInner Class
#'
#' @docType class
#' @title TopSourcesResponseDataInner
#' @description TopSourcesResponseDataInner Class
#' @format An \code{R6Class} generator object
#' @field domain  character [optional]
#' @field total_responses  integer [optional]
#' @field avg_visibility  numeric [optional]
#' @field avg_mention_rate  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TopSourcesResponseDataInner <- R6::R6Class(
  "TopSourcesResponseDataInner",
  public = list(
    `domain` = NULL,
    `total_responses` = NULL,
    `avg_visibility` = NULL,
    `avg_mention_rate` = NULL,

    #' @description
    #' Initialize a new TopSourcesResponseDataInner class.
    #'
    #' @param domain domain
    #' @param total_responses total_responses
    #' @param avg_visibility avg_visibility
    #' @param avg_mention_rate avg_mention_rate
    #' @param ... Other optional arguments.
    initialize = function(`domain` = NULL, `total_responses` = NULL, `avg_visibility` = NULL, `avg_mention_rate` = NULL, ...) {
      if (!is.null(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!is.null(`total_responses`)) {
        if (!(is.numeric(`total_responses`) && length(`total_responses`) == 1)) {
          stop(paste("Error! Invalid data for `total_responses`. Must be an integer:", `total_responses`))
        }
        self$`total_responses` <- `total_responses`
      }
      if (!is.null(`avg_visibility`)) {
        self$`avg_visibility` <- `avg_visibility`
      }
      if (!is.null(`avg_mention_rate`)) {
        self$`avg_mention_rate` <- `avg_mention_rate`
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
    #' @return TopSourcesResponseDataInner as a base R list.
    #' @examples
    #' # convert array of TopSourcesResponseDataInner (x) to a data frame
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
    #' Convert TopSourcesResponseDataInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TopSourcesResponseDataInnerObject <- list()
      if (!is.null(self$`domain`)) {
        TopSourcesResponseDataInnerObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`total_responses`)) {
        TopSourcesResponseDataInnerObject[["total_responses"]] <-
          self$`total_responses`
      }
      if (!is.null(self$`avg_visibility`)) {
        TopSourcesResponseDataInnerObject[["avg_visibility"]] <-
          self$`avg_visibility`
      }
      if (!is.null(self$`avg_mention_rate`)) {
        TopSourcesResponseDataInnerObject[["avg_mention_rate"]] <-
          self$`avg_mention_rate`
      }
      return(TopSourcesResponseDataInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TopSourcesResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of TopSourcesResponseDataInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`total_responses`)) {
        self$`total_responses` <- this_object$`total_responses`
      }
      if (!is.null(this_object$`avg_visibility`)) {
        self$`avg_visibility` <- this_object$`avg_visibility`
      }
      if (!is.null(this_object$`avg_mention_rate`)) {
        self$`avg_mention_rate` <- this_object$`avg_mention_rate`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TopSourcesResponseDataInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TopSourcesResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of TopSourcesResponseDataInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`domain` <- this_object$`domain`
      self$`total_responses` <- this_object$`total_responses`
      self$`avg_visibility` <- this_object$`avg_visibility`
      self$`avg_mention_rate` <- this_object$`avg_mention_rate`
      self
    },

    #' @description
    #' Validate JSON input with respect to TopSourcesResponseDataInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TopSourcesResponseDataInner
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
# TopSourcesResponseDataInner$unlock()
#
## Below is an example to define the print function
# TopSourcesResponseDataInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TopSourcesResponseDataInner$lock()

