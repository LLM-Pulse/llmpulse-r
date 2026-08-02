#' Create a new TopSourcesResponse
#'
#' @description
#' TopSourcesResponse Class
#'
#' @docType class
#' @title TopSourcesResponse
#' @description TopSourcesResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field from  character [optional]
#' @field to  character [optional]
#' @field sort  character [optional]
#' @field page  integer [optional]
#' @field per_page  integer [optional]
#' @field total  integer [optional]
#' @field data  list(\link{TopSourcesResponseDataInner}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TopSourcesResponse <- R6::R6Class(
  "TopSourcesResponse",
  public = list(
    `project_id` = NULL,
    `from` = NULL,
    `to` = NULL,
    `sort` = NULL,
    `page` = NULL,
    `per_page` = NULL,
    `total` = NULL,
    `data` = NULL,

    #' @description
    #' Initialize a new TopSourcesResponse class.
    #'
    #' @param project_id project_id
    #' @param from from
    #' @param to to
    #' @param sort sort
    #' @param page page
    #' @param per_page per_page
    #' @param total total
    #' @param data data
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `from` = NULL, `to` = NULL, `sort` = NULL, `page` = NULL, `per_page` = NULL, `total` = NULL, `data` = NULL, ...) {
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
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
      if (!is.null(`sort`)) {
        if (!(is.character(`sort`) && length(`sort`) == 1)) {
          stop(paste("Error! Invalid data for `sort`. Must be a string:", `sort`))
        }
        self$`sort` <- `sort`
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
    #' @return TopSourcesResponse as a base R list.
    #' @examples
    #' # convert array of TopSourcesResponse (x) to a data frame
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
    #' Convert TopSourcesResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TopSourcesResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        TopSourcesResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`from`)) {
        TopSourcesResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        TopSourcesResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`sort`)) {
        TopSourcesResponseObject[["sort"]] <-
          self$`sort`
      }
      if (!is.null(self$`page`)) {
        TopSourcesResponseObject[["page"]] <-
          self$`page`
      }
      if (!is.null(self$`per_page`)) {
        TopSourcesResponseObject[["per_page"]] <-
          self$`per_page`
      }
      if (!is.null(self$`total`)) {
        TopSourcesResponseObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`data`)) {
        TopSourcesResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      return(TopSourcesResponseObject)
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
    #' Deserialize JSON string into an instance of TopSourcesResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TopSourcesResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`sort`)) {
        self$`sort` <- this_object$`sort`
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
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[TopSourcesResponseDataInner]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TopSourcesResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TopSourcesResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TopSourcesResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`sort` <- this_object$`sort`
      self$`page` <- this_object$`page`
      self$`per_page` <- this_object$`per_page`
      self$`total` <- this_object$`total`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[TopSourcesResponseDataInner]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to TopSourcesResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TopSourcesResponse
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
# TopSourcesResponse$unlock()
#
## Below is an example to define the print function
# TopSourcesResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TopSourcesResponse$lock()

