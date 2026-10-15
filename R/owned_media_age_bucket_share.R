#' Create a new OwnedMediaAgeBucketShare
#'
#' @description
#' OwnedMediaAgeBucketShare Class
#'
#' @docType class
#' @title OwnedMediaAgeBucketShare
#' @description OwnedMediaAgeBucketShare Class
#' @format An \code{R6Class} generator object
#' @field bucket Age of the cited post or video when the summary is read character [optional]
#' @field citations  integer [optional]
#' @field share_pct  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaAgeBucketShare <- R6::R6Class(
  "OwnedMediaAgeBucketShare",
  public = list(
    `bucket` = NULL,
    `citations` = NULL,
    `share_pct` = NULL,

    #' @description
    #' Initialize a new OwnedMediaAgeBucketShare class.
    #'
    #' @param bucket Age of the cited post or video when the summary is read
    #' @param citations citations
    #' @param share_pct share_pct
    #' @param ... Other optional arguments.
    initialize = function(`bucket` = NULL, `citations` = NULL, `share_pct` = NULL, ...) {
      if (!is.null(`bucket`)) {
        if (!(`bucket` %in% c("under_1m", "m1_6", "m6_12", "over_1y"))) {
          stop(paste("Error! \"", `bucket`, "\" cannot be assigned to `bucket`. Must be \"under_1m\", \"m1_6\", \"m6_12\", \"over_1y\".", sep = ""))
        }
        if (!(is.character(`bucket`) && length(`bucket`) == 1)) {
          stop(paste("Error! Invalid data for `bucket`. Must be a string:", `bucket`))
        }
        self$`bucket` <- `bucket`
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
    #' @return OwnedMediaAgeBucketShare as a base R list.
    #' @examples
    #' # convert array of OwnedMediaAgeBucketShare (x) to a data frame
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
    #' Convert OwnedMediaAgeBucketShare to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaAgeBucketShareObject <- list()
      if (!is.null(self$`bucket`)) {
        OwnedMediaAgeBucketShareObject[["bucket"]] <-
          self$`bucket`
      }
      if (!is.null(self$`citations`)) {
        OwnedMediaAgeBucketShareObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`share_pct`)) {
        OwnedMediaAgeBucketShareObject[["share_pct"]] <-
          self$`share_pct`
      }
      return(OwnedMediaAgeBucketShareObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaAgeBucketShare
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaAgeBucketShare
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bucket`)) {
        if (!is.null(this_object$`bucket`) && !(this_object$`bucket` %in% c("under_1m", "m1_6", "m6_12", "over_1y"))) {
          stop(paste("Error! \"", this_object$`bucket`, "\" cannot be assigned to `bucket`. Must be \"under_1m\", \"m1_6\", \"m6_12\", \"over_1y\".", sep = ""))
        }
        self$`bucket` <- this_object$`bucket`
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
    #' @return OwnedMediaAgeBucketShare in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaAgeBucketShare
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaAgeBucketShare
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bucket`) && !(this_object$`bucket` %in% c("under_1m", "m1_6", "m6_12", "over_1y"))) {
        stop(paste("Error! \"", this_object$`bucket`, "\" cannot be assigned to `bucket`. Must be \"under_1m\", \"m1_6\", \"m6_12\", \"over_1y\".", sep = ""))
      }
      self$`bucket` <- this_object$`bucket`
      self$`citations` <- this_object$`citations`
      self$`share_pct` <- this_object$`share_pct`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaAgeBucketShare and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaAgeBucketShare
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
# OwnedMediaAgeBucketShare$unlock()
#
## Below is an example to define the print function
# OwnedMediaAgeBucketShare$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaAgeBucketShare$lock()

