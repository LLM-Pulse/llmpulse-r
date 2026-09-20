#' Create a new GetAccount200ResponseRateLimits
#'
#' @description
#' GetAccount200ResponseRateLimits Class
#'
#' @docType class
#' @title GetAccount200ResponseRateLimits
#' @description GetAccount200ResponseRateLimits Class
#' @format An \code{R6Class} generator object
#' @field requests_per_minute The ceiling enforced for the API key used on this call, which may be above the 300/min default. integer [optional]
#' @field write_requests_per_minute Flat ceiling on write requests, the same for every key. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetAccount200ResponseRateLimits <- R6::R6Class(
  "GetAccount200ResponseRateLimits",
  public = list(
    `requests_per_minute` = NULL,
    `write_requests_per_minute` = NULL,

    #' @description
    #' Initialize a new GetAccount200ResponseRateLimits class.
    #'
    #' @param requests_per_minute The ceiling enforced for the API key used on this call, which may be above the 300/min default.
    #' @param write_requests_per_minute Flat ceiling on write requests, the same for every key.
    #' @param ... Other optional arguments.
    initialize = function(`requests_per_minute` = NULL, `write_requests_per_minute` = NULL, ...) {
      if (!is.null(`requests_per_minute`)) {
        if (!(is.numeric(`requests_per_minute`) && length(`requests_per_minute`) == 1)) {
          stop(paste("Error! Invalid data for `requests_per_minute`. Must be an integer:", `requests_per_minute`))
        }
        self$`requests_per_minute` <- `requests_per_minute`
      }
      if (!is.null(`write_requests_per_minute`)) {
        if (!(is.numeric(`write_requests_per_minute`) && length(`write_requests_per_minute`) == 1)) {
          stop(paste("Error! Invalid data for `write_requests_per_minute`. Must be an integer:", `write_requests_per_minute`))
        }
        self$`write_requests_per_minute` <- `write_requests_per_minute`
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
    #' @return GetAccount200ResponseRateLimits as a base R list.
    #' @examples
    #' # convert array of GetAccount200ResponseRateLimits (x) to a data frame
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
    #' Convert GetAccount200ResponseRateLimits to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GetAccount200ResponseRateLimitsObject <- list()
      if (!is.null(self$`requests_per_minute`)) {
        GetAccount200ResponseRateLimitsObject[["requests_per_minute"]] <-
          self$`requests_per_minute`
      }
      if (!is.null(self$`write_requests_per_minute`)) {
        GetAccount200ResponseRateLimitsObject[["write_requests_per_minute"]] <-
          self$`write_requests_per_minute`
      }
      return(GetAccount200ResponseRateLimitsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GetAccount200ResponseRateLimits
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetAccount200ResponseRateLimits
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`requests_per_minute`)) {
        self$`requests_per_minute` <- this_object$`requests_per_minute`
      }
      if (!is.null(this_object$`write_requests_per_minute`)) {
        self$`write_requests_per_minute` <- this_object$`write_requests_per_minute`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GetAccount200ResponseRateLimits in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GetAccount200ResponseRateLimits
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetAccount200ResponseRateLimits
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`requests_per_minute` <- this_object$`requests_per_minute`
      self$`write_requests_per_minute` <- this_object$`write_requests_per_minute`
      self
    },

    #' @description
    #' Validate JSON input with respect to GetAccount200ResponseRateLimits and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GetAccount200ResponseRateLimits
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
# GetAccount200ResponseRateLimits$unlock()
#
## Below is an example to define the print function
# GetAccount200ResponseRateLimits$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetAccount200ResponseRateLimits$lock()

