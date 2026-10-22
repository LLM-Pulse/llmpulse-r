#' Create a new SearchConsolePropertyError
#'
#' @description
#' SearchConsolePropertyError Class
#'
#' @docType class
#' @title SearchConsolePropertyError
#' @description SearchConsolePropertyError Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field name  character [optional]
#' @field code  character [optional]
#' @field message  character [optional]
#' @field retry_after Seconds to wait before retrying, for ERR_SEARCH_CONSOLE_UPSTREAM integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchConsolePropertyError <- R6::R6Class(
  "SearchConsolePropertyError",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `code` = NULL,
    `message` = NULL,
    `retry_after` = NULL,

    #' @description
    #' Initialize a new SearchConsolePropertyError class.
    #'
    #' @param id id
    #' @param name name
    #' @param code code
    #' @param message message
    #' @param retry_after Seconds to wait before retrying, for ERR_SEARCH_CONSOLE_UPSTREAM
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `code` = NULL, `message` = NULL, `retry_after` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`code`)) {
        if (!(`code` %in% c("ERR_SEARCH_CONSOLE_ACCESS_REVOKED", "ERR_SEARCH_CONSOLE_UPSTREAM"))) {
          stop(paste("Error! \"", `code`, "\" cannot be assigned to `code`. Must be \"ERR_SEARCH_CONSOLE_ACCESS_REVOKED\", \"ERR_SEARCH_CONSOLE_UPSTREAM\".", sep = ""))
        }
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`retry_after`)) {
        if (!(is.numeric(`retry_after`) && length(`retry_after`) == 1)) {
          stop(paste("Error! Invalid data for `retry_after`. Must be an integer:", `retry_after`))
        }
        self$`retry_after` <- `retry_after`
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
    #' @return SearchConsolePropertyError as a base R list.
    #' @examples
    #' # convert array of SearchConsolePropertyError (x) to a data frame
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
    #' Convert SearchConsolePropertyError to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchConsolePropertyErrorObject <- list()
      if (!is.null(self$`id`)) {
        SearchConsolePropertyErrorObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        SearchConsolePropertyErrorObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`code`)) {
        SearchConsolePropertyErrorObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`message`)) {
        SearchConsolePropertyErrorObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`retry_after`)) {
        SearchConsolePropertyErrorObject[["retry_after"]] <-
          self$`retry_after`
      }
      return(SearchConsolePropertyErrorObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsolePropertyError
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsolePropertyError
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`code`)) {
        if (!is.null(this_object$`code`) && !(this_object$`code` %in% c("ERR_SEARCH_CONSOLE_ACCESS_REVOKED", "ERR_SEARCH_CONSOLE_UPSTREAM"))) {
          stop(paste("Error! \"", this_object$`code`, "\" cannot be assigned to `code`. Must be \"ERR_SEARCH_CONSOLE_ACCESS_REVOKED\", \"ERR_SEARCH_CONSOLE_UPSTREAM\".", sep = ""))
        }
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`retry_after`)) {
        self$`retry_after` <- this_object$`retry_after`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SearchConsolePropertyError in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsolePropertyError
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsolePropertyError
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      if (!is.null(this_object$`code`) && !(this_object$`code` %in% c("ERR_SEARCH_CONSOLE_ACCESS_REVOKED", "ERR_SEARCH_CONSOLE_UPSTREAM"))) {
        stop(paste("Error! \"", this_object$`code`, "\" cannot be assigned to `code`. Must be \"ERR_SEARCH_CONSOLE_ACCESS_REVOKED\", \"ERR_SEARCH_CONSOLE_UPSTREAM\".", sep = ""))
      }
      self$`code` <- this_object$`code`
      self$`message` <- this_object$`message`
      self$`retry_after` <- this_object$`retry_after`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchConsolePropertyError and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchConsolePropertyError
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
# SearchConsolePropertyError$unlock()
#
## Below is an example to define the print function
# SearchConsolePropertyError$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchConsolePropertyError$lock()

