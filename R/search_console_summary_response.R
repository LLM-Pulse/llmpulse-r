#' Create a new SearchConsoleSummaryResponse
#'
#' @description
#' SearchConsoleSummaryResponse Class
#'
#' @docType class
#' @title SearchConsoleSummaryResponse
#' @description SearchConsoleSummaryResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field property  \link{SearchConsoleProperty} [optional]
#' @field from  character [optional]
#' @field to  character [optional]
#' @field data_through Latest date Google has published for the property (it lags 2-3 days). Later days are missing, not zero. character [optional]
#' @field totals  \link{SearchConsoleMetrics} [optional]
#' @field dimension Present when a breakdown was requested character [optional]
#' @field breakdown Present when a breakdown was requested, sorted by impressions descending list(\link{SearchConsoleSummaryResponseBreakdownInner}) [optional]
#' @field breakdown_truncated Present (true) when limit or Google's 25,000-row maximum left breakdown rows out, so they add up to less than totals character [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchConsoleSummaryResponse <- R6::R6Class(
  "SearchConsoleSummaryResponse",
  public = list(
    `project_id` = NULL,
    `property` = NULL,
    `from` = NULL,
    `to` = NULL,
    `data_through` = NULL,
    `totals` = NULL,
    `dimension` = NULL,
    `breakdown` = NULL,
    `breakdown_truncated` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new SearchConsoleSummaryResponse class.
    #'
    #' @param project_id project_id
    #' @param property property
    #' @param from from
    #' @param to to
    #' @param data_through Latest date Google has published for the property (it lags 2-3 days). Later days are missing, not zero.
    #' @param totals totals
    #' @param dimension Present when a breakdown was requested
    #' @param breakdown Present when a breakdown was requested, sorted by impressions descending
    #' @param breakdown_truncated Present (true) when limit or Google's 25,000-row maximum left breakdown rows out, so they add up to less than totals
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `property` = NULL, `from` = NULL, `to` = NULL, `data_through` = NULL, `totals` = NULL, `dimension` = NULL, `breakdown` = NULL, `breakdown_truncated` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`property`)) {
        stopifnot(R6::is.R6(`property`))
        self$`property` <- `property`
      }
      if (!is.null(`from`)) {
        if (!is.character(`from`)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!is.null(`to`)) {
        if (!is.character(`to`)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!is.null(`data_through`)) {
        if (!is.character(`data_through`)) {
          stop(paste("Error! Invalid data for `data_through`. Must be a string:", `data_through`))
        }
        self$`data_through` <- `data_through`
      }
      if (!is.null(`totals`)) {
        stopifnot(R6::is.R6(`totals`))
        self$`totals` <- `totals`
      }
      if (!is.null(`dimension`)) {
        if (!(is.character(`dimension`) && length(`dimension`) == 1)) {
          stop(paste("Error! Invalid data for `dimension`. Must be a string:", `dimension`))
        }
        self$`dimension` <- `dimension`
      }
      if (!is.null(`breakdown`)) {
        stopifnot(is.vector(`breakdown`), length(`breakdown`) != 0)
        sapply(`breakdown`, function(x) stopifnot(R6::is.R6(x)))
        self$`breakdown` <- `breakdown`
      }
      if (!is.null(`breakdown_truncated`)) {
        if (!(is.logical(`breakdown_truncated`) && length(`breakdown_truncated`) == 1)) {
          stop(paste("Error! Invalid data for `breakdown_truncated`. Must be a boolean:", `breakdown_truncated`))
        }
        self$`breakdown_truncated` <- `breakdown_truncated`
      }
      if (!is.null(`request_id`)) {
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
    #' @return SearchConsoleSummaryResponse as a base R list.
    #' @examples
    #' # convert array of SearchConsoleSummaryResponse (x) to a data frame
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
    #' Convert SearchConsoleSummaryResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchConsoleSummaryResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        SearchConsoleSummaryResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`property`)) {
        SearchConsoleSummaryResponseObject[["property"]] <-
          self$extractSimpleType(self$`property`)
      }
      if (!is.null(self$`from`)) {
        SearchConsoleSummaryResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        SearchConsoleSummaryResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`data_through`)) {
        SearchConsoleSummaryResponseObject[["data_through"]] <-
          self$`data_through`
      }
      if (!is.null(self$`totals`)) {
        SearchConsoleSummaryResponseObject[["totals"]] <-
          self$extractSimpleType(self$`totals`)
      }
      if (!is.null(self$`dimension`)) {
        SearchConsoleSummaryResponseObject[["dimension"]] <-
          self$`dimension`
      }
      if (!is.null(self$`breakdown`)) {
        SearchConsoleSummaryResponseObject[["breakdown"]] <-
          self$extractSimpleType(self$`breakdown`)
      }
      if (!is.null(self$`breakdown_truncated`)) {
        SearchConsoleSummaryResponseObject[["breakdown_truncated"]] <-
          self$`breakdown_truncated`
      }
      if (!is.null(self$`request_id`)) {
        SearchConsoleSummaryResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(SearchConsoleSummaryResponseObject)
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
    #' Deserialize JSON string into an instance of SearchConsoleSummaryResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleSummaryResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`property`)) {
        `property_object` <- SearchConsoleProperty$new()
        `property_object`$fromJSON(jsonlite::toJSON(this_object$`property`, auto_unbox = TRUE, digits = NA))
        self$`property` <- `property_object`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`data_through`)) {
        self$`data_through` <- this_object$`data_through`
      }
      if (!is.null(this_object$`totals`)) {
        `totals_object` <- SearchConsoleMetrics$new()
        `totals_object`$fromJSON(jsonlite::toJSON(this_object$`totals`, auto_unbox = TRUE, digits = NA))
        self$`totals` <- `totals_object`
      }
      if (!is.null(this_object$`dimension`)) {
        self$`dimension` <- this_object$`dimension`
      }
      if (!is.null(this_object$`breakdown`)) {
        self$`breakdown` <- ApiClient$new()$deserializeObj(this_object$`breakdown`, "array[SearchConsoleSummaryResponseBreakdownInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`breakdown_truncated`)) {
        self$`breakdown_truncated` <- this_object$`breakdown_truncated`
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
    #' @return SearchConsoleSummaryResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleSummaryResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleSummaryResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`property` <- SearchConsoleProperty$new()$fromJSON(jsonlite::toJSON(this_object$`property`, auto_unbox = TRUE, digits = NA))
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`data_through` <- this_object$`data_through`
      self$`totals` <- SearchConsoleMetrics$new()$fromJSON(jsonlite::toJSON(this_object$`totals`, auto_unbox = TRUE, digits = NA))
      self$`dimension` <- this_object$`dimension`
      self$`breakdown` <- ApiClient$new()$deserializeObj(this_object$`breakdown`, "array[SearchConsoleSummaryResponseBreakdownInner]", loadNamespace("llmpulse"))
      self$`breakdown_truncated` <- this_object$`breakdown_truncated`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchConsoleSummaryResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchConsoleSummaryResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# SearchConsoleSummaryResponse$unlock()
#
## Below is an example to define the print function
# SearchConsoleSummaryResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchConsoleSummaryResponse$lock()

