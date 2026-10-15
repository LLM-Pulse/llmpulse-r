#' Create a new OwnedMediaCitedItemStats
#'
#' @description
#' The counts the platform reports for the item; absent keys are unknown
#'
#' @docType class
#' @title OwnedMediaCitedItemStats
#' @description OwnedMediaCitedItemStats Class
#' @format An \code{R6Class} generator object
#' @field citations  integer [optional]
#' @field likes  integer [optional]
#' @field comments  integer [optional]
#' @field views  integer [optional]
#' @field followers  integer [optional]
#' @field unique_posts  integer [optional]
#' @field unique_videos  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaCitedItemStats <- R6::R6Class(
  "OwnedMediaCitedItemStats",
  public = list(
    `citations` = NULL,
    `likes` = NULL,
    `comments` = NULL,
    `views` = NULL,
    `followers` = NULL,
    `unique_posts` = NULL,
    `unique_videos` = NULL,

    #' @description
    #' Initialize a new OwnedMediaCitedItemStats class.
    #'
    #' @param citations citations
    #' @param likes likes
    #' @param comments comments
    #' @param views views
    #' @param followers followers
    #' @param unique_posts unique_posts
    #' @param unique_videos unique_videos
    #' @param ... Other optional arguments.
    initialize = function(`citations` = NULL, `likes` = NULL, `comments` = NULL, `views` = NULL, `followers` = NULL, `unique_posts` = NULL, `unique_videos` = NULL, ...) {
      if (!is.null(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
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
        if (!(is.numeric(`views`) && length(`views`) == 1)) {
          stop(paste("Error! Invalid data for `views`. Must be an integer:", `views`))
        }
        self$`views` <- `views`
      }
      if (!is.null(`followers`)) {
        if (!(is.numeric(`followers`) && length(`followers`) == 1)) {
          stop(paste("Error! Invalid data for `followers`. Must be an integer:", `followers`))
        }
        self$`followers` <- `followers`
      }
      if (!is.null(`unique_posts`)) {
        if (!(is.numeric(`unique_posts`) && length(`unique_posts`) == 1)) {
          stop(paste("Error! Invalid data for `unique_posts`. Must be an integer:", `unique_posts`))
        }
        self$`unique_posts` <- `unique_posts`
      }
      if (!is.null(`unique_videos`)) {
        if (!(is.numeric(`unique_videos`) && length(`unique_videos`) == 1)) {
          stop(paste("Error! Invalid data for `unique_videos`. Must be an integer:", `unique_videos`))
        }
        self$`unique_videos` <- `unique_videos`
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
    #' @return OwnedMediaCitedItemStats as a base R list.
    #' @examples
    #' # convert array of OwnedMediaCitedItemStats (x) to a data frame
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
    #' Convert OwnedMediaCitedItemStats to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaCitedItemStatsObject <- list()
      if (!is.null(self$`citations`)) {
        OwnedMediaCitedItemStatsObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`likes`)) {
        OwnedMediaCitedItemStatsObject[["likes"]] <-
          self$`likes`
      }
      if (!is.null(self$`comments`)) {
        OwnedMediaCitedItemStatsObject[["comments"]] <-
          self$`comments`
      }
      if (!is.null(self$`views`)) {
        OwnedMediaCitedItemStatsObject[["views"]] <-
          self$`views`
      }
      if (!is.null(self$`followers`)) {
        OwnedMediaCitedItemStatsObject[["followers"]] <-
          self$`followers`
      }
      if (!is.null(self$`unique_posts`)) {
        OwnedMediaCitedItemStatsObject[["unique_posts"]] <-
          self$`unique_posts`
      }
      if (!is.null(self$`unique_videos`)) {
        OwnedMediaCitedItemStatsObject[["unique_videos"]] <-
          self$`unique_videos`
      }
      return(OwnedMediaCitedItemStatsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaCitedItemStats
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaCitedItemStats
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
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
      if (!is.null(this_object$`followers`)) {
        self$`followers` <- this_object$`followers`
      }
      if (!is.null(this_object$`unique_posts`)) {
        self$`unique_posts` <- this_object$`unique_posts`
      }
      if (!is.null(this_object$`unique_videos`)) {
        self$`unique_videos` <- this_object$`unique_videos`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaCitedItemStats in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaCitedItemStats
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaCitedItemStats
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`citations` <- this_object$`citations`
      self$`likes` <- this_object$`likes`
      self$`comments` <- this_object$`comments`
      self$`views` <- this_object$`views`
      self$`followers` <- this_object$`followers`
      self$`unique_posts` <- this_object$`unique_posts`
      self$`unique_videos` <- this_object$`unique_videos`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaCitedItemStats and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaCitedItemStats
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
# OwnedMediaCitedItemStats$unlock()
#
## Below is an example to define the print function
# OwnedMediaCitedItemStats$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaCitedItemStats$lock()

