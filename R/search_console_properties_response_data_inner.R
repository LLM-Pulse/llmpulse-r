#' Create a new SearchConsolePropertiesResponseDataInner
#'
#' @description
#' SearchConsolePropertiesResponseDataInner Class
#'
#' @docType class
#' @title SearchConsolePropertiesResponseDataInner
#' @description SearchConsolePropertiesResponseDataInner Class
#' @format An \code{R6Class} generator object
#' @field id Property id, the value the property parameter takes, e.g. sc-domain:example.com character [optional]
#' @field name  character [optional]
#' @field primary The property read when the property parameter is omitted character [optional]
#' @field type  character [optional]
#' @field status  character [optional]
#' @field last_synced_at  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchConsolePropertiesResponseDataInner <- R6::R6Class(
  "SearchConsolePropertiesResponseDataInner",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `primary` = NULL,
    `type` = NULL,
    `status` = NULL,
    `last_synced_at` = NULL,

    #' @description
    #' Initialize a new SearchConsolePropertiesResponseDataInner class.
    #'
    #' @param id Property id, the value the property parameter takes, e.g. sc-domain:example.com
    #' @param name name
    #' @param primary The property read when the property parameter is omitted
    #' @param type type
    #' @param status status
    #' @param last_synced_at last_synced_at
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `primary` = NULL, `type` = NULL, `status` = NULL, `last_synced_at` = NULL, ...) {
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
      if (!is.null(`primary`)) {
        if (!(is.logical(`primary`) && length(`primary`) == 1)) {
          stop(paste("Error! Invalid data for `primary`. Must be a boolean:", `primary`))
        }
        self$`primary` <- `primary`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c("domain", "url_prefix"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"domain\", \"url_prefix\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("connected", "reconnect_required"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"connected\", \"reconnect_required\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`last_synced_at`)) {
        if (!is.character(`last_synced_at`)) {
          stop(paste("Error! Invalid data for `last_synced_at`. Must be a string:", `last_synced_at`))
        }
        self$`last_synced_at` <- `last_synced_at`
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
    #' @return SearchConsolePropertiesResponseDataInner as a base R list.
    #' @examples
    #' # convert array of SearchConsolePropertiesResponseDataInner (x) to a data frame
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
    #' Convert SearchConsolePropertiesResponseDataInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchConsolePropertiesResponseDataInnerObject <- list()
      if (!is.null(self$`id`)) {
        SearchConsolePropertiesResponseDataInnerObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        SearchConsolePropertiesResponseDataInnerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`primary`)) {
        SearchConsolePropertiesResponseDataInnerObject[["primary"]] <-
          self$`primary`
      }
      if (!is.null(self$`type`)) {
        SearchConsolePropertiesResponseDataInnerObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`status`)) {
        SearchConsolePropertiesResponseDataInnerObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`last_synced_at`)) {
        SearchConsolePropertiesResponseDataInnerObject[["last_synced_at"]] <-
          self$`last_synced_at`
      }
      return(SearchConsolePropertiesResponseDataInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsolePropertiesResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsolePropertiesResponseDataInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`primary`)) {
        self$`primary` <- this_object$`primary`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("domain", "url_prefix"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"domain\", \"url_prefix\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("connected", "reconnect_required"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"connected\", \"reconnect_required\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`last_synced_at`)) {
        self$`last_synced_at` <- this_object$`last_synced_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SearchConsolePropertiesResponseDataInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsolePropertiesResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsolePropertiesResponseDataInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`primary` <- this_object$`primary`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("domain", "url_prefix"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"domain\", \"url_prefix\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("connected", "reconnect_required"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"connected\", \"reconnect_required\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`last_synced_at` <- this_object$`last_synced_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchConsolePropertiesResponseDataInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchConsolePropertiesResponseDataInner
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
# SearchConsolePropertiesResponseDataInner$unlock()
#
## Below is an example to define the print function
# SearchConsolePropertiesResponseDataInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchConsolePropertiesResponseDataInner$lock()

