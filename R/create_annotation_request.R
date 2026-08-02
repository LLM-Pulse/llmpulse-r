#' Create a new CreateAnnotationRequest
#'
#' @description
#' CreateAnnotationRequest Class
#'
#' @docType class
#' @title CreateAnnotationRequest
#' @description CreateAnnotationRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field title  character
#' @field annotation_date ISO YYYY-MM-DD; defaults to today character [optional]
#' @field description  character [optional]
#' @field color Hex color, e.g. #2563eb character [optional]
#' @field annotation_category_id  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateAnnotationRequest <- R6::R6Class(
  "CreateAnnotationRequest",
  public = list(
    `project_id` = NULL,
    `title` = NULL,
    `annotation_date` = NULL,
    `description` = NULL,
    `color` = NULL,
    `annotation_category_id` = NULL,

    #' @description
    #' Initialize a new CreateAnnotationRequest class.
    #'
    #' @param project_id project_id
    #' @param title title
    #' @param annotation_date ISO YYYY-MM-DD; defaults to today
    #' @param description description
    #' @param color Hex color, e.g. #2563eb
    #' @param annotation_category_id annotation_category_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `title`, `annotation_date` = NULL, `description` = NULL, `color` = NULL, `annotation_category_id` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`annotation_date`)) {
        if (!is.character(`annotation_date`)) {
          stop(paste("Error! Invalid data for `annotation_date`. Must be a string:", `annotation_date`))
        }
        self$`annotation_date` <- `annotation_date`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
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
    #' @return CreateAnnotationRequest as a base R list.
    #' @examples
    #' # convert array of CreateAnnotationRequest (x) to a data frame
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
    #' Convert CreateAnnotationRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateAnnotationRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        CreateAnnotationRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`title`)) {
        CreateAnnotationRequestObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`annotation_date`)) {
        CreateAnnotationRequestObject[["annotation_date"]] <-
          self$`annotation_date`
      }
      if (!is.null(self$`description`)) {
        CreateAnnotationRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`color`)) {
        CreateAnnotationRequestObject[["color"]] <-
          self$`color`
      }
      if (!is.null(self$`annotation_category_id`)) {
        CreateAnnotationRequestObject[["annotation_category_id"]] <-
          self$`annotation_category_id`
      }
      return(CreateAnnotationRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateAnnotationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateAnnotationRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`annotation_date`)) {
        self$`annotation_date` <- this_object$`annotation_date`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
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
    #' @return CreateAnnotationRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateAnnotationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateAnnotationRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`title` <- this_object$`title`
      self$`annotation_date` <- this_object$`annotation_date`
      self$`description` <- this_object$`description`
      self$`color` <- this_object$`color`
      self$`annotation_category_id` <- this_object$`annotation_category_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateAnnotationRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CreateAnnotationRequest: the required field `project_id` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateAnnotationRequest: the required field `title` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateAnnotationRequest
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

      # check if the required `title` is null
      if (is.null(self$`title`)) {
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

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
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
# CreateAnnotationRequest$unlock()
#
## Below is an example to define the print function
# CreateAnnotationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateAnnotationRequest$lock()

