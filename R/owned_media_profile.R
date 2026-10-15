#' Create a new OwnedMediaProfile
#'
#' @description
#' OwnedMediaProfile Class
#'
#' @docType class
#' @title OwnedMediaProfile
#' @description OwnedMediaProfile Class
#' @format An \code{R6Class} generator object
#' @field url  character [optional]
#' @field handle The handle, page id, store app id, subreddit or username character [optional]
#' @field kind  character [optional]
#' @field main True for the main profile of its platform (or store), false for an extra one character [optional]
#' @field store google_play or app_store for an app; null elsewhere character [optional]
#' @field name  character [optional]
#' @field avatar_url  character [optional]
#' @field scrape_status State of the profile scrape that reads its name and avatar: pending, running, ready, failed or skipped; null when none has started or the platform has none character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaProfile <- R6::R6Class(
  "OwnedMediaProfile",
  public = list(
    `url` = NULL,
    `handle` = NULL,
    `kind` = NULL,
    `main` = NULL,
    `store` = NULL,
    `name` = NULL,
    `avatar_url` = NULL,
    `scrape_status` = NULL,

    #' @description
    #' Initialize a new OwnedMediaProfile class.
    #'
    #' @param url url
    #' @param handle The handle, page id, store app id, subreddit or username
    #' @param kind kind
    #' @param main True for the main profile of its platform (or store), false for an extra one
    #' @param store google_play or app_store for an app; null elsewhere
    #' @param name name
    #' @param avatar_url avatar_url
    #' @param scrape_status State of the profile scrape that reads its name and avatar: pending, running, ready, failed or skipped; null when none has started or the platform has none
    #' @param ... Other optional arguments.
    initialize = function(`url` = NULL, `handle` = NULL, `kind` = NULL, `main` = NULL, `store` = NULL, `name` = NULL, `avatar_url` = NULL, `scrape_status` = NULL, ...) {
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`handle`)) {
        if (!(is.character(`handle`) && length(`handle`) == 1)) {
          stop(paste("Error! Invalid data for `handle`. Must be a string:", `handle`))
        }
        self$`handle` <- `handle`
      }
      if (!is.null(`kind`)) {
        if (!(`kind` %in% c("profile", "app", "subreddit", "username"))) {
          stop(paste("Error! \"", `kind`, "\" cannot be assigned to `kind`. Must be \"profile\", \"app\", \"subreddit\", \"username\".", sep = ""))
        }
        if (!(is.character(`kind`) && length(`kind`) == 1)) {
          stop(paste("Error! Invalid data for `kind`. Must be a string:", `kind`))
        }
        self$`kind` <- `kind`
      }
      if (!is.null(`main`)) {
        if (!(is.logical(`main`) && length(`main`) == 1)) {
          stop(paste("Error! Invalid data for `main`. Must be a boolean:", `main`))
        }
        self$`main` <- `main`
      }
      if (!is.null(`store`)) {
        if (!(is.character(`store`) && length(`store`) == 1)) {
          stop(paste("Error! Invalid data for `store`. Must be a string:", `store`))
        }
        self$`store` <- `store`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`avatar_url`)) {
        if (!(is.character(`avatar_url`) && length(`avatar_url`) == 1)) {
          stop(paste("Error! Invalid data for `avatar_url`. Must be a string:", `avatar_url`))
        }
        self$`avatar_url` <- `avatar_url`
      }
      if (!is.null(`scrape_status`)) {
        if (!(is.character(`scrape_status`) && length(`scrape_status`) == 1)) {
          stop(paste("Error! Invalid data for `scrape_status`. Must be a string:", `scrape_status`))
        }
        self$`scrape_status` <- `scrape_status`
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
    #' @return OwnedMediaProfile as a base R list.
    #' @examples
    #' # convert array of OwnedMediaProfile (x) to a data frame
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
    #' Convert OwnedMediaProfile to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaProfileObject <- list()
      if (!is.null(self$`url`)) {
        OwnedMediaProfileObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`handle`)) {
        OwnedMediaProfileObject[["handle"]] <-
          self$`handle`
      }
      if (!is.null(self$`kind`)) {
        OwnedMediaProfileObject[["kind"]] <-
          self$`kind`
      }
      if (!is.null(self$`main`)) {
        OwnedMediaProfileObject[["main"]] <-
          self$`main`
      }
      if (!is.null(self$`store`)) {
        OwnedMediaProfileObject[["store"]] <-
          self$`store`
      }
      if (!is.null(self$`name`)) {
        OwnedMediaProfileObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`avatar_url`)) {
        OwnedMediaProfileObject[["avatar_url"]] <-
          self$`avatar_url`
      }
      if (!is.null(self$`scrape_status`)) {
        OwnedMediaProfileObject[["scrape_status"]] <-
          self$`scrape_status`
      }
      return(OwnedMediaProfileObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaProfile
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaProfile
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`handle`)) {
        self$`handle` <- this_object$`handle`
      }
      if (!is.null(this_object$`kind`)) {
        if (!is.null(this_object$`kind`) && !(this_object$`kind` %in% c("profile", "app", "subreddit", "username"))) {
          stop(paste("Error! \"", this_object$`kind`, "\" cannot be assigned to `kind`. Must be \"profile\", \"app\", \"subreddit\", \"username\".", sep = ""))
        }
        self$`kind` <- this_object$`kind`
      }
      if (!is.null(this_object$`main`)) {
        self$`main` <- this_object$`main`
      }
      if (!is.null(this_object$`store`)) {
        self$`store` <- this_object$`store`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`avatar_url`)) {
        self$`avatar_url` <- this_object$`avatar_url`
      }
      if (!is.null(this_object$`scrape_status`)) {
        self$`scrape_status` <- this_object$`scrape_status`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaProfile in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaProfile
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaProfile
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`url` <- this_object$`url`
      self$`handle` <- this_object$`handle`
      if (!is.null(this_object$`kind`) && !(this_object$`kind` %in% c("profile", "app", "subreddit", "username"))) {
        stop(paste("Error! \"", this_object$`kind`, "\" cannot be assigned to `kind`. Must be \"profile\", \"app\", \"subreddit\", \"username\".", sep = ""))
      }
      self$`kind` <- this_object$`kind`
      self$`main` <- this_object$`main`
      self$`store` <- this_object$`store`
      self$`name` <- this_object$`name`
      self$`avatar_url` <- this_object$`avatar_url`
      self$`scrape_status` <- this_object$`scrape_status`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaProfile and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaProfile
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
# OwnedMediaProfile$unlock()
#
## Below is an example to define the print function
# OwnedMediaProfile$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaProfile$lock()

