#' Create a new UrlListEntryInput
#'
#' @description
#' An entry. A plain string is read as its value.
#'
#' @docType class
#' @title UrlListEntryInput
#' @description UrlListEntryInput Class
#' @format An \code{R6Class} generator object
#' @field value An exact URL, a \"host/path/*\" prefix or a domain. character
#' @field match_type  character [optional]
#' @field added_on When the URL was published or bought. Default today. character [optional]
#' @field cost What the URL cost, in the list currency. numeric [optional]
#' @field channel Where it came from, such as a marketplace or PR agency. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListEntryInput <- R6::R6Class(
  "UrlListEntryInput",
  public = list(
    `value` = NULL,
    `match_type` = NULL,
    `added_on` = NULL,
    `cost` = NULL,
    `channel` = NULL,

    #' @description
    #' Initialize a new UrlListEntryInput class.
    #'
    #' @param value An exact URL, a \"host/path/*\" prefix or a domain.
    #' @param match_type match_type
    #' @param added_on When the URL was published or bought. Default today.
    #' @param cost What the URL cost, in the list currency.
    #' @param channel Where it came from, such as a marketplace or PR agency.
    #' @param ... Other optional arguments.
    initialize = function(`value`, `match_type` = NULL, `added_on` = NULL, `cost` = NULL, `channel` = NULL, ...) {
      if (!missing(`value`)) {
        if (!(is.character(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", `value`))
        }
        self$`value` <- `value`
      }
      if (!is.null(`match_type`)) {
        if (!(`match_type` %in% c("url", "prefix", "domain"))) {
          stop(paste("Error! \"", `match_type`, "\" cannot be assigned to `match_type`. Must be \"url\", \"prefix\", \"domain\".", sep = ""))
        }
        if (!(is.character(`match_type`) && length(`match_type`) == 1)) {
          stop(paste("Error! Invalid data for `match_type`. Must be a string:", `match_type`))
        }
        self$`match_type` <- `match_type`
      }
      if (!is.null(`added_on`)) {
        if (!is.character(`added_on`)) {
          stop(paste("Error! Invalid data for `added_on`. Must be a string:", `added_on`))
        }
        self$`added_on` <- `added_on`
      }
      if (!is.null(`cost`)) {
        self$`cost` <- `cost`
      }
      if (!is.null(`channel`)) {
        if (!(is.character(`channel`) && length(`channel`) == 1)) {
          stop(paste("Error! Invalid data for `channel`. Must be a string:", `channel`))
        }
        self$`channel` <- `channel`
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
    #' @return UrlListEntryInput as a base R list.
    #' @examples
    #' # convert array of UrlListEntryInput (x) to a data frame
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
    #' Convert UrlListEntryInput to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListEntryInputObject <- list()
      if (!is.null(self$`value`)) {
        UrlListEntryInputObject[["value"]] <-
          self$`value`
      }
      if (!is.null(self$`match_type`)) {
        UrlListEntryInputObject[["match_type"]] <-
          self$`match_type`
      }
      if (!is.null(self$`added_on`)) {
        UrlListEntryInputObject[["added_on"]] <-
          self$`added_on`
      }
      if (!is.null(self$`cost`)) {
        UrlListEntryInputObject[["cost"]] <-
          self$`cost`
      }
      if (!is.null(self$`channel`)) {
        UrlListEntryInputObject[["channel"]] <-
          self$`channel`
      }
      return(UrlListEntryInputObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListEntryInput
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListEntryInput
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      if (!is.null(this_object$`match_type`)) {
        if (!is.null(this_object$`match_type`) && !(this_object$`match_type` %in% c("url", "prefix", "domain"))) {
          stop(paste("Error! \"", this_object$`match_type`, "\" cannot be assigned to `match_type`. Must be \"url\", \"prefix\", \"domain\".", sep = ""))
        }
        self$`match_type` <- this_object$`match_type`
      }
      if (!is.null(this_object$`added_on`)) {
        self$`added_on` <- this_object$`added_on`
      }
      if (!is.null(this_object$`cost`)) {
        self$`cost` <- this_object$`cost`
      }
      if (!is.null(this_object$`channel`)) {
        self$`channel` <- this_object$`channel`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UrlListEntryInput in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListEntryInput
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListEntryInput
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`value` <- this_object$`value`
      if (!is.null(this_object$`match_type`) && !(this_object$`match_type` %in% c("url", "prefix", "domain"))) {
        stop(paste("Error! \"", this_object$`match_type`, "\" cannot be assigned to `match_type`. Must be \"url\", \"prefix\", \"domain\".", sep = ""))
      }
      self$`match_type` <- this_object$`match_type`
      self$`added_on` <- this_object$`added_on`
      self$`cost` <- this_object$`cost`
      self$`channel` <- this_object$`channel`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListEntryInput and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UrlListEntryInput: the required field `value` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListEntryInput
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
# UrlListEntryInput$unlock()
#
## Below is an example to define the print function
# UrlListEntryInput$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListEntryInput$lock()

