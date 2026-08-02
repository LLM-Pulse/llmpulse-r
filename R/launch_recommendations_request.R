#' Create a new LaunchRecommendationsRequest
#'
#' @description
#' LaunchRecommendationsRequest Class
#'
#' @docType class
#' @title LaunchRecommendationsRequest
#' @description LaunchRecommendationsRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field recommendation_type  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LaunchRecommendationsRequest <- R6::R6Class(
  "LaunchRecommendationsRequest",
  public = list(
    `project_id` = NULL,
    `recommendation_type` = NULL,

    #' @description
    #' Initialize a new LaunchRecommendationsRequest class.
    #'
    #' @param project_id project_id
    #' @param recommendation_type recommendation_type. Default to "ai_visibility".
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `recommendation_type` = "ai_visibility", ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`recommendation_type`)) {
        if (!(`recommendation_type` %in% c("ai_visibility", "social_community", "brand_building", "sentiment_reputation"))) {
          stop(paste("Error! \"", `recommendation_type`, "\" cannot be assigned to `recommendation_type`. Must be \"ai_visibility\", \"social_community\", \"brand_building\", \"sentiment_reputation\".", sep = ""))
        }
        if (!(is.character(`recommendation_type`) && length(`recommendation_type`) == 1)) {
          stop(paste("Error! Invalid data for `recommendation_type`. Must be a string:", `recommendation_type`))
        }
        self$`recommendation_type` <- `recommendation_type`
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
    #' @return LaunchRecommendationsRequest as a base R list.
    #' @examples
    #' # convert array of LaunchRecommendationsRequest (x) to a data frame
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
    #' Convert LaunchRecommendationsRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LaunchRecommendationsRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        LaunchRecommendationsRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`recommendation_type`)) {
        LaunchRecommendationsRequestObject[["recommendation_type"]] <-
          self$`recommendation_type`
      }
      return(LaunchRecommendationsRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LaunchRecommendationsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of LaunchRecommendationsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`recommendation_type`)) {
        if (!is.null(this_object$`recommendation_type`) && !(this_object$`recommendation_type` %in% c("ai_visibility", "social_community", "brand_building", "sentiment_reputation"))) {
          stop(paste("Error! \"", this_object$`recommendation_type`, "\" cannot be assigned to `recommendation_type`. Must be \"ai_visibility\", \"social_community\", \"brand_building\", \"sentiment_reputation\".", sep = ""))
        }
        self$`recommendation_type` <- this_object$`recommendation_type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LaunchRecommendationsRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LaunchRecommendationsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of LaunchRecommendationsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`recommendation_type`) && !(this_object$`recommendation_type` %in% c("ai_visibility", "social_community", "brand_building", "sentiment_reputation"))) {
        stop(paste("Error! \"", this_object$`recommendation_type`, "\" cannot be assigned to `recommendation_type`. Must be \"ai_visibility\", \"social_community\", \"brand_building\", \"sentiment_reputation\".", sep = ""))
      }
      self$`recommendation_type` <- this_object$`recommendation_type`
      self
    },

    #' @description
    #' Validate JSON input with respect to LaunchRecommendationsRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for LaunchRecommendationsRequest: the required field `project_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LaunchRecommendationsRequest
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
# LaunchRecommendationsRequest$unlock()
#
## Below is an example to define the print function
# LaunchRecommendationsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LaunchRecommendationsRequest$lock()

