#' Create a new RecommendationLaunchResponseRecommendation
#'
#' @description
#' RecommendationLaunchResponseRecommendation Class
#'
#' @docType class
#' @title RecommendationLaunchResponseRecommendation
#' @description RecommendationLaunchResponseRecommendation Class
#' @format An \code{R6Class} generator object
#' @field id Poll GET /recommendations/{id} with it integer
#' @field recommendation_type  character
#' @field status Always pending character
#' @field created_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RecommendationLaunchResponseRecommendation <- R6::R6Class(
  "RecommendationLaunchResponseRecommendation",
  public = list(
    `id` = NULL,
    `recommendation_type` = NULL,
    `status` = NULL,
    `created_at` = NULL,

    #' @description
    #' Initialize a new RecommendationLaunchResponseRecommendation class.
    #'
    #' @param id Poll GET /recommendations/{id} with it
    #' @param recommendation_type recommendation_type
    #' @param status Always pending
    #' @param created_at created_at
    #' @param ... Other optional arguments.
    initialize = function(`id`, `recommendation_type`, `status`, `created_at`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`recommendation_type`)) {
        if (!(`recommendation_type` %in% c("ai_visibility", "social_community", "brand_building", "sentiment_reputation"))) {
          stop(paste("Error! \"", `recommendation_type`, "\" cannot be assigned to `recommendation_type`. Must be \"ai_visibility\", \"social_community\", \"brand_building\", \"sentiment_reputation\".", sep = ""))
        }
        if (!(is.character(`recommendation_type`) && length(`recommendation_type`) == 1)) {
          stop(paste("Error! Invalid data for `recommendation_type`. Must be a string:", `recommendation_type`))
        }
        self$`recommendation_type` <- `recommendation_type`
      }
      if (!missing(`status`)) {
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
    #' @return RecommendationLaunchResponseRecommendation as a base R list.
    #' @examples
    #' # convert array of RecommendationLaunchResponseRecommendation (x) to a data frame
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
    #' Convert RecommendationLaunchResponseRecommendation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RecommendationLaunchResponseRecommendationObject <- list()
      if (!is.null(self$`id`)) {
        RecommendationLaunchResponseRecommendationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`recommendation_type`)) {
        RecommendationLaunchResponseRecommendationObject[["recommendation_type"]] <-
          self$`recommendation_type`
      }
      if (!is.null(self$`status`)) {
        RecommendationLaunchResponseRecommendationObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`created_at`)) {
        RecommendationLaunchResponseRecommendationObject[["created_at"]] <-
          self$`created_at`
      }
      return(RecommendationLaunchResponseRecommendationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RecommendationLaunchResponseRecommendation
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecommendationLaunchResponseRecommendation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`recommendation_type`)) {
        if (!is.null(this_object$`recommendation_type`) && !(this_object$`recommendation_type` %in% c("ai_visibility", "social_community", "brand_building", "sentiment_reputation"))) {
          stop(paste("Error! \"", this_object$`recommendation_type`, "\" cannot be assigned to `recommendation_type`. Must be \"ai_visibility\", \"social_community\", \"brand_building\", \"sentiment_reputation\".", sep = ""))
        }
        self$`recommendation_type` <- this_object$`recommendation_type`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
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
    #' @return RecommendationLaunchResponseRecommendation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RecommendationLaunchResponseRecommendation
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecommendationLaunchResponseRecommendation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      if (!is.null(this_object$`recommendation_type`) && !(this_object$`recommendation_type` %in% c("ai_visibility", "social_community", "brand_building", "sentiment_reputation"))) {
        stop(paste("Error! \"", this_object$`recommendation_type`, "\" cannot be assigned to `recommendation_type`. Must be \"ai_visibility\", \"social_community\", \"brand_building\", \"sentiment_reputation\".", sep = ""))
      }
      self$`recommendation_type` <- this_object$`recommendation_type`
      self$`status` <- this_object$`status`
      self$`created_at` <- this_object$`created_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to RecommendationLaunchResponseRecommendation and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for RecommendationLaunchResponseRecommendation: the required field `id` is missing."))
      }
      # check the required field `recommendation_type`
      if (!is.null(input_json$`recommendation_type`)) {
        if (!(is.character(input_json$`recommendation_type`) && length(input_json$`recommendation_type`) == 1)) {
          stop(paste("Error! Invalid data for `recommendation_type`. Must be a string:", input_json$`recommendation_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationLaunchResponseRecommendation: the required field `recommendation_type` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationLaunchResponseRecommendation: the required field `status` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationLaunchResponseRecommendation: the required field `created_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RecommendationLaunchResponseRecommendation
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

      # check if the required `recommendation_type` is null
      if (is.null(self$`recommendation_type`)) {
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

      # check if the required `recommendation_type` is null
      if (is.null(self$`recommendation_type`)) {
        invalid_fields["recommendation_type"] <- "Non-nullable required field `recommendation_type` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# RecommendationLaunchResponseRecommendation$unlock()
#
## Below is an example to define the print function
# RecommendationLaunchResponseRecommendation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RecommendationLaunchResponseRecommendation$lock()

