#' Create a new RecommendationDetailResponseItemCounts
#'
#' @description
#' Items of the run per status, whatever item_status filters
#'
#' @docType class
#' @title RecommendationDetailResponseItemCounts
#' @description RecommendationDetailResponseItemCounts Class
#' @format An \code{R6Class} generator object
#' @field active  integer
#' @field completed  integer
#' @field archived  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RecommendationDetailResponseItemCounts <- R6::R6Class(
  "RecommendationDetailResponseItemCounts",
  public = list(
    `active` = NULL,
    `completed` = NULL,
    `archived` = NULL,

    #' @description
    #' Initialize a new RecommendationDetailResponseItemCounts class.
    #'
    #' @param active active
    #' @param completed completed
    #' @param archived archived
    #' @param ... Other optional arguments.
    initialize = function(`active`, `completed`, `archived`, ...) {
      if (!missing(`active`)) {
        if (!(is.numeric(`active`) && length(`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be an integer:", `active`))
        }
        self$`active` <- `active`
      }
      if (!missing(`completed`)) {
        if (!(is.numeric(`completed`) && length(`completed`) == 1)) {
          stop(paste("Error! Invalid data for `completed`. Must be an integer:", `completed`))
        }
        self$`completed` <- `completed`
      }
      if (!missing(`archived`)) {
        if (!(is.numeric(`archived`) && length(`archived`) == 1)) {
          stop(paste("Error! Invalid data for `archived`. Must be an integer:", `archived`))
        }
        self$`archived` <- `archived`
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
    #' @return RecommendationDetailResponseItemCounts as a base R list.
    #' @examples
    #' # convert array of RecommendationDetailResponseItemCounts (x) to a data frame
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
    #' Convert RecommendationDetailResponseItemCounts to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RecommendationDetailResponseItemCountsObject <- list()
      if (!is.null(self$`active`)) {
        RecommendationDetailResponseItemCountsObject[["active"]] <-
          self$`active`
      }
      if (!is.null(self$`completed`)) {
        RecommendationDetailResponseItemCountsObject[["completed"]] <-
          self$`completed`
      }
      if (!is.null(self$`archived`)) {
        RecommendationDetailResponseItemCountsObject[["archived"]] <-
          self$`archived`
      }
      return(RecommendationDetailResponseItemCountsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RecommendationDetailResponseItemCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecommendationDetailResponseItemCounts
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`active`)) {
        self$`active` <- this_object$`active`
      }
      if (!is.null(this_object$`completed`)) {
        self$`completed` <- this_object$`completed`
      }
      if (!is.null(this_object$`archived`)) {
        self$`archived` <- this_object$`archived`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RecommendationDetailResponseItemCounts in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RecommendationDetailResponseItemCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of RecommendationDetailResponseItemCounts
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`active` <- this_object$`active`
      self$`completed` <- this_object$`completed`
      self$`archived` <- this_object$`archived`
      self
    },

    #' @description
    #' Validate JSON input with respect to RecommendationDetailResponseItemCounts and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `active`
      if (!is.null(input_json$`active`)) {
        if (!(is.numeric(input_json$`active`) && length(input_json$`active`) == 1)) {
          stop(paste("Error! Invalid data for `active`. Must be an integer:", input_json$`active`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponseItemCounts: the required field `active` is missing."))
      }
      # check the required field `completed`
      if (!is.null(input_json$`completed`)) {
        if (!(is.numeric(input_json$`completed`) && length(input_json$`completed`) == 1)) {
          stop(paste("Error! Invalid data for `completed`. Must be an integer:", input_json$`completed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponseItemCounts: the required field `completed` is missing."))
      }
      # check the required field `archived`
      if (!is.null(input_json$`archived`)) {
        if (!(is.numeric(input_json$`archived`) && length(input_json$`archived`) == 1)) {
          stop(paste("Error! Invalid data for `archived`. Must be an integer:", input_json$`archived`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RecommendationDetailResponseItemCounts: the required field `archived` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RecommendationDetailResponseItemCounts
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `active` is null
      if (is.null(self$`active`)) {
        return(FALSE)
      }

      # check if the required `completed` is null
      if (is.null(self$`completed`)) {
        return(FALSE)
      }

      # check if the required `archived` is null
      if (is.null(self$`archived`)) {
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
      # check if the required `active` is null
      if (is.null(self$`active`)) {
        invalid_fields["active"] <- "Non-nullable required field `active` cannot be null."
      }

      # check if the required `completed` is null
      if (is.null(self$`completed`)) {
        invalid_fields["completed"] <- "Non-nullable required field `completed` cannot be null."
      }

      # check if the required `archived` is null
      if (is.null(self$`archived`)) {
        invalid_fields["archived"] <- "Non-nullable required field `archived` cannot be null."
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
# RecommendationDetailResponseItemCounts$unlock()
#
## Below is an example to define the print function
# RecommendationDetailResponseItemCounts$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RecommendationDetailResponseItemCounts$lock()

