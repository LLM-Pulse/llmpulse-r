#' Create a new SentimentBreakdownBrand
#'
#' @description
#' SentimentBreakdownBrand Class
#'
#' @docType class
#' @title SentimentBreakdownBrand
#' @description SentimentBreakdownBrand Class
#' @format An \code{R6Class} generator object
#' @field type  character
#' @field id The competitor id when type is competitor integer [optional]
#' @field name  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SentimentBreakdownBrand <- R6::R6Class(
  "SentimentBreakdownBrand",
  public = list(
    `type` = NULL,
    `id` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new SentimentBreakdownBrand class.
    #'
    #' @param type type
    #' @param id The competitor id when type is competitor
    #' @param name name
    #' @param ... Other optional arguments.
    initialize = function(`type`, `id` = NULL, `name` = NULL, ...) {
      if (!missing(`type`)) {
        if (!(`type` %in% c("project", "competitor", "all"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"project\", \"competitor\", \"all\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
    #' @return SentimentBreakdownBrand as a base R list.
    #' @examples
    #' # convert array of SentimentBreakdownBrand (x) to a data frame
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
    #' Convert SentimentBreakdownBrand to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SentimentBreakdownBrandObject <- list()
      if (!is.null(self$`type`)) {
        SentimentBreakdownBrandObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`id`)) {
        SentimentBreakdownBrandObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        SentimentBreakdownBrandObject[["name"]] <-
          self$`name`
      }
      return(SentimentBreakdownBrandObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SentimentBreakdownBrand
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentBreakdownBrand
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("project", "competitor", "all"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"project\", \"competitor\", \"all\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SentimentBreakdownBrand in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SentimentBreakdownBrand
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentBreakdownBrand
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("project", "competitor", "all"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"project\", \"competitor\", \"all\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to SentimentBreakdownBrand and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentBreakdownBrand: the required field `type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SentimentBreakdownBrand
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

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
# SentimentBreakdownBrand$unlock()
#
## Below is an example to define the print function
# SentimentBreakdownBrand$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SentimentBreakdownBrand$lock()

