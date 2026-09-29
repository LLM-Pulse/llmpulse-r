#' Create a new TechnicalGeoReportContentUpdateRequest
#'
#' @description
#' TechnicalGeoReportContentUpdateRequest Class
#'
#' @docType class
#' @title TechnicalGeoReportContentUpdateRequest
#' @description TechnicalGeoReportContentUpdateRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field report_type Only llms_txt reports have editable content character
#' @field content_version result_data.content_version of the report as last read. It changes on every save; a value that no longer matches is refused as stale character
#' @field edits  \link{TechnicalGeoReportContentUpdateRequestEdits}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TechnicalGeoReportContentUpdateRequest <- R6::R6Class(
  "TechnicalGeoReportContentUpdateRequest",
  public = list(
    `project_id` = NULL,
    `report_type` = NULL,
    `content_version` = NULL,
    `edits` = NULL,

    #' @description
    #' Initialize a new TechnicalGeoReportContentUpdateRequest class.
    #'
    #' @param project_id project_id
    #' @param report_type Only llms_txt reports have editable content
    #' @param content_version result_data.content_version of the report as last read. It changes on every save; a value that no longer matches is refused as stale
    #' @param edits edits
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `report_type`, `content_version`, `edits`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`report_type`)) {
        if (!(`report_type` %in% c("llms_txt"))) {
          stop(paste("Error! \"", `report_type`, "\" cannot be assigned to `report_type`. Must be \"llms_txt\".", sep = ""))
        }
        if (!(is.character(`report_type`) && length(`report_type`) == 1)) {
          stop(paste("Error! Invalid data for `report_type`. Must be a string:", `report_type`))
        }
        self$`report_type` <- `report_type`
      }
      if (!missing(`content_version`)) {
        if (!(is.character(`content_version`) && length(`content_version`) == 1)) {
          stop(paste("Error! Invalid data for `content_version`. Must be a string:", `content_version`))
        }
        self$`content_version` <- `content_version`
      }
      if (!missing(`edits`)) {
        stopifnot(R6::is.R6(`edits`))
        self$`edits` <- `edits`
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
    #' @return TechnicalGeoReportContentUpdateRequest as a base R list.
    #' @examples
    #' # convert array of TechnicalGeoReportContentUpdateRequest (x) to a data frame
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
    #' Convert TechnicalGeoReportContentUpdateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TechnicalGeoReportContentUpdateRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        TechnicalGeoReportContentUpdateRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`report_type`)) {
        TechnicalGeoReportContentUpdateRequestObject[["report_type"]] <-
          self$`report_type`
      }
      if (!is.null(self$`content_version`)) {
        TechnicalGeoReportContentUpdateRequestObject[["content_version"]] <-
          self$`content_version`
      }
      if (!is.null(self$`edits`)) {
        TechnicalGeoReportContentUpdateRequestObject[["edits"]] <-
          self$extractSimpleType(self$`edits`)
      }
      return(TechnicalGeoReportContentUpdateRequestObject)
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
    #' Deserialize JSON string into an instance of TechnicalGeoReportContentUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TechnicalGeoReportContentUpdateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`report_type`)) {
        if (!is.null(this_object$`report_type`) && !(this_object$`report_type` %in% c("llms_txt"))) {
          stop(paste("Error! \"", this_object$`report_type`, "\" cannot be assigned to `report_type`. Must be \"llms_txt\".", sep = ""))
        }
        self$`report_type` <- this_object$`report_type`
      }
      if (!is.null(this_object$`content_version`)) {
        self$`content_version` <- this_object$`content_version`
      }
      if (!is.null(this_object$`edits`)) {
        `edits_object` <- TechnicalGeoReportContentUpdateRequestEdits$new()
        `edits_object`$fromJSON(jsonlite::toJSON(this_object$`edits`, auto_unbox = TRUE, digits = NA))
        self$`edits` <- `edits_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TechnicalGeoReportContentUpdateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TechnicalGeoReportContentUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TechnicalGeoReportContentUpdateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`report_type`) && !(this_object$`report_type` %in% c("llms_txt"))) {
        stop(paste("Error! \"", this_object$`report_type`, "\" cannot be assigned to `report_type`. Must be \"llms_txt\".", sep = ""))
      }
      self$`report_type` <- this_object$`report_type`
      self$`content_version` <- this_object$`content_version`
      self$`edits` <- TechnicalGeoReportContentUpdateRequestEdits$new()$fromJSON(jsonlite::toJSON(this_object$`edits`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to TechnicalGeoReportContentUpdateRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `project_id`
      if (!is.null(input_json$`project_id`)) {
        if (!(is.numeric(input_json$`project_id`) && length(input_json$`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", input_json$`project_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportContentUpdateRequest: the required field `project_id` is missing."))
      }
      # check the required field `report_type`
      if (!is.null(input_json$`report_type`)) {
        if (!(is.character(input_json$`report_type`) && length(input_json$`report_type`) == 1)) {
          stop(paste("Error! Invalid data for `report_type`. Must be a string:", input_json$`report_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportContentUpdateRequest: the required field `report_type` is missing."))
      }
      # check the required field `content_version`
      if (!is.null(input_json$`content_version`)) {
        if (!(is.character(input_json$`content_version`) && length(input_json$`content_version`) == 1)) {
          stop(paste("Error! Invalid data for `content_version`. Must be a string:", input_json$`content_version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportContentUpdateRequest: the required field `content_version` is missing."))
      }
      # check the required field `edits`
      if (!is.null(input_json$`edits`)) {
        stopifnot(R6::is.R6(input_json$`edits`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportContentUpdateRequest: the required field `edits` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TechnicalGeoReportContentUpdateRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        return(FALSE)
      }

      # check if the required `report_type` is null
      if (is.null(self$`report_type`)) {
        return(FALSE)
      }

      # check if the required `content_version` is null
      if (is.null(self$`content_version`)) {
        return(FALSE)
      }

      # check if the required `edits` is null
      if (is.null(self$`edits`)) {
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
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        invalid_fields["project_id"] <- "Non-nullable required field `project_id` cannot be null."
      }

      # check if the required `report_type` is null
      if (is.null(self$`report_type`)) {
        invalid_fields["report_type"] <- "Non-nullable required field `report_type` cannot be null."
      }

      # check if the required `content_version` is null
      if (is.null(self$`content_version`)) {
        invalid_fields["content_version"] <- "Non-nullable required field `content_version` cannot be null."
      }

      # check if the required `edits` is null
      if (is.null(self$`edits`)) {
        invalid_fields["edits"] <- "Non-nullable required field `edits` cannot be null."
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
# TechnicalGeoReportContentUpdateRequest$unlock()
#
## Below is an example to define the print function
# TechnicalGeoReportContentUpdateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TechnicalGeoReportContentUpdateRequest$lock()

