#' Create a new OwnedMediaPlatformProfiles
#'
#' @description
#' OwnedMediaPlatformProfiles Class
#'
#' @docType class
#' @title OwnedMediaPlatformProfiles
#' @description OwnedMediaPlatformProfiles Class
#' @format An \code{R6Class} generator object
#' @field platform  character [optional]
#' @field connected  character [optional]
#' @field max_extra_profiles How many extra profiles the platform accepts; null where it takes none integer [optional]
#' @field profiles  list(\link{OwnedMediaProfile}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaPlatformProfiles <- R6::R6Class(
  "OwnedMediaPlatformProfiles",
  public = list(
    `platform` = NULL,
    `connected` = NULL,
    `max_extra_profiles` = NULL,
    `profiles` = NULL,

    #' @description
    #' Initialize a new OwnedMediaPlatformProfiles class.
    #'
    #' @param platform platform
    #' @param connected connected
    #' @param max_extra_profiles How many extra profiles the platform accepts; null where it takes none
    #' @param profiles profiles
    #' @param ... Other optional arguments.
    initialize = function(`platform` = NULL, `connected` = NULL, `max_extra_profiles` = NULL, `profiles` = NULL, ...) {
      if (!is.null(`platform`)) {
        if (!(`platform` %in% c("youtube", "mobile_apps", "instagram", "facebook", "tiktok", "linkedin", "reddit"))) {
          stop(paste("Error! \"", `platform`, "\" cannot be assigned to `platform`. Must be \"youtube\", \"mobile_apps\", \"instagram\", \"facebook\", \"tiktok\", \"linkedin\", \"reddit\".", sep = ""))
        }
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!is.null(`connected`)) {
        if (!(is.logical(`connected`) && length(`connected`) == 1)) {
          stop(paste("Error! Invalid data for `connected`. Must be a boolean:", `connected`))
        }
        self$`connected` <- `connected`
      }
      if (!is.null(`max_extra_profiles`)) {
        if (!(is.numeric(`max_extra_profiles`) && length(`max_extra_profiles`) == 1)) {
          stop(paste("Error! Invalid data for `max_extra_profiles`. Must be an integer:", `max_extra_profiles`))
        }
        self$`max_extra_profiles` <- `max_extra_profiles`
      }
      if (!is.null(`profiles`)) {
        stopifnot(is.vector(`profiles`), length(`profiles`) != 0)
        sapply(`profiles`, function(x) stopifnot(R6::is.R6(x)))
        self$`profiles` <- `profiles`
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
    #' @return OwnedMediaPlatformProfiles as a base R list.
    #' @examples
    #' # convert array of OwnedMediaPlatformProfiles (x) to a data frame
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
    #' Convert OwnedMediaPlatformProfiles to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaPlatformProfilesObject <- list()
      if (!is.null(self$`platform`)) {
        OwnedMediaPlatformProfilesObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`connected`)) {
        OwnedMediaPlatformProfilesObject[["connected"]] <-
          self$`connected`
      }
      if (!is.null(self$`max_extra_profiles`)) {
        OwnedMediaPlatformProfilesObject[["max_extra_profiles"]] <-
          self$`max_extra_profiles`
      }
      if (!is.null(self$`profiles`)) {
        OwnedMediaPlatformProfilesObject[["profiles"]] <-
          self$extractSimpleType(self$`profiles`)
      }
      return(OwnedMediaPlatformProfilesObject)
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
    #' Deserialize JSON string into an instance of OwnedMediaPlatformProfiles
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaPlatformProfiles
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`platform`)) {
        if (!is.null(this_object$`platform`) && !(this_object$`platform` %in% c("youtube", "mobile_apps", "instagram", "facebook", "tiktok", "linkedin", "reddit"))) {
          stop(paste("Error! \"", this_object$`platform`, "\" cannot be assigned to `platform`. Must be \"youtube\", \"mobile_apps\", \"instagram\", \"facebook\", \"tiktok\", \"linkedin\", \"reddit\".", sep = ""))
        }
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`connected`)) {
        self$`connected` <- this_object$`connected`
      }
      if (!is.null(this_object$`max_extra_profiles`)) {
        self$`max_extra_profiles` <- this_object$`max_extra_profiles`
      }
      if (!is.null(this_object$`profiles`)) {
        self$`profiles` <- ApiClient$new()$deserializeObj(this_object$`profiles`, "array[OwnedMediaProfile]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaPlatformProfiles in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaPlatformProfiles
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaPlatformProfiles
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`platform`) && !(this_object$`platform` %in% c("youtube", "mobile_apps", "instagram", "facebook", "tiktok", "linkedin", "reddit"))) {
        stop(paste("Error! \"", this_object$`platform`, "\" cannot be assigned to `platform`. Must be \"youtube\", \"mobile_apps\", \"instagram\", \"facebook\", \"tiktok\", \"linkedin\", \"reddit\".", sep = ""))
      }
      self$`platform` <- this_object$`platform`
      self$`connected` <- this_object$`connected`
      self$`max_extra_profiles` <- this_object$`max_extra_profiles`
      self$`profiles` <- ApiClient$new()$deserializeObj(this_object$`profiles`, "array[OwnedMediaProfile]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaPlatformProfiles and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaPlatformProfiles
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
# OwnedMediaPlatformProfiles$unlock()
#
## Below is an example to define the print function
# OwnedMediaPlatformProfiles$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaPlatformProfiles$lock()

