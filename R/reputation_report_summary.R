#' Create a new ReputationReportSummary
#'
#' @description
#' One reputation report's status and analyst model coverage
#'
#' @docType class
#' @title ReputationReportSummary
#' @description ReputationReportSummary Class
#' @format An \code{R6Class} generator object
#' @field id Report id for GET /reputation/reports/{id} character
#' @field status  character
#' @field created_at  character
#' @field processed_at  character [optional]
#' @field available_models Analyst models that produced data list(character)
#' @field missing_models Analyst models with no data yet list(character)
#' @field error_message Why the report failed; null unless status is failed character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReputationReportSummary <- R6::R6Class(
  "ReputationReportSummary",
  public = list(
    `id` = NULL,
    `status` = NULL,
    `created_at` = NULL,
    `processed_at` = NULL,
    `available_models` = NULL,
    `missing_models` = NULL,
    `error_message` = NULL,

    #' @description
    #' Initialize a new ReputationReportSummary class.
    #'
    #' @param id Report id for GET /reputation/reports/{id}
    #' @param status status
    #' @param created_at created_at
    #' @param available_models Analyst models that produced data
    #' @param missing_models Analyst models with no data yet
    #' @param processed_at processed_at
    #' @param error_message Why the report failed; null unless status is failed
    #' @param ... Other optional arguments.
    initialize = function(`id`, `status`, `created_at`, `available_models`, `missing_models`, `processed_at` = NULL, `error_message` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c("pending", "processing", "completed", "failed"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"pending\", \"processing\", \"completed\", \"failed\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`available_models`)) {
        stopifnot(is.vector(`available_models`), length(`available_models`) != 0)
        sapply(`available_models`, function(x) stopifnot(is.character(x)))
        self$`available_models` <- `available_models`
      }
      if (!missing(`missing_models`)) {
        stopifnot(is.vector(`missing_models`), length(`missing_models`) != 0)
        sapply(`missing_models`, function(x) stopifnot(is.character(x)))
        self$`missing_models` <- `missing_models`
      }
      if (!is.null(`processed_at`)) {
        if (!is.character(`processed_at`)) {
          stop(paste("Error! Invalid data for `processed_at`. Must be a string:", `processed_at`))
        }
        self$`processed_at` <- `processed_at`
      }
      if (!is.null(`error_message`)) {
        if (!(is.character(`error_message`) && length(`error_message`) == 1)) {
          stop(paste("Error! Invalid data for `error_message`. Must be a string:", `error_message`))
        }
        self$`error_message` <- `error_message`
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
    #' @return ReputationReportSummary as a base R list.
    #' @examples
    #' # convert array of ReputationReportSummary (x) to a data frame
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
    #' Convert ReputationReportSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReputationReportSummaryObject <- list()
      if (!is.null(self$`id`)) {
        ReputationReportSummaryObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`status`)) {
        ReputationReportSummaryObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`created_at`)) {
        ReputationReportSummaryObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`processed_at`)) {
        ReputationReportSummaryObject[["processed_at"]] <-
          self$`processed_at`
      }
      if (!is.null(self$`available_models`)) {
        ReputationReportSummaryObject[["available_models"]] <-
          self$`available_models`
      }
      if (!is.null(self$`missing_models`)) {
        ReputationReportSummaryObject[["missing_models"]] <-
          self$`missing_models`
      }
      if (!is.null(self$`error_message`)) {
        ReputationReportSummaryObject[["error_message"]] <-
          self$`error_message`
      }
      return(ReputationReportSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ReputationReportSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReputationReportSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("pending", "processing", "completed", "failed"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"pending\", \"processing\", \"completed\", \"failed\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`processed_at`)) {
        self$`processed_at` <- this_object$`processed_at`
      }
      if (!is.null(this_object$`available_models`)) {
        self$`available_models` <- ApiClient$new()$deserializeObj(this_object$`available_models`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`missing_models`)) {
        self$`missing_models` <- ApiClient$new()$deserializeObj(this_object$`missing_models`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`error_message`)) {
        self$`error_message` <- this_object$`error_message`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ReputationReportSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReputationReportSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReputationReportSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("pending", "processing", "completed", "failed"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"pending\", \"processing\", \"completed\", \"failed\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`created_at` <- this_object$`created_at`
      self$`processed_at` <- this_object$`processed_at`
      self$`available_models` <- ApiClient$new()$deserializeObj(this_object$`available_models`, "array[character]", loadNamespace("llmpulse"))
      self$`missing_models` <- ApiClient$new()$deserializeObj(this_object$`missing_models`, "array[character]", loadNamespace("llmpulse"))
      self$`error_message` <- this_object$`error_message`
      self
    },

    #' @description
    #' Validate JSON input with respect to ReputationReportSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReputationReportSummary: the required field `id` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReputationReportSummary: the required field `status` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReputationReportSummary: the required field `created_at` is missing."))
      }
      # check the required field `available_models`
      if (!is.null(input_json$`available_models`)) {
        stopifnot(is.vector(input_json$`available_models`), length(input_json$`available_models`) != 0)
        tmp <- sapply(input_json$`available_models`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReputationReportSummary: the required field `available_models` is missing."))
      }
      # check the required field `missing_models`
      if (!is.null(input_json$`missing_models`)) {
        stopifnot(is.vector(input_json$`missing_models`), length(input_json$`missing_models`) != 0)
        tmp <- sapply(input_json$`missing_models`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReputationReportSummary: the required field `missing_models` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReputationReportSummary
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

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `available_models` is null
      if (is.null(self$`available_models`)) {
        return(FALSE)
      }

      # check if the required `missing_models` is null
      if (is.null(self$`missing_models`)) {
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

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `available_models` is null
      if (is.null(self$`available_models`)) {
        invalid_fields["available_models"] <- "Non-nullable required field `available_models` cannot be null."
      }

      # check if the required `missing_models` is null
      if (is.null(self$`missing_models`)) {
        invalid_fields["missing_models"] <- "Non-nullable required field `missing_models` cannot be null."
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
# ReputationReportSummary$unlock()
#
## Below is an example to define the print function
# ReputationReportSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReputationReportSummary$lock()

