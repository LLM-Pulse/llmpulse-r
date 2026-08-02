#' Create a new UpdateCompetitorRequest
#'
#' @description
#' UpdateCompetitorRequest Class
#'
#' @docType class
#' @title UpdateCompetitorRequest
#' @description UpdateCompetitorRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field brand_name  character [optional]
#' @field matching_names  list(character) [optional]
#' @field color Hex color, e.g. #1a2b3c character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateCompetitorRequest <- R6::R6Class(
  "UpdateCompetitorRequest",
  public = list(
    `project_id` = NULL,
    `brand_name` = NULL,
    `matching_names` = NULL,
    `color` = NULL,

    #' @description
    #' Initialize a new UpdateCompetitorRequest class.
    #'
    #' @param project_id project_id
    #' @param brand_name brand_name
    #' @param matching_names matching_names
    #' @param color Hex color, e.g. #1a2b3c
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `brand_name` = NULL, `matching_names` = NULL, `color` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`brand_name`)) {
        if (!(is.character(`brand_name`) && length(`brand_name`) == 1)) {
          stop(paste("Error! Invalid data for `brand_name`. Must be a string:", `brand_name`))
        }
        self$`brand_name` <- `brand_name`
      }
      if (!is.null(`matching_names`)) {
        stopifnot(is.vector(`matching_names`), length(`matching_names`) != 0)
        sapply(`matching_names`, function(x) stopifnot(is.character(x)))
        self$`matching_names` <- `matching_names`
      }
      if (!is.null(`color`)) {
        if (!(is.character(`color`) && length(`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", `color`))
        }
        self$`color` <- `color`
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
    #' @return UpdateCompetitorRequest as a base R list.
    #' @examples
    #' # convert array of UpdateCompetitorRequest (x) to a data frame
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
    #' Convert UpdateCompetitorRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpdateCompetitorRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        UpdateCompetitorRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`brand_name`)) {
        UpdateCompetitorRequestObject[["brand_name"]] <-
          self$`brand_name`
      }
      if (!is.null(self$`matching_names`)) {
        UpdateCompetitorRequestObject[["matching_names"]] <-
          self$`matching_names`
      }
      if (!is.null(self$`color`)) {
        UpdateCompetitorRequestObject[["color"]] <-
          self$`color`
      }
      return(UpdateCompetitorRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateCompetitorRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateCompetitorRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`brand_name`)) {
        self$`brand_name` <- this_object$`brand_name`
      }
      if (!is.null(this_object$`matching_names`)) {
        self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`color`)) {
        self$`color` <- this_object$`color`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UpdateCompetitorRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateCompetitorRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateCompetitorRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`brand_name` <- this_object$`brand_name`
      self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      self$`color` <- this_object$`color`
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdateCompetitorRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `project_id`
      if (!is.null(input_json$`project_id`)) {
        if (!(is.numeric(input_json$`project_id`) && length(input_json$`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", input_json$`project_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UpdateCompetitorRequest: the required field `project_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateCompetitorRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
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
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        invalid_fields["project_id"] <- "Non-nullable required field `project_id` cannot be null."
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
# UpdateCompetitorRequest$unlock()
#
## Below is an example to define the print function
# UpdateCompetitorRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateCompetitorRequest$lock()

