#' Create a new AiModelSentimentCell
#'
#' @description
#' AiModelSentimentCell Class
#'
#' @docType class
#' @title AiModelSentimentCell
#' @description AiModelSentimentCell Class
#' @format An \code{R6Class} generator object
#' @field value The actor's net sentiment in the model, positive_count minus negative_count as a percentage (-100 to 100) of total_sentiments; null when total_sentiments is 0 numeric [optional]
#' @field total_sentiments The actor's sentiment verdicts in the model's answers integer [optional]
#' @field positive_count Positive and very positive verdicts integer [optional]
#' @field negative_count Negative and very negative verdicts integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelSentimentCell <- R6::R6Class(
  "AiModelSentimentCell",
  public = list(
    `value` = NULL,
    `total_sentiments` = NULL,
    `positive_count` = NULL,
    `negative_count` = NULL,

    #' @description
    #' Initialize a new AiModelSentimentCell class.
    #'
    #' @param value The actor's net sentiment in the model, positive_count minus negative_count as a percentage (-100 to 100) of total_sentiments; null when total_sentiments is 0
    #' @param total_sentiments The actor's sentiment verdicts in the model's answers
    #' @param positive_count Positive and very positive verdicts
    #' @param negative_count Negative and very negative verdicts
    #' @param ... Other optional arguments.
    initialize = function(`value` = NULL, `total_sentiments` = NULL, `positive_count` = NULL, `negative_count` = NULL, ...) {
      if (!is.null(`value`)) {
        self$`value` <- `value`
      }
      if (!is.null(`total_sentiments`)) {
        if (!(is.numeric(`total_sentiments`) && length(`total_sentiments`) == 1)) {
          stop(paste("Error! Invalid data for `total_sentiments`. Must be an integer:", `total_sentiments`))
        }
        self$`total_sentiments` <- `total_sentiments`
      }
      if (!is.null(`positive_count`)) {
        if (!(is.numeric(`positive_count`) && length(`positive_count`) == 1)) {
          stop(paste("Error! Invalid data for `positive_count`. Must be an integer:", `positive_count`))
        }
        self$`positive_count` <- `positive_count`
      }
      if (!is.null(`negative_count`)) {
        if (!(is.numeric(`negative_count`) && length(`negative_count`) == 1)) {
          stop(paste("Error! Invalid data for `negative_count`. Must be an integer:", `negative_count`))
        }
        self$`negative_count` <- `negative_count`
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
    #' @return AiModelSentimentCell as a base R list.
    #' @examples
    #' # convert array of AiModelSentimentCell (x) to a data frame
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
    #' Convert AiModelSentimentCell to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelSentimentCellObject <- list()
      if (!is.null(self$`value`)) {
        AiModelSentimentCellObject[["value"]] <-
          self$`value`
      }
      if (!is.null(self$`total_sentiments`)) {
        AiModelSentimentCellObject[["total_sentiments"]] <-
          self$`total_sentiments`
      }
      if (!is.null(self$`positive_count`)) {
        AiModelSentimentCellObject[["positive_count"]] <-
          self$`positive_count`
      }
      if (!is.null(self$`negative_count`)) {
        AiModelSentimentCellObject[["negative_count"]] <-
          self$`negative_count`
      }
      return(AiModelSentimentCellObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelSentimentCell
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelSentimentCell
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      if (!is.null(this_object$`total_sentiments`)) {
        self$`total_sentiments` <- this_object$`total_sentiments`
      }
      if (!is.null(this_object$`positive_count`)) {
        self$`positive_count` <- this_object$`positive_count`
      }
      if (!is.null(this_object$`negative_count`)) {
        self$`negative_count` <- this_object$`negative_count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelSentimentCell in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelSentimentCell
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelSentimentCell
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`value` <- this_object$`value`
      self$`total_sentiments` <- this_object$`total_sentiments`
      self$`positive_count` <- this_object$`positive_count`
      self$`negative_count` <- this_object$`negative_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelSentimentCell and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelSentimentCell
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
# AiModelSentimentCell$unlock()
#
## Below is an example to define the print function
# AiModelSentimentCell$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelSentimentCell$lock()

