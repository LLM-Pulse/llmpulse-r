#' Create a new CustomReportWidget
#'
#' @description
#' CustomReportWidget Class
#'
#' @docType class
#' @title CustomReportWidget
#' @description CustomReportWidget Class
#' @format An \code{R6Class} generator object
#' @field key  character
#' @field label  character
#' @field kind  character
#' @field width  character
#' @field available false when the widget's data source (web analytics, agent analytics, owned media) is not connected character
#' @field data Shaped by kind. timeseries: series [{ name, color, points [{ date, value }] }]. donut: slices [{ name, value, color }]. bar: bars [{ label, value, color }]. kpi_grid: values and changes (null unless the report compares with the previous period). table: rows, one object per row. Null when the widget is not available. named list(object) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomReportWidget <- R6::R6Class(
  "CustomReportWidget",
  public = list(
    `key` = NULL,
    `label` = NULL,
    `kind` = NULL,
    `width` = NULL,
    `available` = NULL,
    `data` = NULL,

    #' @description
    #' Initialize a new CustomReportWidget class.
    #'
    #' @param key key
    #' @param label label
    #' @param kind kind
    #' @param width width
    #' @param available false when the widget's data source (web analytics, agent analytics, owned media) is not connected
    #' @param data Shaped by kind. timeseries: series [{ name, color, points [{ date, value }] }]. donut: slices [{ name, value, color }]. bar: bars [{ label, value, color }]. kpi_grid: values and changes (null unless the report compares with the previous period). table: rows, one object per row. Null when the widget is not available.
    #' @param ... Other optional arguments.
    initialize = function(`key`, `label`, `kind`, `width`, `available`, `data` = NULL, ...) {
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
      if (!missing(`width`)) {
        if (!(`width` %in% c("half", "full"))) {
          stop(paste("Error! \"", `width`, "\" cannot be assigned to `width`. Must be \"half\", \"full\".", sep = ""))
        }
        if (!(is.character(`width`) && length(`width`) == 1)) {
          stop(paste("Error! Invalid data for `width`. Must be a string:", `width`))
        }
        self$`width` <- `width`
      }
      if (!missing(`available`)) {
        if (!(is.logical(`available`) && length(`available`) == 1)) {
          stop(paste("Error! Invalid data for `available`. Must be a boolean:", `available`))
        }
        self$`available` <- `available`
      }
      if (!is.null(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(is.character(x)))
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
    #' @return CustomReportWidget as a base R list.
    #' @examples
    #' # convert array of CustomReportWidget (x) to a data frame
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
    #' Convert CustomReportWidget to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomReportWidgetObject <- list()
      if (!is.null(self$`key`)) {
        CustomReportWidgetObject[["key"]] <-
          self$`key`
      }
      if (!is.null(self$`label`)) {
        CustomReportWidgetObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`kind`)) {
        CustomReportWidgetObject[["kind"]] <-
          self$`kind`
      }
      if (!is.null(self$`width`)) {
        CustomReportWidgetObject[["width"]] <-
          self$`width`
      }
      if (!is.null(self$`available`)) {
        CustomReportWidgetObject[["available"]] <-
          self$`available`
      }
      if (!is.null(self$`data`)) {
        CustomReportWidgetObject[["data"]] <-
          self$`data`
      }
      return(CustomReportWidgetObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomReportWidget
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportWidget
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
      if (!is.null(this_object$`width`)) {
        if (!is.null(this_object$`width`) && !(this_object$`width` %in% c("half", "full"))) {
          stop(paste("Error! \"", this_object$`width`, "\" cannot be assigned to `width`. Must be \"half\", \"full\".", sep = ""))
        }
        self$`width` <- this_object$`width`
      }
      if (!is.null(this_object$`available`)) {
        self$`available` <- this_object$`available`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "map(object)", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CustomReportWidget in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomReportWidget
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportWidget
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`key` <- this_object$`key`
      self$`label` <- this_object$`label`
      if (!is.null(this_object$`kind`) && !(this_object$`kind` %in% c("kpi_grid", "timeseries", "donut", "bar", "table"))) {
        stop(paste("Error! \"", this_object$`kind`, "\" cannot be assigned to `kind`. Must be \"kpi_grid\", \"timeseries\", \"donut\", \"bar\", \"table\".", sep = ""))
      }
      self$`kind` <- this_object$`kind`
      if (!is.null(this_object$`width`) && !(this_object$`width` %in% c("half", "full"))) {
        stop(paste("Error! \"", this_object$`width`, "\" cannot be assigned to `width`. Must be \"half\", \"full\".", sep = ""))
      }
      self$`width` <- this_object$`width`
      self$`available` <- this_object$`available`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "map(object)", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CustomReportWidget and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CustomReportWidget: the required field `key` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportWidget: the required field `label` is missing."))
      }
      # check the required field `kind`
      if (!is.null(input_json$`kind`)) {
        if (!(is.character(input_json$`kind`) && length(input_json$`kind`) == 1)) {
          stop(paste("Error! Invalid data for `kind`. Must be a string:", input_json$`kind`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportWidget: the required field `kind` is missing."))
      }
      # check the required field `width`
      if (!is.null(input_json$`width`)) {
        if (!(is.character(input_json$`width`) && length(input_json$`width`) == 1)) {
          stop(paste("Error! Invalid data for `width`. Must be a string:", input_json$`width`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportWidget: the required field `width` is missing."))
      }
      # check the required field `available`
      if (!is.null(input_json$`available`)) {
        if (!(is.logical(input_json$`available`) && length(input_json$`available`) == 1)) {
          stop(paste("Error! Invalid data for `available`. Must be a boolean:", input_json$`available`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportWidget: the required field `available` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CustomReportWidget
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

      # check if the required `width` is null
      if (is.null(self$`width`)) {
        return(FALSE)
      }

      # check if the required `available` is null
      if (is.null(self$`available`)) {
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

      # check if the required `width` is null
      if (is.null(self$`width`)) {
        invalid_fields["width"] <- "Non-nullable required field `width` cannot be null."
      }

      # check if the required `available` is null
      if (is.null(self$`available`)) {
        invalid_fields["available"] <- "Non-nullable required field `available` cannot be null."
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
# CustomReportWidget$unlock()
#
## Below is an example to define the print function
# CustomReportWidget$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CustomReportWidget$lock()

