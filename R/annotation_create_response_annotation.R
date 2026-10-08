#' Create a new AnnotationCreateResponseAnnotation
#'
#' @description
#' AnnotationCreateResponseAnnotation Class
#'
#' @docType class
#' @title AnnotationCreateResponseAnnotation
#' @description AnnotationCreateResponseAnnotation Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field title  character
#' @field annotation_date  character
#' @field description  character
#' @field color Hex color such as '#4F46E5' character
#' @field annotation_category_id  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnnotationCreateResponseAnnotation <- R6::R6Class(
  "AnnotationCreateResponseAnnotation",
  public = list(
    `id` = NULL,
    `title` = NULL,
    `annotation_date` = NULL,
    `description` = NULL,
    `color` = NULL,
    `annotation_category_id` = NULL,

    #' @description
    #' Initialize a new AnnotationCreateResponseAnnotation class.
    #'
    #' @param id id
    #' @param title title
    #' @param annotation_date annotation_date
    #' @param description description
    #' @param color Hex color such as '#4F46E5'
    #' @param annotation_category_id annotation_category_id
    #' @param ... Other optional arguments.
    initialize = function(`id`, `title`, `annotation_date`, `description`, `color`, `annotation_category_id`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!missing(`annotation_date`)) {
        if (!(is.character(`annotation_date`) && length(`annotation_date`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_date`. Must be a string:", `annotation_date`))
        }
        self$`annotation_date` <- `annotation_date`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`color`)) {
        if (!(is.character(`color`) && length(`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", `color`))
        }
        self$`color` <- `color`
      }
      if (!missing(`annotation_category_id`)) {
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
    #' @return AnnotationCreateResponseAnnotation as a base R list.
    #' @examples
    #' # convert array of AnnotationCreateResponseAnnotation (x) to a data frame
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
    #' Convert AnnotationCreateResponseAnnotation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnnotationCreateResponseAnnotationObject <- list()
      if (!is.null(self$`id`)) {
        AnnotationCreateResponseAnnotationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`title`)) {
        AnnotationCreateResponseAnnotationObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`annotation_date`)) {
        AnnotationCreateResponseAnnotationObject[["annotation_date"]] <-
          self$`annotation_date`
      }
      if (!is.null(self$`description`)) {
        AnnotationCreateResponseAnnotationObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`color`)) {
        AnnotationCreateResponseAnnotationObject[["color"]] <-
          self$`color`
      }
      if (!is.null(self$`annotation_category_id`)) {
        AnnotationCreateResponseAnnotationObject[["annotation_category_id"]] <-
          self$`annotation_category_id`
      }
      return(AnnotationCreateResponseAnnotationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationCreateResponseAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationCreateResponseAnnotation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
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
    #' @return AnnotationCreateResponseAnnotation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationCreateResponseAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationCreateResponseAnnotation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`title` <- this_object$`title`
      self$`annotation_date` <- this_object$`annotation_date`
      self$`description` <- this_object$`description`
      self$`color` <- this_object$`color`
      self$`annotation_category_id` <- this_object$`annotation_category_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to AnnotationCreateResponseAnnotation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationCreateResponseAnnotation: the required field `id` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationCreateResponseAnnotation: the required field `title` is missing."))
      }
      # check the required field `annotation_date`
      if (!is.null(input_json$`annotation_date`)) {
        if (!(is.character(input_json$`annotation_date`) && length(input_json$`annotation_date`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_date`. Must be a string:", input_json$`annotation_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationCreateResponseAnnotation: the required field `annotation_date` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationCreateResponseAnnotation: the required field `description` is missing."))
      }
      # check the required field `color`
      if (!is.null(input_json$`color`)) {
        if (!(is.character(input_json$`color`) && length(input_json$`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", input_json$`color`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationCreateResponseAnnotation: the required field `color` is missing."))
      }
      # check the required field `annotation_category_id`
      if (!is.null(input_json$`annotation_category_id`)) {
        if (!(is.numeric(input_json$`annotation_category_id`) && length(input_json$`annotation_category_id`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_category_id`. Must be an integer:", input_json$`annotation_category_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationCreateResponseAnnotation: the required field `annotation_category_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnnotationCreateResponseAnnotation
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        return(FALSE)
      }

      # check if the required `annotation_date` is null
      if (is.null(self$`annotation_date`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      # check if the required `annotation_date` is null
      if (is.null(self$`annotation_date`)) {
        invalid_fields["annotation_date"] <- "Non-nullable required field `annotation_date` cannot be null."
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
# AnnotationCreateResponseAnnotation$unlock()
#
## Below is an example to define the print function
# AnnotationCreateResponseAnnotation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnnotationCreateResponseAnnotation$lock()

