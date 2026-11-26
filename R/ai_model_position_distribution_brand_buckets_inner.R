#' Create a new AiModelPositionDistributionBrandBucketsInner
#'
#' @description
#' AiModelPositionDistributionBrandBucketsInner Class
#'
#' @docType class
#' @title AiModelPositionDistributionBrandBucketsInner
#' @description AiModelPositionDistributionBrandBucketsInner Class
#' @format An \code{R6Class} generator object
#' @field key  character
#' @field label  character
#' @field color Hex color the app charts the bucket with character
#' @field total Mentions in the bucket over the window integer
#' @field data One point per period of the window, oldest first, 0 included list(\link{AiModelPositionDistributionBrandBucketsInnerDataInner})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelPositionDistributionBrandBucketsInner <- R6::R6Class(
  "AiModelPositionDistributionBrandBucketsInner",
  public = list(
    `key` = NULL,
    `label` = NULL,
    `color` = NULL,
    `total` = NULL,
    `data` = NULL,

    #' @description
    #' Initialize a new AiModelPositionDistributionBrandBucketsInner class.
    #'
    #' @param key key
    #' @param label label
    #' @param color Hex color the app charts the bucket with
    #' @param total Mentions in the bucket over the window
    #' @param data One point per period of the window, oldest first, 0 included
    #' @param ... Other optional arguments.
    initialize = function(`key`, `label`, `color`, `total`, `data`, ...) {
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
      if (!missing(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!missing(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
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
    #' @return AiModelPositionDistributionBrandBucketsInner as a base R list.
    #' @examples
    #' # convert array of AiModelPositionDistributionBrandBucketsInner (x) to a data frame
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
    #' Convert AiModelPositionDistributionBrandBucketsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelPositionDistributionBrandBucketsInnerObject <- list()
      if (!is.null(self$`key`)) {
        AiModelPositionDistributionBrandBucketsInnerObject[["key"]] <-
          self$`key`
      }
      if (!is.null(self$`label`)) {
        AiModelPositionDistributionBrandBucketsInnerObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`color`)) {
        AiModelPositionDistributionBrandBucketsInnerObject[["color"]] <-
          self$`color`
      }
      if (!is.null(self$`total`)) {
        AiModelPositionDistributionBrandBucketsInnerObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`data`)) {
        AiModelPositionDistributionBrandBucketsInnerObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      return(AiModelPositionDistributionBrandBucketsInnerObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelPositionDistributionBrandBucketsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelPositionDistributionBrandBucketsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`key`)) {
        self$`key` <- this_object$`key`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`color`)) {
        self$`color` <- this_object$`color`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[AiModelPositionDistributionBrandBucketsInnerDataInner]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelPositionDistributionBrandBucketsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelPositionDistributionBrandBucketsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelPositionDistributionBrandBucketsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`key` <- this_object$`key`
      self$`label` <- this_object$`label`
      self$`color` <- this_object$`color`
      self$`total` <- this_object$`total`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[AiModelPositionDistributionBrandBucketsInnerDataInner]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelPositionDistributionBrandBucketsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `key`
      if (!is.null(input_json$`key`)) {
        if (!(is.character(input_json$`key`) && length(input_json$`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", input_json$`key`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionBrandBucketsInner: the required field `key` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionBrandBucketsInner: the required field `label` is missing."))
      }
      # check the required field `color`
      if (!is.null(input_json$`color`)) {
        if (!(is.character(input_json$`color`) && length(input_json$`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", input_json$`color`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionBrandBucketsInner: the required field `color` is missing."))
      }
      # check the required field `total`
      if (!is.null(input_json$`total`)) {
        if (!(is.numeric(input_json$`total`) && length(input_json$`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", input_json$`total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionBrandBucketsInner: the required field `total` is missing."))
      }
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(is.vector(input_json$`data`), length(input_json$`data`) != 0)
        tmp <- sapply(input_json$`data`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionBrandBucketsInner: the required field `data` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelPositionDistributionBrandBucketsInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
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

      # check if the required `total` is null
      if (is.null(self$`total`)) {
        return(FALSE)
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
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

      # check if the required `total` is null
      if (is.null(self$`total`)) {
        invalid_fields["total"] <- "Non-nullable required field `total` cannot be null."
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
        invalid_fields["data"] <- "Non-nullable required field `data` cannot be null."
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
# AiModelPositionDistributionBrandBucketsInner$unlock()
#
## Below is an example to define the print function
# AiModelPositionDistributionBrandBucketsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelPositionDistributionBrandBucketsInner$lock()

