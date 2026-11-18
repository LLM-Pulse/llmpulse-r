#' Create a new AiModelDeclinedAnswersResponseChartInner
#'
#' @description
#' AiModelDeclinedAnswersResponseChartInner Class
#'
#' @docType class
#' @title AiModelDeclinedAnswersResponseChartInner
#' @description AiModelDeclinedAnswersResponseChartInner Class
#' @format An \code{R6Class} generator object
#' @field answers Finished runs of the model, declined ones included integer [optional]
#' @field declined Answers the model declined integer [optional]
#' @field decline_rate  numeric [optional]
#' @field safety_filter Answers declined by the model's own safety filters integer [optional]
#' @field safety_filter_rate  numeric [optional]
#' @field topic_refusal Answers that declined the topic itself, such as tobacco, gambling or alcohol integer [optional]
#' @field topic_refusal_rate  numeric [optional]
#' @field date First day of the tracking period character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelDeclinedAnswersResponseChartInner <- R6::R6Class(
  "AiModelDeclinedAnswersResponseChartInner",
  public = list(
    `answers` = NULL,
    `declined` = NULL,
    `decline_rate` = NULL,
    `safety_filter` = NULL,
    `safety_filter_rate` = NULL,
    `topic_refusal` = NULL,
    `topic_refusal_rate` = NULL,
    `date` = NULL,

    #' @description
    #' Initialize a new AiModelDeclinedAnswersResponseChartInner class.
    #'
    #' @param date First day of the tracking period
    #' @param answers Finished runs of the model, declined ones included
    #' @param declined Answers the model declined
    #' @param decline_rate decline_rate
    #' @param safety_filter Answers declined by the model's own safety filters
    #' @param safety_filter_rate safety_filter_rate
    #' @param topic_refusal Answers that declined the topic itself, such as tobacco, gambling or alcohol
    #' @param topic_refusal_rate topic_refusal_rate
    #' @param ... Other optional arguments.
    initialize = function(`date`, `answers` = NULL, `declined` = NULL, `decline_rate` = NULL, `safety_filter` = NULL, `safety_filter_rate` = NULL, `topic_refusal` = NULL, `topic_refusal_rate` = NULL, ...) {
      if (!missing(`date`)) {
        if (!(is.character(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
      }
      if (!is.null(`answers`)) {
        if (!(is.numeric(`answers`) && length(`answers`) == 1)) {
          stop(paste("Error! Invalid data for `answers`. Must be an integer:", `answers`))
        }
        self$`answers` <- `answers`
      }
      if (!is.null(`declined`)) {
        if (!(is.numeric(`declined`) && length(`declined`) == 1)) {
          stop(paste("Error! Invalid data for `declined`. Must be an integer:", `declined`))
        }
        self$`declined` <- `declined`
      }
      if (!is.null(`decline_rate`)) {
        self$`decline_rate` <- `decline_rate`
      }
      if (!is.null(`safety_filter`)) {
        if (!(is.numeric(`safety_filter`) && length(`safety_filter`) == 1)) {
          stop(paste("Error! Invalid data for `safety_filter`. Must be an integer:", `safety_filter`))
        }
        self$`safety_filter` <- `safety_filter`
      }
      if (!is.null(`safety_filter_rate`)) {
        self$`safety_filter_rate` <- `safety_filter_rate`
      }
      if (!is.null(`topic_refusal`)) {
        if (!(is.numeric(`topic_refusal`) && length(`topic_refusal`) == 1)) {
          stop(paste("Error! Invalid data for `topic_refusal`. Must be an integer:", `topic_refusal`))
        }
        self$`topic_refusal` <- `topic_refusal`
      }
      if (!is.null(`topic_refusal_rate`)) {
        self$`topic_refusal_rate` <- `topic_refusal_rate`
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
    #' @return AiModelDeclinedAnswersResponseChartInner as a base R list.
    #' @examples
    #' # convert array of AiModelDeclinedAnswersResponseChartInner (x) to a data frame
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
    #' Convert AiModelDeclinedAnswersResponseChartInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelDeclinedAnswersResponseChartInnerObject <- list()
      if (!is.null(self$`answers`)) {
        AiModelDeclinedAnswersResponseChartInnerObject[["answers"]] <-
          self$`answers`
      }
      if (!is.null(self$`declined`)) {
        AiModelDeclinedAnswersResponseChartInnerObject[["declined"]] <-
          self$`declined`
      }
      if (!is.null(self$`decline_rate`)) {
        AiModelDeclinedAnswersResponseChartInnerObject[["decline_rate"]] <-
          self$`decline_rate`
      }
      if (!is.null(self$`safety_filter`)) {
        AiModelDeclinedAnswersResponseChartInnerObject[["safety_filter"]] <-
          self$`safety_filter`
      }
      if (!is.null(self$`safety_filter_rate`)) {
        AiModelDeclinedAnswersResponseChartInnerObject[["safety_filter_rate"]] <-
          self$`safety_filter_rate`
      }
      if (!is.null(self$`topic_refusal`)) {
        AiModelDeclinedAnswersResponseChartInnerObject[["topic_refusal"]] <-
          self$`topic_refusal`
      }
      if (!is.null(self$`topic_refusal_rate`)) {
        AiModelDeclinedAnswersResponseChartInnerObject[["topic_refusal_rate"]] <-
          self$`topic_refusal_rate`
      }
      if (!is.null(self$`date`)) {
        AiModelDeclinedAnswersResponseChartInnerObject[["date"]] <-
          self$`date`
      }
      return(AiModelDeclinedAnswersResponseChartInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelDeclinedAnswersResponseChartInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelDeclinedAnswersResponseChartInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`answers`)) {
        self$`answers` <- this_object$`answers`
      }
      if (!is.null(this_object$`declined`)) {
        self$`declined` <- this_object$`declined`
      }
      if (!is.null(this_object$`decline_rate`)) {
        self$`decline_rate` <- this_object$`decline_rate`
      }
      if (!is.null(this_object$`safety_filter`)) {
        self$`safety_filter` <- this_object$`safety_filter`
      }
      if (!is.null(this_object$`safety_filter_rate`)) {
        self$`safety_filter_rate` <- this_object$`safety_filter_rate`
      }
      if (!is.null(this_object$`topic_refusal`)) {
        self$`topic_refusal` <- this_object$`topic_refusal`
      }
      if (!is.null(this_object$`topic_refusal_rate`)) {
        self$`topic_refusal_rate` <- this_object$`topic_refusal_rate`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelDeclinedAnswersResponseChartInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelDeclinedAnswersResponseChartInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelDeclinedAnswersResponseChartInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`answers` <- this_object$`answers`
      self$`declined` <- this_object$`declined`
      self$`decline_rate` <- this_object$`decline_rate`
      self$`safety_filter` <- this_object$`safety_filter`
      self$`safety_filter_rate` <- this_object$`safety_filter_rate`
      self$`topic_refusal` <- this_object$`topic_refusal`
      self$`topic_refusal_rate` <- this_object$`topic_refusal_rate`
      self$`date` <- this_object$`date`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelDeclinedAnswersResponseChartInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `date`
      if (!is.null(input_json$`date`)) {
        if (!(is.character(input_json$`date`) && length(input_json$`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", input_json$`date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelDeclinedAnswersResponseChartInner: the required field `date` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelDeclinedAnswersResponseChartInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `date` is null
      if (is.null(self$`date`)) {
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
      # check if the required `date` is null
      if (is.null(self$`date`)) {
        invalid_fields["date"] <- "Non-nullable required field `date` cannot be null."
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
# AiModelDeclinedAnswersResponseChartInner$unlock()
#
## Below is an example to define the print function
# AiModelDeclinedAnswersResponseChartInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelDeclinedAnswersResponseChartInner$lock()

