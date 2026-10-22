#' Create a new ProjectDetailsAllOfAiTraffic
#'
#' @description
#' Web analytics provider behind /metrics/ai_traffic and /web_analytics. connected means both answer; reconnect_required means the provider refused the stored access, so /metrics/ai_traffic still answers from synced data and /web_analytics returns ERR_WEB_ANALYTICS_ACCESS_REVOKED until it is reconnected at connect_url; not_connected means they return ERR_AI_TRAFFIC_NOT_CONNECTED and ERR_WEB_ANALYTICS_NOT_CONNECTED.
#'
#' @docType class
#' @title ProjectDetailsAllOfAiTraffic
#' @description ProjectDetailsAllOfAiTraffic Class
#' @format An \code{R6Class} generator object
#' @field status  character [optional]
#' @field provider The connected provider (e.g. google_analytics, adobe_analytics, adobe_cja, posthog, plausible, matomo, piano), null when not connected character [optional]
#' @field connect_url The in-app AI Traffic page, where the provider is connected or reconnected character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDetailsAllOfAiTraffic <- R6::R6Class(
  "ProjectDetailsAllOfAiTraffic",
  public = list(
    `status` = NULL,
    `provider` = NULL,
    `connect_url` = NULL,

    #' @description
    #' Initialize a new ProjectDetailsAllOfAiTraffic class.
    #'
    #' @param status status
    #' @param provider The connected provider (e.g. google_analytics, adobe_analytics, adobe_cja, posthog, plausible, matomo, piano), null when not connected
    #' @param connect_url The in-app AI Traffic page, where the provider is connected or reconnected
    #' @param ... Other optional arguments.
    initialize = function(`status` = NULL, `provider` = NULL, `connect_url` = NULL, ...) {
      if (!is.null(`status`)) {
        if (!(`status` %in% c("connected", "reconnect_required", "not_connected"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"connected\", \"reconnect_required\", \"not_connected\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`provider`)) {
        if (!(is.character(`provider`) && length(`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", `provider`))
        }
        self$`provider` <- `provider`
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
    #' @return ProjectDetailsAllOfAiTraffic as a base R list.
    #' @examples
    #' # convert array of ProjectDetailsAllOfAiTraffic (x) to a data frame
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
    #' Convert ProjectDetailsAllOfAiTraffic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectDetailsAllOfAiTrafficObject <- list()
      if (!is.null(self$`status`)) {
        ProjectDetailsAllOfAiTrafficObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`provider`)) {
        ProjectDetailsAllOfAiTrafficObject[["provider"]] <-
          self$`provider`
      }
      if (!is.null(self$`connect_url`)) {
        ProjectDetailsAllOfAiTrafficObject[["connect_url"]] <-
          self$`connect_url`
      }
      return(ProjectDetailsAllOfAiTrafficObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetailsAllOfAiTraffic
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetailsAllOfAiTraffic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("connected", "reconnect_required", "not_connected"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"connected\", \"reconnect_required\", \"not_connected\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`provider`)) {
        self$`provider` <- this_object$`provider`
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
    #' @return ProjectDetailsAllOfAiTraffic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetailsAllOfAiTraffic
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetailsAllOfAiTraffic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("connected", "reconnect_required", "not_connected"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"connected\", \"reconnect_required\", \"not_connected\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`provider` <- this_object$`provider`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`connect_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `connect_url`. Must be a URL:", this_object$`connect_url`))
      }
      self$`connect_url` <- this_object$`connect_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectDetailsAllOfAiTraffic and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectDetailsAllOfAiTraffic
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
# ProjectDetailsAllOfAiTraffic$unlock()
#
## Below is an example to define the print function
# ProjectDetailsAllOfAiTraffic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectDetailsAllOfAiTraffic$lock()

