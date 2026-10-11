#' Create a new ProjectDetailsAllOfSearchConsole
#'
#' @description
#' Google Search Console connection of the project. connected means the Search Console endpoints can answer; reconnect_required means Google refused the stored access and the property must be reconnected in Preferences > Project Settings > Data Connections.
#'
#' @docType class
#' @title ProjectDetailsAllOfSearchConsole
#' @description ProjectDetailsAllOfSearchConsole Class
#' @format An \code{R6Class} generator object
#' @field status  character [optional]
#' @field property The connected property (e.g. sc-domain:example.com), null when not connected character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDetailsAllOfSearchConsole <- R6::R6Class(
  "ProjectDetailsAllOfSearchConsole",
  public = list(
    `status` = NULL,
    `property` = NULL,

    #' @description
    #' Initialize a new ProjectDetailsAllOfSearchConsole class.
    #'
    #' @param status status
    #' @param property The connected property (e.g. sc-domain:example.com), null when not connected
    #' @param ... Other optional arguments.
    initialize = function(`status` = NULL, `property` = NULL, ...) {
      if (!is.null(`status`)) {
        if (!(`status` %in% c("connected", "reconnect_required", "not_connected"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"connected\", \"reconnect_required\", \"not_connected\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`property`)) {
        if (!(is.character(`property`) && length(`property`) == 1)) {
          stop(paste("Error! Invalid data for `property`. Must be a string:", `property`))
        }
        self$`property` <- `property`
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
    #' @return ProjectDetailsAllOfSearchConsole as a base R list.
    #' @examples
    #' # convert array of ProjectDetailsAllOfSearchConsole (x) to a data frame
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
    #' Convert ProjectDetailsAllOfSearchConsole to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectDetailsAllOfSearchConsoleObject <- list()
      if (!is.null(self$`status`)) {
        ProjectDetailsAllOfSearchConsoleObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`property`)) {
        ProjectDetailsAllOfSearchConsoleObject[["property"]] <-
          self$`property`
      }
      return(ProjectDetailsAllOfSearchConsoleObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetailsAllOfSearchConsole
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetailsAllOfSearchConsole
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("connected", "reconnect_required", "not_connected"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"connected\", \"reconnect_required\", \"not_connected\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`property`)) {
        self$`property` <- this_object$`property`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectDetailsAllOfSearchConsole in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetailsAllOfSearchConsole
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetailsAllOfSearchConsole
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("connected", "reconnect_required", "not_connected"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"connected\", \"reconnect_required\", \"not_connected\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`property` <- this_object$`property`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectDetailsAllOfSearchConsole and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectDetailsAllOfSearchConsole
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
# ProjectDetailsAllOfSearchConsole$unlock()
#
## Below is an example to define the print function
# ProjectDetailsAllOfSearchConsole$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectDetailsAllOfSearchConsole$lock()

