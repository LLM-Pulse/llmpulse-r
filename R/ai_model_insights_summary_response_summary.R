#' Create a new AiModelInsightsSummaryResponseSummary
#'
#' @description
#' AiModelInsightsSummaryResponseSummary Class
#'
#' @docType class
#' @title AiModelInsightsSummaryResponseSummary
#' @description AiModelInsightsSummaryResponseSummary Class
#' @format An \code{R6Class} generator object
#' @field mentions_by_model  \link{AiModelInsightsSummaryResponseSummaryMentionsByModel} [optional]
#' @field citations_by_model  \link{AiModelInsightsSummaryResponseSummaryCitationsByModel} [optional]
#' @field brand_net_sentiment_by_model  \link{AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel} [optional]
#' @field weighted_visibility_by_model  \link{AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel} [optional]
#' @field mentions_market_share  \link{AiModelRateMatrix} [optional]
#' @field citations_market_share  \link{AiModelRateMatrix} [optional]
#' @field sentiment_market_share  \link{AiModelInsightsSummaryResponseSummarySentimentMarketShare} [optional]
#' @field weighted_visibility_market_share  \link{AiModelInsightsSummaryResponseSummaryWeightedVisibilityMarketShare} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelInsightsSummaryResponseSummary <- R6::R6Class(
  "AiModelInsightsSummaryResponseSummary",
  public = list(
    `mentions_by_model` = NULL,
    `citations_by_model` = NULL,
    `brand_net_sentiment_by_model` = NULL,
    `weighted_visibility_by_model` = NULL,
    `mentions_market_share` = NULL,
    `citations_market_share` = NULL,
    `sentiment_market_share` = NULL,
    `weighted_visibility_market_share` = NULL,

    #' @description
    #' Initialize a new AiModelInsightsSummaryResponseSummary class.
    #'
    #' @param mentions_by_model mentions_by_model
    #' @param citations_by_model citations_by_model
    #' @param brand_net_sentiment_by_model brand_net_sentiment_by_model
    #' @param weighted_visibility_by_model weighted_visibility_by_model
    #' @param mentions_market_share mentions_market_share
    #' @param citations_market_share citations_market_share
    #' @param sentiment_market_share sentiment_market_share
    #' @param weighted_visibility_market_share weighted_visibility_market_share
    #' @param ... Other optional arguments.
    initialize = function(`mentions_by_model` = NULL, `citations_by_model` = NULL, `brand_net_sentiment_by_model` = NULL, `weighted_visibility_by_model` = NULL, `mentions_market_share` = NULL, `citations_market_share` = NULL, `sentiment_market_share` = NULL, `weighted_visibility_market_share` = NULL, ...) {
      if (!is.null(`mentions_by_model`)) {
        stopifnot(R6::is.R6(`mentions_by_model`))
        self$`mentions_by_model` <- `mentions_by_model`
      }
      if (!is.null(`citations_by_model`)) {
        stopifnot(R6::is.R6(`citations_by_model`))
        self$`citations_by_model` <- `citations_by_model`
      }
      if (!is.null(`brand_net_sentiment_by_model`)) {
        stopifnot(R6::is.R6(`brand_net_sentiment_by_model`))
        self$`brand_net_sentiment_by_model` <- `brand_net_sentiment_by_model`
      }
      if (!is.null(`weighted_visibility_by_model`)) {
        stopifnot(R6::is.R6(`weighted_visibility_by_model`))
        self$`weighted_visibility_by_model` <- `weighted_visibility_by_model`
      }
      if (!is.null(`mentions_market_share`)) {
        stopifnot(R6::is.R6(`mentions_market_share`))
        self$`mentions_market_share` <- `mentions_market_share`
      }
      if (!is.null(`citations_market_share`)) {
        stopifnot(R6::is.R6(`citations_market_share`))
        self$`citations_market_share` <- `citations_market_share`
      }
      if (!is.null(`sentiment_market_share`)) {
        stopifnot(R6::is.R6(`sentiment_market_share`))
        self$`sentiment_market_share` <- `sentiment_market_share`
      }
      if (!is.null(`weighted_visibility_market_share`)) {
        stopifnot(R6::is.R6(`weighted_visibility_market_share`))
        self$`weighted_visibility_market_share` <- `weighted_visibility_market_share`
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
    #' @return AiModelInsightsSummaryResponseSummary as a base R list.
    #' @examples
    #' # convert array of AiModelInsightsSummaryResponseSummary (x) to a data frame
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
    #' Convert AiModelInsightsSummaryResponseSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelInsightsSummaryResponseSummaryObject <- list()
      if (!is.null(self$`mentions_by_model`)) {
        AiModelInsightsSummaryResponseSummaryObject[["mentions_by_model"]] <-
          self$extractSimpleType(self$`mentions_by_model`)
      }
      if (!is.null(self$`citations_by_model`)) {
        AiModelInsightsSummaryResponseSummaryObject[["citations_by_model"]] <-
          self$extractSimpleType(self$`citations_by_model`)
      }
      if (!is.null(self$`brand_net_sentiment_by_model`)) {
        AiModelInsightsSummaryResponseSummaryObject[["brand_net_sentiment_by_model"]] <-
          self$extractSimpleType(self$`brand_net_sentiment_by_model`)
      }
      if (!is.null(self$`weighted_visibility_by_model`)) {
        AiModelInsightsSummaryResponseSummaryObject[["weighted_visibility_by_model"]] <-
          self$extractSimpleType(self$`weighted_visibility_by_model`)
      }
      if (!is.null(self$`mentions_market_share`)) {
        AiModelInsightsSummaryResponseSummaryObject[["mentions_market_share"]] <-
          self$extractSimpleType(self$`mentions_market_share`)
      }
      if (!is.null(self$`citations_market_share`)) {
        AiModelInsightsSummaryResponseSummaryObject[["citations_market_share"]] <-
          self$extractSimpleType(self$`citations_market_share`)
      }
      if (!is.null(self$`sentiment_market_share`)) {
        AiModelInsightsSummaryResponseSummaryObject[["sentiment_market_share"]] <-
          self$extractSimpleType(self$`sentiment_market_share`)
      }
      if (!is.null(self$`weighted_visibility_market_share`)) {
        AiModelInsightsSummaryResponseSummaryObject[["weighted_visibility_market_share"]] <-
          self$extractSimpleType(self$`weighted_visibility_market_share`)
      }
      return(AiModelInsightsSummaryResponseSummaryObject)
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
    #' Deserialize JSON string into an instance of AiModelInsightsSummaryResponseSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsSummaryResponseSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`mentions_by_model`)) {
        `mentions_by_model_object` <- AiModelInsightsSummaryResponseSummaryMentionsByModel$new()
        `mentions_by_model_object`$fromJSON(jsonlite::toJSON(this_object$`mentions_by_model`, auto_unbox = TRUE, digits = NA))
        self$`mentions_by_model` <- `mentions_by_model_object`
      }
      if (!is.null(this_object$`citations_by_model`)) {
        `citations_by_model_object` <- AiModelInsightsSummaryResponseSummaryCitationsByModel$new()
        `citations_by_model_object`$fromJSON(jsonlite::toJSON(this_object$`citations_by_model`, auto_unbox = TRUE, digits = NA))
        self$`citations_by_model` <- `citations_by_model_object`
      }
      if (!is.null(this_object$`brand_net_sentiment_by_model`)) {
        `brand_net_sentiment_by_model_object` <- AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel$new()
        `brand_net_sentiment_by_model_object`$fromJSON(jsonlite::toJSON(this_object$`brand_net_sentiment_by_model`, auto_unbox = TRUE, digits = NA))
        self$`brand_net_sentiment_by_model` <- `brand_net_sentiment_by_model_object`
      }
      if (!is.null(this_object$`weighted_visibility_by_model`)) {
        `weighted_visibility_by_model_object` <- AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel$new()
        `weighted_visibility_by_model_object`$fromJSON(jsonlite::toJSON(this_object$`weighted_visibility_by_model`, auto_unbox = TRUE, digits = NA))
        self$`weighted_visibility_by_model` <- `weighted_visibility_by_model_object`
      }
      if (!is.null(this_object$`mentions_market_share`)) {
        `mentions_market_share_object` <- AiModelRateMatrix$new()
        `mentions_market_share_object`$fromJSON(jsonlite::toJSON(this_object$`mentions_market_share`, auto_unbox = TRUE, digits = NA))
        self$`mentions_market_share` <- `mentions_market_share_object`
      }
      if (!is.null(this_object$`citations_market_share`)) {
        `citations_market_share_object` <- AiModelRateMatrix$new()
        `citations_market_share_object`$fromJSON(jsonlite::toJSON(this_object$`citations_market_share`, auto_unbox = TRUE, digits = NA))
        self$`citations_market_share` <- `citations_market_share_object`
      }
      if (!is.null(this_object$`sentiment_market_share`)) {
        `sentiment_market_share_object` <- AiModelInsightsSummaryResponseSummarySentimentMarketShare$new()
        `sentiment_market_share_object`$fromJSON(jsonlite::toJSON(this_object$`sentiment_market_share`, auto_unbox = TRUE, digits = NA))
        self$`sentiment_market_share` <- `sentiment_market_share_object`
      }
      if (!is.null(this_object$`weighted_visibility_market_share`)) {
        `weighted_visibility_market_share_object` <- AiModelInsightsSummaryResponseSummaryWeightedVisibilityMarketShare$new()
        `weighted_visibility_market_share_object`$fromJSON(jsonlite::toJSON(this_object$`weighted_visibility_market_share`, auto_unbox = TRUE, digits = NA))
        self$`weighted_visibility_market_share` <- `weighted_visibility_market_share_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelInsightsSummaryResponseSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelInsightsSummaryResponseSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelInsightsSummaryResponseSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`mentions_by_model` <- AiModelInsightsSummaryResponseSummaryMentionsByModel$new()$fromJSON(jsonlite::toJSON(this_object$`mentions_by_model`, auto_unbox = TRUE, digits = NA))
      self$`citations_by_model` <- AiModelInsightsSummaryResponseSummaryCitationsByModel$new()$fromJSON(jsonlite::toJSON(this_object$`citations_by_model`, auto_unbox = TRUE, digits = NA))
      self$`brand_net_sentiment_by_model` <- AiModelInsightsSummaryResponseSummaryBrandNetSentimentByModel$new()$fromJSON(jsonlite::toJSON(this_object$`brand_net_sentiment_by_model`, auto_unbox = TRUE, digits = NA))
      self$`weighted_visibility_by_model` <- AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel$new()$fromJSON(jsonlite::toJSON(this_object$`weighted_visibility_by_model`, auto_unbox = TRUE, digits = NA))
      self$`mentions_market_share` <- AiModelRateMatrix$new()$fromJSON(jsonlite::toJSON(this_object$`mentions_market_share`, auto_unbox = TRUE, digits = NA))
      self$`citations_market_share` <- AiModelRateMatrix$new()$fromJSON(jsonlite::toJSON(this_object$`citations_market_share`, auto_unbox = TRUE, digits = NA))
      self$`sentiment_market_share` <- AiModelInsightsSummaryResponseSummarySentimentMarketShare$new()$fromJSON(jsonlite::toJSON(this_object$`sentiment_market_share`, auto_unbox = TRUE, digits = NA))
      self$`weighted_visibility_market_share` <- AiModelInsightsSummaryResponseSummaryWeightedVisibilityMarketShare$new()$fromJSON(jsonlite::toJSON(this_object$`weighted_visibility_market_share`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelInsightsSummaryResponseSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelInsightsSummaryResponseSummary
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
# AiModelInsightsSummaryResponseSummary$unlock()
#
## Below is an example to define the print function
# AiModelInsightsSummaryResponseSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelInsightsSummaryResponseSummary$lock()

