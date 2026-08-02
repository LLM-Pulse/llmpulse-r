#' Create a new PromptsCreateResponse
#'
#' @description
#' PromptsCreateResponse Class
#'
#' @docType class
#' @title PromptsCreateResponse
#' @description PromptsCreateResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field created  integer [optional]
#' @field skipped  integer [optional]
#' @field total_after  integer [optional]
#' @field prompts_available  integer [optional]
#' @field data  list(\link{PromptsCreateResponseDataInner}) [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptsCreateResponse <- R6::R6Class(
  "PromptsCreateResponse",
  public = list(
    `project_id` = NULL,
    `created` = NULL,
    `skipped` = NULL,
    `total_after` = NULL,
    `prompts_available` = NULL,
    `data` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new PromptsCreateResponse class.
    #'
    #' @param project_id project_id
    #' @param created created
    #' @param skipped skipped
    #' @param total_after total_after
    #' @param prompts_available prompts_available
    #' @param data data
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `created` = NULL, `skipped` = NULL, `total_after` = NULL, `prompts_available` = NULL, `data` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`created`)) {
        if (!(is.numeric(`created`) && length(`created`) == 1)) {
          stop(paste("Error! Invalid data for `created`. Must be an integer:", `created`))
        }
        self$`created` <- `created`
      }
      if (!is.null(`skipped`)) {
        if (!(is.numeric(`skipped`) && length(`skipped`) == 1)) {
          stop(paste("Error! Invalid data for `skipped`. Must be an integer:", `skipped`))
        }
        self$`skipped` <- `skipped`
      }
      if (!is.null(`total_after`)) {
        if (!(is.numeric(`total_after`) && length(`total_after`) == 1)) {
          stop(paste("Error! Invalid data for `total_after`. Must be an integer:", `total_after`))
        }
        self$`total_after` <- `total_after`
      }
      if (!is.null(`prompts_available`)) {
        if (!(is.numeric(`prompts_available`) && length(`prompts_available`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_available`. Must be an integer:", `prompts_available`))
        }
        self$`prompts_available` <- `prompts_available`
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
    #' @return PromptsCreateResponse as a base R list.
    #' @examples
    #' # convert array of PromptsCreateResponse (x) to a data frame
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
    #' Convert PromptsCreateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptsCreateResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        PromptsCreateResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`created`)) {
        PromptsCreateResponseObject[["created"]] <-
          self$`created`
      }
      if (!is.null(self$`skipped`)) {
        PromptsCreateResponseObject[["skipped"]] <-
          self$`skipped`
      }
      if (!is.null(self$`total_after`)) {
        PromptsCreateResponseObject[["total_after"]] <-
          self$`total_after`
      }
      if (!is.null(self$`prompts_available`)) {
        PromptsCreateResponseObject[["prompts_available"]] <-
          self$`prompts_available`
      }
      if (!is.null(self$`data`)) {
        PromptsCreateResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      if (!is.null(self$`request_id`)) {
        PromptsCreateResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(PromptsCreateResponseObject)
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
    #' Deserialize JSON string into an instance of PromptsCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptsCreateResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`created`)) {
        self$`created` <- this_object$`created`
      }
      if (!is.null(this_object$`skipped`)) {
        self$`skipped` <- this_object$`skipped`
      }
      if (!is.null(this_object$`total_after`)) {
        self$`total_after` <- this_object$`total_after`
      }
      if (!is.null(this_object$`prompts_available`)) {
        self$`prompts_available` <- this_object$`prompts_available`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[PromptsCreateResponseDataInner]", loadNamespace("llmpulse"))
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
    #' @return PromptsCreateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptsCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptsCreateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`created` <- this_object$`created`
      self$`skipped` <- this_object$`skipped`
      self$`total_after` <- this_object$`total_after`
      self$`prompts_available` <- this_object$`prompts_available`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[PromptsCreateResponseDataInner]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptsCreateResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptsCreateResponse
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
# PromptsCreateResponse$unlock()
#
## Below is an example to define the print function
# PromptsCreateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptsCreateResponse$lock()

