#' Create a new AiTrafficResponseTotals
#'
#' @description
#' AiTrafficResponseTotals Class
#'
#' @docType class
#' @title AiTrafficResponseTotals
#' @description AiTrafficResponseTotals Class
#' @format An \code{R6Class} generator object
#' @field users  integer
#' @field sessions  integer
#' @field conversions  integer
#' @field conversion_rate conversions as a percentage (0-100) of sessions; 0 without sessions numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiTrafficResponseTotals <- R6::R6Class(
  "AiTrafficResponseTotals",
  public = list(
    `users` = NULL,
    `sessions` = NULL,
    `conversions` = NULL,
    `conversion_rate` = NULL,

    #' @description
    #' Initialize a new AiTrafficResponseTotals class.
    #'
    #' @param users users
    #' @param sessions sessions
    #' @param conversions conversions
    #' @param conversion_rate conversions as a percentage (0-100) of sessions; 0 without sessions
    #' @param ... Other optional arguments.
    initialize = function(`users`, `sessions`, `conversions`, `conversion_rate`, ...) {
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
      if (!missing(`conversion_rate`)) {
        self$`conversion_rate` <- `conversion_rate`
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
    #' @return AiTrafficResponseTotals as a base R list.
    #' @examples
    #' # convert array of AiTrafficResponseTotals (x) to a data frame
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
    #' Convert AiTrafficResponseTotals to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiTrafficResponseTotalsObject <- list()
      if (!is.null(self$`users`)) {
        AiTrafficResponseTotalsObject[["users"]] <-
          self$`users`
      }
      if (!is.null(self$`sessions`)) {
        AiTrafficResponseTotalsObject[["sessions"]] <-
          self$`sessions`
      }
      if (!is.null(self$`conversions`)) {
        AiTrafficResponseTotalsObject[["conversions"]] <-
          self$`conversions`
      }
      if (!is.null(self$`conversion_rate`)) {
        AiTrafficResponseTotalsObject[["conversion_rate"]] <-
          self$`conversion_rate`
      }
      return(AiTrafficResponseTotalsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiTrafficResponseTotals
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiTrafficResponseTotals
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`users`)) {
        self$`users` <- this_object$`users`
      }
      if (!is.null(this_object$`sessions`)) {
        self$`sessions` <- this_object$`sessions`
      }
      if (!is.null(this_object$`conversions`)) {
        self$`conversions` <- this_object$`conversions`
      }
      if (!is.null(this_object$`conversion_rate`)) {
        self$`conversion_rate` <- this_object$`conversion_rate`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiTrafficResponseTotals in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiTrafficResponseTotals
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiTrafficResponseTotals
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`users` <- this_object$`users`
      self$`sessions` <- this_object$`sessions`
      self$`conversions` <- this_object$`conversions`
      self$`conversion_rate` <- this_object$`conversion_rate`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiTrafficResponseTotals and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `users`
      if (!is.null(input_json$`users`)) {
        if (!(is.numeric(input_json$`users`) && length(input_json$`users`) == 1)) {
          stop(paste("Error! Invalid data for `users`. Must be an integer:", input_json$`users`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponseTotals: the required field `users` is missing."))
      }
      # check the required field `sessions`
      if (!is.null(input_json$`sessions`)) {
        if (!(is.numeric(input_json$`sessions`) && length(input_json$`sessions`) == 1)) {
          stop(paste("Error! Invalid data for `sessions`. Must be an integer:", input_json$`sessions`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponseTotals: the required field `sessions` is missing."))
      }
      # check the required field `conversions`
      if (!is.null(input_json$`conversions`)) {
        if (!(is.numeric(input_json$`conversions`) && length(input_json$`conversions`) == 1)) {
          stop(paste("Error! Invalid data for `conversions`. Must be an integer:", input_json$`conversions`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponseTotals: the required field `conversions` is missing."))
      }
      # check the required field `conversion_rate`
      if (!is.null(input_json$`conversion_rate`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiTrafficResponseTotals: the required field `conversion_rate` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiTrafficResponseTotals
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
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

      # check if the required `conversion_rate` is null
      if (is.null(self$`conversion_rate`)) {
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

      # check if the required `conversion_rate` is null
      if (is.null(self$`conversion_rate`)) {
        invalid_fields["conversion_rate"] <- "Non-nullable required field `conversion_rate` cannot be null."
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
# AiTrafficResponseTotals$unlock()
#
## Below is an example to define the print function
# AiTrafficResponseTotals$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiTrafficResponseTotals$lock()

