#' Create a new OwnedMediaStoreTotals
#'
#' @description
#' OwnedMediaStoreTotals Class
#'
#' @docType class
#' @title OwnedMediaStoreTotals
#' @description OwnedMediaStoreTotals Class
#' @format An \code{R6Class} generator object
#' @field store  character [optional]
#' @field total  integer [optional]
#' @field yours  integer [optional]
#' @field share_pct  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaStoreTotals <- R6::R6Class(
  "OwnedMediaStoreTotals",
  public = list(
    `store` = NULL,
    `total` = NULL,
    `yours` = NULL,
    `share_pct` = NULL,

    #' @description
    #' Initialize a new OwnedMediaStoreTotals class.
    #'
    #' @param store store
    #' @param total total
    #' @param yours yours
    #' @param share_pct share_pct
    #' @param ... Other optional arguments.
    initialize = function(`store` = NULL, `total` = NULL, `yours` = NULL, `share_pct` = NULL, ...) {
      if (!is.null(`store`)) {
        if (!(`store` %in% c("google_play", "app_store"))) {
          stop(paste("Error! \"", `store`, "\" cannot be assigned to `store`. Must be \"google_play\", \"app_store\".", sep = ""))
        }
        if (!(is.character(`store`) && length(`store`) == 1)) {
          stop(paste("Error! Invalid data for `store`. Must be a string:", `store`))
        }
        self$`store` <- `store`
      }
      if (!is.null(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!is.null(`yours`)) {
        if (!(is.numeric(`yours`) && length(`yours`) == 1)) {
          stop(paste("Error! Invalid data for `yours`. Must be an integer:", `yours`))
        }
        self$`yours` <- `yours`
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
    #' @return OwnedMediaStoreTotals as a base R list.
    #' @examples
    #' # convert array of OwnedMediaStoreTotals (x) to a data frame
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
    #' Convert OwnedMediaStoreTotals to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaStoreTotalsObject <- list()
      if (!is.null(self$`store`)) {
        OwnedMediaStoreTotalsObject[["store"]] <-
          self$`store`
      }
      if (!is.null(self$`total`)) {
        OwnedMediaStoreTotalsObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`yours`)) {
        OwnedMediaStoreTotalsObject[["yours"]] <-
          self$`yours`
      }
      if (!is.null(self$`share_pct`)) {
        OwnedMediaStoreTotalsObject[["share_pct"]] <-
          self$`share_pct`
      }
      return(OwnedMediaStoreTotalsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaStoreTotals
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaStoreTotals
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`store`)) {
        if (!is.null(this_object$`store`) && !(this_object$`store` %in% c("google_play", "app_store"))) {
          stop(paste("Error! \"", this_object$`store`, "\" cannot be assigned to `store`. Must be \"google_play\", \"app_store\".", sep = ""))
        }
        self$`store` <- this_object$`store`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`yours`)) {
        self$`yours` <- this_object$`yours`
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
    #' @return OwnedMediaStoreTotals in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaStoreTotals
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaStoreTotals
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`store`) && !(this_object$`store` %in% c("google_play", "app_store"))) {
        stop(paste("Error! \"", this_object$`store`, "\" cannot be assigned to `store`. Must be \"google_play\", \"app_store\".", sep = ""))
      }
      self$`store` <- this_object$`store`
      self$`total` <- this_object$`total`
      self$`yours` <- this_object$`yours`
      self$`share_pct` <- this_object$`share_pct`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaStoreTotals and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaStoreTotals
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
# OwnedMediaStoreTotals$unlock()
#
## Below is an example to define the print function
# OwnedMediaStoreTotals$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaStoreTotals$lock()

