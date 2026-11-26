#' Create a new ProjectDraftRecordOwnedMedia
#'
#' @description
#' The owned media fields the owned_media step sent; empty before it
#'
#' @docType class
#' @title ProjectDraftRecordOwnedMedia
#' @description ProjectDraftRecordOwnedMedia Class
#' @format An \code{R6Class} generator object
#' @field youtube_channel_url  character [optional]
#' @field instagram_profile_url  character [optional]
#' @field facebook_page_url  character [optional]
#' @field tiktok_profile_url  character [optional]
#' @field app_store_url  character [optional]
#' @field google_play_url  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDraftRecordOwnedMedia <- R6::R6Class(
  "ProjectDraftRecordOwnedMedia",
  public = list(
    `youtube_channel_url` = NULL,
    `instagram_profile_url` = NULL,
    `facebook_page_url` = NULL,
    `tiktok_profile_url` = NULL,
    `app_store_url` = NULL,
    `google_play_url` = NULL,

    #' @description
    #' Initialize a new ProjectDraftRecordOwnedMedia class.
    #'
    #' @param youtube_channel_url youtube_channel_url
    #' @param instagram_profile_url instagram_profile_url
    #' @param facebook_page_url facebook_page_url
    #' @param tiktok_profile_url tiktok_profile_url
    #' @param app_store_url app_store_url
    #' @param google_play_url google_play_url
    #' @param ... Other optional arguments.
    initialize = function(`youtube_channel_url` = NULL, `instagram_profile_url` = NULL, `facebook_page_url` = NULL, `tiktok_profile_url` = NULL, `app_store_url` = NULL, `google_play_url` = NULL, ...) {
      if (!is.null(`youtube_channel_url`)) {
        if (!(is.character(`youtube_channel_url`) && length(`youtube_channel_url`) == 1)) {
          stop(paste("Error! Invalid data for `youtube_channel_url`. Must be a string:", `youtube_channel_url`))
        }
        self$`youtube_channel_url` <- `youtube_channel_url`
      }
      if (!is.null(`instagram_profile_url`)) {
        if (!(is.character(`instagram_profile_url`) && length(`instagram_profile_url`) == 1)) {
          stop(paste("Error! Invalid data for `instagram_profile_url`. Must be a string:", `instagram_profile_url`))
        }
        self$`instagram_profile_url` <- `instagram_profile_url`
      }
      if (!is.null(`facebook_page_url`)) {
        if (!(is.character(`facebook_page_url`) && length(`facebook_page_url`) == 1)) {
          stop(paste("Error! Invalid data for `facebook_page_url`. Must be a string:", `facebook_page_url`))
        }
        self$`facebook_page_url` <- `facebook_page_url`
      }
      if (!is.null(`tiktok_profile_url`)) {
        if (!(is.character(`tiktok_profile_url`) && length(`tiktok_profile_url`) == 1)) {
          stop(paste("Error! Invalid data for `tiktok_profile_url`. Must be a string:", `tiktok_profile_url`))
        }
        self$`tiktok_profile_url` <- `tiktok_profile_url`
      }
      if (!is.null(`app_store_url`)) {
        if (!(is.character(`app_store_url`) && length(`app_store_url`) == 1)) {
          stop(paste("Error! Invalid data for `app_store_url`. Must be a string:", `app_store_url`))
        }
        self$`app_store_url` <- `app_store_url`
      }
      if (!is.null(`google_play_url`)) {
        if (!(is.character(`google_play_url`) && length(`google_play_url`) == 1)) {
          stop(paste("Error! Invalid data for `google_play_url`. Must be a string:", `google_play_url`))
        }
        self$`google_play_url` <- `google_play_url`
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
    #' @return ProjectDraftRecordOwnedMedia as a base R list.
    #' @examples
    #' # convert array of ProjectDraftRecordOwnedMedia (x) to a data frame
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
    #' Convert ProjectDraftRecordOwnedMedia to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectDraftRecordOwnedMediaObject <- list()
      if (!is.null(self$`youtube_channel_url`)) {
        ProjectDraftRecordOwnedMediaObject[["youtube_channel_url"]] <-
          self$`youtube_channel_url`
      }
      if (!is.null(self$`instagram_profile_url`)) {
        ProjectDraftRecordOwnedMediaObject[["instagram_profile_url"]] <-
          self$`instagram_profile_url`
      }
      if (!is.null(self$`facebook_page_url`)) {
        ProjectDraftRecordOwnedMediaObject[["facebook_page_url"]] <-
          self$`facebook_page_url`
      }
      if (!is.null(self$`tiktok_profile_url`)) {
        ProjectDraftRecordOwnedMediaObject[["tiktok_profile_url"]] <-
          self$`tiktok_profile_url`
      }
      if (!is.null(self$`app_store_url`)) {
        ProjectDraftRecordOwnedMediaObject[["app_store_url"]] <-
          self$`app_store_url`
      }
      if (!is.null(self$`google_play_url`)) {
        ProjectDraftRecordOwnedMediaObject[["google_play_url"]] <-
          self$`google_play_url`
      }
      return(ProjectDraftRecordOwnedMediaObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDraftRecordOwnedMedia
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDraftRecordOwnedMedia
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`youtube_channel_url`)) {
        self$`youtube_channel_url` <- this_object$`youtube_channel_url`
      }
      if (!is.null(this_object$`instagram_profile_url`)) {
        self$`instagram_profile_url` <- this_object$`instagram_profile_url`
      }
      if (!is.null(this_object$`facebook_page_url`)) {
        self$`facebook_page_url` <- this_object$`facebook_page_url`
      }
      if (!is.null(this_object$`tiktok_profile_url`)) {
        self$`tiktok_profile_url` <- this_object$`tiktok_profile_url`
      }
      if (!is.null(this_object$`app_store_url`)) {
        self$`app_store_url` <- this_object$`app_store_url`
      }
      if (!is.null(this_object$`google_play_url`)) {
        self$`google_play_url` <- this_object$`google_play_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectDraftRecordOwnedMedia in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDraftRecordOwnedMedia
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDraftRecordOwnedMedia
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`youtube_channel_url` <- this_object$`youtube_channel_url`
      self$`instagram_profile_url` <- this_object$`instagram_profile_url`
      self$`facebook_page_url` <- this_object$`facebook_page_url`
      self$`tiktok_profile_url` <- this_object$`tiktok_profile_url`
      self$`app_store_url` <- this_object$`app_store_url`
      self$`google_play_url` <- this_object$`google_play_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectDraftRecordOwnedMedia and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectDraftRecordOwnedMedia
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
# ProjectDraftRecordOwnedMedia$unlock()
#
## Below is an example to define the print function
# ProjectDraftRecordOwnedMedia$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectDraftRecordOwnedMedia$lock()

