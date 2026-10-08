#' Create a new GeoAuditIssueUpdateRequest
#'
#' @description
#' GeoAuditIssueUpdateRequest Class
#'
#' @docType class
#' @title GeoAuditIssueUpdateRequest
#' @description GeoAuditIssueUpdateRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field accepted true accepts the issue (it stays listed but leaves the open count until its evidence changes); false reopens it character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoAuditIssueUpdateRequest <- R6::R6Class(
  "GeoAuditIssueUpdateRequest",
  public = list(
    `project_id` = NULL,
    `accepted` = NULL,

    #' @description
    #' Initialize a new GeoAuditIssueUpdateRequest class.
    #'
    #' @param accepted true accepts the issue (it stays listed but leaves the open count until its evidence changes); false reopens it
    #' @param project_id project_id
    #' @param ... Other optional arguments.
    initialize = function(`accepted`, `project_id` = NULL, ...) {
      if (!missing(`accepted`)) {
        if (!(is.logical(`accepted`) && length(`accepted`) == 1)) {
          stop(paste("Error! Invalid data for `accepted`. Must be a boolean:", `accepted`))
        }
        self$`accepted` <- `accepted`
      }
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
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
    #' @return GeoAuditIssueUpdateRequest as a base R list.
    #' @examples
    #' # convert array of GeoAuditIssueUpdateRequest (x) to a data frame
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
    #' Convert GeoAuditIssueUpdateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoAuditIssueUpdateRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        GeoAuditIssueUpdateRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`accepted`)) {
        GeoAuditIssueUpdateRequestObject[["accepted"]] <-
          self$`accepted`
      }
      return(GeoAuditIssueUpdateRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditIssueUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditIssueUpdateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`accepted`)) {
        self$`accepted` <- this_object$`accepted`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeoAuditIssueUpdateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditIssueUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditIssueUpdateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`accepted` <- this_object$`accepted`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoAuditIssueUpdateRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `accepted`
      if (!is.null(input_json$`accepted`)) {
        if (!(is.logical(input_json$`accepted`) && length(input_json$`accepted`) == 1)) {
          stop(paste("Error! Invalid data for `accepted`. Must be a boolean:", input_json$`accepted`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeoAuditIssueUpdateRequest: the required field `accepted` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoAuditIssueUpdateRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `accepted` is null
      if (is.null(self$`accepted`)) {
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
      # check if the required `accepted` is null
      if (is.null(self$`accepted`)) {
        invalid_fields["accepted"] <- "Non-nullable required field `accepted` cannot be null."
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
# GeoAuditIssueUpdateRequest$unlock()
#
## Below is an example to define the print function
# GeoAuditIssueUpdateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoAuditIssueUpdateRequest$lock()

