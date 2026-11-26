#' Create a new SentimentCategory
#'
#' @description
#' SentimentCategory Class
#'
#' @docType class
#' @title SentimentCategory
#' @description SentimentCategory Class
#' @format An \code{R6Class} generator object
#' @field metric The metric key of the level (sentiment_<key>) character
#' @field key very_positive, positive, neutral, negative or very_negative character
#' @field label  character
#' @field color Hex color the app shows the level in character
#' @field score Score of the level, from -1.0 (very_negative) to 1.0 (very_positive) numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SentimentCategory <- R6::R6Class(
  "SentimentCategory",
  public = list(
    `metric` = NULL,
    `key` = NULL,
    `label` = NULL,
    `color` = NULL,
    `score` = NULL,

    #' @description
    #' Initialize a new SentimentCategory class.
    #'
    #' @param metric The metric key of the level (sentiment_<key>)
    #' @param key very_positive, positive, neutral, negative or very_negative
    #' @param label label
    #' @param color Hex color the app shows the level in
    #' @param score Score of the level, from -1.0 (very_negative) to 1.0 (very_positive)
    #' @param ... Other optional arguments.
    initialize = function(`metric`, `key`, `label`, `color`, `score`, ...) {
      if (!missing(`metric`)) {
        if (!(is.character(`metric`) && length(`metric`) == 1)) {
          stop(paste("Error! Invalid data for `metric`. Must be a string:", `metric`))
        }
        self$`metric` <- `metric`
      }
      if (!missing(`key`)) {
        if (!(is.character(`key`) && length(`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", `key`))
        }
        self$`key` <- `key`
      }
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`color`)) {
        if (!(is.character(`color`) && length(`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", `color`))
        }
        self$`color` <- `color`
      }
      if (!missing(`score`)) {
        self$`score` <- `score`
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
    #' @return SentimentCategory as a base R list.
    #' @examples
    #' # convert array of SentimentCategory (x) to a data frame
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
    #' Convert SentimentCategory to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SentimentCategoryObject <- list()
      if (!is.null(self$`metric`)) {
        SentimentCategoryObject[["metric"]] <-
          self$`metric`
      }
      if (!is.null(self$`key`)) {
        SentimentCategoryObject[["key"]] <-
          self$`key`
      }
      if (!is.null(self$`label`)) {
        SentimentCategoryObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`color`)) {
        SentimentCategoryObject[["color"]] <-
          self$`color`
      }
      if (!is.null(self$`score`)) {
        SentimentCategoryObject[["score"]] <-
          self$`score`
      }
      return(SentimentCategoryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SentimentCategory
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentCategory
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`metric`)) {
        self$`metric` <- this_object$`metric`
      }
      if (!is.null(this_object$`key`)) {
        self$`key` <- this_object$`key`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`color`)) {
        self$`color` <- this_object$`color`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SentimentCategory in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SentimentCategory
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentCategory
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`metric` <- this_object$`metric`
      self$`key` <- this_object$`key`
      self$`label` <- this_object$`label`
      self$`color` <- this_object$`color`
      self$`score` <- this_object$`score`
      self
    },

    #' @description
    #' Validate JSON input with respect to SentimentCategory and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `metric`
      if (!is.null(input_json$`metric`)) {
        if (!(is.character(input_json$`metric`) && length(input_json$`metric`) == 1)) {
          stop(paste("Error! Invalid data for `metric`. Must be a string:", input_json$`metric`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentCategory: the required field `metric` is missing."))
      }
      # check the required field `key`
      if (!is.null(input_json$`key`)) {
        if (!(is.character(input_json$`key`) && length(input_json$`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", input_json$`key`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentCategory: the required field `key` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentCategory: the required field `label` is missing."))
      }
      # check the required field `color`
      if (!is.null(input_json$`color`)) {
        if (!(is.character(input_json$`color`) && length(input_json$`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", input_json$`color`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentCategory: the required field `color` is missing."))
      }
      # check the required field `score`
      if (!is.null(input_json$`score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentCategory: the required field `score` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SentimentCategory
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `metric` is null
      if (is.null(self$`metric`)) {
        return(FALSE)
      }

      # check if the required `key` is null
      if (is.null(self$`key`)) {
        return(FALSE)
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        return(FALSE)
      }

      # check if the required `color` is null
      if (is.null(self$`color`)) {
        return(FALSE)
      }

      # check if the required `score` is null
      if (is.null(self$`score`)) {
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
      # check if the required `metric` is null
      if (is.null(self$`metric`)) {
        invalid_fields["metric"] <- "Non-nullable required field `metric` cannot be null."
      }

      # check if the required `key` is null
      if (is.null(self$`key`)) {
        invalid_fields["key"] <- "Non-nullable required field `key` cannot be null."
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      # check if the required `color` is null
      if (is.null(self$`color`)) {
        invalid_fields["color"] <- "Non-nullable required field `color` cannot be null."
      }

      # check if the required `score` is null
      if (is.null(self$`score`)) {
        invalid_fields["score"] <- "Non-nullable required field `score` cannot be null."
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
# SentimentCategory$unlock()
#
## Below is an example to define the print function
# SentimentCategory$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SentimentCategory$lock()

