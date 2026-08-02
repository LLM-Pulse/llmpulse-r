#' Create a new AgentBotsResponse
#'
#' @description
#' AgentBotsResponse Class
#'
#' @docType class
#' @title AgentBotsResponse
#' @description AgentBotsResponse Class
#' @format An \code{R6Class} generator object
#' @field bots  list(\link{AgentBot}) [optional]
#' @field companies  list(character) [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AgentBotsResponse <- R6::R6Class(
  "AgentBotsResponse",
  public = list(
    `bots` = NULL,
    `companies` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new AgentBotsResponse class.
    #'
    #' @param bots bots
    #' @param companies companies
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`bots` = NULL, `companies` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`bots`)) {
        stopifnot(is.vector(`bots`), length(`bots`) != 0)
        sapply(`bots`, function(x) stopifnot(R6::is.R6(x)))
        self$`bots` <- `bots`
      }
      if (!is.null(`companies`)) {
        stopifnot(is.vector(`companies`), length(`companies`) != 0)
        sapply(`companies`, function(x) stopifnot(is.character(x)))
        self$`companies` <- `companies`
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
    #' @return AgentBotsResponse as a base R list.
    #' @examples
    #' # convert array of AgentBotsResponse (x) to a data frame
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
    #' Convert AgentBotsResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AgentBotsResponseObject <- list()
      if (!is.null(self$`bots`)) {
        AgentBotsResponseObject[["bots"]] <-
          self$extractSimpleType(self$`bots`)
      }
      if (!is.null(self$`companies`)) {
        AgentBotsResponseObject[["companies"]] <-
          self$`companies`
      }
      if (!is.null(self$`request_id`)) {
        AgentBotsResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(AgentBotsResponseObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of AgentBotsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AgentBotsResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bots`)) {
        self$`bots` <- ApiClient$new()$deserializeObj(this_object$`bots`, "array[AgentBot]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`companies`)) {
        self$`companies` <- ApiClient$new()$deserializeObj(this_object$`companies`, "array[character]", loadNamespace("llmpulse"))
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
    #' @return AgentBotsResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AgentBotsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of AgentBotsResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bots` <- ApiClient$new()$deserializeObj(this_object$`bots`, "array[AgentBot]", loadNamespace("llmpulse"))
      self$`companies` <- ApiClient$new()$deserializeObj(this_object$`companies`, "array[character]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to AgentBotsResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AgentBotsResponse
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
# AgentBotsResponse$unlock()
#
## Below is an example to define the print function
# AgentBotsResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AgentBotsResponse$lock()

