#' Create a new UrlListInvalidEntry
#'
#' @description
#' UrlListInvalidEntry Class
#'
#' @docType class
#' @title UrlListInvalidEntry
#' @description UrlListInvalidEntry Class
#' @format An \code{R6Class} generator object
#' @field value  character
#' @field reason  character
#' @field message  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListInvalidEntry <- R6::R6Class(
  "UrlListInvalidEntry",
  public = list(
    `value` = NULL,
    `reason` = NULL,
    `message` = NULL,

    #' @description
    #' Initialize a new UrlListInvalidEntry class.
    #'
    #' @param value value
    #' @param reason reason
    #' @param message message
    #' @param ... Other optional arguments.
    initialize = function(`value`, `reason`, `message`, ...) {
      if (!missing(`value`)) {
        if (!(is.character(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", `value`))
        }
        self$`value` <- `value`
      }
      if (!missing(`reason`)) {
        if (!(`reason` %in% c("blank", "too_long", "invalid_url", "invalid_match_type", "invalid_date", "invalid_cost", "channel_too_long"))) {
          stop(paste("Error! \"", `reason`, "\" cannot be assigned to `reason`. Must be \"blank\", \"too_long\", \"invalid_url\", \"invalid_match_type\", \"invalid_date\", \"invalid_cost\", \"channel_too_long\".", sep = ""))
        }
        if (!(is.character(`reason`) && length(`reason`) == 1)) {
          stop(paste("Error! Invalid data for `reason`. Must be a string:", `reason`))
        }
        self$`reason` <- `reason`
      }
      if (!missing(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
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
    #' @return UrlListInvalidEntry as a base R list.
    #' @examples
    #' # convert array of UrlListInvalidEntry (x) to a data frame
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
    #' Convert UrlListInvalidEntry to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListInvalidEntryObject <- list()
      if (!is.null(self$`value`)) {
        UrlListInvalidEntryObject[["value"]] <-
          self$`value`
      }
      if (!is.null(self$`reason`)) {
        UrlListInvalidEntryObject[["reason"]] <-
          self$`reason`
      }
      if (!is.null(self$`message`)) {
        UrlListInvalidEntryObject[["message"]] <-
          self$`message`
      }
      return(UrlListInvalidEntryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListInvalidEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListInvalidEntry
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      if (!is.null(this_object$`reason`)) {
        if (!is.null(this_object$`reason`) && !(this_object$`reason` %in% c("blank", "too_long", "invalid_url", "invalid_match_type", "invalid_date", "invalid_cost", "channel_too_long"))) {
          stop(paste("Error! \"", this_object$`reason`, "\" cannot be assigned to `reason`. Must be \"blank\", \"too_long\", \"invalid_url\", \"invalid_match_type\", \"invalid_date\", \"invalid_cost\", \"channel_too_long\".", sep = ""))
        }
        self$`reason` <- this_object$`reason`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UrlListInvalidEntry in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListInvalidEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListInvalidEntry
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`value` <- this_object$`value`
      if (!is.null(this_object$`reason`) && !(this_object$`reason` %in% c("blank", "too_long", "invalid_url", "invalid_match_type", "invalid_date", "invalid_cost", "channel_too_long"))) {
        stop(paste("Error! \"", this_object$`reason`, "\" cannot be assigned to `reason`. Must be \"blank\", \"too_long\", \"invalid_url\", \"invalid_match_type\", \"invalid_date\", \"invalid_cost\", \"channel_too_long\".", sep = ""))
      }
      self$`reason` <- this_object$`reason`
      self$`message` <- this_object$`message`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListInvalidEntry and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `value`
      if (!is.null(input_json$`value`)) {
        if (!(is.character(input_json$`value`) && length(input_json$`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", input_json$`value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListInvalidEntry: the required field `value` is missing."))
      }
      # check the required field `reason`
      if (!is.null(input_json$`reason`)) {
        if (!(is.character(input_json$`reason`) && length(input_json$`reason`) == 1)) {
          stop(paste("Error! Invalid data for `reason`. Must be a string:", input_json$`reason`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListInvalidEntry: the required field `reason` is missing."))
      }
      # check the required field `message`
      if (!is.null(input_json$`message`)) {
        if (!(is.character(input_json$`message`) && length(input_json$`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", input_json$`message`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListInvalidEntry: the required field `message` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListInvalidEntry
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `value` is null
      if (is.null(self$`value`)) {
        return(FALSE)
      }

      # check if the required `reason` is null
      if (is.null(self$`reason`)) {
        return(FALSE)
      }

      # check if the required `message` is null
      if (is.null(self$`message`)) {
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
      # check if the required `value` is null
      if (is.null(self$`value`)) {
        invalid_fields["value"] <- "Non-nullable required field `value` cannot be null."
      }

      # check if the required `reason` is null
      if (is.null(self$`reason`)) {
        invalid_fields["reason"] <- "Non-nullable required field `reason` cannot be null."
      }

      # check if the required `message` is null
      if (is.null(self$`message`)) {
        invalid_fields["message"] <- "Non-nullable required field `message` cannot be null."
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
# UrlListInvalidEntry$unlock()
#
## Below is an example to define the print function
# UrlListInvalidEntry$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListInvalidEntry$lock()

