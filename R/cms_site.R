#' Create a new CmsSite
#'
#' @description
#' CmsSite Class
#'
#' @docType class
#' @title CmsSite
#' @description CmsSite Class
#' @format An \code{R6Class} generator object
#' @field platform  character [optional]
#' @field site_url The site address as connected character [optional]
#' @field host  character [optional]
#' @field status  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CmsSite <- R6::R6Class(
  "CmsSite",
  public = list(
    `platform` = NULL,
    `site_url` = NULL,
    `host` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new CmsSite class.
    #'
    #' @param platform platform
    #' @param site_url The site address as connected
    #' @param host host
    #' @param status status
    #' @param ... Other optional arguments.
    initialize = function(`platform` = NULL, `site_url` = NULL, `host` = NULL, `status` = NULL, ...) {
      if (!is.null(`platform`)) {
        if (!(`platform` %in% c("wordpress"))) {
          stop(paste("Error! \"", `platform`, "\" cannot be assigned to `platform`. Must be \"wordpress\".", sep = ""))
        }
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!is.null(`site_url`)) {
        if (!(is.character(`site_url`) && length(`site_url`) == 1)) {
          stop(paste("Error! Invalid data for `site_url`. Must be a string:", `site_url`))
        }
        self$`site_url` <- `site_url`
      }
      if (!is.null(`host`)) {
        if (!(is.character(`host`) && length(`host`) == 1)) {
          stop(paste("Error! Invalid data for `host`. Must be a string:", `host`))
        }
        self$`host` <- `host`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("pending", "connected", "reconnect_required"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"pending\", \"connected\", \"reconnect_required\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
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
    #' @return CmsSite as a base R list.
    #' @examples
    #' # convert array of CmsSite (x) to a data frame
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
    #' Convert CmsSite to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CmsSiteObject <- list()
      if (!is.null(self$`platform`)) {
        CmsSiteObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`site_url`)) {
        CmsSiteObject[["site_url"]] <-
          self$`site_url`
      }
      if (!is.null(self$`host`)) {
        CmsSiteObject[["host"]] <-
          self$`host`
      }
      if (!is.null(self$`status`)) {
        CmsSiteObject[["status"]] <-
          self$`status`
      }
      return(CmsSiteObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CmsSite
    #'
    #' @param input_json the JSON input
    #' @return the instance of CmsSite
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`platform`)) {
        if (!is.null(this_object$`platform`) && !(this_object$`platform` %in% c("wordpress"))) {
          stop(paste("Error! \"", this_object$`platform`, "\" cannot be assigned to `platform`. Must be \"wordpress\".", sep = ""))
        }
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`site_url`)) {
        self$`site_url` <- this_object$`site_url`
      }
      if (!is.null(this_object$`host`)) {
        self$`host` <- this_object$`host`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("pending", "connected", "reconnect_required"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"pending\", \"connected\", \"reconnect_required\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CmsSite in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CmsSite
    #'
    #' @param input_json the JSON input
    #' @return the instance of CmsSite
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`platform`) && !(this_object$`platform` %in% c("wordpress"))) {
        stop(paste("Error! \"", this_object$`platform`, "\" cannot be assigned to `platform`. Must be \"wordpress\".", sep = ""))
      }
      self$`platform` <- this_object$`platform`
      self$`site_url` <- this_object$`site_url`
      self$`host` <- this_object$`host`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("pending", "connected", "reconnect_required"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"pending\", \"connected\", \"reconnect_required\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self
    },

    #' @description
    #' Validate JSON input with respect to CmsSite and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CmsSite
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
# CmsSite$unlock()
#
## Below is an example to define the print function
# CmsSite$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CmsSite$lock()

