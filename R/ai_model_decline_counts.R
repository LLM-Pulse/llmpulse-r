#' Create a new AiModelDeclineCounts
#'
#' @description
#' Answers and declined answers, by reason. A rate is a percentage of the answers, null with no answer behind it.
#'
#' @docType class
#' @title AiModelDeclineCounts
#' @description AiModelDeclineCounts Class
#' @format An \code{R6Class} generator object
#' @field answers Finished runs of the model, declined ones included integer [optional]
#' @field declined Answers the model declined integer [optional]
#' @field decline_rate  numeric [optional]
#' @field safety_filter Answers declined by the model's own safety filters integer [optional]
#' @field safety_filter_rate  numeric [optional]
#' @field topic_refusal Answers that declined the topic itself, such as tobacco, gambling or alcohol integer [optional]
#' @field topic_refusal_rate  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelDeclineCounts <- R6::R6Class(
  "AiModelDeclineCounts",
  public = list(
    `answers` = NULL,
    `declined` = NULL,
    `decline_rate` = NULL,
    `safety_filter` = NULL,
    `safety_filter_rate` = NULL,
    `topic_refusal` = NULL,
    `topic_refusal_rate` = NULL,

    #' @description
    #' Initialize a new AiModelDeclineCounts class.
    #'
    #' @param answers Finished runs of the model, declined ones included
    #' @param declined Answers the model declined
    #' @param decline_rate decline_rate
    #' @param safety_filter Answers declined by the model's own safety filters
    #' @param safety_filter_rate safety_filter_rate
    #' @param topic_refusal Answers that declined the topic itself, such as tobacco, gambling or alcohol
    #' @param topic_refusal_rate topic_refusal_rate
    #' @param ... Other optional arguments.
    initialize = function(`answers` = NULL, `declined` = NULL, `decline_rate` = NULL, `safety_filter` = NULL, `safety_filter_rate` = NULL, `topic_refusal` = NULL, `topic_refusal_rate` = NULL, ...) {
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
    #' @return AiModelDeclineCounts as a base R list.
    #' @examples
    #' # convert array of AiModelDeclineCounts (x) to a data frame
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
    #' Convert AiModelDeclineCounts to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelDeclineCountsObject <- list()
      if (!is.null(self$`answers`)) {
        AiModelDeclineCountsObject[["answers"]] <-
          self$`answers`
      }
      if (!is.null(self$`declined`)) {
        AiModelDeclineCountsObject[["declined"]] <-
          self$`declined`
      }
      if (!is.null(self$`decline_rate`)) {
        AiModelDeclineCountsObject[["decline_rate"]] <-
          self$`decline_rate`
      }
      if (!is.null(self$`safety_filter`)) {
        AiModelDeclineCountsObject[["safety_filter"]] <-
          self$`safety_filter`
      }
      if (!is.null(self$`safety_filter_rate`)) {
        AiModelDeclineCountsObject[["safety_filter_rate"]] <-
          self$`safety_filter_rate`
      }
      if (!is.null(self$`topic_refusal`)) {
        AiModelDeclineCountsObject[["topic_refusal"]] <-
          self$`topic_refusal`
      }
      if (!is.null(self$`topic_refusal_rate`)) {
        AiModelDeclineCountsObject[["topic_refusal_rate"]] <-
          self$`topic_refusal_rate`
      }
      return(AiModelDeclineCountsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelDeclineCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelDeclineCounts
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelDeclineCounts in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelDeclineCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelDeclineCounts
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`answers` <- this_object$`answers`
      self$`declined` <- this_object$`declined`
      self$`decline_rate` <- this_object$`decline_rate`
      self$`safety_filter` <- this_object$`safety_filter`
      self$`safety_filter_rate` <- this_object$`safety_filter_rate`
      self$`topic_refusal` <- this_object$`topic_refusal`
      self$`topic_refusal_rate` <- this_object$`topic_refusal_rate`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelDeclineCounts and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelDeclineCounts
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
# AiModelDeclineCounts$unlock()
#
## Below is an example to define the print function
# AiModelDeclineCounts$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelDeclineCounts$lock()

