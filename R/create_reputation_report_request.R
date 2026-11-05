#' Create a new CreateReputationReportRequest
#'
#' @description
#' CreateReputationReportRequest Class
#'
#' @docType class
#' @title CreateReputationReportRequest
#' @description CreateReputationReportRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field recalculate Use this month's one manual recalculation instead of returning the existing report character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateReputationReportRequest <- R6::R6Class(
  "CreateReputationReportRequest",
  public = list(
    `project_id` = NULL,
    `recalculate` = NULL,

    #' @description
    #' Initialize a new CreateReputationReportRequest class.
    #'
    #' @param project_id project_id
    #' @param recalculate Use this month's one manual recalculation instead of returning the existing report. Default to FALSE.
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `recalculate` = FALSE, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`recalculate`)) {
        if (!(is.logical(`recalculate`) && length(`recalculate`) == 1)) {
          stop(paste("Error! Invalid data for `recalculate`. Must be a boolean:", `recalculate`))
        }
        self$`recalculate` <- `recalculate`
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
    #' @return CreateReputationReportRequest as a base R list.
    #' @examples
    #' # convert array of CreateReputationReportRequest (x) to a data frame
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
    #' Convert CreateReputationReportRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateReputationReportRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        CreateReputationReportRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`recalculate`)) {
        CreateReputationReportRequestObject[["recalculate"]] <-
          self$`recalculate`
      }
      return(CreateReputationReportRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateReputationReportRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateReputationReportRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`recalculate`)) {
        self$`recalculate` <- this_object$`recalculate`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateReputationReportRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateReputationReportRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateReputationReportRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`recalculate` <- this_object$`recalculate`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateReputationReportRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CreateReputationReportRequest: the required field `project_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateReputationReportRequest
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
# CreateReputationReportRequest$unlock()
#
## Below is an example to define the print function
# CreateReputationReportRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateReputationReportRequest$lock()

