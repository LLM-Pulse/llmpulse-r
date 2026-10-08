#' Create a new GeoAuditArchived
#'
#' @description
#' GeoAuditArchived Class
#'
#' @docType class
#' @title GeoAuditArchived
#' @description GeoAuditArchived Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field id  character [optional]
#' @field archived  character [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoAuditArchived <- R6::R6Class(
  "GeoAuditArchived",
  public = list(
    `project_id` = NULL,
    `id` = NULL,
    `archived` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new GeoAuditArchived class.
    #'
    #' @param project_id project_id
    #' @param id id
    #' @param archived archived
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `id` = NULL, `archived` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`archived`)) {
        if (!(is.logical(`archived`) && length(`archived`) == 1)) {
          stop(paste("Error! Invalid data for `archived`. Must be a boolean:", `archived`))
        }
        self$`archived` <- `archived`
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
    #' @return GeoAuditArchived as a base R list.
    #' @examples
    #' # convert array of GeoAuditArchived (x) to a data frame
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
    #' Convert GeoAuditArchived to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoAuditArchivedObject <- list()
      if (!is.null(self$`project_id`)) {
        GeoAuditArchivedObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`id`)) {
        GeoAuditArchivedObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`archived`)) {
        GeoAuditArchivedObject[["archived"]] <-
          self$`archived`
      }
      if (!is.null(self$`request_id`)) {
        GeoAuditArchivedObject[["request_id"]] <-
          self$`request_id`
      }
      return(GeoAuditArchivedObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditArchived
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditArchived
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`archived`)) {
        self$`archived` <- this_object$`archived`
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
    #' @return GeoAuditArchived in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditArchived
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditArchived
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`id` <- this_object$`id`
      self$`archived` <- this_object$`archived`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoAuditArchived and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoAuditArchived
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
# GeoAuditArchived$unlock()
#
## Below is an example to define the print function
# GeoAuditArchived$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoAuditArchived$lock()

