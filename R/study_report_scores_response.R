#' Create a new StudyReportScoresResponse
#'
#' @description
#' StudyReportScoresResponse Class
#'
#' @docType class
#' @title StudyReportScoresResponse
#' @description StudyReportScoresResponse Class
#' @format An \code{R6Class} generator object
#' @field study_id  integer
#' @field report  \link{ReputationReportSummary}
#' @field page  integer
#' @field per_page  integer
#' @field total Score rows matching the filters across every page integer
#' @field data  list(\link{AnalystScoreRow})
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StudyReportScoresResponse <- R6::R6Class(
  "StudyReportScoresResponse",
  public = list(
    `study_id` = NULL,
    `report` = NULL,
    `page` = NULL,
    `per_page` = NULL,
    `total` = NULL,
    `data` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new StudyReportScoresResponse class.
    #'
    #' @param study_id study_id
    #' @param report report
    #' @param page page
    #' @param per_page per_page
    #' @param total Score rows matching the filters across every page
    #' @param data data
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`study_id`, `report`, `page`, `per_page`, `total`, `data`, `request_id`, ...) {
      if (!missing(`study_id`)) {
        if (!(is.numeric(`study_id`) && length(`study_id`) == 1)) {
          stop(paste("Error! Invalid data for `study_id`. Must be an integer:", `study_id`))
        }
        self$`study_id` <- `study_id`
      }
      if (!missing(`report`)) {
        stopifnot(R6::is.R6(`report`))
        self$`report` <- `report`
      }
      if (!missing(`page`)) {
        if (!(is.numeric(`page`) && length(`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", `page`))
        }
        self$`page` <- `page`
      }
      if (!missing(`per_page`)) {
        if (!(is.numeric(`per_page`) && length(`per_page`) == 1)) {
          stop(paste("Error! Invalid data for `per_page`. Must be an integer:", `per_page`))
        }
        self$`per_page` <- `per_page`
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
      if (!missing(`request_id`)) {
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
    #' @return StudyReportScoresResponse as a base R list.
    #' @examples
    #' # convert array of StudyReportScoresResponse (x) to a data frame
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
    #' Convert StudyReportScoresResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StudyReportScoresResponseObject <- list()
      if (!is.null(self$`study_id`)) {
        StudyReportScoresResponseObject[["study_id"]] <-
          self$`study_id`
      }
      if (!is.null(self$`report`)) {
        StudyReportScoresResponseObject[["report"]] <-
          self$extractSimpleType(self$`report`)
      }
      if (!is.null(self$`page`)) {
        StudyReportScoresResponseObject[["page"]] <-
          self$`page`
      }
      if (!is.null(self$`per_page`)) {
        StudyReportScoresResponseObject[["per_page"]] <-
          self$`per_page`
      }
      if (!is.null(self$`total`)) {
        StudyReportScoresResponseObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`data`)) {
        StudyReportScoresResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      if (!is.null(self$`request_id`)) {
        StudyReportScoresResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(StudyReportScoresResponseObject)
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
    #' Deserialize JSON string into an instance of StudyReportScoresResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of StudyReportScoresResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`study_id`)) {
        self$`study_id` <- this_object$`study_id`
      }
      if (!is.null(this_object$`report`)) {
        `report_object` <- ReputationReportSummary$new()
        `report_object`$fromJSON(jsonlite::toJSON(this_object$`report`, auto_unbox = TRUE, digits = NA))
        self$`report` <- `report_object`
      }
      if (!is.null(this_object$`page`)) {
        self$`page` <- this_object$`page`
      }
      if (!is.null(this_object$`per_page`)) {
        self$`per_page` <- this_object$`per_page`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[AnalystScoreRow]", loadNamespace("llmpulse"))
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
    #' @return StudyReportScoresResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StudyReportScoresResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of StudyReportScoresResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`study_id` <- this_object$`study_id`
      self$`report` <- ReputationReportSummary$new()$fromJSON(jsonlite::toJSON(this_object$`report`, auto_unbox = TRUE, digits = NA))
      self$`page` <- this_object$`page`
      self$`per_page` <- this_object$`per_page`
      self$`total` <- this_object$`total`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[AnalystScoreRow]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to StudyReportScoresResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `study_id`
      if (!is.null(input_json$`study_id`)) {
        if (!(is.numeric(input_json$`study_id`) && length(input_json$`study_id`) == 1)) {
          stop(paste("Error! Invalid data for `study_id`. Must be an integer:", input_json$`study_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyReportScoresResponse: the required field `study_id` is missing."))
      }
      # check the required field `report`
      if (!is.null(input_json$`report`)) {
        stopifnot(R6::is.R6(input_json$`report`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyReportScoresResponse: the required field `report` is missing."))
      }
      # check the required field `page`
      if (!is.null(input_json$`page`)) {
        if (!(is.numeric(input_json$`page`) && length(input_json$`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", input_json$`page`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyReportScoresResponse: the required field `page` is missing."))
      }
      # check the required field `per_page`
      if (!is.null(input_json$`per_page`)) {
        if (!(is.numeric(input_json$`per_page`) && length(input_json$`per_page`) == 1)) {
          stop(paste("Error! Invalid data for `per_page`. Must be an integer:", input_json$`per_page`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyReportScoresResponse: the required field `per_page` is missing."))
      }
      # check the required field `total`
      if (!is.null(input_json$`total`)) {
        if (!(is.numeric(input_json$`total`) && length(input_json$`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", input_json$`total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyReportScoresResponse: the required field `total` is missing."))
      }
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(is.vector(input_json$`data`), length(input_json$`data`) != 0)
        tmp <- sapply(input_json$`data`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyReportScoresResponse: the required field `data` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StudyReportScoresResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StudyReportScoresResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `study_id` is null
      if (is.null(self$`study_id`)) {
        return(FALSE)
      }

      # check if the required `report` is null
      if (is.null(self$`report`)) {
        return(FALSE)
      }

      # check if the required `page` is null
      if (is.null(self$`page`)) {
        return(FALSE)
      }

      # check if the required `per_page` is null
      if (is.null(self$`per_page`)) {
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

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
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
      # check if the required `study_id` is null
      if (is.null(self$`study_id`)) {
        invalid_fields["study_id"] <- "Non-nullable required field `study_id` cannot be null."
      }

      # check if the required `report` is null
      if (is.null(self$`report`)) {
        invalid_fields["report"] <- "Non-nullable required field `report` cannot be null."
      }

      # check if the required `page` is null
      if (is.null(self$`page`)) {
        invalid_fields["page"] <- "Non-nullable required field `page` cannot be null."
      }

      # check if the required `per_page` is null
      if (is.null(self$`per_page`)) {
        invalid_fields["per_page"] <- "Non-nullable required field `per_page` cannot be null."
      }

      # check if the required `total` is null
      if (is.null(self$`total`)) {
        invalid_fields["total"] <- "Non-nullable required field `total` cannot be null."
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
        invalid_fields["data"] <- "Non-nullable required field `data` cannot be null."
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
        invalid_fields["request_id"] <- "Non-nullable required field `request_id` cannot be null."
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
# StudyReportScoresResponse$unlock()
#
## Below is an example to define the print function
# StudyReportScoresResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StudyReportScoresResponse$lock()

