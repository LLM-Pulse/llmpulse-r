#' Create a new AiModelSentimentRow
#'
#' @description
#' AiModelSentimentRow Class
#'
#' @docType class
#' @title AiModelSentimentRow
#' @description AiModelSentimentRow Class
#' @format An \code{R6Class} generator object
#' @field model AI model key, as /dimensions/models lists it character [optional]
#' @field label Display name of the model character [optional]
#' @field color Hex color the app charts the model with character [optional]
#' @field sentiments_count Brand sentiment verdicts in the model's answers integer [optional]
#' @field positive_count Positive and very positive verdicts integer [optional]
#' @field negative_count Negative and very negative verdicts integer [optional]
#' @field net_sentiment positive_count minus negative_count as a percentage (-100 to 100) of sentiments_count, neutral verdicts counted in the base; null when sentiments_count is 0 numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelSentimentRow <- R6::R6Class(
  "AiModelSentimentRow",
  public = list(
    `model` = NULL,
    `label` = NULL,
    `color` = NULL,
    `sentiments_count` = NULL,
    `positive_count` = NULL,
    `negative_count` = NULL,
    `net_sentiment` = NULL,

    #' @description
    #' Initialize a new AiModelSentimentRow class.
    #'
    #' @param model AI model key, as /dimensions/models lists it
    #' @param label Display name of the model
    #' @param color Hex color the app charts the model with
    #' @param sentiments_count Brand sentiment verdicts in the model's answers
    #' @param positive_count Positive and very positive verdicts
    #' @param negative_count Negative and very negative verdicts
    #' @param net_sentiment positive_count minus negative_count as a percentage (-100 to 100) of sentiments_count, neutral verdicts counted in the base; null when sentiments_count is 0
    #' @param ... Other optional arguments.
    initialize = function(`model` = NULL, `label` = NULL, `color` = NULL, `sentiments_count` = NULL, `positive_count` = NULL, `negative_count` = NULL, `net_sentiment` = NULL, ...) {
      if (!is.null(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`color`)) {
        if (!(is.character(`color`) && length(`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", `color`))
        }
        self$`color` <- `color`
      }
      if (!is.null(`sentiments_count`)) {
        if (!(is.numeric(`sentiments_count`) && length(`sentiments_count`) == 1)) {
          stop(paste("Error! Invalid data for `sentiments_count`. Must be an integer:", `sentiments_count`))
        }
        self$`sentiments_count` <- `sentiments_count`
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
      if (!is.null(`net_sentiment`)) {
        self$`net_sentiment` <- `net_sentiment`
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
    #' @return AiModelSentimentRow as a base R list.
    #' @examples
    #' # convert array of AiModelSentimentRow (x) to a data frame
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
    #' Convert AiModelSentimentRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelSentimentRowObject <- list()
      if (!is.null(self$`model`)) {
        AiModelSentimentRowObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`label`)) {
        AiModelSentimentRowObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`color`)) {
        AiModelSentimentRowObject[["color"]] <-
          self$`color`
      }
      if (!is.null(self$`sentiments_count`)) {
        AiModelSentimentRowObject[["sentiments_count"]] <-
          self$`sentiments_count`
      }
      if (!is.null(self$`positive_count`)) {
        AiModelSentimentRowObject[["positive_count"]] <-
          self$`positive_count`
      }
      if (!is.null(self$`negative_count`)) {
        AiModelSentimentRowObject[["negative_count"]] <-
          self$`negative_count`
      }
      if (!is.null(self$`net_sentiment`)) {
        AiModelSentimentRowObject[["net_sentiment"]] <-
          self$`net_sentiment`
      }
      return(AiModelSentimentRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelSentimentRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelSentimentRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`color`)) {
        self$`color` <- this_object$`color`
      }
      if (!is.null(this_object$`sentiments_count`)) {
        self$`sentiments_count` <- this_object$`sentiments_count`
      }
      if (!is.null(this_object$`positive_count`)) {
        self$`positive_count` <- this_object$`positive_count`
      }
      if (!is.null(this_object$`negative_count`)) {
        self$`negative_count` <- this_object$`negative_count`
      }
      if (!is.null(this_object$`net_sentiment`)) {
        self$`net_sentiment` <- this_object$`net_sentiment`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelSentimentRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelSentimentRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelSentimentRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`model` <- this_object$`model`
      self$`label` <- this_object$`label`
      self$`color` <- this_object$`color`
      self$`sentiments_count` <- this_object$`sentiments_count`
      self$`positive_count` <- this_object$`positive_count`
      self$`negative_count` <- this_object$`negative_count`
      self$`net_sentiment` <- this_object$`net_sentiment`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelSentimentRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelSentimentRow
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
# AiModelSentimentRow$unlock()
#
## Below is an example to define the print function
# AiModelSentimentRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelSentimentRow$lock()

