#' Create a new RevokeTeamInvitation200Response
#'
#' @description
#' RevokeTeamInvitation200Response Class
#'
#' @docType class
#' @title RevokeTeamInvitation200Response
#' @description RevokeTeamInvitation200Response Class
#' @format An \code{R6Class} generator object
#' @field revoked  character [optional]
#' @field id  integer [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RevokeTeamInvitation200Response <- R6::R6Class(
  "RevokeTeamInvitation200Response",
  public = list(
    `revoked` = NULL,
    `id` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new RevokeTeamInvitation200Response class.
    #'
    #' @param revoked revoked
    #' @param id id
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`revoked` = NULL, `id` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`revoked`)) {
        if (!(is.logical(`revoked`) && length(`revoked`) == 1)) {
          stop(paste("Error! Invalid data for `revoked`. Must be a boolean:", `revoked`))
        }
        self$`revoked` <- `revoked`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
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
    #' @return RevokeTeamInvitation200Response as a base R list.
    #' @examples
    #' # convert array of RevokeTeamInvitation200Response (x) to a data frame
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
    #' Convert RevokeTeamInvitation200Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RevokeTeamInvitation200ResponseObject <- list()
      if (!is.null(self$`revoked`)) {
        RevokeTeamInvitation200ResponseObject[["revoked"]] <-
          self$`revoked`
      }
      if (!is.null(self$`id`)) {
        RevokeTeamInvitation200ResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`request_id`)) {
        RevokeTeamInvitation200ResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(RevokeTeamInvitation200ResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RevokeTeamInvitation200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of RevokeTeamInvitation200Response
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`revoked`)) {
        self$`revoked` <- this_object$`revoked`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
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
    #' @return RevokeTeamInvitation200Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RevokeTeamInvitation200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of RevokeTeamInvitation200Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`revoked` <- this_object$`revoked`
      self$`id` <- this_object$`id`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to RevokeTeamInvitation200Response and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RevokeTeamInvitation200Response
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
# RevokeTeamInvitation200Response$unlock()
#
## Below is an example to define the print function
# RevokeTeamInvitation200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RevokeTeamInvitation200Response$lock()

