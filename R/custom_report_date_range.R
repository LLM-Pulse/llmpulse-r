#' Create a new CustomReportDateRange
#'
#' @description
#' CustomReportDateRange Class
#'
#' @docType class
#' @title CustomReportDateRange
#' @description CustomReportDateRange Class
#' @format An \code{R6Class} generator object
#' @field type rolling (the last range_days days) or previous_month (the previous calendar month) character
#' @field range_days Length of a rolling window; null for previous_month integer
#' @field from First day of the window as of now (detail only) character [optional]
#' @field to Last day of the window as of now (detail only) character [optional]
#' @field label The window as the report shows it (detail only) character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomReportDateRange <- R6::R6Class(
  "CustomReportDateRange",
  public = list(
    `type` = NULL,
    `range_days` = NULL,
    `from` = NULL,
    `to` = NULL,
    `label` = NULL,

    #' @description
    #' Initialize a new CustomReportDateRange class.
    #'
    #' @param type rolling (the last range_days days) or previous_month (the previous calendar month)
    #' @param range_days Length of a rolling window; null for previous_month
    #' @param from First day of the window as of now (detail only)
    #' @param to Last day of the window as of now (detail only)
    #' @param label The window as the report shows it (detail only)
    #' @param ... Other optional arguments.
    initialize = function(`type`, `range_days`, `from` = NULL, `to` = NULL, `label` = NULL, ...) {
      if (!missing(`type`)) {
        if (!(`type` %in% c("rolling", "previous_month"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"rolling\", \"previous_month\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!missing(`range_days`)) {
        if (!(is.numeric(`range_days`) && length(`range_days`) == 1)) {
          stop(paste("Error! Invalid data for `range_days`. Must be an integer:", `range_days`))
        }
        self$`range_days` <- `range_days`
      }
      if (!is.null(`from`)) {
        if (!is.character(`from`)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!is.null(`to`)) {
        if (!is.character(`to`)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
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
    #' @return CustomReportDateRange as a base R list.
    #' @examples
    #' # convert array of CustomReportDateRange (x) to a data frame
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
    #' Convert CustomReportDateRange to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomReportDateRangeObject <- list()
      if (!is.null(self$`type`)) {
        CustomReportDateRangeObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`range_days`)) {
        CustomReportDateRangeObject[["range_days"]] <-
          self$`range_days`
      }
      if (!is.null(self$`from`)) {
        CustomReportDateRangeObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        CustomReportDateRangeObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`label`)) {
        CustomReportDateRangeObject[["label"]] <-
          self$`label`
      }
      return(CustomReportDateRangeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomReportDateRange
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportDateRange
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("rolling", "previous_month"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"rolling\", \"previous_month\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`range_days`)) {
        self$`range_days` <- this_object$`range_days`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CustomReportDateRange in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomReportDateRange
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportDateRange
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("rolling", "previous_month"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"rolling\", \"previous_month\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`range_days` <- this_object$`range_days`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`label` <- this_object$`label`
      self
    },

    #' @description
    #' Validate JSON input with respect to CustomReportDateRange and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportDateRange: the required field `type` is missing."))
      }
      # check the required field `range_days`
      if (!is.null(input_json$`range_days`)) {
        if (!(is.numeric(input_json$`range_days`) && length(input_json$`range_days`) == 1)) {
          stop(paste("Error! Invalid data for `range_days`. Must be an integer:", input_json$`range_days`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportDateRange: the required field `range_days` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CustomReportDateRange
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `type` is null
      if (is.null(self$`type`)) {
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
      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
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
# CustomReportDateRange$unlock()
#
## Below is an example to define the print function
# CustomReportDateRange$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CustomReportDateRange$lock()

