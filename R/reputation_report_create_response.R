#' Create a new ReputationReportCreateResponse
#'
#' @description
#' ReputationReportCreateResponse Class
#'
#' @docType class
#' @title ReputationReportCreateResponse
#' @description ReputationReportCreateResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field created True when this request started a new report; false when it returned the one that already holds the month character
#' @field report  \link{ReputationReportSummary}
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReputationReportCreateResponse <- R6::R6Class(
  "ReputationReportCreateResponse",
  public = list(
    `project_id` = NULL,
    `created` = NULL,
    `report` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new ReputationReportCreateResponse class.
    #'
    #' @param project_id project_id
    #' @param created True when this request started a new report; false when it returned the one that already holds the month
    #' @param report report
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `created`, `report`, `request_id` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`created`)) {
        if (!(is.logical(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be a boolean:", `created`))
        }
        self$`created` <- `created`
      }
      if (!missing(`report`)) {
        stopifnot(R6::is.R6(`report`))
        self$`report` <- `report`
      }
      if (!is.null(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
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
    #' @return ReputationReportCreateResponse as a base R list.
    #' @examples
    #' # convert array of ReputationReportCreateResponse (x) to a data frame
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
    #' Convert ReputationReportCreateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReputationReportCreateResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        ReputationReportCreateResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`created`)) {
        ReputationReportCreateResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`report`)) {
        ReputationReportCreateResponseObject[["report"]] <-
          self$extractSimpleType(self$`report`)
      }
      if (!is.null(self$`request_id`)) {
        ReputationReportCreateResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(ReputationReportCreateResponseObject)
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
    #' Deserialize JSON string into an instance of ReputationReportCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReputationReportCreateResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`report`)) {
        `report_object` <- ReputationReportSummary$new()
        `report_object`$fromJSON(jsonlite::toJSON(this_object$`report`, auto_unbox = TRUE, digits = NA))
        self$`report` <- `report_object`
      }
      if (!is.null(this_object$`request_id`)) {
        self$`request_id` <- this_object$`request_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ReputationReportCreateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReputationReportCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReputationReportCreateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`created` <- this_object$`created`
      self$`report` <- ReputationReportSummary$new()$fromJSON(jsonlite::toJSON(this_object$`report`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to ReputationReportCreateResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ReputationReportCreateResponse: the required field `project_id` is missing."))
      }
      # check the required field `created`
      if (!is.null(input_json$`created`)) {
        if (!(is.logical(input_json$`created`) && length(input_json$`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be a boolean:", input_json$`created`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReputationReportCreateResponse: the required field `created` is missing."))
      }
      # check the required field `report`
      if (!is.null(input_json$`report`)) {
        stopifnot(R6::is.R6(input_json$`report`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReputationReportCreateResponse: the required field `report` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReputationReportCreateResponse
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

      # check if the required `created` is null
      if (is.null(self$`created`)) {
        return(FALSE)
      }

      # check if the required `report` is null
      if (is.null(self$`report`)) {
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

      # check if the required `created` is null
      if (is.null(self$`created`)) {
        invalid_fields["created"] <- "Non-nullable required field `created` cannot be null."
      }

      # check if the required `report` is null
      if (is.null(self$`report`)) {
        invalid_fields["report"] <- "Non-nullable required field `report` cannot be null."
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
# ReputationReportCreateResponse$unlock()
#
## Below is an example to define the print function
# ReputationReportCreateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReputationReportCreateResponse$lock()

