#' Create a new OwnedMediaProfilesUpdateResponse
#'
#' @description
#' OwnedMediaProfilesUpdateResponse Class
#'
#' @docType class
#' @title OwnedMediaProfilesUpdateResponse
#' @description OwnedMediaProfilesUpdateResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field platforms  list(\link{OwnedMediaPlatformProfiles}) [optional]
#' @field settings  \link{OwnedMediaProfileSettings} [optional]
#' @field request_id  character [optional]
#' @field updated_fields The fields this request set list(character) [optional]
#' @field profile_scrapes_queued Platforms whose new profile is being scraped in the background for its name and avatar list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaProfilesUpdateResponse <- R6::R6Class(
  "OwnedMediaProfilesUpdateResponse",
  public = list(
    `project_id` = NULL,
    `platforms` = NULL,
    `settings` = NULL,
    `request_id` = NULL,
    `updated_fields` = NULL,
    `profile_scrapes_queued` = NULL,

    #' @description
    #' Initialize a new OwnedMediaProfilesUpdateResponse class.
    #'
    #' @param project_id project_id
    #' @param platforms platforms
    #' @param settings settings
    #' @param request_id request_id
    #' @param updated_fields The fields this request set
    #' @param profile_scrapes_queued Platforms whose new profile is being scraped in the background for its name and avatar
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `platforms` = NULL, `settings` = NULL, `request_id` = NULL, `updated_fields` = NULL, `profile_scrapes_queued` = NULL, ...) {
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`platforms`)) {
        stopifnot(is.vector(`platforms`), length(`platforms`) != 0)
        sapply(`platforms`, function(x) stopifnot(R6::is.R6(x)))
        self$`platforms` <- `platforms`
      }
      if (!is.null(`settings`)) {
        stopifnot(R6::is.R6(`settings`))
        self$`settings` <- `settings`
      }
      if (!is.null(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
      }
      if (!is.null(`updated_fields`)) {
        stopifnot(is.vector(`updated_fields`), length(`updated_fields`) != 0)
        sapply(`updated_fields`, function(x) stopifnot(is.character(x)))
        self$`updated_fields` <- `updated_fields`
      }
      if (!is.null(`profile_scrapes_queued`)) {
        stopifnot(is.vector(`profile_scrapes_queued`), length(`profile_scrapes_queued`) != 0)
        sapply(`profile_scrapes_queued`, function(x) stopifnot(is.character(x)))
        self$`profile_scrapes_queued` <- `profile_scrapes_queued`
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
    #' @return OwnedMediaProfilesUpdateResponse as a base R list.
    #' @examples
    #' # convert array of OwnedMediaProfilesUpdateResponse (x) to a data frame
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
    #' Convert OwnedMediaProfilesUpdateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaProfilesUpdateResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        OwnedMediaProfilesUpdateResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`platforms`)) {
        OwnedMediaProfilesUpdateResponseObject[["platforms"]] <-
          self$extractSimpleType(self$`platforms`)
      }
      if (!is.null(self$`settings`)) {
        OwnedMediaProfilesUpdateResponseObject[["settings"]] <-
          self$extractSimpleType(self$`settings`)
      }
      if (!is.null(self$`request_id`)) {
        OwnedMediaProfilesUpdateResponseObject[["request_id"]] <-
          self$`request_id`
      }
      if (!is.null(self$`updated_fields`)) {
        OwnedMediaProfilesUpdateResponseObject[["updated_fields"]] <-
          self$`updated_fields`
      }
      if (!is.null(self$`profile_scrapes_queued`)) {
        OwnedMediaProfilesUpdateResponseObject[["profile_scrapes_queued"]] <-
          self$`profile_scrapes_queued`
      }
      return(OwnedMediaProfilesUpdateResponseObject)
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
    #' Deserialize JSON string into an instance of OwnedMediaProfilesUpdateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaProfilesUpdateResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`platforms`)) {
        self$`platforms` <- ApiClient$new()$deserializeObj(this_object$`platforms`, "array[OwnedMediaPlatformProfiles]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`settings`)) {
        `settings_object` <- OwnedMediaProfileSettings$new()
        `settings_object`$fromJSON(jsonlite::toJSON(this_object$`settings`, auto_unbox = TRUE, digits = NA))
        self$`settings` <- `settings_object`
      }
      if (!is.null(this_object$`request_id`)) {
        self$`request_id` <- this_object$`request_id`
      }
      if (!is.null(this_object$`updated_fields`)) {
        self$`updated_fields` <- ApiClient$new()$deserializeObj(this_object$`updated_fields`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`profile_scrapes_queued`)) {
        self$`profile_scrapes_queued` <- ApiClient$new()$deserializeObj(this_object$`profile_scrapes_queued`, "array[character]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaProfilesUpdateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaProfilesUpdateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaProfilesUpdateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`platforms` <- ApiClient$new()$deserializeObj(this_object$`platforms`, "array[OwnedMediaPlatformProfiles]", loadNamespace("llmpulse"))
      self$`settings` <- OwnedMediaProfileSettings$new()$fromJSON(jsonlite::toJSON(this_object$`settings`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self$`updated_fields` <- ApiClient$new()$deserializeObj(this_object$`updated_fields`, "array[character]", loadNamespace("llmpulse"))
      self$`profile_scrapes_queued` <- ApiClient$new()$deserializeObj(this_object$`profile_scrapes_queued`, "array[character]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaProfilesUpdateResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaProfilesUpdateResponse
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
# OwnedMediaProfilesUpdateResponse$unlock()
#
## Below is an example to define the print function
# OwnedMediaProfilesUpdateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaProfilesUpdateResponse$lock()

