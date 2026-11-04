#' Create a new RedditSubredditActivityPeriod
#'
#' @description
#' RedditSubredditActivityPeriod Class
#'
#' @docType class
#' @title RedditSubredditActivityPeriod
#' @description RedditSubredditActivityPeriod Class
#' @format An \code{R6Class} generator object
#' @field date Start date of the actual reporting period character
#' @field subreddit Subreddit name, or null for the Others aggregate character
#' @field is_others  character
#' @field citations  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RedditSubredditActivityPeriod <- R6::R6Class(
  "RedditSubredditActivityPeriod",
  public = list(
    `date` = NULL,
    `subreddit` = NULL,
    `is_others` = NULL,
    `citations` = NULL,

    #' @description
    #' Initialize a new RedditSubredditActivityPeriod class.
    #'
    #' @param date Start date of the actual reporting period
    #' @param subreddit Subreddit name, or null for the Others aggregate
    #' @param is_others is_others
    #' @param citations citations
    #' @param ... Other optional arguments.
    initialize = function(`date`, `subreddit`, `is_others`, `citations`, ...) {
      if (!missing(`date`)) {
        if (!(is.character(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
      }
      if (!missing(`subreddit`)) {
        if (!(is.character(`subreddit`) && length(`subreddit`) == 1)) {
          stop(paste("Error! Invalid data for `subreddit`. Must be a string:", `subreddit`))
        }
        self$`subreddit` <- `subreddit`
      }
      if (!missing(`is_others`)) {
        if (!(is.logical(`is_others`) && length(`is_others`) == 1)) {
          stop(paste("Error! Invalid data for `is_others`. Must be a boolean:", `is_others`))
        }
        self$`is_others` <- `is_others`
      }
      if (!missing(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
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
    #' @return RedditSubredditActivityPeriod as a base R list.
    #' @examples
    #' # convert array of RedditSubredditActivityPeriod (x) to a data frame
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
    #' Convert RedditSubredditActivityPeriod to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RedditSubredditActivityPeriodObject <- list()
      if (!is.null(self$`date`)) {
        RedditSubredditActivityPeriodObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`subreddit`)) {
        RedditSubredditActivityPeriodObject[["subreddit"]] <-
          self$`subreddit`
      }
      if (!is.null(self$`is_others`)) {
        RedditSubredditActivityPeriodObject[["is_others"]] <-
          self$`is_others`
      }
      if (!is.null(self$`citations`)) {
        RedditSubredditActivityPeriodObject[["citations"]] <-
          self$`citations`
      }
      return(RedditSubredditActivityPeriodObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RedditSubredditActivityPeriod
    #'
    #' @param input_json the JSON input
    #' @return the instance of RedditSubredditActivityPeriod
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`subreddit`)) {
        self$`subreddit` <- this_object$`subreddit`
      }
      if (!is.null(this_object$`is_others`)) {
        self$`is_others` <- this_object$`is_others`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RedditSubredditActivityPeriod in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RedditSubredditActivityPeriod
    #'
    #' @param input_json the JSON input
    #' @return the instance of RedditSubredditActivityPeriod
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`date` <- this_object$`date`
      self$`subreddit` <- this_object$`subreddit`
      self$`is_others` <- this_object$`is_others`
      self$`citations` <- this_object$`citations`
      self
    },

    #' @description
    #' Validate JSON input with respect to RedditSubredditActivityPeriod and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for RedditSubredditActivityPeriod: the required field `date` is missing."))
      }
      # check the required field `subreddit`
      if (!is.null(input_json$`subreddit`)) {
        if (!(is.character(input_json$`subreddit`) && length(input_json$`subreddit`) == 1)) {
          stop(paste("Error! Invalid data for `subreddit`. Must be a string:", input_json$`subreddit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RedditSubredditActivityPeriod: the required field `subreddit` is missing."))
      }
      # check the required field `is_others`
      if (!is.null(input_json$`is_others`)) {
        if (!(is.logical(input_json$`is_others`) && length(input_json$`is_others`) == 1)) {
          stop(paste("Error! Invalid data for `is_others`. Must be a boolean:", input_json$`is_others`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RedditSubredditActivityPeriod: the required field `is_others` is missing."))
      }
      # check the required field `citations`
      if (!is.null(input_json$`citations`)) {
        if (!(is.numeric(input_json$`citations`) && length(input_json$`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", input_json$`citations`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RedditSubredditActivityPeriod: the required field `citations` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RedditSubredditActivityPeriod
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

      # check if the required `is_others` is null
      if (is.null(self$`is_others`)) {
        return(FALSE)
      }

      # check if the required `citations` is null
      if (is.null(self$`citations`)) {
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

      # check if the required `is_others` is null
      if (is.null(self$`is_others`)) {
        invalid_fields["is_others"] <- "Non-nullable required field `is_others` cannot be null."
      }

      # check if the required `citations` is null
      if (is.null(self$`citations`)) {
        invalid_fields["citations"] <- "Non-nullable required field `citations` cannot be null."
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
# RedditSubredditActivityPeriod$unlock()
#
## Below is an example to define the print function
# RedditSubredditActivityPeriod$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RedditSubredditActivityPeriod$lock()

