#' Create a new SentimentBreakdownCounts
#'
#' @description
#' SentimentBreakdownCounts Class
#'
#' @docType class
#' @title SentimentBreakdownCounts
#' @description SentimentBreakdownCounts Class
#' @format An \code{R6Class} generator object
#' @field mentions Analyzed mentions integer
#' @field positive Positive and very positive integer
#' @field neutral  integer
#' @field negative Negative and very negative integer
#' @field positive_pct  numeric
#' @field neutral_pct  numeric
#' @field negative_pct  numeric
#' @field net_score Positive minus negative, divided by mentions, times 100 numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SentimentBreakdownCounts <- R6::R6Class(
  "SentimentBreakdownCounts",
  public = list(
    `mentions` = NULL,
    `positive` = NULL,
    `neutral` = NULL,
    `negative` = NULL,
    `positive_pct` = NULL,
    `neutral_pct` = NULL,
    `negative_pct` = NULL,
    `net_score` = NULL,

    #' @description
    #' Initialize a new SentimentBreakdownCounts class.
    #'
    #' @param mentions Analyzed mentions
    #' @param positive Positive and very positive
    #' @param neutral neutral
    #' @param negative Negative and very negative
    #' @param positive_pct positive_pct
    #' @param neutral_pct neutral_pct
    #' @param negative_pct negative_pct
    #' @param net_score Positive minus negative, divided by mentions, times 100
    #' @param ... Other optional arguments.
    initialize = function(`mentions`, `positive`, `neutral`, `negative`, `positive_pct`, `neutral_pct`, `negative_pct`, `net_score`, ...) {
      if (!missing(`mentions`)) {
        if (!(is.numeric(`mentions`) && length(`mentions`) == 1)) {
          stop(paste("Error! Invalid data for `mentions`. Must be an integer:", `mentions`))
        }
        self$`mentions` <- `mentions`
      }
      if (!missing(`positive`)) {
        if (!(is.numeric(`positive`) && length(`positive`) == 1)) {
          stop(paste("Error! Invalid data for `positive`. Must be an integer:", `positive`))
        }
        self$`positive` <- `positive`
      }
      if (!missing(`neutral`)) {
        if (!(is.numeric(`neutral`) && length(`neutral`) == 1)) {
          stop(paste("Error! Invalid data for `neutral`. Must be an integer:", `neutral`))
        }
        self$`neutral` <- `neutral`
      }
      if (!missing(`negative`)) {
        if (!(is.numeric(`negative`) && length(`negative`) == 1)) {
          stop(paste("Error! Invalid data for `negative`. Must be an integer:", `negative`))
        }
        self$`negative` <- `negative`
      }
      if (!missing(`positive_pct`)) {
        self$`positive_pct` <- `positive_pct`
      }
      if (!missing(`neutral_pct`)) {
        self$`neutral_pct` <- `neutral_pct`
      }
      if (!missing(`negative_pct`)) {
        self$`negative_pct` <- `negative_pct`
      }
      if (!missing(`net_score`)) {
        self$`net_score` <- `net_score`
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
    #' @return SentimentBreakdownCounts as a base R list.
    #' @examples
    #' # convert array of SentimentBreakdownCounts (x) to a data frame
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
    #' Convert SentimentBreakdownCounts to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SentimentBreakdownCountsObject <- list()
      if (!is.null(self$`mentions`)) {
        SentimentBreakdownCountsObject[["mentions"]] <-
          self$`mentions`
      }
      if (!is.null(self$`positive`)) {
        SentimentBreakdownCountsObject[["positive"]] <-
          self$`positive`
      }
      if (!is.null(self$`neutral`)) {
        SentimentBreakdownCountsObject[["neutral"]] <-
          self$`neutral`
      }
      if (!is.null(self$`negative`)) {
        SentimentBreakdownCountsObject[["negative"]] <-
          self$`negative`
      }
      if (!is.null(self$`positive_pct`)) {
        SentimentBreakdownCountsObject[["positive_pct"]] <-
          self$`positive_pct`
      }
      if (!is.null(self$`neutral_pct`)) {
        SentimentBreakdownCountsObject[["neutral_pct"]] <-
          self$`neutral_pct`
      }
      if (!is.null(self$`negative_pct`)) {
        SentimentBreakdownCountsObject[["negative_pct"]] <-
          self$`negative_pct`
      }
      if (!is.null(self$`net_score`)) {
        SentimentBreakdownCountsObject[["net_score"]] <-
          self$`net_score`
      }
      return(SentimentBreakdownCountsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SentimentBreakdownCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentBreakdownCounts
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`mentions`)) {
        self$`mentions` <- this_object$`mentions`
      }
      if (!is.null(this_object$`positive`)) {
        self$`positive` <- this_object$`positive`
      }
      if (!is.null(this_object$`neutral`)) {
        self$`neutral` <- this_object$`neutral`
      }
      if (!is.null(this_object$`negative`)) {
        self$`negative` <- this_object$`negative`
      }
      if (!is.null(this_object$`positive_pct`)) {
        self$`positive_pct` <- this_object$`positive_pct`
      }
      if (!is.null(this_object$`neutral_pct`)) {
        self$`neutral_pct` <- this_object$`neutral_pct`
      }
      if (!is.null(this_object$`negative_pct`)) {
        self$`negative_pct` <- this_object$`negative_pct`
      }
      if (!is.null(this_object$`net_score`)) {
        self$`net_score` <- this_object$`net_score`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SentimentBreakdownCounts in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SentimentBreakdownCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentBreakdownCounts
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`mentions` <- this_object$`mentions`
      self$`positive` <- this_object$`positive`
      self$`neutral` <- this_object$`neutral`
      self$`negative` <- this_object$`negative`
      self$`positive_pct` <- this_object$`positive_pct`
      self$`neutral_pct` <- this_object$`neutral_pct`
      self$`negative_pct` <- this_object$`negative_pct`
      self$`net_score` <- this_object$`net_score`
      self
    },

    #' @description
    #' Validate JSON input with respect to SentimentBreakdownCounts and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `mentions`
      if (!is.null(input_json$`mentions`)) {
        if (!(is.numeric(input_json$`mentions`) && length(input_json$`mentions`) == 1)) {
          stop(paste("Error! Invalid data for `mentions`. Must be an integer:", input_json$`mentions`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentBreakdownCounts: the required field `mentions` is missing."))
      }
      # check the required field `positive`
      if (!is.null(input_json$`positive`)) {
        if (!(is.numeric(input_json$`positive`) && length(input_json$`positive`) == 1)) {
          stop(paste("Error! Invalid data for `positive`. Must be an integer:", input_json$`positive`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentBreakdownCounts: the required field `positive` is missing."))
      }
      # check the required field `neutral`
      if (!is.null(input_json$`neutral`)) {
        if (!(is.numeric(input_json$`neutral`) && length(input_json$`neutral`) == 1)) {
          stop(paste("Error! Invalid data for `neutral`. Must be an integer:", input_json$`neutral`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentBreakdownCounts: the required field `neutral` is missing."))
      }
      # check the required field `negative`
      if (!is.null(input_json$`negative`)) {
        if (!(is.numeric(input_json$`negative`) && length(input_json$`negative`) == 1)) {
          stop(paste("Error! Invalid data for `negative`. Must be an integer:", input_json$`negative`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentBreakdownCounts: the required field `negative` is missing."))
      }
      # check the required field `positive_pct`
      if (!is.null(input_json$`positive_pct`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentBreakdownCounts: the required field `positive_pct` is missing."))
      }
      # check the required field `neutral_pct`
      if (!is.null(input_json$`neutral_pct`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentBreakdownCounts: the required field `neutral_pct` is missing."))
      }
      # check the required field `negative_pct`
      if (!is.null(input_json$`negative_pct`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentBreakdownCounts: the required field `negative_pct` is missing."))
      }
      # check the required field `net_score`
      if (!is.null(input_json$`net_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentBreakdownCounts: the required field `net_score` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SentimentBreakdownCounts
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `mentions` is null
      if (is.null(self$`mentions`)) {
        return(FALSE)
      }

      # check if the required `positive` is null
      if (is.null(self$`positive`)) {
        return(FALSE)
      }

      # check if the required `neutral` is null
      if (is.null(self$`neutral`)) {
        return(FALSE)
      }

      # check if the required `negative` is null
      if (is.null(self$`negative`)) {
        return(FALSE)
      }

      # check if the required `positive_pct` is null
      if (is.null(self$`positive_pct`)) {
        return(FALSE)
      }

      # check if the required `neutral_pct` is null
      if (is.null(self$`neutral_pct`)) {
        return(FALSE)
      }

      # check if the required `negative_pct` is null
      if (is.null(self$`negative_pct`)) {
        return(FALSE)
      }

      # check if the required `net_score` is null
      if (is.null(self$`net_score`)) {
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
      # check if the required `mentions` is null
      if (is.null(self$`mentions`)) {
        invalid_fields["mentions"] <- "Non-nullable required field `mentions` cannot be null."
      }

      # check if the required `positive` is null
      if (is.null(self$`positive`)) {
        invalid_fields["positive"] <- "Non-nullable required field `positive` cannot be null."
      }

      # check if the required `neutral` is null
      if (is.null(self$`neutral`)) {
        invalid_fields["neutral"] <- "Non-nullable required field `neutral` cannot be null."
      }

      # check if the required `negative` is null
      if (is.null(self$`negative`)) {
        invalid_fields["negative"] <- "Non-nullable required field `negative` cannot be null."
      }

      # check if the required `positive_pct` is null
      if (is.null(self$`positive_pct`)) {
        invalid_fields["positive_pct"] <- "Non-nullable required field `positive_pct` cannot be null."
      }

      # check if the required `neutral_pct` is null
      if (is.null(self$`neutral_pct`)) {
        invalid_fields["neutral_pct"] <- "Non-nullable required field `neutral_pct` cannot be null."
      }

      # check if the required `negative_pct` is null
      if (is.null(self$`negative_pct`)) {
        invalid_fields["negative_pct"] <- "Non-nullable required field `negative_pct` cannot be null."
      }

      # check if the required `net_score` is null
      if (is.null(self$`net_score`)) {
        invalid_fields["net_score"] <- "Non-nullable required field `net_score` cannot be null."
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
# SentimentBreakdownCounts$unlock()
#
## Below is an example to define the print function
# SentimentBreakdownCounts$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SentimentBreakdownCounts$lock()

