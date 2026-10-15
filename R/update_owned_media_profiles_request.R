#' Create a new UpdateOwnedMediaProfilesRequest
#'
#' @description
#' UpdateOwnedMediaProfilesRequest Class
#'
#' @docType class
#' @title UpdateOwnedMediaProfilesRequest
#' @description UpdateOwnedMediaProfilesRequest Class
#' @format An \code{R6Class} generator object
#' @field youtube_channel_url The main YouTube channel URL (@handle, /channel/UC..., /c/... or /user/...). An empty string or null clears it character [optional]
#' @field app_store_url The App Store app URL, with its id number. An empty string or null clears it character [optional]
#' @field google_play_url The Google Play app URL, or its package name (com.acme.app). An empty string or null clears it character [optional]
#' @field instagram_profile_url The main Instagram profile URL. An empty string or null clears it character [optional]
#' @field facebook_page_url The main Facebook Page URL. An empty string or null clears it character [optional]
#' @field tiktok_profile_url The main TikTok profile URL. An empty string or null clears it character [optional]
#' @field linkedin_company_url The main LinkedIn Company Page URL (/company/...). An empty string or null clears it character [optional]
#' @field youtube_extra_profile_urls FULL replacement list of extra YouTube channel URLs (at most 10); [] clears it list(character) [optional]
#' @field mobile_apps_extra_profile_urls FULL replacement list of extra App Store or Google Play app URLs (at most 10); [] clears it list(character) [optional]
#' @field instagram_extra_profile_urls FULL replacement list of extra Instagram profile URLs (at most 10); [] clears it list(character) [optional]
#' @field facebook_extra_profile_urls FULL replacement list of extra Facebook Page URLs (at most 10); [] clears it list(character) [optional]
#' @field tiktok_extra_profile_urls FULL replacement list of extra TikTok profile URLs (at most 10); [] clears it list(character) [optional]
#' @field linkedin_extra_profile_urls FULL replacement list of extra LinkedIn Company Page URLs (at most 10); [] clears it list(character) [optional]
#' @field reddit_subreddits FULL replacement list (at most 10) of subreddit names the brand owns, without r/; [] clears it list(character) [optional]
#' @field reddit_usernames FULL replacement list (at most 25) of Reddit usernames the brand owns, without u/; [] clears it list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateOwnedMediaProfilesRequest <- R6::R6Class(
  "UpdateOwnedMediaProfilesRequest",
  public = list(
    `youtube_channel_url` = NULL,
    `app_store_url` = NULL,
    `google_play_url` = NULL,
    `instagram_profile_url` = NULL,
    `facebook_page_url` = NULL,
    `tiktok_profile_url` = NULL,
    `linkedin_company_url` = NULL,
    `youtube_extra_profile_urls` = NULL,
    `mobile_apps_extra_profile_urls` = NULL,
    `instagram_extra_profile_urls` = NULL,
    `facebook_extra_profile_urls` = NULL,
    `tiktok_extra_profile_urls` = NULL,
    `linkedin_extra_profile_urls` = NULL,
    `reddit_subreddits` = NULL,
    `reddit_usernames` = NULL,

    #' @description
    #' Initialize a new UpdateOwnedMediaProfilesRequest class.
    #'
    #' @param youtube_channel_url The main YouTube channel URL (@handle, /channel/UC..., /c/... or /user/...). An empty string or null clears it
    #' @param app_store_url The App Store app URL, with its id number. An empty string or null clears it
    #' @param google_play_url The Google Play app URL, or its package name (com.acme.app). An empty string or null clears it
    #' @param instagram_profile_url The main Instagram profile URL. An empty string or null clears it
    #' @param facebook_page_url The main Facebook Page URL. An empty string or null clears it
    #' @param tiktok_profile_url The main TikTok profile URL. An empty string or null clears it
    #' @param linkedin_company_url The main LinkedIn Company Page URL (/company/...). An empty string or null clears it
    #' @param youtube_extra_profile_urls FULL replacement list of extra YouTube channel URLs (at most 10); [] clears it
    #' @param mobile_apps_extra_profile_urls FULL replacement list of extra App Store or Google Play app URLs (at most 10); [] clears it
    #' @param instagram_extra_profile_urls FULL replacement list of extra Instagram profile URLs (at most 10); [] clears it
    #' @param facebook_extra_profile_urls FULL replacement list of extra Facebook Page URLs (at most 10); [] clears it
    #' @param tiktok_extra_profile_urls FULL replacement list of extra TikTok profile URLs (at most 10); [] clears it
    #' @param linkedin_extra_profile_urls FULL replacement list of extra LinkedIn Company Page URLs (at most 10); [] clears it
    #' @param reddit_subreddits FULL replacement list (at most 10) of subreddit names the brand owns, without r/; [] clears it
    #' @param reddit_usernames FULL replacement list (at most 25) of Reddit usernames the brand owns, without u/; [] clears it
    #' @param ... Other optional arguments.
    initialize = function(`youtube_channel_url` = NULL, `app_store_url` = NULL, `google_play_url` = NULL, `instagram_profile_url` = NULL, `facebook_page_url` = NULL, `tiktok_profile_url` = NULL, `linkedin_company_url` = NULL, `youtube_extra_profile_urls` = NULL, `mobile_apps_extra_profile_urls` = NULL, `instagram_extra_profile_urls` = NULL, `facebook_extra_profile_urls` = NULL, `tiktok_extra_profile_urls` = NULL, `linkedin_extra_profile_urls` = NULL, `reddit_subreddits` = NULL, `reddit_usernames` = NULL, ...) {
      if (!is.null(`youtube_channel_url`)) {
        if (!(is.character(`youtube_channel_url`) && length(`youtube_channel_url`) == 1)) {
          stop(paste("Error! Invalid data for `youtube_channel_url`. Must be a string:", `youtube_channel_url`))
        }
        self$`youtube_channel_url` <- `youtube_channel_url`
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
      if (!is.null(`linkedin_company_url`)) {
        if (!(is.character(`linkedin_company_url`) && length(`linkedin_company_url`) == 1)) {
          stop(paste("Error! Invalid data for `linkedin_company_url`. Must be a string:", `linkedin_company_url`))
        }
        self$`linkedin_company_url` <- `linkedin_company_url`
      }
      if (!is.null(`youtube_extra_profile_urls`)) {
        stopifnot(is.vector(`youtube_extra_profile_urls`), length(`youtube_extra_profile_urls`) != 0)
        sapply(`youtube_extra_profile_urls`, function(x) stopifnot(is.character(x)))
        self$`youtube_extra_profile_urls` <- `youtube_extra_profile_urls`
      }
      if (!is.null(`mobile_apps_extra_profile_urls`)) {
        stopifnot(is.vector(`mobile_apps_extra_profile_urls`), length(`mobile_apps_extra_profile_urls`) != 0)
        sapply(`mobile_apps_extra_profile_urls`, function(x) stopifnot(is.character(x)))
        self$`mobile_apps_extra_profile_urls` <- `mobile_apps_extra_profile_urls`
      }
      if (!is.null(`instagram_extra_profile_urls`)) {
        stopifnot(is.vector(`instagram_extra_profile_urls`), length(`instagram_extra_profile_urls`) != 0)
        sapply(`instagram_extra_profile_urls`, function(x) stopifnot(is.character(x)))
        self$`instagram_extra_profile_urls` <- `instagram_extra_profile_urls`
      }
      if (!is.null(`facebook_extra_profile_urls`)) {
        stopifnot(is.vector(`facebook_extra_profile_urls`), length(`facebook_extra_profile_urls`) != 0)
        sapply(`facebook_extra_profile_urls`, function(x) stopifnot(is.character(x)))
        self$`facebook_extra_profile_urls` <- `facebook_extra_profile_urls`
      }
      if (!is.null(`tiktok_extra_profile_urls`)) {
        stopifnot(is.vector(`tiktok_extra_profile_urls`), length(`tiktok_extra_profile_urls`) != 0)
        sapply(`tiktok_extra_profile_urls`, function(x) stopifnot(is.character(x)))
        self$`tiktok_extra_profile_urls` <- `tiktok_extra_profile_urls`
      }
      if (!is.null(`linkedin_extra_profile_urls`)) {
        stopifnot(is.vector(`linkedin_extra_profile_urls`), length(`linkedin_extra_profile_urls`) != 0)
        sapply(`linkedin_extra_profile_urls`, function(x) stopifnot(is.character(x)))
        self$`linkedin_extra_profile_urls` <- `linkedin_extra_profile_urls`
      }
      if (!is.null(`reddit_subreddits`)) {
        stopifnot(is.vector(`reddit_subreddits`), length(`reddit_subreddits`) != 0)
        sapply(`reddit_subreddits`, function(x) stopifnot(is.character(x)))
        self$`reddit_subreddits` <- `reddit_subreddits`
      }
      if (!is.null(`reddit_usernames`)) {
        stopifnot(is.vector(`reddit_usernames`), length(`reddit_usernames`) != 0)
        sapply(`reddit_usernames`, function(x) stopifnot(is.character(x)))
        self$`reddit_usernames` <- `reddit_usernames`
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
    #' @return UpdateOwnedMediaProfilesRequest as a base R list.
    #' @examples
    #' # convert array of UpdateOwnedMediaProfilesRequest (x) to a data frame
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
    #' Convert UpdateOwnedMediaProfilesRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpdateOwnedMediaProfilesRequestObject <- list()
      if (!is.null(self$`youtube_channel_url`)) {
        UpdateOwnedMediaProfilesRequestObject[["youtube_channel_url"]] <-
          self$`youtube_channel_url`
      }
      if (!is.null(self$`app_store_url`)) {
        UpdateOwnedMediaProfilesRequestObject[["app_store_url"]] <-
          self$`app_store_url`
      }
      if (!is.null(self$`google_play_url`)) {
        UpdateOwnedMediaProfilesRequestObject[["google_play_url"]] <-
          self$`google_play_url`
      }
      if (!is.null(self$`instagram_profile_url`)) {
        UpdateOwnedMediaProfilesRequestObject[["instagram_profile_url"]] <-
          self$`instagram_profile_url`
      }
      if (!is.null(self$`facebook_page_url`)) {
        UpdateOwnedMediaProfilesRequestObject[["facebook_page_url"]] <-
          self$`facebook_page_url`
      }
      if (!is.null(self$`tiktok_profile_url`)) {
        UpdateOwnedMediaProfilesRequestObject[["tiktok_profile_url"]] <-
          self$`tiktok_profile_url`
      }
      if (!is.null(self$`linkedin_company_url`)) {
        UpdateOwnedMediaProfilesRequestObject[["linkedin_company_url"]] <-
          self$`linkedin_company_url`
      }
      if (!is.null(self$`youtube_extra_profile_urls`)) {
        UpdateOwnedMediaProfilesRequestObject[["youtube_extra_profile_urls"]] <-
          self$`youtube_extra_profile_urls`
      }
      if (!is.null(self$`mobile_apps_extra_profile_urls`)) {
        UpdateOwnedMediaProfilesRequestObject[["mobile_apps_extra_profile_urls"]] <-
          self$`mobile_apps_extra_profile_urls`
      }
      if (!is.null(self$`instagram_extra_profile_urls`)) {
        UpdateOwnedMediaProfilesRequestObject[["instagram_extra_profile_urls"]] <-
          self$`instagram_extra_profile_urls`
      }
      if (!is.null(self$`facebook_extra_profile_urls`)) {
        UpdateOwnedMediaProfilesRequestObject[["facebook_extra_profile_urls"]] <-
          self$`facebook_extra_profile_urls`
      }
      if (!is.null(self$`tiktok_extra_profile_urls`)) {
        UpdateOwnedMediaProfilesRequestObject[["tiktok_extra_profile_urls"]] <-
          self$`tiktok_extra_profile_urls`
      }
      if (!is.null(self$`linkedin_extra_profile_urls`)) {
        UpdateOwnedMediaProfilesRequestObject[["linkedin_extra_profile_urls"]] <-
          self$`linkedin_extra_profile_urls`
      }
      if (!is.null(self$`reddit_subreddits`)) {
        UpdateOwnedMediaProfilesRequestObject[["reddit_subreddits"]] <-
          self$`reddit_subreddits`
      }
      if (!is.null(self$`reddit_usernames`)) {
        UpdateOwnedMediaProfilesRequestObject[["reddit_usernames"]] <-
          self$`reddit_usernames`
      }
      return(UpdateOwnedMediaProfilesRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateOwnedMediaProfilesRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateOwnedMediaProfilesRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`youtube_channel_url`)) {
        self$`youtube_channel_url` <- this_object$`youtube_channel_url`
      }
      if (!is.null(this_object$`app_store_url`)) {
        self$`app_store_url` <- this_object$`app_store_url`
      }
      if (!is.null(this_object$`google_play_url`)) {
        self$`google_play_url` <- this_object$`google_play_url`
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
      if (!is.null(this_object$`linkedin_company_url`)) {
        self$`linkedin_company_url` <- this_object$`linkedin_company_url`
      }
      if (!is.null(this_object$`youtube_extra_profile_urls`)) {
        self$`youtube_extra_profile_urls` <- ApiClient$new()$deserializeObj(this_object$`youtube_extra_profile_urls`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`mobile_apps_extra_profile_urls`)) {
        self$`mobile_apps_extra_profile_urls` <- ApiClient$new()$deserializeObj(this_object$`mobile_apps_extra_profile_urls`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`instagram_extra_profile_urls`)) {
        self$`instagram_extra_profile_urls` <- ApiClient$new()$deserializeObj(this_object$`instagram_extra_profile_urls`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`facebook_extra_profile_urls`)) {
        self$`facebook_extra_profile_urls` <- ApiClient$new()$deserializeObj(this_object$`facebook_extra_profile_urls`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`tiktok_extra_profile_urls`)) {
        self$`tiktok_extra_profile_urls` <- ApiClient$new()$deserializeObj(this_object$`tiktok_extra_profile_urls`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`linkedin_extra_profile_urls`)) {
        self$`linkedin_extra_profile_urls` <- ApiClient$new()$deserializeObj(this_object$`linkedin_extra_profile_urls`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`reddit_subreddits`)) {
        self$`reddit_subreddits` <- ApiClient$new()$deserializeObj(this_object$`reddit_subreddits`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`reddit_usernames`)) {
        self$`reddit_usernames` <- ApiClient$new()$deserializeObj(this_object$`reddit_usernames`, "array[character]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UpdateOwnedMediaProfilesRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateOwnedMediaProfilesRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateOwnedMediaProfilesRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`youtube_channel_url` <- this_object$`youtube_channel_url`
      self$`app_store_url` <- this_object$`app_store_url`
      self$`google_play_url` <- this_object$`google_play_url`
      self$`instagram_profile_url` <- this_object$`instagram_profile_url`
      self$`facebook_page_url` <- this_object$`facebook_page_url`
      self$`tiktok_profile_url` <- this_object$`tiktok_profile_url`
      self$`linkedin_company_url` <- this_object$`linkedin_company_url`
      self$`youtube_extra_profile_urls` <- ApiClient$new()$deserializeObj(this_object$`youtube_extra_profile_urls`, "array[character]", loadNamespace("llmpulse"))
      self$`mobile_apps_extra_profile_urls` <- ApiClient$new()$deserializeObj(this_object$`mobile_apps_extra_profile_urls`, "array[character]", loadNamespace("llmpulse"))
      self$`instagram_extra_profile_urls` <- ApiClient$new()$deserializeObj(this_object$`instagram_extra_profile_urls`, "array[character]", loadNamespace("llmpulse"))
      self$`facebook_extra_profile_urls` <- ApiClient$new()$deserializeObj(this_object$`facebook_extra_profile_urls`, "array[character]", loadNamespace("llmpulse"))
      self$`tiktok_extra_profile_urls` <- ApiClient$new()$deserializeObj(this_object$`tiktok_extra_profile_urls`, "array[character]", loadNamespace("llmpulse"))
      self$`linkedin_extra_profile_urls` <- ApiClient$new()$deserializeObj(this_object$`linkedin_extra_profile_urls`, "array[character]", loadNamespace("llmpulse"))
      self$`reddit_subreddits` <- ApiClient$new()$deserializeObj(this_object$`reddit_subreddits`, "array[character]", loadNamespace("llmpulse"))
      self$`reddit_usernames` <- ApiClient$new()$deserializeObj(this_object$`reddit_usernames`, "array[character]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdateOwnedMediaProfilesRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateOwnedMediaProfilesRequest
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
# UpdateOwnedMediaProfilesRequest$unlock()
#
## Below is an example to define the print function
# UpdateOwnedMediaProfilesRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateOwnedMediaProfilesRequest$lock()

