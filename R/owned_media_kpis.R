#' Create a new OwnedMediaKpis
#'
#' @description
#' OwnedMediaKpis Class
#'
#' @docType class
#' @title OwnedMediaKpis
#' @description OwnedMediaKpis Class
#' @format An \code{R6Class} generator object
#' @field total Citations of the platform in the window, yours and everyone else's integer [optional]
#' @field yours Citations of your own profiles and their content integer [optional]
#' @field your_profile Citations of your profile or channel pages. Null for mobile_apps and overview integer [optional]
#' @field your_content Citations of your posts or videos. Null for mobile_apps and overview integer [optional]
#' @field share_pct yours as a percentage of total (0-100) numeric [optional]
#' @field unique_subreddits Number of cited subreddits (provider=reddit; null or omitted for other providers) integer [optional]
#' @field unique_authors Number of cited Reddit authors (provider=reddit; null or omitted for other providers) integer [optional]
#' @field positive_pct Positive sentiment among rated Reddit citations, as a percentage (provider=reddit; null or omitted for other providers) numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaKpis <- R6::R6Class(
  "OwnedMediaKpis",
  public = list(
    `total` = NULL,
    `yours` = NULL,
    `your_profile` = NULL,
    `your_content` = NULL,
    `share_pct` = NULL,
    `unique_subreddits` = NULL,
    `unique_authors` = NULL,
    `positive_pct` = NULL,

    #' @description
    #' Initialize a new OwnedMediaKpis class.
    #'
    #' @param total Citations of the platform in the window, yours and everyone else's
    #' @param yours Citations of your own profiles and their content
    #' @param your_profile Citations of your profile or channel pages. Null for mobile_apps and overview
    #' @param your_content Citations of your posts or videos. Null for mobile_apps and overview
    #' @param share_pct yours as a percentage of total (0-100)
    #' @param unique_subreddits Number of cited subreddits (provider=reddit; null or omitted for other providers)
    #' @param unique_authors Number of cited Reddit authors (provider=reddit; null or omitted for other providers)
    #' @param positive_pct Positive sentiment among rated Reddit citations, as a percentage (provider=reddit; null or omitted for other providers)
    #' @param ... Other optional arguments.
    initialize = function(`total` = NULL, `yours` = NULL, `your_profile` = NULL, `your_content` = NULL, `share_pct` = NULL, `unique_subreddits` = NULL, `unique_authors` = NULL, `positive_pct` = NULL, ...) {
      if (!is.null(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!is.null(`yours`)) {
        if (!(is.numeric(`yours`) && length(`yours`) == 1)) {
          stop(paste("Error! Invalid data for `yours`. Must be an integer:", `yours`))
        }
        self$`yours` <- `yours`
      }
      if (!is.null(`your_profile`)) {
        if (!(is.numeric(`your_profile`) && length(`your_profile`) == 1)) {
          stop(paste("Error! Invalid data for `your_profile`. Must be an integer:", `your_profile`))
        }
        self$`your_profile` <- `your_profile`
      }
      if (!is.null(`your_content`)) {
        if (!(is.numeric(`your_content`) && length(`your_content`) == 1)) {
          stop(paste("Error! Invalid data for `your_content`. Must be an integer:", `your_content`))
        }
        self$`your_content` <- `your_content`
      }
      if (!is.null(`share_pct`)) {
        self$`share_pct` <- `share_pct`
      }
      if (!is.null(`unique_subreddits`)) {
        if (!(is.numeric(`unique_subreddits`) && length(`unique_subreddits`) == 1)) {
          stop(paste("Error! Invalid data for `unique_subreddits`. Must be an integer:", `unique_subreddits`))
        }
        self$`unique_subreddits` <- `unique_subreddits`
      }
      if (!is.null(`unique_authors`)) {
        if (!(is.numeric(`unique_authors`) && length(`unique_authors`) == 1)) {
          stop(paste("Error! Invalid data for `unique_authors`. Must be an integer:", `unique_authors`))
        }
        self$`unique_authors` <- `unique_authors`
      }
      if (!is.null(`positive_pct`)) {
        self$`positive_pct` <- `positive_pct`
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
    #' @return OwnedMediaKpis as a base R list.
    #' @examples
    #' # convert array of OwnedMediaKpis (x) to a data frame
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
    #' Convert OwnedMediaKpis to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaKpisObject <- list()
      if (!is.null(self$`total`)) {
        OwnedMediaKpisObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`yours`)) {
        OwnedMediaKpisObject[["yours"]] <-
          self$`yours`
      }
      if (!is.null(self$`your_profile`)) {
        OwnedMediaKpisObject[["your_profile"]] <-
          self$`your_profile`
      }
      if (!is.null(self$`your_content`)) {
        OwnedMediaKpisObject[["your_content"]] <-
          self$`your_content`
      }
      if (!is.null(self$`share_pct`)) {
        OwnedMediaKpisObject[["share_pct"]] <-
          self$`share_pct`
      }
      if (!is.null(self$`unique_subreddits`)) {
        OwnedMediaKpisObject[["unique_subreddits"]] <-
          self$`unique_subreddits`
      }
      if (!is.null(self$`unique_authors`)) {
        OwnedMediaKpisObject[["unique_authors"]] <-
          self$`unique_authors`
      }
      if (!is.null(self$`positive_pct`)) {
        OwnedMediaKpisObject[["positive_pct"]] <-
          self$`positive_pct`
      }
      return(OwnedMediaKpisObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaKpis
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaKpis
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`yours`)) {
        self$`yours` <- this_object$`yours`
      }
      if (!is.null(this_object$`your_profile`)) {
        self$`your_profile` <- this_object$`your_profile`
      }
      if (!is.null(this_object$`your_content`)) {
        self$`your_content` <- this_object$`your_content`
      }
      if (!is.null(this_object$`share_pct`)) {
        self$`share_pct` <- this_object$`share_pct`
      }
      if (!is.null(this_object$`unique_subreddits`)) {
        self$`unique_subreddits` <- this_object$`unique_subreddits`
      }
      if (!is.null(this_object$`unique_authors`)) {
        self$`unique_authors` <- this_object$`unique_authors`
      }
      if (!is.null(this_object$`positive_pct`)) {
        self$`positive_pct` <- this_object$`positive_pct`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaKpis in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaKpis
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaKpis
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`total` <- this_object$`total`
      self$`yours` <- this_object$`yours`
      self$`your_profile` <- this_object$`your_profile`
      self$`your_content` <- this_object$`your_content`
      self$`share_pct` <- this_object$`share_pct`
      self$`unique_subreddits` <- this_object$`unique_subreddits`
      self$`unique_authors` <- this_object$`unique_authors`
      self$`positive_pct` <- this_object$`positive_pct`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaKpis and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaKpis
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
# OwnedMediaKpis$unlock()
#
## Below is an example to define the print function
# OwnedMediaKpis$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaKpis$lock()

