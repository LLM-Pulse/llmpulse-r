#' Create a new CmsContentSummary
#'
#' @description
#' CmsContentSummary Class
#'
#' @docType class
#' @title CmsContentSummary
#' @description CmsContentSummary Class
#' @format An \code{R6Class} generator object
#' @field id WordPress post or page id integer [optional]
#' @field type  character [optional]
#' @field status WordPress status (publish, future, draft, pending or private) character [optional]
#' @field slug  character [optional]
#' @field title Plain-text title as the site renders it character [optional]
#' @field url The public link on the connected site; null when the site names a link on another host character [optional]
#' @field modified_at  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CmsContentSummary <- R6::R6Class(
  "CmsContentSummary",
  public = list(
    `id` = NULL,
    `type` = NULL,
    `status` = NULL,
    `slug` = NULL,
    `title` = NULL,
    `url` = NULL,
    `modified_at` = NULL,

    #' @description
    #' Initialize a new CmsContentSummary class.
    #'
    #' @param id WordPress post or page id
    #' @param type type
    #' @param status WordPress status (publish, future, draft, pending or private)
    #' @param slug slug
    #' @param title Plain-text title as the site renders it
    #' @param url The public link on the connected site; null when the site names a link on another host
    #' @param modified_at modified_at
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `type` = NULL, `status` = NULL, `slug` = NULL, `title` = NULL, `url` = NULL, `modified_at` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c("post", "page"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"post\", \"page\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`slug`)) {
        if (!(is.character(`slug`) && length(`slug`) == 1)) {
          stop(paste("Error! Invalid data for `slug`. Must be a string:", `slug`))
        }
        self$`slug` <- `slug`
      }
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
      if (!is.null(`modified_at`)) {
        if (!is.character(`modified_at`)) {
          stop(paste("Error! Invalid data for `modified_at`. Must be a string:", `modified_at`))
        }
        self$`modified_at` <- `modified_at`
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
    #' @return CmsContentSummary as a base R list.
    #' @examples
    #' # convert array of CmsContentSummary (x) to a data frame
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
    #' Convert CmsContentSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CmsContentSummaryObject <- list()
      if (!is.null(self$`id`)) {
        CmsContentSummaryObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`type`)) {
        CmsContentSummaryObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`status`)) {
        CmsContentSummaryObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`slug`)) {
        CmsContentSummaryObject[["slug"]] <-
          self$`slug`
      }
      if (!is.null(self$`title`)) {
        CmsContentSummaryObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`url`)) {
        CmsContentSummaryObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`modified_at`)) {
        CmsContentSummaryObject[["modified_at"]] <-
          self$`modified_at`
      }
      return(CmsContentSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CmsContentSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of CmsContentSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("post", "page"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"post\", \"page\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`slug`)) {
        self$`slug` <- this_object$`slug`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`modified_at`)) {
        self$`modified_at` <- this_object$`modified_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CmsContentSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CmsContentSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of CmsContentSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("post", "page"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"post\", \"page\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`status` <- this_object$`status`
      self$`slug` <- this_object$`slug`
      self$`title` <- this_object$`title`
      self$`url` <- this_object$`url`
      self$`modified_at` <- this_object$`modified_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to CmsContentSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CmsContentSummary
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
# CmsContentSummary$unlock()
#
## Below is an example to define the print function
# CmsContentSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CmsContentSummary$lock()

