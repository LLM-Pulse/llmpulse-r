#' Create a new OwnedMediaCountryShare
#'
#' @description
#' OwnedMediaCountryShare Class
#'
#' @docType class
#' @title OwnedMediaCountryShare
#' @description OwnedMediaCountryShare Class
#' @format An \code{R6Class} generator object
#' @field country_code  character [optional]
#' @field citations  integer [optional]
#' @field share_pct  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaCountryShare <- R6::R6Class(
  "OwnedMediaCountryShare",
  public = list(
    `country_code` = NULL,
    `citations` = NULL,
    `share_pct` = NULL,

    #' @description
    #' Initialize a new OwnedMediaCountryShare class.
    #'
    #' @param country_code country_code
    #' @param citations citations
    #' @param share_pct share_pct
    #' @param ... Other optional arguments.
    initialize = function(`country_code` = NULL, `citations` = NULL, `share_pct` = NULL, ...) {
      if (!is.null(`country_code`)) {
        if (!(is.character(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", `country_code`))
        }
        self$`country_code` <- `country_code`
      }
      if (!is.null(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
      }
      if (!is.null(`share_pct`)) {
        self$`share_pct` <- `share_pct`
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
    #' @return OwnedMediaCountryShare as a base R list.
    #' @examples
    #' # convert array of OwnedMediaCountryShare (x) to a data frame
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
    #' Convert OwnedMediaCountryShare to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaCountryShareObject <- list()
      if (!is.null(self$`country_code`)) {
        OwnedMediaCountryShareObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`citations`)) {
        OwnedMediaCountryShareObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`share_pct`)) {
        OwnedMediaCountryShareObject[["share_pct"]] <-
          self$`share_pct`
      }
      return(OwnedMediaCountryShareObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaCountryShare
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaCountryShare
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      if (!is.null(this_object$`share_pct`)) {
        self$`share_pct` <- this_object$`share_pct`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaCountryShare in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaCountryShare
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaCountryShare
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`country_code` <- this_object$`country_code`
      self$`citations` <- this_object$`citations`
      self$`share_pct` <- this_object$`share_pct`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaCountryShare and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaCountryShare
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
# OwnedMediaCountryShare$unlock()
#
## Below is an example to define the print function
# OwnedMediaCountryShare$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaCountryShare$lock()

