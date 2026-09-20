#' Create a new SearchConsoleFiltersInner
#'
#' @description
#' SearchConsoleFiltersInner Class
#'
#' @docType class
#' @title SearchConsoleFiltersInner
#' @description SearchConsoleFiltersInner Class
#' @format An \code{R6Class} generator object
#' @field dimension  character
#' @field operator  character [optional]
#' @field expression  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchConsoleFiltersInner <- R6::R6Class(
  "SearchConsoleFiltersInner",
  public = list(
    `dimension` = NULL,
    `operator` = NULL,
    `expression` = NULL,

    #' @description
    #' Initialize a new SearchConsoleFiltersInner class.
    #'
    #' @param dimension dimension
    #' @param expression expression
    #' @param operator operator. Default to "contains".
    #' @param ... Other optional arguments.
    initialize = function(`dimension`, `expression`, `operator` = "contains", ...) {
      if (!missing(`dimension`)) {
        if (!(`dimension` %in% c("country", "device", "page", "query", "searchAppearance"))) {
          stop(paste("Error! \"", `dimension`, "\" cannot be assigned to `dimension`. Must be \"country\", \"device\", \"page\", \"query\", \"searchAppearance\".", sep = ""))
        }
        if (!(is.character(`dimension`) && length(`dimension`) == 1)) {
          stop(paste("Error! Invalid data for `dimension`. Must be a string:", `dimension`))
        }
        self$`dimension` <- `dimension`
      }
      if (!missing(`expression`)) {
        if (!(is.character(`expression`) && length(`expression`) == 1)) {
          stop(paste("Error! Invalid data for `expression`. Must be a string:", `expression`))
        }
        self$`expression` <- `expression`
      }
      if (!is.null(`operator`)) {
        if (!(`operator` %in% c("contains", "equals", "notContains", "notEquals", "includingRegex", "excludingRegex"))) {
          stop(paste("Error! \"", `operator`, "\" cannot be assigned to `operator`. Must be \"contains\", \"equals\", \"notContains\", \"notEquals\", \"includingRegex\", \"excludingRegex\".", sep = ""))
        }
        if (!(is.character(`operator`) && length(`operator`) == 1)) {
          stop(paste("Error! Invalid data for `operator`. Must be a string:", `operator`))
        }
        self$`operator` <- `operator`
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
    #' @return SearchConsoleFiltersInner as a base R list.
    #' @examples
    #' # convert array of SearchConsoleFiltersInner (x) to a data frame
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
    #' Convert SearchConsoleFiltersInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchConsoleFiltersInnerObject <- list()
      if (!is.null(self$`dimension`)) {
        SearchConsoleFiltersInnerObject[["dimension"]] <-
          self$`dimension`
      }
      if (!is.null(self$`operator`)) {
        SearchConsoleFiltersInnerObject[["operator"]] <-
          self$`operator`
      }
      if (!is.null(self$`expression`)) {
        SearchConsoleFiltersInnerObject[["expression"]] <-
          self$`expression`
      }
      return(SearchConsoleFiltersInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleFiltersInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleFiltersInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`dimension`)) {
        if (!is.null(this_object$`dimension`) && !(this_object$`dimension` %in% c("country", "device", "page", "query", "searchAppearance"))) {
          stop(paste("Error! \"", this_object$`dimension`, "\" cannot be assigned to `dimension`. Must be \"country\", \"device\", \"page\", \"query\", \"searchAppearance\".", sep = ""))
        }
        self$`dimension` <- this_object$`dimension`
      }
      if (!is.null(this_object$`operator`)) {
        if (!is.null(this_object$`operator`) && !(this_object$`operator` %in% c("contains", "equals", "notContains", "notEquals", "includingRegex", "excludingRegex"))) {
          stop(paste("Error! \"", this_object$`operator`, "\" cannot be assigned to `operator`. Must be \"contains\", \"equals\", \"notContains\", \"notEquals\", \"includingRegex\", \"excludingRegex\".", sep = ""))
        }
        self$`operator` <- this_object$`operator`
      }
      if (!is.null(this_object$`expression`)) {
        self$`expression` <- this_object$`expression`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SearchConsoleFiltersInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleFiltersInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleFiltersInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`dimension`) && !(this_object$`dimension` %in% c("country", "device", "page", "query", "searchAppearance"))) {
        stop(paste("Error! \"", this_object$`dimension`, "\" cannot be assigned to `dimension`. Must be \"country\", \"device\", \"page\", \"query\", \"searchAppearance\".", sep = ""))
      }
      self$`dimension` <- this_object$`dimension`
      if (!is.null(this_object$`operator`) && !(this_object$`operator` %in% c("contains", "equals", "notContains", "notEquals", "includingRegex", "excludingRegex"))) {
        stop(paste("Error! \"", this_object$`operator`, "\" cannot be assigned to `operator`. Must be \"contains\", \"equals\", \"notContains\", \"notEquals\", \"includingRegex\", \"excludingRegex\".", sep = ""))
      }
      self$`operator` <- this_object$`operator`
      self$`expression` <- this_object$`expression`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchConsoleFiltersInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `dimension`
      if (!is.null(input_json$`dimension`)) {
        if (!(is.character(input_json$`dimension`) && length(input_json$`dimension`) == 1)) {
          stop(paste("Error! Invalid data for `dimension`. Must be a string:", input_json$`dimension`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SearchConsoleFiltersInner: the required field `dimension` is missing."))
      }
      # check the required field `expression`
      if (!is.null(input_json$`expression`)) {
        if (!(is.character(input_json$`expression`) && length(input_json$`expression`) == 1)) {
          stop(paste("Error! Invalid data for `expression`. Must be a string:", input_json$`expression`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SearchConsoleFiltersInner: the required field `expression` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchConsoleFiltersInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `dimension` is null
      if (is.null(self$`dimension`)) {
        return(FALSE)
      }

      # check if the required `expression` is null
      if (is.null(self$`expression`)) {
        return(FALSE)
      }

      if (nchar(self$`expression`) > 500) {
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
      # check if the required `dimension` is null
      if (is.null(self$`dimension`)) {
        invalid_fields["dimension"] <- "Non-nullable required field `dimension` cannot be null."
      }

      # check if the required `expression` is null
      if (is.null(self$`expression`)) {
        invalid_fields["expression"] <- "Non-nullable required field `expression` cannot be null."
      }

      if (nchar(self$`expression`) > 500) {
        invalid_fields["expression"] <- "Invalid length for `expression`, must be smaller than or equal to 500."
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
# SearchConsoleFiltersInner$unlock()
#
## Below is an example to define the print function
# SearchConsoleFiltersInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchConsoleFiltersInner$lock()

