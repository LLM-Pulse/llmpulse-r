#' Create a new UrlListFilters
#'
#' @description
#' The filters the numbers were read with.
#'
#' @docType class
#' @title UrlListFilters
#' @description UrlListFilters Class
#' @format An \code{R6Class} generator object
#' @field model  character [optional]
#' @field collection_id  character [optional]
#' @field country_code  character [optional]
#' @field language_code  character [optional]
#' @field prompt  integer [optional]
#' @field brand_kind  character [optional]
#' @field from  character [optional]
#' @field to  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListFilters <- R6::R6Class(
  "UrlListFilters",
  public = list(
    `model` = NULL,
    `collection_id` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,
    `prompt` = NULL,
    `brand_kind` = NULL,
    `from` = NULL,
    `to` = NULL,

    #' @description
    #' Initialize a new UrlListFilters class.
    #'
    #' @param model model
    #' @param collection_id collection_id
    #' @param country_code country_code
    #' @param language_code language_code
    #' @param prompt prompt
    #' @param brand_kind brand_kind
    #' @param from from
    #' @param to to
    #' @param ... Other optional arguments.
    initialize = function(`model` = NULL, `collection_id` = NULL, `country_code` = NULL, `language_code` = NULL, `prompt` = NULL, `brand_kind` = NULL, `from` = NULL, `to` = NULL, ...) {
      if (!is.null(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!is.null(`collection_id`)) {
        if (!(is.character(`collection_id`) && length(`collection_id`) == 1)) {
          stop(paste("Error! Invalid data for `collection_id`. Must be a string:", `collection_id`))
        }
        self$`collection_id` <- `collection_id`
      }
      if (!is.null(`country_code`)) {
        if (!(is.character(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", `country_code`))
        }
        self$`country_code` <- `country_code`
      }
      if (!is.null(`language_code`)) {
        if (!(is.character(`language_code`) && length(`language_code`) == 1)) {
          stop(paste("Error! Invalid data for `language_code`. Must be a string:", `language_code`))
        }
        self$`language_code` <- `language_code`
      }
      if (!is.null(`prompt`)) {
        if (!(is.numeric(`prompt`) && length(`prompt`) == 1)) {
          stop(paste("Error! Invalid data for `prompt`. Must be an integer:", `prompt`))
        }
        self$`prompt` <- `prompt`
      }
      if (!is.null(`brand_kind`)) {
        if (!(is.character(`brand_kind`) && length(`brand_kind`) == 1)) {
          stop(paste("Error! Invalid data for `brand_kind`. Must be a string:", `brand_kind`))
        }
        self$`brand_kind` <- `brand_kind`
      }
      if (!is.null(`from`)) {
        if (!(is.character(`from`) && length(`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!is.null(`to`)) {
        if (!(is.character(`to`) && length(`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
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
    #' @return UrlListFilters as a base R list.
    #' @examples
    #' # convert array of UrlListFilters (x) to a data frame
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
    #' Convert UrlListFilters to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListFiltersObject <- list()
      if (!is.null(self$`model`)) {
        UrlListFiltersObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`collection_id`)) {
        UrlListFiltersObject[["collection_id"]] <-
          self$`collection_id`
      }
      if (!is.null(self$`country_code`)) {
        UrlListFiltersObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        UrlListFiltersObject[["language_code"]] <-
          self$`language_code`
      }
      if (!is.null(self$`prompt`)) {
        UrlListFiltersObject[["prompt"]] <-
          self$`prompt`
      }
      if (!is.null(self$`brand_kind`)) {
        UrlListFiltersObject[["brand_kind"]] <-
          self$`brand_kind`
      }
      if (!is.null(self$`from`)) {
        UrlListFiltersObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        UrlListFiltersObject[["to"]] <-
          self$`to`
      }
      return(UrlListFiltersObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListFilters
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListFilters
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`collection_id`)) {
        self$`collection_id` <- this_object$`collection_id`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      if (!is.null(this_object$`prompt`)) {
        self$`prompt` <- this_object$`prompt`
      }
      if (!is.null(this_object$`brand_kind`)) {
        self$`brand_kind` <- this_object$`brand_kind`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UrlListFilters in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListFilters
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListFilters
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`model` <- this_object$`model`
      self$`collection_id` <- this_object$`collection_id`
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self$`prompt` <- this_object$`prompt`
      self$`brand_kind` <- this_object$`brand_kind`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListFilters and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListFilters
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
# UrlListFilters$unlock()
#
## Below is an example to define the print function
# UrlListFilters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListFilters$lock()

