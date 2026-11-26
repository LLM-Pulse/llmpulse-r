#' Create a new AiModelPositionDistributionBrand
#'
#' @description
#' AiModelPositionDistributionBrand Class
#'
#' @docType class
#' @title AiModelPositionDistributionBrand
#' @description AiModelPositionDistributionBrand Class
#' @format An \code{R6Class} generator object
#' @field type project or competitor character
#' @field id Project id, or competitor id integer
#' @field competitor_id Null for the project, the competitor id otherwise integer
#' @field name  character
#' @field domain Bare (scheme-less) domain. Null for the project when it has no URL. character
#' @field buckets One per position bucket, in order: position_1, position_2_3, position_4_7 and position_8_plus list(\link{AiModelPositionDistributionBrandBucketsInner})
#' @field max_stacked_value The brand's largest mentions count of one period, its buckets added up integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelPositionDistributionBrand <- R6::R6Class(
  "AiModelPositionDistributionBrand",
  public = list(
    `type` = NULL,
    `id` = NULL,
    `competitor_id` = NULL,
    `name` = NULL,
    `domain` = NULL,
    `buckets` = NULL,
    `max_stacked_value` = NULL,

    #' @description
    #' Initialize a new AiModelPositionDistributionBrand class.
    #'
    #' @param type project or competitor
    #' @param id Project id, or competitor id
    #' @param competitor_id Null for the project, the competitor id otherwise
    #' @param name name
    #' @param domain Bare (scheme-less) domain. Null for the project when it has no URL.
    #' @param buckets One per position bucket, in order: position_1, position_2_3, position_4_7 and position_8_plus
    #' @param max_stacked_value The brand's largest mentions count of one period, its buckets added up
    #' @param ... Other optional arguments.
    initialize = function(`type`, `id`, `competitor_id`, `name`, `domain`, `buckets`, `max_stacked_value`, ...) {
      if (!missing(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`competitor_id`)) {
        if (!(is.numeric(`competitor_id`) && length(`competitor_id`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_id`. Must be an integer:", `competitor_id`))
        }
        self$`competitor_id` <- `competitor_id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!missing(`buckets`)) {
        stopifnot(is.vector(`buckets`), length(`buckets`) != 0)
        sapply(`buckets`, function(x) stopifnot(R6::is.R6(x)))
        self$`buckets` <- `buckets`
      }
      if (!missing(`max_stacked_value`)) {
        if (!(is.numeric(`max_stacked_value`) && length(`max_stacked_value`) == 1)) {
          stop(paste("Error! Invalid data for `max_stacked_value`. Must be an integer:", `max_stacked_value`))
        }
        self$`max_stacked_value` <- `max_stacked_value`
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
    #' @return AiModelPositionDistributionBrand as a base R list.
    #' @examples
    #' # convert array of AiModelPositionDistributionBrand (x) to a data frame
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
    #' Convert AiModelPositionDistributionBrand to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelPositionDistributionBrandObject <- list()
      if (!is.null(self$`type`)) {
        AiModelPositionDistributionBrandObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`id`)) {
        AiModelPositionDistributionBrandObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`competitor_id`)) {
        AiModelPositionDistributionBrandObject[["competitor_id"]] <-
          self$`competitor_id`
      }
      if (!is.null(self$`name`)) {
        AiModelPositionDistributionBrandObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`domain`)) {
        AiModelPositionDistributionBrandObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`buckets`)) {
        AiModelPositionDistributionBrandObject[["buckets"]] <-
          self$extractSimpleType(self$`buckets`)
      }
      if (!is.null(self$`max_stacked_value`)) {
        AiModelPositionDistributionBrandObject[["max_stacked_value"]] <-
          self$`max_stacked_value`
      }
      return(AiModelPositionDistributionBrandObject)
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
    #' Deserialize JSON string into an instance of AiModelPositionDistributionBrand
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelPositionDistributionBrand
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`competitor_id`)) {
        self$`competitor_id` <- this_object$`competitor_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`buckets`)) {
        self$`buckets` <- ApiClient$new()$deserializeObj(this_object$`buckets`, "array[AiModelPositionDistributionBrandBucketsInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`max_stacked_value`)) {
        self$`max_stacked_value` <- this_object$`max_stacked_value`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelPositionDistributionBrand in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelPositionDistributionBrand
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelPositionDistributionBrand
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`type` <- this_object$`type`
      self$`id` <- this_object$`id`
      self$`competitor_id` <- this_object$`competitor_id`
      self$`name` <- this_object$`name`
      self$`domain` <- this_object$`domain`
      self$`buckets` <- ApiClient$new()$deserializeObj(this_object$`buckets`, "array[AiModelPositionDistributionBrandBucketsInner]", loadNamespace("llmpulse"))
      self$`max_stacked_value` <- this_object$`max_stacked_value`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelPositionDistributionBrand and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionBrand: the required field `type` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionBrand: the required field `id` is missing."))
      }
      # check the required field `competitor_id`
      if (!is.null(input_json$`competitor_id`)) {
        if (!(is.numeric(input_json$`competitor_id`) && length(input_json$`competitor_id`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_id`. Must be an integer:", input_json$`competitor_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionBrand: the required field `competitor_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionBrand: the required field `name` is missing."))
      }
      # check the required field `domain`
      if (!is.null(input_json$`domain`)) {
        if (!(is.character(input_json$`domain`) && length(input_json$`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", input_json$`domain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionBrand: the required field `domain` is missing."))
      }
      # check the required field `buckets`
      if (!is.null(input_json$`buckets`)) {
        stopifnot(is.vector(input_json$`buckets`), length(input_json$`buckets`) != 0)
        tmp <- sapply(input_json$`buckets`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionBrand: the required field `buckets` is missing."))
      }
      # check the required field `max_stacked_value`
      if (!is.null(input_json$`max_stacked_value`)) {
        if (!(is.numeric(input_json$`max_stacked_value`) && length(input_json$`max_stacked_value`) == 1)) {
          stop(paste("Error! Invalid data for `max_stacked_value`. Must be an integer:", input_json$`max_stacked_value`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiModelPositionDistributionBrand: the required field `max_stacked_value` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelPositionDistributionBrand
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

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `buckets` is null
      if (is.null(self$`buckets`)) {
        return(FALSE)
      }

      # check if the required `max_stacked_value` is null
      if (is.null(self$`max_stacked_value`)) {
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

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `buckets` is null
      if (is.null(self$`buckets`)) {
        invalid_fields["buckets"] <- "Non-nullable required field `buckets` cannot be null."
      }

      # check if the required `max_stacked_value` is null
      if (is.null(self$`max_stacked_value`)) {
        invalid_fields["max_stacked_value"] <- "Non-nullable required field `max_stacked_value` cannot be null."
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
# AiModelPositionDistributionBrand$unlock()
#
## Below is an example to define the print function
# AiModelPositionDistributionBrand$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelPositionDistributionBrand$lock()

