#' Create a new TechnicalGeoReportContentRevertRequest
#'
#' @description
#' TechnicalGeoReportContentRevertRequest Class
#'
#' @docType class
#' @title TechnicalGeoReportContentRevertRequest
#' @description TechnicalGeoReportContentRevertRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field report_type Only llms_txt reports have editable content character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TechnicalGeoReportContentRevertRequest <- R6::R6Class(
  "TechnicalGeoReportContentRevertRequest",
  public = list(
    `project_id` = NULL,
    `report_type` = NULL,

    #' @description
    #' Initialize a new TechnicalGeoReportContentRevertRequest class.
    #'
    #' @param project_id project_id
    #' @param report_type Only llms_txt reports have editable content
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `report_type`, ...) {
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
    #' @return TechnicalGeoReportContentRevertRequest as a base R list.
    #' @examples
    #' # convert array of TechnicalGeoReportContentRevertRequest (x) to a data frame
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
    #' Convert TechnicalGeoReportContentRevertRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TechnicalGeoReportContentRevertRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        TechnicalGeoReportContentRevertRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`report_type`)) {
        TechnicalGeoReportContentRevertRequestObject[["report_type"]] <-
          self$`report_type`
      }
      return(TechnicalGeoReportContentRevertRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TechnicalGeoReportContentRevertRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TechnicalGeoReportContentRevertRequest
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TechnicalGeoReportContentRevertRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TechnicalGeoReportContentRevertRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TechnicalGeoReportContentRevertRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`report_type`) && !(this_object$`report_type` %in% c("llms_txt"))) {
        stop(paste("Error! \"", this_object$`report_type`, "\" cannot be assigned to `report_type`. Must be \"llms_txt\".", sep = ""))
      }
      self$`report_type` <- this_object$`report_type`
      self
    },

    #' @description
    #' Validate JSON input with respect to TechnicalGeoReportContentRevertRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportContentRevertRequest: the required field `project_id` is missing."))
      }
      # check the required field `report_type`
      if (!is.null(input_json$`report_type`)) {
        if (!(is.character(input_json$`report_type`) && length(input_json$`report_type`) == 1)) {
          stop(paste("Error! Invalid data for `report_type`. Must be a string:", input_json$`report_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TechnicalGeoReportContentRevertRequest: the required field `report_type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TechnicalGeoReportContentRevertRequest
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
# TechnicalGeoReportContentRevertRequest$unlock()
#
## Below is an example to define the print function
# TechnicalGeoReportContentRevertRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TechnicalGeoReportContentRevertRequest$lock()

