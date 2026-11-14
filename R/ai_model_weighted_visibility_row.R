#' Create a new AiModelWeightedVisibilityRow
#'
#' @description
#' AiModelWeightedVisibilityRow Class
#'
#' @docType class
#' @title AiModelWeightedVisibilityRow
#' @description AiModelWeightedVisibilityRow Class
#' @format An \code{R6Class} generator object
#' @field model AI model key, as /dimensions/models lists it character [optional]
#' @field label Display name of the model character [optional]
#' @field color Hex color the app charts the model with character [optional]
#' @field weighted_visibility_score The brand's AI Visibility Score in the model, its points there divided by the days the model answered; 0 when it has none numeric [optional]
#' @field share_of_total The model's percentage (0-100) of the brand's AI Visibility Score points; null when the brand has none numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelWeightedVisibilityRow <- R6::R6Class(
  "AiModelWeightedVisibilityRow",
  public = list(
    `model` = NULL,
    `label` = NULL,
    `color` = NULL,
    `weighted_visibility_score` = NULL,
    `share_of_total` = NULL,

    #' @description
    #' Initialize a new AiModelWeightedVisibilityRow class.
    #'
    #' @param model AI model key, as /dimensions/models lists it
    #' @param label Display name of the model
    #' @param color Hex color the app charts the model with
    #' @param weighted_visibility_score The brand's AI Visibility Score in the model, its points there divided by the days the model answered; 0 when it has none
    #' @param share_of_total The model's percentage (0-100) of the brand's AI Visibility Score points; null when the brand has none
    #' @param ... Other optional arguments.
    initialize = function(`model` = NULL, `label` = NULL, `color` = NULL, `weighted_visibility_score` = NULL, `share_of_total` = NULL, ...) {
      if (!is.null(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`color`)) {
        if (!(is.character(`color`) && length(`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", `color`))
        }
        self$`color` <- `color`
      }
      if (!is.null(`weighted_visibility_score`)) {
        self$`weighted_visibility_score` <- `weighted_visibility_score`
      }
      if (!is.null(`share_of_total`)) {
        self$`share_of_total` <- `share_of_total`
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
    #' @return AiModelWeightedVisibilityRow as a base R list.
    #' @examples
    #' # convert array of AiModelWeightedVisibilityRow (x) to a data frame
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
    #' Convert AiModelWeightedVisibilityRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelWeightedVisibilityRowObject <- list()
      if (!is.null(self$`model`)) {
        AiModelWeightedVisibilityRowObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`label`)) {
        AiModelWeightedVisibilityRowObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`color`)) {
        AiModelWeightedVisibilityRowObject[["color"]] <-
          self$`color`
      }
      if (!is.null(self$`weighted_visibility_score`)) {
        AiModelWeightedVisibilityRowObject[["weighted_visibility_score"]] <-
          self$`weighted_visibility_score`
      }
      if (!is.null(self$`share_of_total`)) {
        AiModelWeightedVisibilityRowObject[["share_of_total"]] <-
          self$`share_of_total`
      }
      return(AiModelWeightedVisibilityRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelWeightedVisibilityRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelWeightedVisibilityRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`color`)) {
        self$`color` <- this_object$`color`
      }
      if (!is.null(this_object$`weighted_visibility_score`)) {
        self$`weighted_visibility_score` <- this_object$`weighted_visibility_score`
      }
      if (!is.null(this_object$`share_of_total`)) {
        self$`share_of_total` <- this_object$`share_of_total`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelWeightedVisibilityRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelWeightedVisibilityRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelWeightedVisibilityRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`model` <- this_object$`model`
      self$`label` <- this_object$`label`
      self$`color` <- this_object$`color`
      self$`weighted_visibility_score` <- this_object$`weighted_visibility_score`
      self$`share_of_total` <- this_object$`share_of_total`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelWeightedVisibilityRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelWeightedVisibilityRow
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
# AiModelWeightedVisibilityRow$unlock()
#
## Below is an example to define the print function
# AiModelWeightedVisibilityRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelWeightedVisibilityRow$lock()

