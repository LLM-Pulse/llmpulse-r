#' Create a new CitationSeries
#'
#' @description
#' The answers citing it under the same filters, by AI model and per period of the account tracking cadence
#'
#' @docType class
#' @title CitationSeries
#' @description CitationSeries Class
#' @format An \code{R6Class} generator object
#' @field granularity  character
#' @field total Equal to total_responses integer
#' @field by_model Answers per AI model, keyed by model, largest first named list(integer)
#' @field data One point per period holding a filtered answer, oldest first; a zero means answers ran and none cited it list(\link{AiModelPositionDistributionBrandBucketsInnerDataInner})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitationSeries <- R6::R6Class(
  "CitationSeries",
  public = list(
    `granularity` = NULL,
    `total` = NULL,
    `by_model` = NULL,
    `data` = NULL,

    #' @description
    #' Initialize a new CitationSeries class.
    #'
    #' @param granularity granularity
    #' @param total Equal to total_responses
    #' @param by_model Answers per AI model, keyed by model, largest first
    #' @param data One point per period holding a filtered answer, oldest first; a zero means answers ran and none cited it
    #' @param ... Other optional arguments.
    initialize = function(`granularity`, `total`, `by_model`, `data`, ...) {
      if (!missing(`granularity`)) {
        if (!(`granularity` %in% c("day", "week", "month"))) {
          stop(paste("Error! \"", `granularity`, "\" cannot be assigned to `granularity`. Must be \"day\", \"week\", \"month\".", sep = ""))
        }
        if (!(is.character(`granularity`) && length(`granularity`) == 1)) {
          stop(paste("Error! Invalid data for `granularity`. Must be a string:", `granularity`))
        }
        self$`granularity` <- `granularity`
      }
      if (!missing(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!missing(`by_model`)) {
        stopifnot(is.vector(`by_model`), length(`by_model`) != 0)
        sapply(`by_model`, function(x) stopifnot(is.character(x)))
        self$`by_model` <- `by_model`
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
    #' @return CitationSeries as a base R list.
    #' @examples
    #' # convert array of CitationSeries (x) to a data frame
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
    #' Convert CitationSeries to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitationSeriesObject <- list()
      if (!is.null(self$`granularity`)) {
        CitationSeriesObject[["granularity"]] <-
          self$`granularity`
      }
      if (!is.null(self$`total`)) {
        CitationSeriesObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`by_model`)) {
        CitationSeriesObject[["by_model"]] <-
          self$`by_model`
      }
      if (!is.null(self$`data`)) {
        CitationSeriesObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      return(CitationSeriesObject)
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
    #' Deserialize JSON string into an instance of CitationSeries
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationSeries
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`granularity`)) {
        if (!is.null(this_object$`granularity`) && !(this_object$`granularity` %in% c("day", "week", "month"))) {
          stop(paste("Error! \"", this_object$`granularity`, "\" cannot be assigned to `granularity`. Must be \"day\", \"week\", \"month\".", sep = ""))
        }
        self$`granularity` <- this_object$`granularity`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`by_model`)) {
        self$`by_model` <- ApiClient$new()$deserializeObj(this_object$`by_model`, "map(integer)", loadNamespace("llmpulse"))
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
    #' @return CitationSeries in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationSeries
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationSeries
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`granularity`) && !(this_object$`granularity` %in% c("day", "week", "month"))) {
        stop(paste("Error! \"", this_object$`granularity`, "\" cannot be assigned to `granularity`. Must be \"day\", \"week\", \"month\".", sep = ""))
      }
      self$`granularity` <- this_object$`granularity`
      self$`total` <- this_object$`total`
      self$`by_model` <- ApiClient$new()$deserializeObj(this_object$`by_model`, "map(integer)", loadNamespace("llmpulse"))
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[AiModelPositionDistributionBrandBucketsInnerDataInner]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CitationSeries and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `granularity`
      if (!is.null(input_json$`granularity`)) {
        if (!(is.character(input_json$`granularity`) && length(input_json$`granularity`) == 1)) {
          stop(paste("Error! Invalid data for `granularity`. Must be a string:", input_json$`granularity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationSeries: the required field `granularity` is missing."))
      }
      # check the required field `total`
      if (!is.null(input_json$`total`)) {
        if (!(is.numeric(input_json$`total`) && length(input_json$`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", input_json$`total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationSeries: the required field `total` is missing."))
      }
      # check the required field `by_model`
      if (!is.null(input_json$`by_model`)) {
        stopifnot(is.vector(input_json$`by_model`), length(input_json$`by_model`) != 0)
        tmp <- sapply(input_json$`by_model`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationSeries: the required field `by_model` is missing."))
      }
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(is.vector(input_json$`data`), length(input_json$`data`) != 0)
        tmp <- sapply(input_json$`data`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationSeries: the required field `data` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitationSeries
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `granularity` is null
      if (is.null(self$`granularity`)) {
        return(FALSE)
      }

      # check if the required `total` is null
      if (is.null(self$`total`)) {
        return(FALSE)
      }

      # check if the required `by_model` is null
      if (is.null(self$`by_model`)) {
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
      # check if the required `granularity` is null
      if (is.null(self$`granularity`)) {
        invalid_fields["granularity"] <- "Non-nullable required field `granularity` cannot be null."
      }

      # check if the required `total` is null
      if (is.null(self$`total`)) {
        invalid_fields["total"] <- "Non-nullable required field `total` cannot be null."
      }

      # check if the required `by_model` is null
      if (is.null(self$`by_model`)) {
        invalid_fields["by_model"] <- "Non-nullable required field `by_model` cannot be null."
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
# CitationSeries$unlock()
#
## Below is an example to define the print function
# CitationSeries$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitationSeries$lock()

