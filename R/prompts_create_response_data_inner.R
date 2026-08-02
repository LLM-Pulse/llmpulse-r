#' Create a new PromptsCreateResponseDataInner
#'
#' @description
#' PromptsCreateResponseDataInner Class
#'
#' @docType class
#' @title PromptsCreateResponseDataInner
#' @description PromptsCreateResponseDataInner Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field raw_input  character [optional]
#' @field status  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptsCreateResponseDataInner <- R6::R6Class(
  "PromptsCreateResponseDataInner",
  public = list(
    `id` = NULL,
    `raw_input` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new PromptsCreateResponseDataInner class.
    #'
    #' @param id id
    #' @param raw_input raw_input
    #' @param status status
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `raw_input` = NULL, `status` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`raw_input`)) {
        if (!(is.character(`raw_input`) && length(`raw_input`) == 1)) {
          stop(paste("Error! Invalid data for `raw_input`. Must be a string:", `raw_input`))
        }
        self$`raw_input` <- `raw_input`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("created", "exists"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"created\", \"exists\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
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
    #' @return PromptsCreateResponseDataInner as a base R list.
    #' @examples
    #' # convert array of PromptsCreateResponseDataInner (x) to a data frame
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
    #' Convert PromptsCreateResponseDataInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptsCreateResponseDataInnerObject <- list()
      if (!is.null(self$`id`)) {
        PromptsCreateResponseDataInnerObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`raw_input`)) {
        PromptsCreateResponseDataInnerObject[["raw_input"]] <-
          self$`raw_input`
      }
      if (!is.null(self$`status`)) {
        PromptsCreateResponseDataInnerObject[["status"]] <-
          self$`status`
      }
      return(PromptsCreateResponseDataInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptsCreateResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptsCreateResponseDataInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`raw_input`)) {
        self$`raw_input` <- this_object$`raw_input`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("created", "exists"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"created\", \"exists\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PromptsCreateResponseDataInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptsCreateResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptsCreateResponseDataInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`raw_input` <- this_object$`raw_input`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("created", "exists"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"created\", \"exists\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptsCreateResponseDataInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptsCreateResponseDataInner
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
# PromptsCreateResponseDataInner$unlock()
#
## Below is an example to define the print function
# PromptsCreateResponseDataInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptsCreateResponseDataInner$lock()

