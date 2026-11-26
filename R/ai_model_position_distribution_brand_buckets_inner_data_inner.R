#' Create a new AiModelPositionDistributionBrandBucketsInnerDataInner
#'
#' @description
#' AiModelPositionDistributionBrandBucketsInnerDataInner Class
#'
#' @docType class
#' @title AiModelPositionDistributionBrandBucketsInnerDataInner
#' @description AiModelPositionDistributionBrandBucketsInnerDataInner Class
#' @format An \code{R6Class} generator object
#' @field date First day of the period character
#' @field value  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelPositionDistributionBrandBucketsInnerDataInner <- R6::R6Class(
  "AiModelPositionDistributionBrandBucketsInnerDataInner",
  public = list(
    `date` = NULL,
    `value` = NULL,

    #' @description
    #' Initialize a new AiModelPositionDistributionBrandBucketsInnerDataInner class.
    #'
    #' @param date First day of the period
    #' @param value value
    #' @param ... Other optional arguments.
    initialize = function(`date`, `value`, ...) {
      if (!missing(`date`)) {
        if (!(is.character(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
      }
      if (!missing(`value`)) {
        if (!(is.numeric(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be an integer:", `value`))
        }
        self$`value` <- `value`
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
    #' @return AiModelPositionDistributionBrandBucketsInnerDataInner as a base R list.
    #' @examples
    #' # convert array of AiModelPositionDistributionBrandBucketsInnerDataInner (x) to a data frame
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
    #' Convert AiModelPositionDistributionBrandBucketsInnerDataInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelPositionDistributionBrandBucketsInnerDataInnerObject <- list()
      if (!is.null(self$`date`)) {
        AiModelPositionDistributionBrandBucketsInnerDataInnerObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`value`)) {
        AiModelPositionDistributionBrandBucketsInnerDataInnerObject[["value"]] <-
          self$`value`
      }
      return(AiModelPositionDistributionBrandBucketsInnerDataInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelPositionDistributionBrandBucketsInnerDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelPositionDistributionBrandBucketsInnerDataInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelPositionDistributionBrandBucketsInnerDataInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelPositionDistributionBrandBucketsInnerDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelPositionDistributionBrandBucketsInnerDataInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`date` <- this_object$`date`
      self$`value` <- this_object$`value`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelPositionDistributionBrandBucketsInnerDataInner and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionBrandBucketsInnerDataInner: the required field `date` is missing."))
      }
      # check the required field `value`
      if (!is.null(input_json$`value`)) {
        if (!(is.numeric(input_json$`value`) && length(input_json$`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be an integer:", input_json$`value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionBrandBucketsInnerDataInner: the required field `value` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelPositionDistributionBrandBucketsInnerDataInner
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

      # check if the required `value` is null
      if (is.null(self$`value`)) {
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

      # check if the required `value` is null
      if (is.null(self$`value`)) {
        invalid_fields["value"] <- "Non-nullable required field `value` cannot be null."
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
# AiModelPositionDistributionBrandBucketsInnerDataInner$unlock()
#
## Below is an example to define the print function
# AiModelPositionDistributionBrandBucketsInnerDataInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelPositionDistributionBrandBucketsInnerDataInner$lock()

