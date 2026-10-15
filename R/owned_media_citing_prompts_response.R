#' Create a new OwnedMediaCitingPromptsResponse
#'
#' @description
#' OwnedMediaCitingPromptsResponse Class
#'
#' @docType class
#' @title OwnedMediaCitingPromptsResponse
#' @description OwnedMediaCitingPromptsResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field provider  character [optional]
#' @field from  character [optional]
#' @field to  character [optional]
#' @field item  \link{OwnedMediaCitedItem} [optional]
#' @field citation_count Citations of the item in the window integer [optional]
#' @field prompt_count Distinct prompts whose answers cited it integer [optional]
#' @field page  integer [optional]
#' @field per_page  integer [optional]
#' @field total Citing answers integer [optional]
#' @field data  list(\link{OwnedMediaCitingAnswer}) [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaCitingPromptsResponse <- R6::R6Class(
  "OwnedMediaCitingPromptsResponse",
  public = list(
    `project_id` = NULL,
    `provider` = NULL,
    `from` = NULL,
    `to` = NULL,
    `item` = NULL,
    `citation_count` = NULL,
    `prompt_count` = NULL,
    `page` = NULL,
    `per_page` = NULL,
    `total` = NULL,
    `data` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new OwnedMediaCitingPromptsResponse class.
    #'
    #' @param project_id project_id
    #' @param provider provider
    #' @param from from
    #' @param to to
    #' @param item item
    #' @param citation_count Citations of the item in the window
    #' @param prompt_count Distinct prompts whose answers cited it
    #' @param page page
    #' @param per_page per_page
    #' @param total Citing answers
    #' @param data data
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `provider` = NULL, `from` = NULL, `to` = NULL, `item` = NULL, `citation_count` = NULL, `prompt_count` = NULL, `page` = NULL, `per_page` = NULL, `total` = NULL, `data` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`provider`)) {
        if (!(is.character(`provider`) && length(`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", `provider`))
        }
        self$`provider` <- `provider`
      }
      if (!is.null(`from`)) {
        if (!is.character(`from`)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!is.null(`to`)) {
        if (!is.character(`to`)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!is.null(`item`)) {
        stopifnot(R6::is.R6(`item`))
        self$`item` <- `item`
      }
      if (!is.null(`citation_count`)) {
        if (!(is.numeric(`citation_count`) && length(`citation_count`) == 1)) {
          stop(paste("Error! Invalid data for `citation_count`. Must be an integer:", `citation_count`))
        }
        self$`citation_count` <- `citation_count`
      }
      if (!is.null(`prompt_count`)) {
        if (!(is.numeric(`prompt_count`) && length(`prompt_count`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_count`. Must be an integer:", `prompt_count`))
        }
        self$`prompt_count` <- `prompt_count`
      }
      if (!is.null(`page`)) {
        if (!(is.numeric(`page`) && length(`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", `page`))
        }
        self$`page` <- `page`
      }
      if (!is.null(`per_page`)) {
        if (!(is.numeric(`per_page`) && length(`per_page`) == 1)) {
          stop(paste("Error! Invalid data for `per_page`. Must be an integer:", `per_page`))
        }
        self$`per_page` <- `per_page`
      }
      if (!is.null(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!is.null(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
      if (!is.null(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
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
    #' @return OwnedMediaCitingPromptsResponse as a base R list.
    #' @examples
    #' # convert array of OwnedMediaCitingPromptsResponse (x) to a data frame
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
    #' Convert OwnedMediaCitingPromptsResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaCitingPromptsResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        OwnedMediaCitingPromptsResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`provider`)) {
        OwnedMediaCitingPromptsResponseObject[["provider"]] <-
          self$`provider`
      }
      if (!is.null(self$`from`)) {
        OwnedMediaCitingPromptsResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        OwnedMediaCitingPromptsResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`item`)) {
        OwnedMediaCitingPromptsResponseObject[["item"]] <-
          self$extractSimpleType(self$`item`)
      }
      if (!is.null(self$`citation_count`)) {
        OwnedMediaCitingPromptsResponseObject[["citation_count"]] <-
          self$`citation_count`
      }
      if (!is.null(self$`prompt_count`)) {
        OwnedMediaCitingPromptsResponseObject[["prompt_count"]] <-
          self$`prompt_count`
      }
      if (!is.null(self$`page`)) {
        OwnedMediaCitingPromptsResponseObject[["page"]] <-
          self$`page`
      }
      if (!is.null(self$`per_page`)) {
        OwnedMediaCitingPromptsResponseObject[["per_page"]] <-
          self$`per_page`
      }
      if (!is.null(self$`total`)) {
        OwnedMediaCitingPromptsResponseObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`data`)) {
        OwnedMediaCitingPromptsResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      if (!is.null(self$`request_id`)) {
        OwnedMediaCitingPromptsResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(OwnedMediaCitingPromptsResponseObject)
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
    #' Deserialize JSON string into an instance of OwnedMediaCitingPromptsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaCitingPromptsResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`provider`)) {
        self$`provider` <- this_object$`provider`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`item`)) {
        `item_object` <- OwnedMediaCitedItem$new()
        `item_object`$fromJSON(jsonlite::toJSON(this_object$`item`, auto_unbox = TRUE, digits = NA))
        self$`item` <- `item_object`
      }
      if (!is.null(this_object$`citation_count`)) {
        self$`citation_count` <- this_object$`citation_count`
      }
      if (!is.null(this_object$`prompt_count`)) {
        self$`prompt_count` <- this_object$`prompt_count`
      }
      if (!is.null(this_object$`page`)) {
        self$`page` <- this_object$`page`
      }
      if (!is.null(this_object$`per_page`)) {
        self$`per_page` <- this_object$`per_page`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[OwnedMediaCitingAnswer]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`request_id`)) {
        self$`request_id` <- this_object$`request_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaCitingPromptsResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaCitingPromptsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaCitingPromptsResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`provider` <- this_object$`provider`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`item` <- OwnedMediaCitedItem$new()$fromJSON(jsonlite::toJSON(this_object$`item`, auto_unbox = TRUE, digits = NA))
      self$`citation_count` <- this_object$`citation_count`
      self$`prompt_count` <- this_object$`prompt_count`
      self$`page` <- this_object$`page`
      self$`per_page` <- this_object$`per_page`
      self$`total` <- this_object$`total`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[OwnedMediaCitingAnswer]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaCitingPromptsResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaCitingPromptsResponse
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
# OwnedMediaCitingPromptsResponse$unlock()
#
## Below is an example to define the print function
# OwnedMediaCitingPromptsResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaCitingPromptsResponse$lock()

