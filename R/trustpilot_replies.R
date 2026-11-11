#' Create a new TrustpilotReplies
#'
#' @description
#' provider=trustpilot only. How the brand answers its Trustpilot reviews, on the profile of the project's own domain, among the reviews LLM Pulse holds for it (the newest ones from each monthly read, not every review on Trustpilot), whatever the date window. Every field is null until the profile has been read
#'
#' @docType class
#' @title TrustpilotReplies
#' @description TrustpilotReplies Class
#' @format An \code{R6Class} generator object
#' @field reviews_held Reviews held for the profile integer [optional]
#' @field replied_count Reviews held that the brand replied to integer [optional]
#' @field not_replied_count Reviews held that the brand has not replied to integer [optional]
#' @field reply_rate_pct replied_count over reviews_held, on a 0-100 scale; null when no review is held numeric [optional]
#' @field median_reply_hours Median hours from publication to reply over the replied reviews held that carry both dates (a reply dated before its review is left out); null when there is none numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TrustpilotReplies <- R6::R6Class(
  "TrustpilotReplies",
  public = list(
    `reviews_held` = NULL,
    `replied_count` = NULL,
    `not_replied_count` = NULL,
    `reply_rate_pct` = NULL,
    `median_reply_hours` = NULL,

    #' @description
    #' Initialize a new TrustpilotReplies class.
    #'
    #' @param reviews_held Reviews held for the profile
    #' @param replied_count Reviews held that the brand replied to
    #' @param not_replied_count Reviews held that the brand has not replied to
    #' @param reply_rate_pct replied_count over reviews_held, on a 0-100 scale; null when no review is held
    #' @param median_reply_hours Median hours from publication to reply over the replied reviews held that carry both dates (a reply dated before its review is left out); null when there is none
    #' @param ... Other optional arguments.
    initialize = function(`reviews_held` = NULL, `replied_count` = NULL, `not_replied_count` = NULL, `reply_rate_pct` = NULL, `median_reply_hours` = NULL, ...) {
      if (!is.null(`reviews_held`)) {
        if (!(is.numeric(`reviews_held`) && length(`reviews_held`) == 1)) {
          stop(paste("Error! Invalid data for `reviews_held`. Must be an integer:", `reviews_held`))
        }
        self$`reviews_held` <- `reviews_held`
      }
      if (!is.null(`replied_count`)) {
        if (!(is.numeric(`replied_count`) && length(`replied_count`) == 1)) {
          stop(paste("Error! Invalid data for `replied_count`. Must be an integer:", `replied_count`))
        }
        self$`replied_count` <- `replied_count`
      }
      if (!is.null(`not_replied_count`)) {
        if (!(is.numeric(`not_replied_count`) && length(`not_replied_count`) == 1)) {
          stop(paste("Error! Invalid data for `not_replied_count`. Must be an integer:", `not_replied_count`))
        }
        self$`not_replied_count` <- `not_replied_count`
      }
      if (!is.null(`reply_rate_pct`)) {
        self$`reply_rate_pct` <- `reply_rate_pct`
      }
      if (!is.null(`median_reply_hours`)) {
        self$`median_reply_hours` <- `median_reply_hours`
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
    #' @return TrustpilotReplies as a base R list.
    #' @examples
    #' # convert array of TrustpilotReplies (x) to a data frame
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
    #' Convert TrustpilotReplies to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TrustpilotRepliesObject <- list()
      if (!is.null(self$`reviews_held`)) {
        TrustpilotRepliesObject[["reviews_held"]] <-
          self$`reviews_held`
      }
      if (!is.null(self$`replied_count`)) {
        TrustpilotRepliesObject[["replied_count"]] <-
          self$`replied_count`
      }
      if (!is.null(self$`not_replied_count`)) {
        TrustpilotRepliesObject[["not_replied_count"]] <-
          self$`not_replied_count`
      }
      if (!is.null(self$`reply_rate_pct`)) {
        TrustpilotRepliesObject[["reply_rate_pct"]] <-
          self$`reply_rate_pct`
      }
      if (!is.null(self$`median_reply_hours`)) {
        TrustpilotRepliesObject[["median_reply_hours"]] <-
          self$`median_reply_hours`
      }
      return(TrustpilotRepliesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TrustpilotReplies
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrustpilotReplies
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`reviews_held`)) {
        self$`reviews_held` <- this_object$`reviews_held`
      }
      if (!is.null(this_object$`replied_count`)) {
        self$`replied_count` <- this_object$`replied_count`
      }
      if (!is.null(this_object$`not_replied_count`)) {
        self$`not_replied_count` <- this_object$`not_replied_count`
      }
      if (!is.null(this_object$`reply_rate_pct`)) {
        self$`reply_rate_pct` <- this_object$`reply_rate_pct`
      }
      if (!is.null(this_object$`median_reply_hours`)) {
        self$`median_reply_hours` <- this_object$`median_reply_hours`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TrustpilotReplies in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TrustpilotReplies
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrustpilotReplies
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`reviews_held` <- this_object$`reviews_held`
      self$`replied_count` <- this_object$`replied_count`
      self$`not_replied_count` <- this_object$`not_replied_count`
      self$`reply_rate_pct` <- this_object$`reply_rate_pct`
      self$`median_reply_hours` <- this_object$`median_reply_hours`
      self
    },

    #' @description
    #' Validate JSON input with respect to TrustpilotReplies and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TrustpilotReplies
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
# TrustpilotReplies$unlock()
#
## Below is an example to define the print function
# TrustpilotReplies$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TrustpilotReplies$lock()

