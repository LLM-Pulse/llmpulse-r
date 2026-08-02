#' Create a new UpdateProjectDraftRequest
#'
#' @description
#' UpdateProjectDraftRequest Class
#'
#' @docType class
#' @title UpdateProjectDraftRequest
#' @description UpdateProjectDraftRequest Class
#' @format An \code{R6Class} generator object
#' @field step  character
#' @field name  character [optional]
#' @field brand_name  character [optional]
#' @field description  character [optional]
#' @field industry  list(character) [optional]
#' @field matching_names  list(character) [optional]
#' @field external_identifier  character [optional]
#' @field prompts  list(character) [optional]
#' @field competitors  list(object) [optional]
#' @field youtube_channel_url  character [optional]
#' @field instagram_profile_url  character [optional]
#' @field facebook_page_url  character [optional]
#' @field tiktok_profile_url  character [optional]
#' @field app_store_url  character [optional]
#' @field google_play_url  character [optional]
#' @field suggest  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateProjectDraftRequest <- R6::R6Class(
  "UpdateProjectDraftRequest",
  public = list(
    `step` = NULL,
    `name` = NULL,
    `brand_name` = NULL,
    `description` = NULL,
    `industry` = NULL,
    `matching_names` = NULL,
    `external_identifier` = NULL,
    `prompts` = NULL,
    `competitors` = NULL,
    `youtube_channel_url` = NULL,
    `instagram_profile_url` = NULL,
    `facebook_page_url` = NULL,
    `tiktok_profile_url` = NULL,
    `app_store_url` = NULL,
    `google_play_url` = NULL,
    `suggest` = NULL,

    #' @description
    #' Initialize a new UpdateProjectDraftRequest class.
    #'
    #' @param step step
    #' @param name name
    #' @param brand_name brand_name
    #' @param description description
    #' @param industry industry
    #' @param matching_names matching_names
    #' @param external_identifier external_identifier
    #' @param prompts prompts
    #' @param competitors competitors
    #' @param youtube_channel_url youtube_channel_url
    #' @param instagram_profile_url instagram_profile_url
    #' @param facebook_page_url facebook_page_url
    #' @param tiktok_profile_url tiktok_profile_url
    #' @param app_store_url app_store_url
    #' @param google_play_url google_play_url
    #' @param suggest suggest. Default to TRUE.
    #' @param ... Other optional arguments.
    initialize = function(`step`, `name` = NULL, `brand_name` = NULL, `description` = NULL, `industry` = NULL, `matching_names` = NULL, `external_identifier` = NULL, `prompts` = NULL, `competitors` = NULL, `youtube_channel_url` = NULL, `instagram_profile_url` = NULL, `facebook_page_url` = NULL, `tiktok_profile_url` = NULL, `app_store_url` = NULL, `google_play_url` = NULL, `suggest` = TRUE, ...) {
      if (!missing(`step`)) {
        if (!(`step` %in% c("details", "prompts", "competitors", "owned_media"))) {
          stop(paste("Error! \"", `step`, "\" cannot be assigned to `step`. Must be \"details\", \"prompts\", \"competitors\", \"owned_media\".", sep = ""))
        }
        if (!(is.character(`step`) && length(`step`) == 1)) {
          stop(paste("Error! Invalid data for `step`. Must be a string:", `step`))
        }
        self$`step` <- `step`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`brand_name`)) {
        if (!(is.character(`brand_name`) && length(`brand_name`) == 1)) {
          stop(paste("Error! Invalid data for `brand_name`. Must be a string:", `brand_name`))
        }
        self$`brand_name` <- `brand_name`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`industry`)) {
        stopifnot(is.vector(`industry`), length(`industry`) != 0)
        sapply(`industry`, function(x) stopifnot(is.character(x)))
        self$`industry` <- `industry`
      }
      if (!is.null(`matching_names`)) {
        stopifnot(is.vector(`matching_names`), length(`matching_names`) != 0)
        sapply(`matching_names`, function(x) stopifnot(is.character(x)))
        self$`matching_names` <- `matching_names`
      }
      if (!is.null(`external_identifier`)) {
        if (!(is.character(`external_identifier`) && length(`external_identifier`) == 1)) {
          stop(paste("Error! Invalid data for `external_identifier`. Must be a string:", `external_identifier`))
        }
        self$`external_identifier` <- `external_identifier`
      }
      if (!is.null(`prompts`)) {
        stopifnot(is.vector(`prompts`), length(`prompts`) != 0)
        sapply(`prompts`, function(x) stopifnot(is.character(x)))
        self$`prompts` <- `prompts`
      }
      if (!is.null(`competitors`)) {
        stopifnot(is.vector(`competitors`), length(`competitors`) != 0)
        sapply(`competitors`, function(x) stopifnot(is.character(x)))
        self$`competitors` <- `competitors`
      }
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
      if (!is.null(`suggest`)) {
        if (!(is.logical(`suggest`) && length(`suggest`) == 1)) {
          stop(paste("Error! Invalid data for `suggest`. Must be a boolean:", `suggest`))
        }
        self$`suggest` <- `suggest`
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
    #' @return UpdateProjectDraftRequest as a base R list.
    #' @examples
    #' # convert array of UpdateProjectDraftRequest (x) to a data frame
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
    #' Convert UpdateProjectDraftRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpdateProjectDraftRequestObject <- list()
      if (!is.null(self$`step`)) {
        UpdateProjectDraftRequestObject[["step"]] <-
          self$`step`
      }
      if (!is.null(self$`name`)) {
        UpdateProjectDraftRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`brand_name`)) {
        UpdateProjectDraftRequestObject[["brand_name"]] <-
          self$`brand_name`
      }
      if (!is.null(self$`description`)) {
        UpdateProjectDraftRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`industry`)) {
        UpdateProjectDraftRequestObject[["industry"]] <-
          self$`industry`
      }
      if (!is.null(self$`matching_names`)) {
        UpdateProjectDraftRequestObject[["matching_names"]] <-
          self$`matching_names`
      }
      if (!is.null(self$`external_identifier`)) {
        UpdateProjectDraftRequestObject[["external_identifier"]] <-
          self$`external_identifier`
      }
      if (!is.null(self$`prompts`)) {
        UpdateProjectDraftRequestObject[["prompts"]] <-
          self$`prompts`
      }
      if (!is.null(self$`competitors`)) {
        UpdateProjectDraftRequestObject[["competitors"]] <-
          self$`competitors`
      }
      if (!is.null(self$`youtube_channel_url`)) {
        UpdateProjectDraftRequestObject[["youtube_channel_url"]] <-
          self$`youtube_channel_url`
      }
      if (!is.null(self$`instagram_profile_url`)) {
        UpdateProjectDraftRequestObject[["instagram_profile_url"]] <-
          self$`instagram_profile_url`
      }
      if (!is.null(self$`facebook_page_url`)) {
        UpdateProjectDraftRequestObject[["facebook_page_url"]] <-
          self$`facebook_page_url`
      }
      if (!is.null(self$`tiktok_profile_url`)) {
        UpdateProjectDraftRequestObject[["tiktok_profile_url"]] <-
          self$`tiktok_profile_url`
      }
      if (!is.null(self$`app_store_url`)) {
        UpdateProjectDraftRequestObject[["app_store_url"]] <-
          self$`app_store_url`
      }
      if (!is.null(self$`google_play_url`)) {
        UpdateProjectDraftRequestObject[["google_play_url"]] <-
          self$`google_play_url`
      }
      if (!is.null(self$`suggest`)) {
        UpdateProjectDraftRequestObject[["suggest"]] <-
          self$`suggest`
      }
      return(UpdateProjectDraftRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateProjectDraftRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateProjectDraftRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`step`)) {
        if (!is.null(this_object$`step`) && !(this_object$`step` %in% c("details", "prompts", "competitors", "owned_media"))) {
          stop(paste("Error! \"", this_object$`step`, "\" cannot be assigned to `step`. Must be \"details\", \"prompts\", \"competitors\", \"owned_media\".", sep = ""))
        }
        self$`step` <- this_object$`step`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`brand_name`)) {
        self$`brand_name` <- this_object$`brand_name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`industry`)) {
        self$`industry` <- ApiClient$new()$deserializeObj(this_object$`industry`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`matching_names`)) {
        self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`external_identifier`)) {
        self$`external_identifier` <- this_object$`external_identifier`
      }
      if (!is.null(this_object$`prompts`)) {
        self$`prompts` <- ApiClient$new()$deserializeObj(this_object$`prompts`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`competitors`)) {
        self$`competitors` <- ApiClient$new()$deserializeObj(this_object$`competitors`, "array[object]", loadNamespace("llmpulse"))
      }
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
      if (!is.null(this_object$`suggest`)) {
        self$`suggest` <- this_object$`suggest`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UpdateProjectDraftRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateProjectDraftRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateProjectDraftRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`step`) && !(this_object$`step` %in% c("details", "prompts", "competitors", "owned_media"))) {
        stop(paste("Error! \"", this_object$`step`, "\" cannot be assigned to `step`. Must be \"details\", \"prompts\", \"competitors\", \"owned_media\".", sep = ""))
      }
      self$`step` <- this_object$`step`
      self$`name` <- this_object$`name`
      self$`brand_name` <- this_object$`brand_name`
      self$`description` <- this_object$`description`
      self$`industry` <- ApiClient$new()$deserializeObj(this_object$`industry`, "array[character]", loadNamespace("llmpulse"))
      self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      self$`external_identifier` <- this_object$`external_identifier`
      self$`prompts` <- ApiClient$new()$deserializeObj(this_object$`prompts`, "array[character]", loadNamespace("llmpulse"))
      self$`competitors` <- ApiClient$new()$deserializeObj(this_object$`competitors`, "array[object]", loadNamespace("llmpulse"))
      self$`youtube_channel_url` <- this_object$`youtube_channel_url`
      self$`instagram_profile_url` <- this_object$`instagram_profile_url`
      self$`facebook_page_url` <- this_object$`facebook_page_url`
      self$`tiktok_profile_url` <- this_object$`tiktok_profile_url`
      self$`app_store_url` <- this_object$`app_store_url`
      self$`google_play_url` <- this_object$`google_play_url`
      self$`suggest` <- this_object$`suggest`
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdateProjectDraftRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `step`
      if (!is.null(input_json$`step`)) {
        if (!(is.character(input_json$`step`) && length(input_json$`step`) == 1)) {
          stop(paste("Error! Invalid data for `step`. Must be a string:", input_json$`step`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UpdateProjectDraftRequest: the required field `step` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateProjectDraftRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `step` is null
      if (is.null(self$`step`)) {
        return(FALSE)
      }

      if (length(self$`prompts`) > 100) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `step` is null
      if (is.null(self$`step`)) {
        invalid_fields["step"] <- "Non-nullable required field `step` cannot be null."
      }

      if (length(self$`prompts`) > 100) {
        invalid_fields["prompts"] <- "Invalid length for `prompts`, number of items must be less than or equal to 100."
      }

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
# UpdateProjectDraftRequest$unlock()
#
## Below is an example to define the print function
# UpdateProjectDraftRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateProjectDraftRequest$lock()

