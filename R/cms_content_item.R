#' Create a new CmsContentItem
#'
#' @description
#' CmsContentItem Class
#'
#' @docType class
#' @title CmsContentItem
#' @description CmsContentItem Class
#' @format An \code{R6Class} generator object
#' @field id WordPress post or page id integer [optional]
#' @field type  character [optional]
#' @field status WordPress status (publish, future, draft, pending or private) character [optional]
#' @field slug  character [optional]
#' @field title Plain-text title as the site renders it character [optional]
#' @field url The public link on the connected site; null when the site names a link on another host character [optional]
#' @field modified_at  character [optional]
#' @field excerpt Plain-text excerpt, up to 2,000 characters character [optional]
#' @field content_html Sanitized HTML (headings, paragraphs, lists, tables, quotes, code, links with href only), up to 200,000 characters character [optional]
#' @field content_truncated  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CmsContentItem <- R6::R6Class(
  "CmsContentItem",
  public = list(
    `id` = NULL,
    `type` = NULL,
    `status` = NULL,
    `slug` = NULL,
    `title` = NULL,
    `url` = NULL,
    `modified_at` = NULL,
    `excerpt` = NULL,
    `content_html` = NULL,
    `content_truncated` = NULL,

    #' @description
    #' Initialize a new CmsContentItem class.
    #'
    #' @param id WordPress post or page id
    #' @param type type
    #' @param status WordPress status (publish, future, draft, pending or private)
    #' @param slug slug
    #' @param title Plain-text title as the site renders it
    #' @param url The public link on the connected site; null when the site names a link on another host
    #' @param modified_at modified_at
    #' @param excerpt Plain-text excerpt, up to 2,000 characters
    #' @param content_html Sanitized HTML (headings, paragraphs, lists, tables, quotes, code, links with href only), up to 200,000 characters
    #' @param content_truncated content_truncated
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `type` = NULL, `status` = NULL, `slug` = NULL, `title` = NULL, `url` = NULL, `modified_at` = NULL, `excerpt` = NULL, `content_html` = NULL, `content_truncated` = NULL, ...) {
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
      if (!is.null(`excerpt`)) {
        if (!(is.character(`excerpt`) && length(`excerpt`) == 1)) {
          stop(paste("Error! Invalid data for `excerpt`. Must be a string:", `excerpt`))
        }
        self$`excerpt` <- `excerpt`
      }
      if (!is.null(`content_html`)) {
        if (!(is.character(`content_html`) && length(`content_html`) == 1)) {
          stop(paste("Error! Invalid data for `content_html`. Must be a string:", `content_html`))
        }
        self$`content_html` <- `content_html`
      }
      if (!is.null(`content_truncated`)) {
        if (!(is.logical(`content_truncated`) && length(`content_truncated`) == 1)) {
          stop(paste("Error! Invalid data for `content_truncated`. Must be a boolean:", `content_truncated`))
        }
        self$`content_truncated` <- `content_truncated`
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
    #' @return CmsContentItem as a base R list.
    #' @examples
    #' # convert array of CmsContentItem (x) to a data frame
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
    #' Convert CmsContentItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CmsContentItemObject <- list()
      if (!is.null(self$`id`)) {
        CmsContentItemObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`type`)) {
        CmsContentItemObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`status`)) {
        CmsContentItemObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`slug`)) {
        CmsContentItemObject[["slug"]] <-
          self$`slug`
      }
      if (!is.null(self$`title`)) {
        CmsContentItemObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`url`)) {
        CmsContentItemObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`modified_at`)) {
        CmsContentItemObject[["modified_at"]] <-
          self$`modified_at`
      }
      if (!is.null(self$`excerpt`)) {
        CmsContentItemObject[["excerpt"]] <-
          self$`excerpt`
      }
      if (!is.null(self$`content_html`)) {
        CmsContentItemObject[["content_html"]] <-
          self$`content_html`
      }
      if (!is.null(self$`content_truncated`)) {
        CmsContentItemObject[["content_truncated"]] <-
          self$`content_truncated`
      }
      return(CmsContentItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CmsContentItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of CmsContentItem
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
      if (!is.null(this_object$`excerpt`)) {
        self$`excerpt` <- this_object$`excerpt`
      }
      if (!is.null(this_object$`content_html`)) {
        self$`content_html` <- this_object$`content_html`
      }
      if (!is.null(this_object$`content_truncated`)) {
        self$`content_truncated` <- this_object$`content_truncated`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CmsContentItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CmsContentItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of CmsContentItem
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
      self$`excerpt` <- this_object$`excerpt`
      self$`content_html` <- this_object$`content_html`
      self$`content_truncated` <- this_object$`content_truncated`
      self
    },

    #' @description
    #' Validate JSON input with respect to CmsContentItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CmsContentItem
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
# CmsContentItem$unlock()
#
## Below is an example to define the print function
# CmsContentItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CmsContentItem$lock()

