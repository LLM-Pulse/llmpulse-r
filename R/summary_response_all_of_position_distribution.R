#' Create a new SummaryResponseAllOfPositionDistribution
#'
#' @description
#' SummaryResponseAllOfPositionDistribution Class
#'
#' @docType class
#' @title SummaryResponseAllOfPositionDistribution
#' @description SummaryResponseAllOfPositionDistribution Class
#' @format An \code{R6Class} generator object
#' @field position_1_count  integer [optional]
#' @field position_2_count  integer [optional]
#' @field position_3_plus_count  integer [optional]
#' @field total_mentions  integer [optional]
#' @field percentages  object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SummaryResponseAllOfPositionDistribution <- R6::R6Class(
  "SummaryResponseAllOfPositionDistribution",
  public = list(
    `position_1_count` = NULL,
    `position_2_count` = NULL,
    `position_3_plus_count` = NULL,
    `total_mentions` = NULL,
    `percentages` = NULL,

    #' @description
    #' Initialize a new SummaryResponseAllOfPositionDistribution class.
    #'
    #' @param position_1_count position_1_count
    #' @param position_2_count position_2_count
    #' @param position_3_plus_count position_3_plus_count
    #' @param total_mentions total_mentions
    #' @param percentages percentages
    #' @param ... Other optional arguments.
    initialize = function(`position_1_count` = NULL, `position_2_count` = NULL, `position_3_plus_count` = NULL, `total_mentions` = NULL, `percentages` = NULL, ...) {
      if (!is.null(`position_1_count`)) {
        if (!(is.numeric(`position_1_count`) && length(`position_1_count`) == 1)) {
          stop(paste("Error! Invalid data for `position_1_count`. Must be an integer:", `position_1_count`))
        }
        self$`position_1_count` <- `position_1_count`
      }
      if (!is.null(`position_2_count`)) {
        if (!(is.numeric(`position_2_count`) && length(`position_2_count`) == 1)) {
          stop(paste("Error! Invalid data for `position_2_count`. Must be an integer:", `position_2_count`))
        }
        self$`position_2_count` <- `position_2_count`
      }
      if (!is.null(`position_3_plus_count`)) {
        if (!(is.numeric(`position_3_plus_count`) && length(`position_3_plus_count`) == 1)) {
          stop(paste("Error! Invalid data for `position_3_plus_count`. Must be an integer:", `position_3_plus_count`))
        }
        self$`position_3_plus_count` <- `position_3_plus_count`
      }
      if (!is.null(`total_mentions`)) {
        if (!(is.numeric(`total_mentions`) && length(`total_mentions`) == 1)) {
          stop(paste("Error! Invalid data for `total_mentions`. Must be an integer:", `total_mentions`))
        }
        self$`total_mentions` <- `total_mentions`
      }
      if (!is.null(`percentages`)) {
        self$`percentages` <- `percentages`
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
    #' @return SummaryResponseAllOfPositionDistribution as a base R list.
    #' @examples
    #' # convert array of SummaryResponseAllOfPositionDistribution (x) to a data frame
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
    #' Convert SummaryResponseAllOfPositionDistribution to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SummaryResponseAllOfPositionDistributionObject <- list()
      if (!is.null(self$`position_1_count`)) {
        SummaryResponseAllOfPositionDistributionObject[["position_1_count"]] <-
          self$`position_1_count`
      }
      if (!is.null(self$`position_2_count`)) {
        SummaryResponseAllOfPositionDistributionObject[["position_2_count"]] <-
          self$`position_2_count`
      }
      if (!is.null(self$`position_3_plus_count`)) {
        SummaryResponseAllOfPositionDistributionObject[["position_3_plus_count"]] <-
          self$`position_3_plus_count`
      }
      if (!is.null(self$`total_mentions`)) {
        SummaryResponseAllOfPositionDistributionObject[["total_mentions"]] <-
          self$`total_mentions`
      }
      if (!is.null(self$`percentages`)) {
        SummaryResponseAllOfPositionDistributionObject[["percentages"]] <-
          self$`percentages`
      }
      return(SummaryResponseAllOfPositionDistributionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SummaryResponseAllOfPositionDistribution
    #'
    #' @param input_json the JSON input
    #' @return the instance of SummaryResponseAllOfPositionDistribution
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`position_1_count`)) {
        self$`position_1_count` <- this_object$`position_1_count`
      }
      if (!is.null(this_object$`position_2_count`)) {
        self$`position_2_count` <- this_object$`position_2_count`
      }
      if (!is.null(this_object$`position_3_plus_count`)) {
        self$`position_3_plus_count` <- this_object$`position_3_plus_count`
      }
      if (!is.null(this_object$`total_mentions`)) {
        self$`total_mentions` <- this_object$`total_mentions`
      }
      if (!is.null(this_object$`percentages`)) {
        self$`percentages` <- this_object$`percentages`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SummaryResponseAllOfPositionDistribution in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SummaryResponseAllOfPositionDistribution
    #'
    #' @param input_json the JSON input
    #' @return the instance of SummaryResponseAllOfPositionDistribution
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`position_1_count` <- this_object$`position_1_count`
      self$`position_2_count` <- this_object$`position_2_count`
      self$`position_3_plus_count` <- this_object$`position_3_plus_count`
      self$`total_mentions` <- this_object$`total_mentions`
      self$`percentages` <- this_object$`percentages`
      self
    },

    #' @description
    #' Validate JSON input with respect to SummaryResponseAllOfPositionDistribution and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SummaryResponseAllOfPositionDistribution
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
# SummaryResponseAllOfPositionDistribution$unlock()
#
## Below is an example to define the print function
# SummaryResponseAllOfPositionDistribution$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SummaryResponseAllOfPositionDistribution$lock()

