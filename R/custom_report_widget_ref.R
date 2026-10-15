#' Create a new CustomReportWidgetRef
#'
#' @description
#' CustomReportWidgetRef Class
#'
#' @docType class
#' @title CustomReportWidgetRef
#' @description CustomReportWidgetRef Class
#' @format An \code{R6Class} generator object
#' @field key  character
#' @field label  character
#' @field kind  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomReportWidgetRef <- R6::R6Class(
  "CustomReportWidgetRef",
  public = list(
    `key` = NULL,
    `label` = NULL,
    `kind` = NULL,

    #' @description
    #' Initialize a new CustomReportWidgetRef class.
    #'
    #' @param key key
    #' @param label label
    #' @param kind kind
    #' @param ... Other optional arguments.
    initialize = function(`key`, `label`, `kind`, ...) {
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
      if (!missing(`kind`)) {
        if (!(`kind` %in% c("kpi_grid", "timeseries", "donut", "bar", "table"))) {
          stop(paste("Error! \"", `kind`, "\" cannot be assigned to `kind`. Must be \"kpi_grid\", \"timeseries\", \"donut\", \"bar\", \"table\".", sep = ""))
        }
        if (!(is.character(`kind`) && length(`kind`) == 1)) {
          stop(paste("Error! Invalid data for `kind`. Must be a string:", `kind`))
        }
        self$`kind` <- `kind`
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
    #' @return CustomReportWidgetRef as a base R list.
    #' @examples
    #' # convert array of CustomReportWidgetRef (x) to a data frame
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
    #' Convert CustomReportWidgetRef to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomReportWidgetRefObject <- list()
      if (!is.null(self$`key`)) {
        CustomReportWidgetRefObject[["key"]] <-
          self$`key`
      }
      if (!is.null(self$`label`)) {
        CustomReportWidgetRefObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`kind`)) {
        CustomReportWidgetRefObject[["kind"]] <-
          self$`kind`
      }
      return(CustomReportWidgetRefObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomReportWidgetRef
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportWidgetRef
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`key`)) {
        self$`key` <- this_object$`key`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`kind`)) {
        if (!is.null(this_object$`kind`) && !(this_object$`kind` %in% c("kpi_grid", "timeseries", "donut", "bar", "table"))) {
          stop(paste("Error! \"", this_object$`kind`, "\" cannot be assigned to `kind`. Must be \"kpi_grid\", \"timeseries\", \"donut\", \"bar\", \"table\".", sep = ""))
        }
        self$`kind` <- this_object$`kind`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CustomReportWidgetRef in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomReportWidgetRef
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportWidgetRef
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`key` <- this_object$`key`
      self$`label` <- this_object$`label`
      if (!is.null(this_object$`kind`) && !(this_object$`kind` %in% c("kpi_grid", "timeseries", "donut", "bar", "table"))) {
        stop(paste("Error! \"", this_object$`kind`, "\" cannot be assigned to `kind`. Must be \"kpi_grid\", \"timeseries\", \"donut\", \"bar\", \"table\".", sep = ""))
      }
      self$`kind` <- this_object$`kind`
      self
    },

    #' @description
    #' Validate JSON input with respect to CustomReportWidgetRef and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CustomReportWidgetRef: the required field `key` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportWidgetRef: the required field `label` is missing."))
      }
      # check the required field `kind`
      if (!is.null(input_json$`kind`)) {
        if (!(is.character(input_json$`kind`) && length(input_json$`kind`) == 1)) {
          stop(paste("Error! Invalid data for `kind`. Must be a string:", input_json$`kind`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportWidgetRef: the required field `kind` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CustomReportWidgetRef
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

      # check if the required `kind` is null
      if (is.null(self$`kind`)) {
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

      # check if the required `kind` is null
      if (is.null(self$`kind`)) {
        invalid_fields["kind"] <- "Non-nullable required field `kind` cannot be null."
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
# CustomReportWidgetRef$unlock()
#
## Below is an example to define the print function
# CustomReportWidgetRef$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CustomReportWidgetRef$lock()

