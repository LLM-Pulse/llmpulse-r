#' Create a new CitationPageDetailsContent
#'
#' @description
#' GET /citation_intelligence/urls/{url_sha256}/content only. Both null when the page has no usable content.
#'
#' @docType class
#' @title CitationPageDetailsContent
#' @description CitationPageDetailsContent Class
#' @format An \code{R6Class} generator object
#' @field text The page text character
#' @field rendered_html Sanitized HTML of the page character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitationPageDetailsContent <- R6::R6Class(
  "CitationPageDetailsContent",
  public = list(
    `text` = NULL,
    `rendered_html` = NULL,

    #' @description
    #' Initialize a new CitationPageDetailsContent class.
    #'
    #' @param text The page text
    #' @param rendered_html Sanitized HTML of the page
    #' @param ... Other optional arguments.
    initialize = function(`text`, `rendered_html`, ...) {
      if (!missing(`text`)) {
        if (!(is.character(`text`) && length(`text`) == 1)) {
          stop(paste("Error! Invalid data for `text`. Must be a string:", `text`))
        }
        self$`text` <- `text`
      }
      if (!missing(`rendered_html`)) {
        if (!(is.character(`rendered_html`) && length(`rendered_html`) == 1)) {
          stop(paste("Error! Invalid data for `rendered_html`. Must be a string:", `rendered_html`))
        }
        self$`rendered_html` <- `rendered_html`
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
    #' @return CitationPageDetailsContent as a base R list.
    #' @examples
    #' # convert array of CitationPageDetailsContent (x) to a data frame
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
    #' Convert CitationPageDetailsContent to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitationPageDetailsContentObject <- list()
      if (!is.null(self$`text`)) {
        CitationPageDetailsContentObject[["text"]] <-
          self$`text`
      }
      if (!is.null(self$`rendered_html`)) {
        CitationPageDetailsContentObject[["rendered_html"]] <-
          self$`rendered_html`
      }
      return(CitationPageDetailsContentObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationPageDetailsContent
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationPageDetailsContent
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`text`)) {
        self$`text` <- this_object$`text`
      }
      if (!is.null(this_object$`rendered_html`)) {
        self$`rendered_html` <- this_object$`rendered_html`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CitationPageDetailsContent in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationPageDetailsContent
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationPageDetailsContent
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`text` <- this_object$`text`
      self$`rendered_html` <- this_object$`rendered_html`
      self
    },

    #' @description
    #' Validate JSON input with respect to CitationPageDetailsContent and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `text`
      if (!is.null(input_json$`text`)) {
        if (!(is.character(input_json$`text`) && length(input_json$`text`) == 1)) {
          stop(paste("Error! Invalid data for `text`. Must be a string:", input_json$`text`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageDetailsContent: the required field `text` is missing."))
      }
      # check the required field `rendered_html`
      if (!is.null(input_json$`rendered_html`)) {
        if (!(is.character(input_json$`rendered_html`) && length(input_json$`rendered_html`) == 1)) {
          stop(paste("Error! Invalid data for `rendered_html`. Must be a string:", input_json$`rendered_html`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageDetailsContent: the required field `rendered_html` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitationPageDetailsContent
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
# CitationPageDetailsContent$unlock()
#
## Below is an example to define the print function
# CitationPageDetailsContent$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitationPageDetailsContent$lock()

