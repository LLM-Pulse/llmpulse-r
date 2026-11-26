#' Create a new AnnotationRecord
#'
#' @description
#' AnnotationRecord Class
#'
#' @docType class
#' @title AnnotationRecord
#' @description AnnotationRecord Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field title  character
#' @field description  character
#' @field annotation_date  character
#' @field color  character
#' @field category user (written by a person) or system (added by the platform) character
#' @field origin manual, platform (a platform-wide event) or automation (a project change recorded automatically) character
#' @field annotation_category  \link{AnnotationRecordAnnotationCategory}
#' @field editable Whether the requesting user may update or delete it character
#' @field created_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnnotationRecord <- R6::R6Class(
  "AnnotationRecord",
  public = list(
    `id` = NULL,
    `title` = NULL,
    `description` = NULL,
    `annotation_date` = NULL,
    `color` = NULL,
    `category` = NULL,
    `origin` = NULL,
    `annotation_category` = NULL,
    `editable` = NULL,
    `created_at` = NULL,

    #' @description
    #' Initialize a new AnnotationRecord class.
    #'
    #' @param id id
    #' @param title title
    #' @param description description
    #' @param annotation_date annotation_date
    #' @param color color
    #' @param category user (written by a person) or system (added by the platform)
    #' @param origin manual, platform (a platform-wide event) or automation (a project change recorded automatically)
    #' @param annotation_category annotation_category
    #' @param editable Whether the requesting user may update or delete it
    #' @param created_at created_at
    #' @param ... Other optional arguments.
    initialize = function(`id`, `title`, `description`, `annotation_date`, `color`, `category`, `origin`, `annotation_category`, `editable`, `created_at`, ...) {
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
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`annotation_date`)) {
        if (!(is.character(`annotation_date`) && length(`annotation_date`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_date`. Must be a string:", `annotation_date`))
        }
        self$`annotation_date` <- `annotation_date`
      }
      if (!missing(`color`)) {
        if (!(is.character(`color`) && length(`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", `color`))
        }
        self$`color` <- `color`
      }
      if (!missing(`category`)) {
        if (!(is.character(`category`) && length(`category`) == 1)) {
          stop(paste("Error! Invalid data for `category`. Must be a string:", `category`))
        }
        self$`category` <- `category`
      }
      if (!missing(`origin`)) {
        if (!(is.character(`origin`) && length(`origin`) == 1)) {
          stop(paste("Error! Invalid data for `origin`. Must be a string:", `origin`))
        }
        self$`origin` <- `origin`
      }
      if (!missing(`annotation_category`)) {
        stopifnot(R6::is.R6(`annotation_category`))
        self$`annotation_category` <- `annotation_category`
      }
      if (!missing(`editable`)) {
        if (!(is.logical(`editable`) && length(`editable`) == 1)) {
          stop(paste("Error! Invalid data for `editable`. Must be a boolean:", `editable`))
        }
        self$`editable` <- `editable`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
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
    #' @return AnnotationRecord as a base R list.
    #' @examples
    #' # convert array of AnnotationRecord (x) to a data frame
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
    #' Convert AnnotationRecord to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnnotationRecordObject <- list()
      if (!is.null(self$`id`)) {
        AnnotationRecordObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`title`)) {
        AnnotationRecordObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description`)) {
        AnnotationRecordObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`annotation_date`)) {
        AnnotationRecordObject[["annotation_date"]] <-
          self$`annotation_date`
      }
      if (!is.null(self$`color`)) {
        AnnotationRecordObject[["color"]] <-
          self$`color`
      }
      if (!is.null(self$`category`)) {
        AnnotationRecordObject[["category"]] <-
          self$`category`
      }
      if (!is.null(self$`origin`)) {
        AnnotationRecordObject[["origin"]] <-
          self$`origin`
      }
      if (!is.null(self$`annotation_category`)) {
        AnnotationRecordObject[["annotation_category"]] <-
          self$extractSimpleType(self$`annotation_category`)
      }
      if (!is.null(self$`editable`)) {
        AnnotationRecordObject[["editable"]] <-
          self$`editable`
      }
      if (!is.null(self$`created_at`)) {
        AnnotationRecordObject[["created_at"]] <-
          self$`created_at`
      }
      return(AnnotationRecordObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationRecord
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
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
      if (!is.null(this_object$`category`)) {
        self$`category` <- this_object$`category`
      }
      if (!is.null(this_object$`origin`)) {
        self$`origin` <- this_object$`origin`
      }
      if (!is.null(this_object$`annotation_category`)) {
        `annotation_category_object` <- AnnotationRecordAnnotationCategory$new()
        `annotation_category_object`$fromJSON(jsonlite::toJSON(this_object$`annotation_category`, auto_unbox = TRUE, digits = NA))
        self$`annotation_category` <- `annotation_category_object`
      }
      if (!is.null(this_object$`editable`)) {
        self$`editable` <- this_object$`editable`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnnotationRecord in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationRecord
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationRecord
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`title` <- this_object$`title`
      self$`description` <- this_object$`description`
      self$`annotation_date` <- this_object$`annotation_date`
      self$`color` <- this_object$`color`
      self$`category` <- this_object$`category`
      self$`origin` <- this_object$`origin`
      self$`annotation_category` <- AnnotationRecordAnnotationCategory$new()$fromJSON(jsonlite::toJSON(this_object$`annotation_category`, auto_unbox = TRUE, digits = NA))
      self$`editable` <- this_object$`editable`
      self$`created_at` <- this_object$`created_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to AnnotationRecord and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AnnotationRecord: the required field `id` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationRecord: the required field `title` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationRecord: the required field `description` is missing."))
      }
      # check the required field `annotation_date`
      if (!is.null(input_json$`annotation_date`)) {
        if (!(is.character(input_json$`annotation_date`) && length(input_json$`annotation_date`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_date`. Must be a string:", input_json$`annotation_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationRecord: the required field `annotation_date` is missing."))
      }
      # check the required field `color`
      if (!is.null(input_json$`color`)) {
        if (!(is.character(input_json$`color`) && length(input_json$`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", input_json$`color`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationRecord: the required field `color` is missing."))
      }
      # check the required field `category`
      if (!is.null(input_json$`category`)) {
        if (!(is.character(input_json$`category`) && length(input_json$`category`) == 1)) {
          stop(paste("Error! Invalid data for `category`. Must be a string:", input_json$`category`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationRecord: the required field `category` is missing."))
      }
      # check the required field `origin`
      if (!is.null(input_json$`origin`)) {
        if (!(is.character(input_json$`origin`) && length(input_json$`origin`) == 1)) {
          stop(paste("Error! Invalid data for `origin`. Must be a string:", input_json$`origin`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationRecord: the required field `origin` is missing."))
      }
      # check the required field `annotation_category`
      if (!is.null(input_json$`annotation_category`)) {
        stopifnot(R6::is.R6(input_json$`annotation_category`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationRecord: the required field `annotation_category` is missing."))
      }
      # check the required field `editable`
      if (!is.null(input_json$`editable`)) {
        if (!(is.logical(input_json$`editable`) && length(input_json$`editable`) == 1)) {
          stop(paste("Error! Invalid data for `editable`. Must be a boolean:", input_json$`editable`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationRecord: the required field `editable` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationRecord: the required field `created_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnnotationRecord
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

      # check if the required `category` is null
      if (is.null(self$`category`)) {
        return(FALSE)
      }

      # check if the required `origin` is null
      if (is.null(self$`origin`)) {
        return(FALSE)
      }

      # check if the required `editable` is null
      if (is.null(self$`editable`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
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

      # check if the required `category` is null
      if (is.null(self$`category`)) {
        invalid_fields["category"] <- "Non-nullable required field `category` cannot be null."
      }

      # check if the required `origin` is null
      if (is.null(self$`origin`)) {
        invalid_fields["origin"] <- "Non-nullable required field `origin` cannot be null."
      }

      # check if the required `editable` is null
      if (is.null(self$`editable`)) {
        invalid_fields["editable"] <- "Non-nullable required field `editable` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
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
# AnnotationRecord$unlock()
#
## Below is an example to define the print function
# AnnotationRecord$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnnotationRecord$lock()

