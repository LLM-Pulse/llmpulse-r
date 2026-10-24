#' Create a new UpdateRecommendationItemRequest
#'
#' @description
#' UpdateRecommendationItemRequest Class
#'
#' @docType class
#' @title UpdateRecommendationItemRequest
#' @description UpdateRecommendationItemRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field status completed, archived, or active to restore the item character
#' @field reason Optional, with status archived only. competitor only on a PR & Citation Building item that targets a domain. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateRecommendationItemRequest <- R6::R6Class(
  "UpdateRecommendationItemRequest",
  public = list(
    `project_id` = NULL,
    `status` = NULL,
    `reason` = NULL,

    #' @description
    #' Initialize a new UpdateRecommendationItemRequest class.
    #'
    #' @param project_id project_id
    #' @param status completed, archived, or active to restore the item
    #' @param reason Optional, with status archived only. competitor only on a PR & Citation Building item that targets a domain.
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `status`, `reason` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c("active", "completed", "archived"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"active\", \"completed\", \"archived\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`reason`)) {
        if (!(`reason` %in% c("not_relevant", "too_complex", "competitor"))) {
          stop(paste("Error! \"", `reason`, "\" cannot be assigned to `reason`. Must be \"not_relevant\", \"too_complex\", \"competitor\".", sep = ""))
        }
        if (!(is.character(`reason`) && length(`reason`) == 1)) {
          stop(paste("Error! Invalid data for `reason`. Must be a string:", `reason`))
        }
        self$`reason` <- `reason`
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
    #' @return UpdateRecommendationItemRequest as a base R list.
    #' @examples
    #' # convert array of UpdateRecommendationItemRequest (x) to a data frame
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
    #' Convert UpdateRecommendationItemRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpdateRecommendationItemRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        UpdateRecommendationItemRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`status`)) {
        UpdateRecommendationItemRequestObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`reason`)) {
        UpdateRecommendationItemRequestObject[["reason"]] <-
          self$`reason`
      }
      return(UpdateRecommendationItemRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateRecommendationItemRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateRecommendationItemRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("active", "completed", "archived"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"active\", \"completed\", \"archived\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`reason`)) {
        if (!is.null(this_object$`reason`) && !(this_object$`reason` %in% c("not_relevant", "too_complex", "competitor"))) {
          stop(paste("Error! \"", this_object$`reason`, "\" cannot be assigned to `reason`. Must be \"not_relevant\", \"too_complex\", \"competitor\".", sep = ""))
        }
        self$`reason` <- this_object$`reason`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UpdateRecommendationItemRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateRecommendationItemRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateRecommendationItemRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("active", "completed", "archived"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"active\", \"completed\", \"archived\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      if (!is.null(this_object$`reason`) && !(this_object$`reason` %in% c("not_relevant", "too_complex", "competitor"))) {
        stop(paste("Error! \"", this_object$`reason`, "\" cannot be assigned to `reason`. Must be \"not_relevant\", \"too_complex\", \"competitor\".", sep = ""))
      }
      self$`reason` <- this_object$`reason`
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdateRecommendationItemRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UpdateRecommendationItemRequest: the required field `project_id` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UpdateRecommendationItemRequest: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateRecommendationItemRequest
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

      # check if the required `status` is null
      if (is.null(self$`status`)) {
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

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# UpdateRecommendationItemRequest$unlock()
#
## Below is an example to define the print function
# UpdateRecommendationItemRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateRecommendationItemRequest$lock()

