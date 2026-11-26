#' Create a new AiOverviewResultCounts
#'
#' @description
#' AiOverviewResultCounts Class
#'
#' @docType class
#' @title AiOverviewResultCounts
#' @description AiOverviewResultCounts Class
#' @format An \code{R6Class} generator object
#' @field total_responses AI Overview runs in the window integer
#' @field responses_with_results Runs that returned an AI Overview integer
#' @field result_rate  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiOverviewResultCounts <- R6::R6Class(
  "AiOverviewResultCounts",
  public = list(
    `total_responses` = NULL,
    `responses_with_results` = NULL,
    `result_rate` = NULL,

    #' @description
    #' Initialize a new AiOverviewResultCounts class.
    #'
    #' @param total_responses AI Overview runs in the window
    #' @param responses_with_results Runs that returned an AI Overview
    #' @param result_rate result_rate
    #' @param ... Other optional arguments.
    initialize = function(`total_responses`, `responses_with_results`, `result_rate`, ...) {
      if (!missing(`total_responses`)) {
        if (!(is.numeric(`total_responses`) && length(`total_responses`) == 1)) {
          stop(paste("Error! Invalid data for `total_responses`. Must be an integer:", `total_responses`))
        }
        self$`total_responses` <- `total_responses`
      }
      if (!missing(`responses_with_results`)) {
        if (!(is.numeric(`responses_with_results`) && length(`responses_with_results`) == 1)) {
          stop(paste("Error! Invalid data for `responses_with_results`. Must be an integer:", `responses_with_results`))
        }
        self$`responses_with_results` <- `responses_with_results`
      }
      if (!missing(`result_rate`)) {
        self$`result_rate` <- `result_rate`
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
    #' @return AiOverviewResultCounts as a base R list.
    #' @examples
    #' # convert array of AiOverviewResultCounts (x) to a data frame
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
    #' Convert AiOverviewResultCounts to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiOverviewResultCountsObject <- list()
      if (!is.null(self$`total_responses`)) {
        AiOverviewResultCountsObject[["total_responses"]] <-
          self$`total_responses`
      }
      if (!is.null(self$`responses_with_results`)) {
        AiOverviewResultCountsObject[["responses_with_results"]] <-
          self$`responses_with_results`
      }
      if (!is.null(self$`result_rate`)) {
        AiOverviewResultCountsObject[["result_rate"]] <-
          self$`result_rate`
      }
      return(AiOverviewResultCountsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiOverviewResultCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiOverviewResultCounts
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`total_responses`)) {
        self$`total_responses` <- this_object$`total_responses`
      }
      if (!is.null(this_object$`responses_with_results`)) {
        self$`responses_with_results` <- this_object$`responses_with_results`
      }
      if (!is.null(this_object$`result_rate`)) {
        self$`result_rate` <- this_object$`result_rate`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiOverviewResultCounts in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiOverviewResultCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiOverviewResultCounts
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`total_responses` <- this_object$`total_responses`
      self$`responses_with_results` <- this_object$`responses_with_results`
      self$`result_rate` <- this_object$`result_rate`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiOverviewResultCounts and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `total_responses`
      if (!is.null(input_json$`total_responses`)) {
        if (!(is.numeric(input_json$`total_responses`) && length(input_json$`total_responses`) == 1)) {
          stop(paste("Error! Invalid data for `total_responses`. Must be an integer:", input_json$`total_responses`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOverviewResultCounts: the required field `total_responses` is missing."))
      }
      # check the required field `responses_with_results`
      if (!is.null(input_json$`responses_with_results`)) {
        if (!(is.numeric(input_json$`responses_with_results`) && length(input_json$`responses_with_results`) == 1)) {
          stop(paste("Error! Invalid data for `responses_with_results`. Must be an integer:", input_json$`responses_with_results`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOverviewResultCounts: the required field `responses_with_results` is missing."))
      }
      # check the required field `result_rate`
      if (!is.null(input_json$`result_rate`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOverviewResultCounts: the required field `result_rate` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiOverviewResultCounts
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `total_responses` is null
      if (is.null(self$`total_responses`)) {
        return(FALSE)
      }

      # check if the required `responses_with_results` is null
      if (is.null(self$`responses_with_results`)) {
        return(FALSE)
      }

      # check if the required `result_rate` is null
      if (is.null(self$`result_rate`)) {
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
      # check if the required `total_responses` is null
      if (is.null(self$`total_responses`)) {
        invalid_fields["total_responses"] <- "Non-nullable required field `total_responses` cannot be null."
      }

      # check if the required `responses_with_results` is null
      if (is.null(self$`responses_with_results`)) {
        invalid_fields["responses_with_results"] <- "Non-nullable required field `responses_with_results` cannot be null."
      }

      # check if the required `result_rate` is null
      if (is.null(self$`result_rate`)) {
        invalid_fields["result_rate"] <- "Non-nullable required field `result_rate` cannot be null."
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
# AiOverviewResultCounts$unlock()
#
## Below is an example to define the print function
# AiOverviewResultCounts$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiOverviewResultCounts$lock()

