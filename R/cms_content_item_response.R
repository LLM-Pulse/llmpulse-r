#' Create a new CmsContentItemResponse
#'
#' @description
#' CmsContentItemResponse Class
#'
#' @docType class
#' @title CmsContentItemResponse
#' @description CmsContentItemResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field site  \link{CmsSite} [optional]
#' @field data  \link{CmsContentItem} [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CmsContentItemResponse <- R6::R6Class(
  "CmsContentItemResponse",
  public = list(
    `project_id` = NULL,
    `site` = NULL,
    `data` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new CmsContentItemResponse class.
    #'
    #' @param project_id project_id
    #' @param site site
    #' @param data data
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `site` = NULL, `data` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`site`)) {
        stopifnot(R6::is.R6(`site`))
        self$`site` <- `site`
      }
      if (!is.null(`data`)) {
        stopifnot(R6::is.R6(`data`))
        self$`data` <- `data`
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
    #' @return CmsContentItemResponse as a base R list.
    #' @examples
    #' # convert array of CmsContentItemResponse (x) to a data frame
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
    #' Convert CmsContentItemResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CmsContentItemResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        CmsContentItemResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`site`)) {
        CmsContentItemResponseObject[["site"]] <-
          self$extractSimpleType(self$`site`)
      }
      if (!is.null(self$`data`)) {
        CmsContentItemResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      if (!is.null(self$`request_id`)) {
        CmsContentItemResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(CmsContentItemResponseObject)
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
    #' Deserialize JSON string into an instance of CmsContentItemResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CmsContentItemResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`site`)) {
        `site_object` <- CmsSite$new()
        `site_object`$fromJSON(jsonlite::toJSON(this_object$`site`, auto_unbox = TRUE, digits = NA))
        self$`site` <- `site_object`
      }
      if (!is.null(this_object$`data`)) {
        `data_object` <- CmsContentItem$new()
        `data_object`$fromJSON(jsonlite::toJSON(this_object$`data`, auto_unbox = TRUE, digits = NA))
        self$`data` <- `data_object`
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
    #' @return CmsContentItemResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CmsContentItemResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CmsContentItemResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`site` <- CmsSite$new()$fromJSON(jsonlite::toJSON(this_object$`site`, auto_unbox = TRUE, digits = NA))
      self$`data` <- CmsContentItem$new()$fromJSON(jsonlite::toJSON(this_object$`data`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CmsContentItemResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CmsContentItemResponse
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
# CmsContentItemResponse$unlock()
#
## Below is an example to define the print function
# CmsContentItemResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CmsContentItemResponse$lock()

