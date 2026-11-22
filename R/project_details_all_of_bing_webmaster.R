#' Create a new ProjectDetailsAllOfBingWebmaster
#'
#' @description
#' Bing Webmaster Tools site behind /bing_webmaster. connected means its endpoints answer; reconnect_required means Bing refused the stored API key or the site is no longer verified, so the endpoints still answer from the data already synced, which stops updating until the site is reconnected at connect_url; not_connected means they return ERR_BING_WEBMASTER_NOT_CONNECTED.
#'
#' @docType class
#' @title ProjectDetailsAllOfBingWebmaster
#' @description ProjectDetailsAllOfBingWebmaster Class
#' @format An \code{R6Class} generator object
#' @field status  character [optional]
#' @field site The connected site (e.g. https://example.com/), null when not connected character [optional]
#' @field last_synced_at When that site last synced, null before its first sync character [optional]
#' @field connect_url The in-app page where the site is connected or reconnected (Preferences > Project Settings > Connections) character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDetailsAllOfBingWebmaster <- R6::R6Class(
  "ProjectDetailsAllOfBingWebmaster",
  public = list(
    `status` = NULL,
    `site` = NULL,
    `last_synced_at` = NULL,
    `connect_url` = NULL,

    #' @description
    #' Initialize a new ProjectDetailsAllOfBingWebmaster class.
    #'
    #' @param status status
    #' @param site The connected site (e.g. https://example.com/), null when not connected
    #' @param last_synced_at When that site last synced, null before its first sync
    #' @param connect_url The in-app page where the site is connected or reconnected (Preferences > Project Settings > Connections)
    #' @param ... Other optional arguments.
    initialize = function(`status` = NULL, `site` = NULL, `last_synced_at` = NULL, `connect_url` = NULL, ...) {
      if (!is.null(`status`)) {
        if (!(`status` %in% c("connected", "reconnect_required", "not_connected"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"connected\", \"reconnect_required\", \"not_connected\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`site`)) {
        if (!(is.character(`site`) && length(`site`) == 1)) {
          stop(paste("Error! Invalid data for `site`. Must be a string:", `site`))
        }
        self$`site` <- `site`
      }
      if (!is.null(`last_synced_at`)) {
        if (!is.character(`last_synced_at`)) {
          stop(paste("Error! Invalid data for `last_synced_at`. Must be a string:", `last_synced_at`))
        }
        self$`last_synced_at` <- `last_synced_at`
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
    #' @return ProjectDetailsAllOfBingWebmaster as a base R list.
    #' @examples
    #' # convert array of ProjectDetailsAllOfBingWebmaster (x) to a data frame
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
    #' Convert ProjectDetailsAllOfBingWebmaster to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectDetailsAllOfBingWebmasterObject <- list()
      if (!is.null(self$`status`)) {
        ProjectDetailsAllOfBingWebmasterObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`site`)) {
        ProjectDetailsAllOfBingWebmasterObject[["site"]] <-
          self$`site`
      }
      if (!is.null(self$`last_synced_at`)) {
        ProjectDetailsAllOfBingWebmasterObject[["last_synced_at"]] <-
          self$`last_synced_at`
      }
      if (!is.null(self$`connect_url`)) {
        ProjectDetailsAllOfBingWebmasterObject[["connect_url"]] <-
          self$`connect_url`
      }
      return(ProjectDetailsAllOfBingWebmasterObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetailsAllOfBingWebmaster
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetailsAllOfBingWebmaster
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("connected", "reconnect_required", "not_connected"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"connected\", \"reconnect_required\", \"not_connected\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`site`)) {
        self$`site` <- this_object$`site`
      }
      if (!is.null(this_object$`last_synced_at`)) {
        self$`last_synced_at` <- this_object$`last_synced_at`
      }
      if (!is.null(this_object$`connect_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`connect_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `connect_url`. Must be a URL:", this_object$`connect_url`))
        }
        self$`connect_url` <- this_object$`connect_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectDetailsAllOfBingWebmaster in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetailsAllOfBingWebmaster
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetailsAllOfBingWebmaster
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("connected", "reconnect_required", "not_connected"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"connected\", \"reconnect_required\", \"not_connected\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`site` <- this_object$`site`
      self$`last_synced_at` <- this_object$`last_synced_at`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`connect_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `connect_url`. Must be a URL:", this_object$`connect_url`))
      }
      self$`connect_url` <- this_object$`connect_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectDetailsAllOfBingWebmaster and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectDetailsAllOfBingWebmaster
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
# ProjectDetailsAllOfBingWebmaster$unlock()
#
## Below is an example to define the print function
# ProjectDetailsAllOfBingWebmaster$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectDetailsAllOfBingWebmaster$lock()

