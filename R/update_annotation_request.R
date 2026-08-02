#' Create a new UpdateAnnotationRequest
#'
#' @description
#' UpdateAnnotationRequest Class
#'
#' @docType class
#' @title UpdateAnnotationRequest
#' @description UpdateAnnotationRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field title  character [optional]
#' @field description  character [optional]
#' @field annotation_date  character [optional]
#' @field color  character [optional]
#' @field annotation_category_id  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateAnnotationRequest <- R6::R6Class(
  "UpdateAnnotationRequest",
  public = list(
    `project_id` = NULL,
    `title` = NULL,
    `description` = NULL,
    `annotation_date` = NULL,
    `color` = NULL,
    `annotation_category_id` = NULL,

    #' @description
    #' Initialize a new UpdateAnnotationRequest class.
    #'
    #' @param project_id project_id
    #' @param title title
    #' @param description description
    #' @param annotation_date annotation_date
    #' @param color color
    #' @param annotation_category_id annotation_category_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `title` = NULL, `description` = NULL, `annotation_date` = NULL, `color` = NULL, `annotation_category_id` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`annotation_date`)) {
        if (!is.character(`annotation_date`)) {
          stop(paste("Error! Invalid data for `annotation_date`. Must be a string:", `annotation_date`))
        }
        self$`annotation_date` <- `annotation_date`
      }
      if (!is.null(`color`)) {
        if (!(is.character(`color`) && length(`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", `color`))
        }
        self$`color` <- `color`
      }
      if (!is.null(`annotation_category_id`)) {
        if (!(is.numeric(`annotation_category_id`) && length(`annotation_category_id`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_category_id`. Must be an integer:", `annotation_category_id`))
        }
        self$`annotation_category_id` <- `annotation_category_id`
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
    #' @return UpdateAnnotationRequest as a base R list.
    #' @examples
    #' # convert array of UpdateAnnotationRequest (x) to a data frame
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
    #' Convert UpdateAnnotationRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpdateAnnotationRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        UpdateAnnotationRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`title`)) {
        UpdateAnnotationRequestObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        UpdateAnnotationRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`annotation_date`)) {
        UpdateAnnotationRequestObject[["annotation_date"]] <-
          self$`annotation_date`
      }
      if (!is.null(self$`color`)) {
        UpdateAnnotationRequestObject[["color"]] <-
          self$`color`
      }
      if (!is.null(self$`annotation_category_id`)) {
        UpdateAnnotationRequestObject[["annotation_category_id"]] <-
          self$`annotation_category_id`
      }
      return(UpdateAnnotationRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateAnnotationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateAnnotationRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`annotation_date`)) {
        self$`annotation_date` <- this_object$`annotation_date`
      }
      if (!is.null(this_object$`color`)) {
        self$`color` <- this_object$`color`
      }
      if (!is.null(this_object$`annotation_category_id`)) {
        self$`annotation_category_id` <- this_object$`annotation_category_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UpdateAnnotationRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateAnnotationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateAnnotationRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`annotation_date` <- this_object$`annotation_date`
      self$`color` <- this_object$`color`
      self$`annotation_category_id` <- this_object$`annotation_category_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdateAnnotationRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UpdateAnnotationRequest: the required field `project_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateAnnotationRequest
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
# UpdateAnnotationRequest$unlock()
#
## Below is an example to define the print function
# UpdateAnnotationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateAnnotationRequest$lock()

