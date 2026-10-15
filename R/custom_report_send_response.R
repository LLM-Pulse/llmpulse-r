#' Create a new CustomReportSendResponse
#'
#' @description
#' CustomReportSendResponse Class
#'
#' @docType class
#' @title CustomReportSendResponse
#' @description CustomReportSendResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field id  integer
#' @field status  character
#' @field recipients_count  integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomReportSendResponse <- R6::R6Class(
  "CustomReportSendResponse",
  public = list(
    `project_id` = NULL,
    `id` = NULL,
    `status` = NULL,
    `recipients_count` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new CustomReportSendResponse class.
    #'
    #' @param project_id project_id
    #' @param id id
    #' @param status status
    #' @param recipients_count recipients_count
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `id`, `status`, `recipients_count`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c("queued"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"queued\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`recipients_count`)) {
        if (!(is.numeric(`recipients_count`) && length(`recipients_count`) == 1)) {
          stop(paste("Error! Invalid data for `recipients_count`. Must be an integer:", `recipients_count`))
        }
        self$`recipients_count` <- `recipients_count`
      }
      if (!missing(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
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
    #' @return CustomReportSendResponse as a base R list.
    #' @examples
    #' # convert array of CustomReportSendResponse (x) to a data frame
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
    #' Convert CustomReportSendResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomReportSendResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        CustomReportSendResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`id`)) {
        CustomReportSendResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`status`)) {
        CustomReportSendResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`recipients_count`)) {
        CustomReportSendResponseObject[["recipients_count"]] <-
          self$`recipients_count`
      }
      if (!is.null(self$`request_id`)) {
        CustomReportSendResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(CustomReportSendResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomReportSendResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportSendResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("queued"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"queued\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`recipients_count`)) {
        self$`recipients_count` <- this_object$`recipients_count`
      }
      if (!is.null(this_object$`request_id`)) {
        self$`request_id` <- this_object$`request_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CustomReportSendResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomReportSendResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportSendResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`id` <- this_object$`id`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("queued"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"queued\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`recipients_count` <- this_object$`recipients_count`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CustomReportSendResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSendResponse: the required field `project_id` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSendResponse: the required field `id` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSendResponse: the required field `status` is missing."))
      }
      # check the required field `recipients_count`
      if (!is.null(input_json$`recipients_count`)) {
        if (!(is.numeric(input_json$`recipients_count`) && length(input_json$`recipients_count`) == 1)) {
          stop(paste("Error! Invalid data for `recipients_count`. Must be an integer:", input_json$`recipients_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSendResponse: the required field `recipients_count` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportSendResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CustomReportSendResponse
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

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `recipients_count` is null
      if (is.null(self$`recipients_count`)) {
        return(FALSE)
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
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

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `recipients_count` is null
      if (is.null(self$`recipients_count`)) {
        invalid_fields["recipients_count"] <- "Non-nullable required field `recipients_count` cannot be null."
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
        invalid_fields["request_id"] <- "Non-nullable required field `request_id` cannot be null."
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
# CustomReportSendResponse$unlock()
#
## Below is an example to define the print function
# CustomReportSendResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CustomReportSendResponse$lock()

