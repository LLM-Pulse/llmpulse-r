#' Create a new SentimentTagRow
#'
#' @description
#' SentimentTagRow Class
#'
#' @docType class
#' @title SentimentTagRow
#' @description SentimentTagRow Class
#' @format An \code{R6Class} generator object
#' @field mentions Analyzed mentions integer
#' @field positive Positive and very positive integer
#' @field neutral  integer
#' @field negative Negative and very negative integer
#' @field positive_pct  numeric
#' @field neutral_pct  numeric
#' @field negative_pct  numeric
#' @field net_score Positive minus negative, divided by mentions, times 100 numeric
#' @field tag_id  integer
#' @field tag  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SentimentTagRow <- R6::R6Class(
  "SentimentTagRow",
  public = list(
    `mentions` = NULL,
    `positive` = NULL,
    `neutral` = NULL,
    `negative` = NULL,
    `positive_pct` = NULL,
    `neutral_pct` = NULL,
    `negative_pct` = NULL,
    `net_score` = NULL,
    `tag_id` = NULL,
    `tag` = NULL,

    #' @description
    #' Initialize a new SentimentTagRow class.
    #'
    #' @param mentions Analyzed mentions
    #' @param positive Positive and very positive
    #' @param neutral neutral
    #' @param negative Negative and very negative
    #' @param positive_pct positive_pct
    #' @param neutral_pct neutral_pct
    #' @param negative_pct negative_pct
    #' @param net_score Positive minus negative, divided by mentions, times 100
    #' @param tag_id tag_id
    #' @param tag tag
    #' @param ... Other optional arguments.
    initialize = function(`mentions`, `positive`, `neutral`, `negative`, `positive_pct`, `neutral_pct`, `negative_pct`, `net_score`, `tag_id`, `tag`, ...) {
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
      if (!missing(`tag_id`)) {
        if (!(is.numeric(`tag_id`) && length(`tag_id`) == 1)) {
          stop(paste("Error! Invalid data for `tag_id`. Must be an integer:", `tag_id`))
        }
        self$`tag_id` <- `tag_id`
      }
      if (!missing(`tag`)) {
        if (!(is.character(`tag`) && length(`tag`) == 1)) {
          stop(paste("Error! Invalid data for `tag`. Must be a string:", `tag`))
        }
        self$`tag` <- `tag`
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
    #' @return SentimentTagRow as a base R list.
    #' @examples
    #' # convert array of SentimentTagRow (x) to a data frame
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
    #' Convert SentimentTagRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SentimentTagRowObject <- list()
      if (!is.null(self$`mentions`)) {
        SentimentTagRowObject[["mentions"]] <-
          self$`mentions`
      }
      if (!is.null(self$`positive`)) {
        SentimentTagRowObject[["positive"]] <-
          self$`positive`
      }
      if (!is.null(self$`neutral`)) {
        SentimentTagRowObject[["neutral"]] <-
          self$`neutral`
      }
      if (!is.null(self$`negative`)) {
        SentimentTagRowObject[["negative"]] <-
          self$`negative`
      }
      if (!is.null(self$`positive_pct`)) {
        SentimentTagRowObject[["positive_pct"]] <-
          self$`positive_pct`
      }
      if (!is.null(self$`neutral_pct`)) {
        SentimentTagRowObject[["neutral_pct"]] <-
          self$`neutral_pct`
      }
      if (!is.null(self$`negative_pct`)) {
        SentimentTagRowObject[["negative_pct"]] <-
          self$`negative_pct`
      }
      if (!is.null(self$`net_score`)) {
        SentimentTagRowObject[["net_score"]] <-
          self$`net_score`
      }
      if (!is.null(self$`tag_id`)) {
        SentimentTagRowObject[["tag_id"]] <-
          self$`tag_id`
      }
      if (!is.null(self$`tag`)) {
        SentimentTagRowObject[["tag"]] <-
          self$`tag`
      }
      return(SentimentTagRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SentimentTagRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentTagRow
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
      if (!is.null(this_object$`tag_id`)) {
        self$`tag_id` <- this_object$`tag_id`
      }
      if (!is.null(this_object$`tag`)) {
        self$`tag` <- this_object$`tag`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SentimentTagRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SentimentTagRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentTagRow
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
      self$`tag_id` <- this_object$`tag_id`
      self$`tag` <- this_object$`tag`
      self
    },

    #' @description
    #' Validate JSON input with respect to SentimentTagRow and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagRow: the required field `mentions` is missing."))
      }
      # check the required field `positive`
      if (!is.null(input_json$`positive`)) {
        if (!(is.numeric(input_json$`positive`) && length(input_json$`positive`) == 1)) {
          stop(paste("Error! Invalid data for `positive`. Must be an integer:", input_json$`positive`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagRow: the required field `positive` is missing."))
      }
      # check the required field `neutral`
      if (!is.null(input_json$`neutral`)) {
        if (!(is.numeric(input_json$`neutral`) && length(input_json$`neutral`) == 1)) {
          stop(paste("Error! Invalid data for `neutral`. Must be an integer:", input_json$`neutral`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagRow: the required field `neutral` is missing."))
      }
      # check the required field `negative`
      if (!is.null(input_json$`negative`)) {
        if (!(is.numeric(input_json$`negative`) && length(input_json$`negative`) == 1)) {
          stop(paste("Error! Invalid data for `negative`. Must be an integer:", input_json$`negative`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagRow: the required field `negative` is missing."))
      }
      # check the required field `positive_pct`
      if (!is.null(input_json$`positive_pct`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagRow: the required field `positive_pct` is missing."))
      }
      # check the required field `neutral_pct`
      if (!is.null(input_json$`neutral_pct`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagRow: the required field `neutral_pct` is missing."))
      }
      # check the required field `negative_pct`
      if (!is.null(input_json$`negative_pct`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagRow: the required field `negative_pct` is missing."))
      }
      # check the required field `net_score`
      if (!is.null(input_json$`net_score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagRow: the required field `net_score` is missing."))
      }
      # check the required field `tag_id`
      if (!is.null(input_json$`tag_id`)) {
        if (!(is.numeric(input_json$`tag_id`) && length(input_json$`tag_id`) == 1)) {
          stop(paste("Error! Invalid data for `tag_id`. Must be an integer:", input_json$`tag_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagRow: the required field `tag_id` is missing."))
      }
      # check the required field `tag`
      if (!is.null(input_json$`tag`)) {
        if (!(is.character(input_json$`tag`) && length(input_json$`tag`) == 1)) {
          stop(paste("Error! Invalid data for `tag`. Must be a string:", input_json$`tag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagRow: the required field `tag` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SentimentTagRow
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

      # check if the required `tag_id` is null
      if (is.null(self$`tag_id`)) {
        return(FALSE)
      }

      # check if the required `tag` is null
      if (is.null(self$`tag`)) {
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

      # check if the required `tag_id` is null
      if (is.null(self$`tag_id`)) {
        invalid_fields["tag_id"] <- "Non-nullable required field `tag_id` cannot be null."
      }

      # check if the required `tag` is null
      if (is.null(self$`tag`)) {
        invalid_fields["tag"] <- "Non-nullable required field `tag` cannot be null."
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
# SentimentTagRow$unlock()
#
## Below is an example to define the print function
# SentimentTagRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SentimentTagRow$lock()

