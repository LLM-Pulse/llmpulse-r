#' Create a new ProjectDetailsAllOfSearchConsole
#'
#' @description
#' Google Search Console connection of the project, judged by its primary property. connected means the Search Console endpoints can answer; reconnect_required means Google refused the primary property's stored access, so reads without property return ERR_SEARCH_CONSOLE_ACCESS_REVOKED until it is reconnected at connect_url, while a property GET /search_console/properties lists as connected, or property=all, still answers; not_connected means the endpoints return ERR_SEARCH_CONSOLE_NOT_CONNECTED.
#'
#' @docType class
#' @title ProjectDetailsAllOfSearchConsole
#' @description ProjectDetailsAllOfSearchConsole Class
#' @format An \code{R6Class} generator object
#' @field status  character [optional]
#' @field property The primary property (e.g. sc-domain:example.com), null when not connected character [optional]
#' @field connect_url The in-app page where the property is connected or reconnected (Preferences > Project Settings > Data Connections) character [optional]
#' @field properties_count Connected properties Google still accepts (reconnect_required ones excluded); GET /search_console/properties lists every property with its status integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDetailsAllOfSearchConsole <- R6::R6Class(
  "ProjectDetailsAllOfSearchConsole",
  public = list(
    `status` = NULL,
    `property` = NULL,
    `connect_url` = NULL,
    `properties_count` = NULL,

    #' @description
    #' Initialize a new ProjectDetailsAllOfSearchConsole class.
    #'
    #' @param status status
    #' @param property The primary property (e.g. sc-domain:example.com), null when not connected
    #' @param connect_url The in-app page where the property is connected or reconnected (Preferences > Project Settings > Data Connections)
    #' @param properties_count Connected properties Google still accepts (reconnect_required ones excluded); GET /search_console/properties lists every property with its status
    #' @param ... Other optional arguments.
    initialize = function(`status` = NULL, `property` = NULL, `connect_url` = NULL, `properties_count` = NULL, ...) {
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
      if (!is.null(`connect_url`)) {
        if (!(is.character(`connect_url`) && length(`connect_url`) == 1)) {
          stop(paste("Error! Invalid data for `connect_url`. Must be a string:", `connect_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`connect_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `connect_url`. Must be a URL:", `connect_url`))
        }
        self$`connect_url` <- `connect_url`
      }
      if (!is.null(`properties_count`)) {
        if (!(is.numeric(`properties_count`) && length(`properties_count`) == 1)) {
          stop(paste("Error! Invalid data for `properties_count`. Must be an integer:", `properties_count`))
        }
        self$`properties_count` <- `properties_count`
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
      if (!is.null(self$`connect_url`)) {
        ProjectDetailsAllOfSearchConsoleObject[["connect_url"]] <-
          self$`connect_url`
      }
      if (!is.null(self$`properties_count`)) {
        ProjectDetailsAllOfSearchConsoleObject[["properties_count"]] <-
          self$`properties_count`
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
      if (!is.null(this_object$`connect_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`connect_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `connect_url`. Must be a URL:", this_object$`connect_url`))
        }
        self$`connect_url` <- this_object$`connect_url`
      }
      if (!is.null(this_object$`properties_count`)) {
        self$`properties_count` <- this_object$`properties_count`
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
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`connect_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `connect_url`. Must be a URL:", this_object$`connect_url`))
      }
      self$`connect_url` <- this_object$`connect_url`
      self$`properties_count` <- this_object$`properties_count`
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

