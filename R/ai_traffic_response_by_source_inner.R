#' Create a new AiTrafficResponseBySourceInner
#'
#' @description
#' AiTrafficResponseBySourceInner Class
#'
#' @docType class
#' @title AiTrafficResponseBySourceInner
#' @description AiTrafficResponseBySourceInner Class
#' @format An \code{R6Class} generator object
#' @field source AI source slug, such as chatgpt or perplexity character
#' @field name Display name of the source character
#' @field users  integer
#' @field sessions  integer
#' @field conversions  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiTrafficResponseBySourceInner <- R6::R6Class(
  "AiTrafficResponseBySourceInner",
  public = list(
    `source` = NULL,
    `name` = NULL,
    `users` = NULL,
    `sessions` = NULL,
    `conversions` = NULL,

    #' @description
    #' Initialize a new AiTrafficResponseBySourceInner class.
    #'
    #' @param source AI source slug, such as chatgpt or perplexity
    #' @param name Display name of the source
    #' @param users users
    #' @param sessions sessions
    #' @param conversions conversions
    #' @param ... Other optional arguments.
    initialize = function(`source`, `name`, `users`, `sessions`, `conversions`, ...) {
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`users`)) {
        if (!(is.numeric(`users`) && length(`users`) == 1)) {
          stop(paste("Error! Invalid data for `users`. Must be an integer:", `users`))
        }
        self$`users` <- `users`
      }
      if (!missing(`sessions`)) {
        if (!(is.numeric(`sessions`) && length(`sessions`) == 1)) {
          stop(paste("Error! Invalid data for `sessions`. Must be an integer:", `sessions`))
        }
        self$`sessions` <- `sessions`
      }
      if (!missing(`conversions`)) {
        if (!(is.numeric(`conversions`) && length(`conversions`) == 1)) {
          stop(paste("Error! Invalid data for `conversions`. Must be an integer:", `conversions`))
        }
        self$`conversions` <- `conversions`
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
    #' @return AiTrafficResponseBySourceInner as a base R list.
    #' @examples
    #' # convert array of AiTrafficResponseBySourceInner (x) to a data frame
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
    #' Convert AiTrafficResponseBySourceInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiTrafficResponseBySourceInnerObject <- list()
      if (!is.null(self$`source`)) {
        AiTrafficResponseBySourceInnerObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`name`)) {
        AiTrafficResponseBySourceInnerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`users`)) {
        AiTrafficResponseBySourceInnerObject[["users"]] <-
          self$`users`
      }
      if (!is.null(self$`sessions`)) {
        AiTrafficResponseBySourceInnerObject[["sessions"]] <-
          self$`sessions`
      }
      if (!is.null(self$`conversions`)) {
        AiTrafficResponseBySourceInnerObject[["conversions"]] <-
          self$`conversions`
      }
      return(AiTrafficResponseBySourceInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiTrafficResponseBySourceInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiTrafficResponseBySourceInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`users`)) {
        self$`users` <- this_object$`users`
      }
      if (!is.null(this_object$`sessions`)) {
        self$`sessions` <- this_object$`sessions`
      }
      if (!is.null(this_object$`conversions`)) {
        self$`conversions` <- this_object$`conversions`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiTrafficResponseBySourceInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiTrafficResponseBySourceInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiTrafficResponseBySourceInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`source` <- this_object$`source`
      self$`name` <- this_object$`name`
      self$`users` <- this_object$`users`
      self$`sessions` <- this_object$`sessions`
      self$`conversions` <- this_object$`conversions`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiTrafficResponseBySourceInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponseBySourceInner: the required field `source` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponseBySourceInner: the required field `name` is missing."))
      }
      # check the required field `users`
      if (!is.null(input_json$`users`)) {
        if (!(is.numeric(input_json$`users`) && length(input_json$`users`) == 1)) {
          stop(paste("Error! Invalid data for `users`. Must be an integer:", input_json$`users`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponseBySourceInner: the required field `users` is missing."))
      }
      # check the required field `sessions`
      if (!is.null(input_json$`sessions`)) {
        if (!(is.numeric(input_json$`sessions`) && length(input_json$`sessions`) == 1)) {
          stop(paste("Error! Invalid data for `sessions`. Must be an integer:", input_json$`sessions`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponseBySourceInner: the required field `sessions` is missing."))
      }
      # check the required field `conversions`
      if (!is.null(input_json$`conversions`)) {
        if (!(is.numeric(input_json$`conversions`) && length(input_json$`conversions`) == 1)) {
          stop(paste("Error! Invalid data for `conversions`. Must be an integer:", input_json$`conversions`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponseBySourceInner: the required field `conversions` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiTrafficResponseBySourceInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `users` is null
      if (is.null(self$`users`)) {
        return(FALSE)
      }

      # check if the required `sessions` is null
      if (is.null(self$`sessions`)) {
        return(FALSE)
      }

      # check if the required `conversions` is null
      if (is.null(self$`conversions`)) {
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
      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `users` is null
      if (is.null(self$`users`)) {
        invalid_fields["users"] <- "Non-nullable required field `users` cannot be null."
      }

      # check if the required `sessions` is null
      if (is.null(self$`sessions`)) {
        invalid_fields["sessions"] <- "Non-nullable required field `sessions` cannot be null."
      }

      # check if the required `conversions` is null
      if (is.null(self$`conversions`)) {
        invalid_fields["conversions"] <- "Non-nullable required field `conversions` cannot be null."
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
# AiTrafficResponseBySourceInner$unlock()
#
## Below is an example to define the print function
# AiTrafficResponseBySourceInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiTrafficResponseBySourceInner$lock()

