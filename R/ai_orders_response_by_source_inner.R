#' Create a new AiOrdersResponseBySourceInner
#'
#' @description
#' AiOrdersResponseBySourceInner Class
#'
#' @docType class
#' @title AiOrdersResponseBySourceInner
#' @description AiOrdersResponseBySourceInner Class
#' @format An \code{R6Class} generator object
#' @field source AI assistant slug, e.g. chatgpt or perplexity character
#' @field name Display name, e.g. ChatGPT character
#' @field orders  integer
#' @field revenue  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiOrdersResponseBySourceInner <- R6::R6Class(
  "AiOrdersResponseBySourceInner",
  public = list(
    `source` = NULL,
    `name` = NULL,
    `orders` = NULL,
    `revenue` = NULL,

    #' @description
    #' Initialize a new AiOrdersResponseBySourceInner class.
    #'
    #' @param source AI assistant slug, e.g. chatgpt or perplexity
    #' @param name Display name, e.g. ChatGPT
    #' @param orders orders
    #' @param revenue revenue
    #' @param ... Other optional arguments.
    initialize = function(`source`, `name`, `orders`, `revenue`, ...) {
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
    #' @return AiOrdersResponseBySourceInner as a base R list.
    #' @examples
    #' # convert array of AiOrdersResponseBySourceInner (x) to a data frame
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
    #' Convert AiOrdersResponseBySourceInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiOrdersResponseBySourceInnerObject <- list()
      if (!is.null(self$`source`)) {
        AiOrdersResponseBySourceInnerObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`name`)) {
        AiOrdersResponseBySourceInnerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`orders`)) {
        AiOrdersResponseBySourceInnerObject[["orders"]] <-
          self$`orders`
      }
      if (!is.null(self$`revenue`)) {
        AiOrdersResponseBySourceInnerObject[["revenue"]] <-
          self$`revenue`
      }
      return(AiOrdersResponseBySourceInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiOrdersResponseBySourceInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiOrdersResponseBySourceInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
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
    #' @return AiOrdersResponseBySourceInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiOrdersResponseBySourceInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiOrdersResponseBySourceInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`source` <- this_object$`source`
      self$`name` <- this_object$`name`
      self$`orders` <- this_object$`orders`
      self$`revenue` <- this_object$`revenue`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiOrdersResponseBySourceInner and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersResponseBySourceInner: the required field `source` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersResponseBySourceInner: the required field `name` is missing."))
      }
      # check the required field `orders`
      if (!is.null(input_json$`orders`)) {
        if (!(is.numeric(input_json$`orders`) && length(input_json$`orders`) == 1)) {
          stop(paste("Error! Invalid data for `orders`. Must be an integer:", input_json$`orders`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersResponseBySourceInner: the required field `orders` is missing."))
      }
      # check the required field `revenue`
      if (!is.null(input_json$`revenue`)) {
        if (!(is.character(input_json$`revenue`) && length(input_json$`revenue`) == 1)) {
          stop(paste("Error! Invalid data for `revenue`. Must be a string:", input_json$`revenue`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersResponseBySourceInner: the required field `revenue` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiOrdersResponseBySourceInner
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

      # check if the required `orders` is null
      if (is.null(self$`orders`)) {
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
      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `orders` is null
      if (is.null(self$`orders`)) {
        invalid_fields["orders"] <- "Non-nullable required field `orders` cannot be null."
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
# AiOrdersResponseBySourceInner$unlock()
#
## Below is an example to define the print function
# AiOrdersResponseBySourceInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiOrdersResponseBySourceInner$lock()

