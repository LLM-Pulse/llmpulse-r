#' Create a new UrlListStatusCounts
#'
#' @description
#' UrlListStatusCounts Class
#'
#' @docType class
#' @title UrlListStatusCounts
#' @description UrlListStatusCounts Class
#' @format An \code{R6Class} generator object
#' @field cited  integer
#' @field lost  integer
#' @field not_cited  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListStatusCounts <- R6::R6Class(
  "UrlListStatusCounts",
  public = list(
    `cited` = NULL,
    `lost` = NULL,
    `not_cited` = NULL,

    #' @description
    #' Initialize a new UrlListStatusCounts class.
    #'
    #' @param cited cited
    #' @param lost lost
    #' @param not_cited not_cited
    #' @param ... Other optional arguments.
    initialize = function(`cited`, `lost`, `not_cited`, ...) {
      if (!missing(`cited`)) {
        if (!(is.numeric(`cited`) && length(`cited`) == 1)) {
          stop(paste("Error! Invalid data for `cited`. Must be an integer:", `cited`))
        }
        self$`cited` <- `cited`
      }
      if (!missing(`lost`)) {
        if (!(is.numeric(`lost`) && length(`lost`) == 1)) {
          stop(paste("Error! Invalid data for `lost`. Must be an integer:", `lost`))
        }
        self$`lost` <- `lost`
      }
      if (!missing(`not_cited`)) {
        if (!(is.numeric(`not_cited`) && length(`not_cited`) == 1)) {
          stop(paste("Error! Invalid data for `not_cited`. Must be an integer:", `not_cited`))
        }
        self$`not_cited` <- `not_cited`
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
    #' @return UrlListStatusCounts as a base R list.
    #' @examples
    #' # convert array of UrlListStatusCounts (x) to a data frame
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
    #' Convert UrlListStatusCounts to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListStatusCountsObject <- list()
      if (!is.null(self$`cited`)) {
        UrlListStatusCountsObject[["cited"]] <-
          self$`cited`
      }
      if (!is.null(self$`lost`)) {
        UrlListStatusCountsObject[["lost"]] <-
          self$`lost`
      }
      if (!is.null(self$`not_cited`)) {
        UrlListStatusCountsObject[["not_cited"]] <-
          self$`not_cited`
      }
      return(UrlListStatusCountsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListStatusCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListStatusCounts
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`cited`)) {
        self$`cited` <- this_object$`cited`
      }
      if (!is.null(this_object$`lost`)) {
        self$`lost` <- this_object$`lost`
      }
      if (!is.null(this_object$`not_cited`)) {
        self$`not_cited` <- this_object$`not_cited`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UrlListStatusCounts in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListStatusCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListStatusCounts
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`cited` <- this_object$`cited`
      self$`lost` <- this_object$`lost`
      self$`not_cited` <- this_object$`not_cited`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListStatusCounts and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `cited`
      if (!is.null(input_json$`cited`)) {
        if (!(is.numeric(input_json$`cited`) && length(input_json$`cited`) == 1)) {
          stop(paste("Error! Invalid data for `cited`. Must be an integer:", input_json$`cited`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListStatusCounts: the required field `cited` is missing."))
      }
      # check the required field `lost`
      if (!is.null(input_json$`lost`)) {
        if (!(is.numeric(input_json$`lost`) && length(input_json$`lost`) == 1)) {
          stop(paste("Error! Invalid data for `lost`. Must be an integer:", input_json$`lost`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListStatusCounts: the required field `lost` is missing."))
      }
      # check the required field `not_cited`
      if (!is.null(input_json$`not_cited`)) {
        if (!(is.numeric(input_json$`not_cited`) && length(input_json$`not_cited`) == 1)) {
          stop(paste("Error! Invalid data for `not_cited`. Must be an integer:", input_json$`not_cited`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListStatusCounts: the required field `not_cited` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListStatusCounts
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `cited` is null
      if (is.null(self$`cited`)) {
        return(FALSE)
      }

      # check if the required `lost` is null
      if (is.null(self$`lost`)) {
        return(FALSE)
      }

      # check if the required `not_cited` is null
      if (is.null(self$`not_cited`)) {
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
      # check if the required `cited` is null
      if (is.null(self$`cited`)) {
        invalid_fields["cited"] <- "Non-nullable required field `cited` cannot be null."
      }

      # check if the required `lost` is null
      if (is.null(self$`lost`)) {
        invalid_fields["lost"] <- "Non-nullable required field `lost` cannot be null."
      }

      # check if the required `not_cited` is null
      if (is.null(self$`not_cited`)) {
        invalid_fields["not_cited"] <- "Non-nullable required field `not_cited` cannot be null."
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
# UrlListStatusCounts$unlock()
#
## Below is an example to define the print function
# UrlListStatusCounts$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListStatusCounts$lock()

