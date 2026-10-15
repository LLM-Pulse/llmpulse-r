#' Create a new OwnedMediaRow
#'
#' @description
#' One row of /dimensions/owned_media. Fields depend on provider and view: videos (title, url, channel_name, channel_handle, channel_url, video_id, thumbnail_url, views, published_at), channels (key, name, handle, url, avatar_url, unique_videos), posts (url, caption, owner_handle, thumbnail_url, content_type, likes, comments, views, posted_at), profiles (handle, name, url, avatar_url, followers, unique_posts), own_citations (url, citation_date, position, model) and apps (domain, total_responses, rank, global_rank). Every view but own_citations carries citations and yours; videos, channels, posts and profiles carry avg_position.
#'
#' @docType class
#' @title OwnedMediaRow
#' @description OwnedMediaRow Class
#' @format An \code{R6Class} generator object
#' @field title  character [optional]
#' @field url  character [optional]
#' @field channel_name  character [optional]
#' @field channel_handle The video's channel handle, without the @ character [optional]
#' @field channel_url  character [optional]
#' @field video_id  character [optional]
#' @field key The channel key (handle:..., channel:... or name:...), accepted as profile by /dimensions/owned_media/citing_prompts character [optional]
#' @field name  character [optional]
#' @field handle  character [optional]
#' @field caption  character [optional]
#' @field owner_handle  character [optional]
#' @field thumbnail_url The post or video image. Our cached copy where one exists, so the link does not expire character [optional]
#' @field avatar_url The profile or channel image. Our cached copy where one exists character [optional]
#' @field content_type The post format on its platform: reel, post or tv on Instagram, post or pulse on LinkedIn, post elsewhere character [optional]
#' @field citations  integer [optional]
#' @field unique_videos  integer [optional]
#' @field unique_posts  integer [optional]
#' @field followers  integer [optional]
#' @field likes  integer [optional]
#' @field comments  integer [optional]
#' @field views View count as the platform reports it, a number or a numeric string, or null when unknown object [optional]
#' @field published_at Publication date as the platform reports it character [optional]
#' @field posted_at Publication date as the platform reports it (ISO 8601, or Unix seconds on TikTok) character [optional]
#' @field avg_position Average position of the citation in the answers (1 = first); null when unknown numeric [optional]
#' @field yours  character [optional]
#' @field citation_date  character [optional]
#' @field position  integer [optional]
#' @field model  character [optional]
#' @field domain The app's store listing URL (provider=mobile_apps) character [optional]
#' @field total_responses  integer [optional]
#' @field rank  integer [optional]
#' @field global_rank  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaRow <- R6::R6Class(
  "OwnedMediaRow",
  public = list(
    `title` = NULL,
    `url` = NULL,
    `channel_name` = NULL,
    `channel_handle` = NULL,
    `channel_url` = NULL,
    `video_id` = NULL,
    `key` = NULL,
    `name` = NULL,
    `handle` = NULL,
    `caption` = NULL,
    `owner_handle` = NULL,
    `thumbnail_url` = NULL,
    `avatar_url` = NULL,
    `content_type` = NULL,
    `citations` = NULL,
    `unique_videos` = NULL,
    `unique_posts` = NULL,
    `followers` = NULL,
    `likes` = NULL,
    `comments` = NULL,
    `views` = NULL,
    `published_at` = NULL,
    `posted_at` = NULL,
    `avg_position` = NULL,
    `yours` = NULL,
    `citation_date` = NULL,
    `position` = NULL,
    `model` = NULL,
    `domain` = NULL,
    `total_responses` = NULL,
    `rank` = NULL,
    `global_rank` = NULL,

    #' @description
    #' Initialize a new OwnedMediaRow class.
    #'
    #' @param title title
    #' @param url url
    #' @param channel_name channel_name
    #' @param channel_handle The video's channel handle, without the @
    #' @param channel_url channel_url
    #' @param video_id video_id
    #' @param key The channel key (handle:..., channel:... or name:...), accepted as profile by /dimensions/owned_media/citing_prompts
    #' @param name name
    #' @param handle handle
    #' @param caption caption
    #' @param owner_handle owner_handle
    #' @param thumbnail_url The post or video image. Our cached copy where one exists, so the link does not expire
    #' @param avatar_url The profile or channel image. Our cached copy where one exists
    #' @param content_type The post format on its platform: reel, post or tv on Instagram, post or pulse on LinkedIn, post elsewhere
    #' @param citations citations
    #' @param unique_videos unique_videos
    #' @param unique_posts unique_posts
    #' @param followers followers
    #' @param likes likes
    #' @param comments comments
    #' @param views View count as the platform reports it, a number or a numeric string, or null when unknown
    #' @param published_at Publication date as the platform reports it
    #' @param posted_at Publication date as the platform reports it (ISO 8601, or Unix seconds on TikTok)
    #' @param avg_position Average position of the citation in the answers (1 = first); null when unknown
    #' @param yours yours
    #' @param citation_date citation_date
    #' @param position position
    #' @param model model
    #' @param domain The app's store listing URL (provider=mobile_apps)
    #' @param total_responses total_responses
    #' @param rank rank
    #' @param global_rank global_rank
    #' @param ... Other optional arguments.
    initialize = function(`title` = NULL, `url` = NULL, `channel_name` = NULL, `channel_handle` = NULL, `channel_url` = NULL, `video_id` = NULL, `key` = NULL, `name` = NULL, `handle` = NULL, `caption` = NULL, `owner_handle` = NULL, `thumbnail_url` = NULL, `avatar_url` = NULL, `content_type` = NULL, `citations` = NULL, `unique_videos` = NULL, `unique_posts` = NULL, `followers` = NULL, `likes` = NULL, `comments` = NULL, `views` = NULL, `published_at` = NULL, `posted_at` = NULL, `avg_position` = NULL, `yours` = NULL, `citation_date` = NULL, `position` = NULL, `model` = NULL, `domain` = NULL, `total_responses` = NULL, `rank` = NULL, `global_rank` = NULL, ...) {
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`channel_name`)) {
        if (!(is.character(`channel_name`) && length(`channel_name`) == 1)) {
          stop(paste("Error! Invalid data for `channel_name`. Must be a string:", `channel_name`))
        }
        self$`channel_name` <- `channel_name`
      }
      if (!is.null(`channel_handle`)) {
        if (!(is.character(`channel_handle`) && length(`channel_handle`) == 1)) {
          stop(paste("Error! Invalid data for `channel_handle`. Must be a string:", `channel_handle`))
        }
        self$`channel_handle` <- `channel_handle`
      }
      if (!is.null(`channel_url`)) {
        if (!(is.character(`channel_url`) && length(`channel_url`) == 1)) {
          stop(paste("Error! Invalid data for `channel_url`. Must be a string:", `channel_url`))
        }
        self$`channel_url` <- `channel_url`
      }
      if (!is.null(`video_id`)) {
        if (!(is.character(`video_id`) && length(`video_id`) == 1)) {
          stop(paste("Error! Invalid data for `video_id`. Must be a string:", `video_id`))
        }
        self$`video_id` <- `video_id`
      }
      if (!is.null(`key`)) {
        if (!(is.character(`key`) && length(`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", `key`))
        }
        self$`key` <- `key`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`handle`)) {
        if (!(is.character(`handle`) && length(`handle`) == 1)) {
          stop(paste("Error! Invalid data for `handle`. Must be a string:", `handle`))
        }
        self$`handle` <- `handle`
      }
      if (!is.null(`caption`)) {
        if (!(is.character(`caption`) && length(`caption`) == 1)) {
          stop(paste("Error! Invalid data for `caption`. Must be a string:", `caption`))
        }
        self$`caption` <- `caption`
      }
      if (!is.null(`owner_handle`)) {
        if (!(is.character(`owner_handle`) && length(`owner_handle`) == 1)) {
          stop(paste("Error! Invalid data for `owner_handle`. Must be a string:", `owner_handle`))
        }
        self$`owner_handle` <- `owner_handle`
      }
      if (!is.null(`thumbnail_url`)) {
        if (!(is.character(`thumbnail_url`) && length(`thumbnail_url`) == 1)) {
          stop(paste("Error! Invalid data for `thumbnail_url`. Must be a string:", `thumbnail_url`))
        }
        self$`thumbnail_url` <- `thumbnail_url`
      }
      if (!is.null(`avatar_url`)) {
        if (!(is.character(`avatar_url`) && length(`avatar_url`) == 1)) {
          stop(paste("Error! Invalid data for `avatar_url`. Must be a string:", `avatar_url`))
        }
        self$`avatar_url` <- `avatar_url`
      }
      if (!is.null(`content_type`)) {
        if (!(is.character(`content_type`) && length(`content_type`) == 1)) {
          stop(paste("Error! Invalid data for `content_type`. Must be a string:", `content_type`))
        }
        self$`content_type` <- `content_type`
      }
      if (!is.null(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
      }
      if (!is.null(`unique_videos`)) {
        if (!(is.numeric(`unique_videos`) && length(`unique_videos`) == 1)) {
          stop(paste("Error! Invalid data for `unique_videos`. Must be an integer:", `unique_videos`))
        }
        self$`unique_videos` <- `unique_videos`
      }
      if (!is.null(`unique_posts`)) {
        if (!(is.numeric(`unique_posts`) && length(`unique_posts`) == 1)) {
          stop(paste("Error! Invalid data for `unique_posts`. Must be an integer:", `unique_posts`))
        }
        self$`unique_posts` <- `unique_posts`
      }
      if (!is.null(`followers`)) {
        if (!(is.numeric(`followers`) && length(`followers`) == 1)) {
          stop(paste("Error! Invalid data for `followers`. Must be an integer:", `followers`))
        }
        self$`followers` <- `followers`
      }
      if (!is.null(`likes`)) {
        if (!(is.numeric(`likes`) && length(`likes`) == 1)) {
          stop(paste("Error! Invalid data for `likes`. Must be an integer:", `likes`))
        }
        self$`likes` <- `likes`
      }
      if (!is.null(`comments`)) {
        if (!(is.numeric(`comments`) && length(`comments`) == 1)) {
          stop(paste("Error! Invalid data for `comments`. Must be an integer:", `comments`))
        }
        self$`comments` <- `comments`
      }
      if (!is.null(`views`)) {
        self$`views` <- `views`
      }
      if (!is.null(`published_at`)) {
        if (!(is.character(`published_at`) && length(`published_at`) == 1)) {
          stop(paste("Error! Invalid data for `published_at`. Must be a string:", `published_at`))
        }
        self$`published_at` <- `published_at`
      }
      if (!is.null(`posted_at`)) {
        if (!(is.character(`posted_at`) && length(`posted_at`) == 1)) {
          stop(paste("Error! Invalid data for `posted_at`. Must be a string:", `posted_at`))
        }
        self$`posted_at` <- `posted_at`
      }
      if (!is.null(`avg_position`)) {
        self$`avg_position` <- `avg_position`
      }
      if (!is.null(`yours`)) {
        if (!(is.logical(`yours`) && length(`yours`) == 1)) {
          stop(paste("Error! Invalid data for `yours`. Must be a boolean:", `yours`))
        }
        self$`yours` <- `yours`
      }
      if (!is.null(`citation_date`)) {
        if (!is.character(`citation_date`)) {
          stop(paste("Error! Invalid data for `citation_date`. Must be a string:", `citation_date`))
        }
        self$`citation_date` <- `citation_date`
      }
      if (!is.null(`position`)) {
        if (!(is.numeric(`position`) && length(`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", `position`))
        }
        self$`position` <- `position`
      }
      if (!is.null(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!is.null(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!is.null(`total_responses`)) {
        if (!(is.numeric(`total_responses`) && length(`total_responses`) == 1)) {
          stop(paste("Error! Invalid data for `total_responses`. Must be an integer:", `total_responses`))
        }
        self$`total_responses` <- `total_responses`
      }
      if (!is.null(`rank`)) {
        if (!(is.numeric(`rank`) && length(`rank`) == 1)) {
          stop(paste("Error! Invalid data for `rank`. Must be an integer:", `rank`))
        }
        self$`rank` <- `rank`
      }
      if (!is.null(`global_rank`)) {
        if (!(is.numeric(`global_rank`) && length(`global_rank`) == 1)) {
          stop(paste("Error! Invalid data for `global_rank`. Must be an integer:", `global_rank`))
        }
        self$`global_rank` <- `global_rank`
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
    #' @return OwnedMediaRow as a base R list.
    #' @examples
    #' # convert array of OwnedMediaRow (x) to a data frame
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
    #' Convert OwnedMediaRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaRowObject <- list()
      if (!is.null(self$`title`)) {
        OwnedMediaRowObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`url`)) {
        OwnedMediaRowObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`channel_name`)) {
        OwnedMediaRowObject[["channel_name"]] <-
          self$`channel_name`
      }
      if (!is.null(self$`channel_handle`)) {
        OwnedMediaRowObject[["channel_handle"]] <-
          self$`channel_handle`
      }
      if (!is.null(self$`channel_url`)) {
        OwnedMediaRowObject[["channel_url"]] <-
          self$`channel_url`
      }
      if (!is.null(self$`video_id`)) {
        OwnedMediaRowObject[["video_id"]] <-
          self$`video_id`
      }
      if (!is.null(self$`key`)) {
        OwnedMediaRowObject[["key"]] <-
          self$`key`
      }
      if (!is.null(self$`name`)) {
        OwnedMediaRowObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`handle`)) {
        OwnedMediaRowObject[["handle"]] <-
          self$`handle`
      }
      if (!is.null(self$`caption`)) {
        OwnedMediaRowObject[["caption"]] <-
          self$`caption`
      }
      if (!is.null(self$`owner_handle`)) {
        OwnedMediaRowObject[["owner_handle"]] <-
          self$`owner_handle`
      }
      if (!is.null(self$`thumbnail_url`)) {
        OwnedMediaRowObject[["thumbnail_url"]] <-
          self$`thumbnail_url`
      }
      if (!is.null(self$`avatar_url`)) {
        OwnedMediaRowObject[["avatar_url"]] <-
          self$`avatar_url`
      }
      if (!is.null(self$`content_type`)) {
        OwnedMediaRowObject[["content_type"]] <-
          self$`content_type`
      }
      if (!is.null(self$`citations`)) {
        OwnedMediaRowObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`unique_videos`)) {
        OwnedMediaRowObject[["unique_videos"]] <-
          self$`unique_videos`
      }
      if (!is.null(self$`unique_posts`)) {
        OwnedMediaRowObject[["unique_posts"]] <-
          self$`unique_posts`
      }
      if (!is.null(self$`followers`)) {
        OwnedMediaRowObject[["followers"]] <-
          self$`followers`
      }
      if (!is.null(self$`likes`)) {
        OwnedMediaRowObject[["likes"]] <-
          self$`likes`
      }
      if (!is.null(self$`comments`)) {
        OwnedMediaRowObject[["comments"]] <-
          self$`comments`
      }
      if (!is.null(self$`views`)) {
        OwnedMediaRowObject[["views"]] <-
          self$`views`
      }
      if (!is.null(self$`published_at`)) {
        OwnedMediaRowObject[["published_at"]] <-
          self$`published_at`
      }
      if (!is.null(self$`posted_at`)) {
        OwnedMediaRowObject[["posted_at"]] <-
          self$`posted_at`
      }
      if (!is.null(self$`avg_position`)) {
        OwnedMediaRowObject[["avg_position"]] <-
          self$`avg_position`
      }
      if (!is.null(self$`yours`)) {
        OwnedMediaRowObject[["yours"]] <-
          self$`yours`
      }
      if (!is.null(self$`citation_date`)) {
        OwnedMediaRowObject[["citation_date"]] <-
          self$`citation_date`
      }
      if (!is.null(self$`position`)) {
        OwnedMediaRowObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`model`)) {
        OwnedMediaRowObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`domain`)) {
        OwnedMediaRowObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`total_responses`)) {
        OwnedMediaRowObject[["total_responses"]] <-
          self$`total_responses`
      }
      if (!is.null(self$`rank`)) {
        OwnedMediaRowObject[["rank"]] <-
          self$`rank`
      }
      if (!is.null(self$`global_rank`)) {
        OwnedMediaRowObject[["global_rank"]] <-
          self$`global_rank`
      }
      return(OwnedMediaRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`channel_name`)) {
        self$`channel_name` <- this_object$`channel_name`
      }
      if (!is.null(this_object$`channel_handle`)) {
        self$`channel_handle` <- this_object$`channel_handle`
      }
      if (!is.null(this_object$`channel_url`)) {
        self$`channel_url` <- this_object$`channel_url`
      }
      if (!is.null(this_object$`video_id`)) {
        self$`video_id` <- this_object$`video_id`
      }
      if (!is.null(this_object$`key`)) {
        self$`key` <- this_object$`key`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`handle`)) {
        self$`handle` <- this_object$`handle`
      }
      if (!is.null(this_object$`caption`)) {
        self$`caption` <- this_object$`caption`
      }
      if (!is.null(this_object$`owner_handle`)) {
        self$`owner_handle` <- this_object$`owner_handle`
      }
      if (!is.null(this_object$`thumbnail_url`)) {
        self$`thumbnail_url` <- this_object$`thumbnail_url`
      }
      if (!is.null(this_object$`avatar_url`)) {
        self$`avatar_url` <- this_object$`avatar_url`
      }
      if (!is.null(this_object$`content_type`)) {
        self$`content_type` <- this_object$`content_type`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      if (!is.null(this_object$`unique_videos`)) {
        self$`unique_videos` <- this_object$`unique_videos`
      }
      if (!is.null(this_object$`unique_posts`)) {
        self$`unique_posts` <- this_object$`unique_posts`
      }
      if (!is.null(this_object$`followers`)) {
        self$`followers` <- this_object$`followers`
      }
      if (!is.null(this_object$`likes`)) {
        self$`likes` <- this_object$`likes`
      }
      if (!is.null(this_object$`comments`)) {
        self$`comments` <- this_object$`comments`
      }
      if (!is.null(this_object$`views`)) {
        self$`views` <- this_object$`views`
      }
      if (!is.null(this_object$`published_at`)) {
        self$`published_at` <- this_object$`published_at`
      }
      if (!is.null(this_object$`posted_at`)) {
        self$`posted_at` <- this_object$`posted_at`
      }
      if (!is.null(this_object$`avg_position`)) {
        self$`avg_position` <- this_object$`avg_position`
      }
      if (!is.null(this_object$`yours`)) {
        self$`yours` <- this_object$`yours`
      }
      if (!is.null(this_object$`citation_date`)) {
        self$`citation_date` <- this_object$`citation_date`
      }
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`total_responses`)) {
        self$`total_responses` <- this_object$`total_responses`
      }
      if (!is.null(this_object$`rank`)) {
        self$`rank` <- this_object$`rank`
      }
      if (!is.null(this_object$`global_rank`)) {
        self$`global_rank` <- this_object$`global_rank`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`title` <- this_object$`title`
      self$`url` <- this_object$`url`
      self$`channel_name` <- this_object$`channel_name`
      self$`channel_handle` <- this_object$`channel_handle`
      self$`channel_url` <- this_object$`channel_url`
      self$`video_id` <- this_object$`video_id`
      self$`key` <- this_object$`key`
      self$`name` <- this_object$`name`
      self$`handle` <- this_object$`handle`
      self$`caption` <- this_object$`caption`
      self$`owner_handle` <- this_object$`owner_handle`
      self$`thumbnail_url` <- this_object$`thumbnail_url`
      self$`avatar_url` <- this_object$`avatar_url`
      self$`content_type` <- this_object$`content_type`
      self$`citations` <- this_object$`citations`
      self$`unique_videos` <- this_object$`unique_videos`
      self$`unique_posts` <- this_object$`unique_posts`
      self$`followers` <- this_object$`followers`
      self$`likes` <- this_object$`likes`
      self$`comments` <- this_object$`comments`
      self$`views` <- this_object$`views`
      self$`published_at` <- this_object$`published_at`
      self$`posted_at` <- this_object$`posted_at`
      self$`avg_position` <- this_object$`avg_position`
      self$`yours` <- this_object$`yours`
      self$`citation_date` <- this_object$`citation_date`
      self$`position` <- this_object$`position`
      self$`model` <- this_object$`model`
      self$`domain` <- this_object$`domain`
      self$`total_responses` <- this_object$`total_responses`
      self$`rank` <- this_object$`rank`
      self$`global_rank` <- this_object$`global_rank`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaRow
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
# OwnedMediaRow$unlock()
#
## Below is an example to define the print function
# OwnedMediaRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaRow$lock()

