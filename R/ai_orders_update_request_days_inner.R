#' Create a new AiOrdersUpdateRequestDaysInner
#'
#' @description
#' AiOrdersUpdateRequestDaysInner Class
#'
#' @docType class
#' @title AiOrdersUpdateRequestDaysInner
#' @description AiOrdersUpdateRequestDaysInner Class
#' @format An \code{R6Class} generator object
#' @field day Must fall inside from..to character
#' @field referrer Raw referring host or utm_source of the order's first visit, e.g. chatgpt.com. Entries that are not an AI assistant are ignored character
#' @field orders  integer
#' @field revenue Non-negative decimal amount in currency, e.g. 120.50. A JSON number is accepted too character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiOrdersUpdateRequestDaysInner <- R6::R6Class(
  "AiOrdersUpdateRequestDaysInner",
  public = list(
    `day` = NULL,
    `referrer` = NULL,
    `orders` = NULL,
    `revenue` = NULL,

    #' @description
    #' Initialize a new AiOrdersUpdateRequestDaysInner class.
    #'
    #' @param day Must fall inside from..to
    #' @param referrer Raw referring host or utm_source of the order's first visit, e.g. chatgpt.com. Entries that are not an AI assistant are ignored
    #' @param orders orders
    #' @param revenue Non-negative decimal amount in currency, e.g. 120.50. A JSON number is accepted too
    #' @param ... Other optional arguments.
    initialize = function(`day`, `referrer`, `orders`, `revenue`, ...) {
      if (!missing(`day`)) {
        if (!(is.character(`day`) && length(`day`) == 1)) {
          stop(paste("Error! Invalid data for `day`. Must be a string:", `day`))
        }
        self$`day` <- `day`
      }
      if (!missing(`referrer`)) {
        if (!(is.character(`referrer`) && length(`referrer`) == 1)) {
          stop(paste("Error! Invalid data for `referrer`. Must be a string:", `referrer`))
        }
        self$`referrer` <- `referrer`
      }
      if (!missing(`orders`)) {
        if (!(is.numeric(`orders`) && length(`orders`) == 1)) {
          stop(paste("Error! Invalid data for `orders`. Must be an integer:", `orders`))
        }
        self$`orders` <- `orders`
      }
      if (!missing(`revenue`)) {
        if (!(is.character(`revenue`) && length(`revenue`) == 1)) {
          stop(paste("Error! Invalid data for `revenue`. Must be a string:", `revenue`))
        }
        self$`revenue` <- `revenue`
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
    #' @return AiOrdersUpdateRequestDaysInner as a base R list.
    #' @examples
    #' # convert array of AiOrdersUpdateRequestDaysInner (x) to a data frame
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
    #' Convert AiOrdersUpdateRequestDaysInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiOrdersUpdateRequestDaysInnerObject <- list()
      if (!is.null(self$`day`)) {
        AiOrdersUpdateRequestDaysInnerObject[["day"]] <-
          self$`day`
      }
      if (!is.null(self$`referrer`)) {
        AiOrdersUpdateRequestDaysInnerObject[["referrer"]] <-
          self$`referrer`
      }
      if (!is.null(self$`orders`)) {
        AiOrdersUpdateRequestDaysInnerObject[["orders"]] <-
          self$`orders`
      }
      if (!is.null(self$`revenue`)) {
        AiOrdersUpdateRequestDaysInnerObject[["revenue"]] <-
          self$`revenue`
      }
      return(AiOrdersUpdateRequestDaysInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiOrdersUpdateRequestDaysInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiOrdersUpdateRequestDaysInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`day`)) {
        self$`day` <- this_object$`day`
      }
      if (!is.null(this_object$`referrer`)) {
        self$`referrer` <- this_object$`referrer`
      }
      if (!is.null(this_object$`orders`)) {
        self$`orders` <- this_object$`orders`
      }
      if (!is.null(this_object$`revenue`)) {
        self$`revenue` <- this_object$`revenue`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiOrdersUpdateRequestDaysInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiOrdersUpdateRequestDaysInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiOrdersUpdateRequestDaysInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`day` <- this_object$`day`
      self$`referrer` <- this_object$`referrer`
      self$`orders` <- this_object$`orders`
      self$`revenue` <- this_object$`revenue`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiOrdersUpdateRequestDaysInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `day`
      if (!is.null(input_json$`day`)) {
        if (!(is.character(input_json$`day`) && length(input_json$`day`) == 1)) {
          stop(paste("Error! Invalid data for `day`. Must be a string:", input_json$`day`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateRequestDaysInner: the required field `day` is missing."))
      }
      # check the required field `referrer`
      if (!is.null(input_json$`referrer`)) {
        if (!(is.character(input_json$`referrer`) && length(input_json$`referrer`) == 1)) {
          stop(paste("Error! Invalid data for `referrer`. Must be a string:", input_json$`referrer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateRequestDaysInner: the required field `referrer` is missing."))
      }
      # check the required field `orders`
      if (!is.null(input_json$`orders`)) {
        if (!(is.numeric(input_json$`orders`) && length(input_json$`orders`) == 1)) {
          stop(paste("Error! Invalid data for `orders`. Must be an integer:", input_json$`orders`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateRequestDaysInner: the required field `orders` is missing."))
      }
      # check the required field `revenue`
      if (!is.null(input_json$`revenue`)) {
        if (!(is.character(input_json$`revenue`) && length(input_json$`revenue`) == 1)) {
          stop(paste("Error! Invalid data for `revenue`. Must be a string:", input_json$`revenue`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateRequestDaysInner: the required field `revenue` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiOrdersUpdateRequestDaysInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `day` is null
      if (is.null(self$`day`)) {
        return(FALSE)
      }

      # check if the required `referrer` is null
      if (is.null(self$`referrer`)) {
        return(FALSE)
      }

      # check if the required `orders` is null
      if (is.null(self$`orders`)) {
        return(FALSE)
      }

      if (self$`orders` < 0) {
        return(FALSE)
      }

      # check if the required `revenue` is null
      if (is.null(self$`revenue`)) {
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
      # check if the required `day` is null
      if (is.null(self$`day`)) {
        invalid_fields["day"] <- "Non-nullable required field `day` cannot be null."
      }

      # check if the required `referrer` is null
      if (is.null(self$`referrer`)) {
        invalid_fields["referrer"] <- "Non-nullable required field `referrer` cannot be null."
      }

      # check if the required `orders` is null
      if (is.null(self$`orders`)) {
        invalid_fields["orders"] <- "Non-nullable required field `orders` cannot be null."
      }

      if (self$`orders` < 0) {
        invalid_fields["orders"] <- "Invalid value for `orders`, must be bigger than or equal to 0."
      }

      # check if the required `revenue` is null
      if (is.null(self$`revenue`)) {
        invalid_fields["revenue"] <- "Non-nullable required field `revenue` cannot be null."
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
# AiOrdersUpdateRequestDaysInner$unlock()
#
## Below is an example to define the print function
# AiOrdersUpdateRequestDaysInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiOrdersUpdateRequestDaysInner$lock()

