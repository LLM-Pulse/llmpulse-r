#' Create a new CmsSendResponse
#'
#' @description
#' CmsSendResponse Class
#'
#' @docType class
#' @title CmsSendResponse
#' @description CmsSendResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field created false when this version had already been sent and the existing publication is returned character [optional]
#' @field publication  \link{CmsPublication} [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CmsSendResponse <- R6::R6Class(
  "CmsSendResponse",
  public = list(
    `project_id` = NULL,
    `created` = NULL,
    `publication` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new CmsSendResponse class.
    #'
    #' @param project_id project_id
    #' @param created false when this version had already been sent and the existing publication is returned
    #' @param publication publication
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `created` = NULL, `publication` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`created`)) {
        if (!(is.logical(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be a boolean:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`publication`)) {
        stopifnot(R6::is.R6(`publication`))
        self$`publication` <- `publication`
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
    #' @return CmsSendResponse as a base R list.
    #' @examples
    #' # convert array of CmsSendResponse (x) to a data frame
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
    #' Convert CmsSendResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CmsSendResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        CmsSendResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`created`)) {
        CmsSendResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`publication`)) {
        CmsSendResponseObject[["publication"]] <-
          self$extractSimpleType(self$`publication`)
      }
      if (!is.null(self$`request_id`)) {
        CmsSendResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(CmsSendResponseObject)
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
    #' Deserialize JSON string into an instance of CmsSendResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CmsSendResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`publication`)) {
        `publication_object` <- CmsPublication$new()
        `publication_object`$fromJSON(jsonlite::toJSON(this_object$`publication`, auto_unbox = TRUE, digits = NA))
        self$`publication` <- `publication_object`
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
    #' @return CmsSendResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CmsSendResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CmsSendResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`created` <- this_object$`created`
      self$`publication` <- CmsPublication$new()$fromJSON(jsonlite::toJSON(this_object$`publication`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CmsSendResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CmsSendResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# CmsSendResponse$unlock()
#
## Below is an example to define the print function
# CmsSendResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CmsSendResponse$lock()

