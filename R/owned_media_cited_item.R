#' Create a new OwnedMediaCitedItem
#'
#' @description
#' The post, video, profile or channel. Null when nothing in the window matches it
#'
#' @docType class
#' @title OwnedMediaCitedItem
#' @description OwnedMediaCitedItem Class
#' @format An \code{R6Class} generator object
#' @field kind post covers posts and videos, profile covers profiles and channels character [optional]
#' @field title  character [optional]
#' @field subtitle  character [optional]
#' @field url  character [optional]
#' @field image_url  character [optional]
#' @field yours  character [optional]
#' @field date Publication date of a post or video character [optional]
#' @field stats  \link{OwnedMediaCitedItemStats} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaCitedItem <- R6::R6Class(
  "OwnedMediaCitedItem",
  public = list(
    `kind` = NULL,
    `title` = NULL,
    `subtitle` = NULL,
    `url` = NULL,
    `image_url` = NULL,
    `yours` = NULL,
    `date` = NULL,
    `stats` = NULL,

    #' @description
    #' Initialize a new OwnedMediaCitedItem class.
    #'
    #' @param kind post covers posts and videos, profile covers profiles and channels
    #' @param title title
    #' @param subtitle subtitle
    #' @param url url
    #' @param image_url image_url
    #' @param yours yours
    #' @param date Publication date of a post or video
    #' @param stats stats
    #' @param ... Other optional arguments.
    initialize = function(`kind` = NULL, `title` = NULL, `subtitle` = NULL, `url` = NULL, `image_url` = NULL, `yours` = NULL, `date` = NULL, `stats` = NULL, ...) {
      if (!is.null(`kind`)) {
        if (!(`kind` %in% c("post", "profile"))) {
          stop(paste("Error! \"", `kind`, "\" cannot be assigned to `kind`. Must be \"post\", \"profile\".", sep = ""))
        }
        if (!(is.character(`kind`) && length(`kind`) == 1)) {
          stop(paste("Error! Invalid data for `kind`. Must be a string:", `kind`))
        }
        self$`kind` <- `kind`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`subtitle`)) {
        if (!(is.character(`subtitle`) && length(`subtitle`) == 1)) {
          stop(paste("Error! Invalid data for `subtitle`. Must be a string:", `subtitle`))
        }
        self$`subtitle` <- `subtitle`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`image_url`)) {
        if (!(is.character(`image_url`) && length(`image_url`) == 1)) {
          stop(paste("Error! Invalid data for `image_url`. Must be a string:", `image_url`))
        }
        self$`image_url` <- `image_url`
      }
      if (!is.null(`yours`)) {
        if (!(is.logical(`yours`) && length(`yours`) == 1)) {
          stop(paste("Error! Invalid data for `yours`. Must be a boolean:", `yours`))
        }
        self$`yours` <- `yours`
      }
      if (!is.null(`date`)) {
        if (!is.character(`date`)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
      }
      if (!is.null(`stats`)) {
        stopifnot(R6::is.R6(`stats`))
        self$`stats` <- `stats`
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
    #' @return OwnedMediaCitedItem as a base R list.
    #' @examples
    #' # convert array of OwnedMediaCitedItem (x) to a data frame
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
    #' Convert OwnedMediaCitedItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaCitedItemObject <- list()
      if (!is.null(self$`kind`)) {
        OwnedMediaCitedItemObject[["kind"]] <-
          self$`kind`
      }
      if (!is.null(self$`title`)) {
        OwnedMediaCitedItemObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`subtitle`)) {
        OwnedMediaCitedItemObject[["subtitle"]] <-
          self$`subtitle`
      }
      if (!is.null(self$`url`)) {
        OwnedMediaCitedItemObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`image_url`)) {
        OwnedMediaCitedItemObject[["image_url"]] <-
          self$`image_url`
      }
      if (!is.null(self$`yours`)) {
        OwnedMediaCitedItemObject[["yours"]] <-
          self$`yours`
      }
      if (!is.null(self$`date`)) {
        OwnedMediaCitedItemObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`stats`)) {
        OwnedMediaCitedItemObject[["stats"]] <-
          self$extractSimpleType(self$`stats`)
      }
      return(OwnedMediaCitedItemObject)
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
    #' Deserialize JSON string into an instance of OwnedMediaCitedItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaCitedItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`kind`)) {
        if (!is.null(this_object$`kind`) && !(this_object$`kind` %in% c("post", "profile"))) {
          stop(paste("Error! \"", this_object$`kind`, "\" cannot be assigned to `kind`. Must be \"post\", \"profile\".", sep = ""))
        }
        self$`kind` <- this_object$`kind`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`subtitle`)) {
        self$`subtitle` <- this_object$`subtitle`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`image_url`)) {
        self$`image_url` <- this_object$`image_url`
      }
      if (!is.null(this_object$`yours`)) {
        self$`yours` <- this_object$`yours`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`stats`)) {
        `stats_object` <- OwnedMediaCitedItemStats$new()
        `stats_object`$fromJSON(jsonlite::toJSON(this_object$`stats`, auto_unbox = TRUE, digits = NA))
        self$`stats` <- `stats_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaCitedItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaCitedItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaCitedItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`kind`) && !(this_object$`kind` %in% c("post", "profile"))) {
        stop(paste("Error! \"", this_object$`kind`, "\" cannot be assigned to `kind`. Must be \"post\", \"profile\".", sep = ""))
      }
      self$`kind` <- this_object$`kind`
      self$`title` <- this_object$`title`
      self$`subtitle` <- this_object$`subtitle`
      self$`url` <- this_object$`url`
      self$`image_url` <- this_object$`image_url`
      self$`yours` <- this_object$`yours`
      self$`date` <- this_object$`date`
      self$`stats` <- OwnedMediaCitedItemStats$new()$fromJSON(jsonlite::toJSON(this_object$`stats`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaCitedItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaCitedItem
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
# OwnedMediaCitedItem$unlock()
#
## Below is an example to define the print function
# OwnedMediaCitedItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaCitedItem$lock()

