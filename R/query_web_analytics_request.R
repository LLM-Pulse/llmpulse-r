#' Create a new QueryWebAnalyticsRequest
#'
#' @description
#' QueryWebAnalyticsRequest Class
#'
#' @docType class
#' @title QueryWebAnalyticsRequest
#' @description QueryWebAnalyticsRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field query The query in the provider's native format (see GET /web_analytics/schema): a JSON object for GA4, Adobe, Matomo, Plausible and Piano; for PostHog, {\"query\": \"<HogQL>\"} or the HogQL string. Deliberately untyped so generated clients accept either shape. object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QueryWebAnalyticsRequest <- R6::R6Class(
  "QueryWebAnalyticsRequest",
  public = list(
    `project_id` = NULL,
    `query` = NULL,

    #' @description
    #' Initialize a new QueryWebAnalyticsRequest class.
    #'
    #' @param project_id project_id
    #' @param query The query in the provider's native format (see GET /web_analytics/schema): a JSON object for GA4, Adobe, Matomo, Plausible and Piano; for PostHog, {\"query\": \"<HogQL>\"} or the HogQL string. Deliberately untyped so generated clients accept either shape.
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `query`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`query`)) {
        self$`query` <- `query`
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
    #' @return QueryWebAnalyticsRequest as a base R list.
    #' @examples
    #' # convert array of QueryWebAnalyticsRequest (x) to a data frame
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
    #' Convert QueryWebAnalyticsRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QueryWebAnalyticsRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        QueryWebAnalyticsRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`query`)) {
        QueryWebAnalyticsRequestObject[["query"]] <-
          self$`query`
      }
      return(QueryWebAnalyticsRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QueryWebAnalyticsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of QueryWebAnalyticsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`query`)) {
        self$`query` <- this_object$`query`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QueryWebAnalyticsRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QueryWebAnalyticsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of QueryWebAnalyticsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`query` <- this_object$`query`
      self
    },

    #' @description
    #' Validate JSON input with respect to QueryWebAnalyticsRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for QueryWebAnalyticsRequest: the required field `project_id` is missing."))
      }
      # check the required field `query`
      if (!is.null(input_json$`query`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QueryWebAnalyticsRequest: the required field `query` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QueryWebAnalyticsRequest
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
# QueryWebAnalyticsRequest$unlock()
#
## Below is an example to define the print function
# QueryWebAnalyticsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QueryWebAnalyticsRequest$lock()

