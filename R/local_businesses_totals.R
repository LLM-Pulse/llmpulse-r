#' Create a new LocalBusinessesTotals
#'
#' @description
#' LocalBusinessesTotals Class
#'
#' @docType class
#' @title LocalBusinessesTotals
#' @description LocalBusinessesTotals Class
#' @format An \code{R6Class} generator object
#' @field businesses  integer [optional]
#' @field your_businesses  integer [optional]
#' @field appearances  integer [optional]
#' @field avg_rating  numeric [optional]
#' @field executions_with_local_businesses  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LocalBusinessesTotals <- R6::R6Class(
  "LocalBusinessesTotals",
  public = list(
    `businesses` = NULL,
    `your_businesses` = NULL,
    `appearances` = NULL,
    `avg_rating` = NULL,
    `executions_with_local_businesses` = NULL,

    #' @description
    #' Initialize a new LocalBusinessesTotals class.
    #'
    #' @param businesses businesses
    #' @param your_businesses your_businesses
    #' @param appearances appearances
    #' @param avg_rating avg_rating
    #' @param executions_with_local_businesses executions_with_local_businesses
    #' @param ... Other optional arguments.
    initialize = function(`businesses` = NULL, `your_businesses` = NULL, `appearances` = NULL, `avg_rating` = NULL, `executions_with_local_businesses` = NULL, ...) {
      if (!is.null(`businesses`)) {
        if (!(is.numeric(`businesses`) && length(`businesses`) == 1)) {
          stop(paste("Error! Invalid data for `businesses`. Must be an integer:", `businesses`))
        }
        self$`businesses` <- `businesses`
      }
      if (!is.null(`your_businesses`)) {
        if (!(is.numeric(`your_businesses`) && length(`your_businesses`) == 1)) {
          stop(paste("Error! Invalid data for `your_businesses`. Must be an integer:", `your_businesses`))
        }
        self$`your_businesses` <- `your_businesses`
      }
      if (!is.null(`appearances`)) {
        if (!(is.numeric(`appearances`) && length(`appearances`) == 1)) {
          stop(paste("Error! Invalid data for `appearances`. Must be an integer:", `appearances`))
        }
        self$`appearances` <- `appearances`
      }
      if (!is.null(`avg_rating`)) {
        self$`avg_rating` <- `avg_rating`
      }
      if (!is.null(`executions_with_local_businesses`)) {
        if (!(is.numeric(`executions_with_local_businesses`) && length(`executions_with_local_businesses`) == 1)) {
          stop(paste("Error! Invalid data for `executions_with_local_businesses`. Must be an integer:", `executions_with_local_businesses`))
        }
        self$`executions_with_local_businesses` <- `executions_with_local_businesses`
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
    #' @return LocalBusinessesTotals as a base R list.
    #' @examples
    #' # convert array of LocalBusinessesTotals (x) to a data frame
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
    #' Convert LocalBusinessesTotals to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LocalBusinessesTotalsObject <- list()
      if (!is.null(self$`businesses`)) {
        LocalBusinessesTotalsObject[["businesses"]] <-
          self$`businesses`
      }
      if (!is.null(self$`your_businesses`)) {
        LocalBusinessesTotalsObject[["your_businesses"]] <-
          self$`your_businesses`
      }
      if (!is.null(self$`appearances`)) {
        LocalBusinessesTotalsObject[["appearances"]] <-
          self$`appearances`
      }
      if (!is.null(self$`avg_rating`)) {
        LocalBusinessesTotalsObject[["avg_rating"]] <-
          self$`avg_rating`
      }
      if (!is.null(self$`executions_with_local_businesses`)) {
        LocalBusinessesTotalsObject[["executions_with_local_businesses"]] <-
          self$`executions_with_local_businesses`
      }
      return(LocalBusinessesTotalsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LocalBusinessesTotals
    #'
    #' @param input_json the JSON input
    #' @return the instance of LocalBusinessesTotals
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`businesses`)) {
        self$`businesses` <- this_object$`businesses`
      }
      if (!is.null(this_object$`your_businesses`)) {
        self$`your_businesses` <- this_object$`your_businesses`
      }
      if (!is.null(this_object$`appearances`)) {
        self$`appearances` <- this_object$`appearances`
      }
      if (!is.null(this_object$`avg_rating`)) {
        self$`avg_rating` <- this_object$`avg_rating`
      }
      if (!is.null(this_object$`executions_with_local_businesses`)) {
        self$`executions_with_local_businesses` <- this_object$`executions_with_local_businesses`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LocalBusinessesTotals in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LocalBusinessesTotals
    #'
    #' @param input_json the JSON input
    #' @return the instance of LocalBusinessesTotals
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`businesses` <- this_object$`businesses`
      self$`your_businesses` <- this_object$`your_businesses`
      self$`appearances` <- this_object$`appearances`
      self$`avg_rating` <- this_object$`avg_rating`
      self$`executions_with_local_businesses` <- this_object$`executions_with_local_businesses`
      self
    },

    #' @description
    #' Validate JSON input with respect to LocalBusinessesTotals and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LocalBusinessesTotals
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
# LocalBusinessesTotals$unlock()
#
## Below is an example to define the print function
# LocalBusinessesTotals$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LocalBusinessesTotals$lock()

