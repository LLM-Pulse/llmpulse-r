#' Create a new WebAnalyticsQueryResponse
#'
#' @description
#' WebAnalyticsQueryResponse Class
#'
#' @docType class
#' @title WebAnalyticsQueryResponse
#' @description WebAnalyticsQueryResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field provider  character [optional]
#' @field property  character [optional]
#' @field columns  list(\link{WebAnalyticsQueryResponseColumnsInner}) [optional]
#' @field rows One array per row, values in column order: strings, numbers or null. list(list(object)) [optional]
#' @field row_count Rows in this response (at most 5,000). integer [optional]
#' @field total_rows Rows the provider has for the query, when it reports it. integer [optional]
#' @field truncated True when the provider has more rows than returned; page with its own offset or page field. character [optional]
#' @field totals Metric totals by metric name, when the query asked for them. named list(object) [optional]
#' @field notes Provider caveats: sampling, thresholds, more rows available. list(character) [optional]
#' @field meta Provider metadata such as GA4 time zone, currency and remaining property quota. named list(object) [optional]
#' @field fetched_at When the provider answered. character [optional]
#' @field cached True when the answer came from the 10-minute cache instead of the provider. character [optional]
#' @field query The request as sent to the provider, with the connected property forced and limits applied. named list(object) [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WebAnalyticsQueryResponse <- R6::R6Class(
  "WebAnalyticsQueryResponse",
  public = list(
    `project_id` = NULL,
    `provider` = NULL,
    `property` = NULL,
    `columns` = NULL,
    `rows` = NULL,
    `row_count` = NULL,
    `total_rows` = NULL,
    `truncated` = NULL,
    `totals` = NULL,
    `notes` = NULL,
    `meta` = NULL,
    `fetched_at` = NULL,
    `cached` = NULL,
    `query` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new WebAnalyticsQueryResponse class.
    #'
    #' @param project_id project_id
    #' @param provider provider
    #' @param property property
    #' @param columns columns
    #' @param rows One array per row, values in column order: strings, numbers or null.
    #' @param row_count Rows in this response (at most 5,000).
    #' @param total_rows Rows the provider has for the query, when it reports it.
    #' @param truncated True when the provider has more rows than returned; page with its own offset or page field.
    #' @param totals Metric totals by metric name, when the query asked for them.
    #' @param notes Provider caveats: sampling, thresholds, more rows available.
    #' @param meta Provider metadata such as GA4 time zone, currency and remaining property quota.
    #' @param fetched_at When the provider answered.
    #' @param cached True when the answer came from the 10-minute cache instead of the provider.
    #' @param query The request as sent to the provider, with the connected property forced and limits applied.
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `provider` = NULL, `property` = NULL, `columns` = NULL, `rows` = NULL, `row_count` = NULL, `total_rows` = NULL, `truncated` = NULL, `totals` = NULL, `notes` = NULL, `meta` = NULL, `fetched_at` = NULL, `cached` = NULL, `query` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`provider`)) {
        if (!(`provider` %in% c("google_analytics", "adobe_analytics", "matomo", "posthog", "plausible", "piano"))) {
          stop(paste("Error! \"", `provider`, "\" cannot be assigned to `provider`. Must be \"google_analytics\", \"adobe_analytics\", \"matomo\", \"posthog\", \"plausible\", \"piano\".", sep = ""))
        }
        if (!(is.character(`provider`) && length(`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", `provider`))
        }
        self$`provider` <- `provider`
      }
      if (!is.null(`property`)) {
        if (!(is.character(`property`) && length(`property`) == 1)) {
          stop(paste("Error! Invalid data for `property`. Must be a string:", `property`))
        }
        self$`property` <- `property`
      }
      if (!is.null(`columns`)) {
        stopifnot(is.vector(`columns`), length(`columns`) != 0)
        sapply(`columns`, function(x) stopifnot(R6::is.R6(x)))
        self$`columns` <- `columns`
      }
      if (!is.null(`rows`)) {
        stopifnot(is.vector(`rows`), length(`rows`) != 0)
        sapply(`rows`, function(x) stopifnot(R6::is.R6(x)))
        self$`rows` <- `rows`
      }
      if (!is.null(`row_count`)) {
        if (!(is.numeric(`row_count`) && length(`row_count`) == 1)) {
          stop(paste("Error! Invalid data for `row_count`. Must be an integer:", `row_count`))
        }
        self$`row_count` <- `row_count`
      }
      if (!is.null(`total_rows`)) {
        if (!(is.numeric(`total_rows`) && length(`total_rows`) == 1)) {
          stop(paste("Error! Invalid data for `total_rows`. Must be an integer:", `total_rows`))
        }
        self$`total_rows` <- `total_rows`
      }
      if (!is.null(`truncated`)) {
        if (!(is.logical(`truncated`) && length(`truncated`) == 1)) {
          stop(paste("Error! Invalid data for `truncated`. Must be a boolean:", `truncated`))
        }
        self$`truncated` <- `truncated`
      }
      if (!is.null(`totals`)) {
        stopifnot(is.vector(`totals`), length(`totals`) != 0)
        sapply(`totals`, function(x) stopifnot(is.character(x)))
        self$`totals` <- `totals`
      }
      if (!is.null(`notes`)) {
        stopifnot(is.vector(`notes`), length(`notes`) != 0)
        sapply(`notes`, function(x) stopifnot(is.character(x)))
        self$`notes` <- `notes`
      }
      if (!is.null(`meta`)) {
        stopifnot(is.vector(`meta`), length(`meta`) != 0)
        sapply(`meta`, function(x) stopifnot(is.character(x)))
        self$`meta` <- `meta`
      }
      if (!is.null(`fetched_at`)) {
        if (!is.character(`fetched_at`)) {
          stop(paste("Error! Invalid data for `fetched_at`. Must be a string:", `fetched_at`))
        }
        self$`fetched_at` <- `fetched_at`
      }
      if (!is.null(`cached`)) {
        if (!(is.logical(`cached`) && length(`cached`) == 1)) {
          stop(paste("Error! Invalid data for `cached`. Must be a boolean:", `cached`))
        }
        self$`cached` <- `cached`
      }
      if (!is.null(`query`)) {
        stopifnot(is.vector(`query`), length(`query`) != 0)
        sapply(`query`, function(x) stopifnot(is.character(x)))
        self$`query` <- `query`
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
    #' @return WebAnalyticsQueryResponse as a base R list.
    #' @examples
    #' # convert array of WebAnalyticsQueryResponse (x) to a data frame
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
    #' Convert WebAnalyticsQueryResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WebAnalyticsQueryResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        WebAnalyticsQueryResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`provider`)) {
        WebAnalyticsQueryResponseObject[["provider"]] <-
          self$`provider`
      }
      if (!is.null(self$`property`)) {
        WebAnalyticsQueryResponseObject[["property"]] <-
          self$`property`
      }
      if (!is.null(self$`columns`)) {
        WebAnalyticsQueryResponseObject[["columns"]] <-
          self$extractSimpleType(self$`columns`)
      }
      if (!is.null(self$`rows`)) {
        WebAnalyticsQueryResponseObject[["rows"]] <-
          self$extractSimpleType(self$`rows`)
      }
      if (!is.null(self$`row_count`)) {
        WebAnalyticsQueryResponseObject[["row_count"]] <-
          self$`row_count`
      }
      if (!is.null(self$`total_rows`)) {
        WebAnalyticsQueryResponseObject[["total_rows"]] <-
          self$`total_rows`
      }
      if (!is.null(self$`truncated`)) {
        WebAnalyticsQueryResponseObject[["truncated"]] <-
          self$`truncated`
      }
      if (!is.null(self$`totals`)) {
        WebAnalyticsQueryResponseObject[["totals"]] <-
          self$`totals`
      }
      if (!is.null(self$`notes`)) {
        WebAnalyticsQueryResponseObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`meta`)) {
        WebAnalyticsQueryResponseObject[["meta"]] <-
          self$`meta`
      }
      if (!is.null(self$`fetched_at`)) {
        WebAnalyticsQueryResponseObject[["fetched_at"]] <-
          self$`fetched_at`
      }
      if (!is.null(self$`cached`)) {
        WebAnalyticsQueryResponseObject[["cached"]] <-
          self$`cached`
      }
      if (!is.null(self$`query`)) {
        WebAnalyticsQueryResponseObject[["query"]] <-
          self$`query`
      }
      if (!is.null(self$`request_id`)) {
        WebAnalyticsQueryResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(WebAnalyticsQueryResponseObject)
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
    #' Deserialize JSON string into an instance of WebAnalyticsQueryResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebAnalyticsQueryResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`provider`)) {
        if (!is.null(this_object$`provider`) && !(this_object$`provider` %in% c("google_analytics", "adobe_analytics", "matomo", "posthog", "plausible", "piano"))) {
          stop(paste("Error! \"", this_object$`provider`, "\" cannot be assigned to `provider`. Must be \"google_analytics\", \"adobe_analytics\", \"matomo\", \"posthog\", \"plausible\", \"piano\".", sep = ""))
        }
        self$`provider` <- this_object$`provider`
      }
      if (!is.null(this_object$`property`)) {
        self$`property` <- this_object$`property`
      }
      if (!is.null(this_object$`columns`)) {
        self$`columns` <- ApiClient$new()$deserializeObj(this_object$`columns`, "array[WebAnalyticsQueryResponseColumnsInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`rows`)) {
        self$`rows` <- ApiClient$new()$deserializeObj(this_object$`rows`, "array[array[object]]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`row_count`)) {
        self$`row_count` <- this_object$`row_count`
      }
      if (!is.null(this_object$`total_rows`)) {
        self$`total_rows` <- this_object$`total_rows`
      }
      if (!is.null(this_object$`truncated`)) {
        self$`truncated` <- this_object$`truncated`
      }
      if (!is.null(this_object$`totals`)) {
        self$`totals` <- ApiClient$new()$deserializeObj(this_object$`totals`, "map(object)", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`meta`)) {
        self$`meta` <- ApiClient$new()$deserializeObj(this_object$`meta`, "map(object)", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`fetched_at`)) {
        self$`fetched_at` <- this_object$`fetched_at`
      }
      if (!is.null(this_object$`cached`)) {
        self$`cached` <- this_object$`cached`
      }
      if (!is.null(this_object$`query`)) {
        self$`query` <- ApiClient$new()$deserializeObj(this_object$`query`, "map(object)", loadNamespace("llmpulse"))
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
    #' @return WebAnalyticsQueryResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WebAnalyticsQueryResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebAnalyticsQueryResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`provider`) && !(this_object$`provider` %in% c("google_analytics", "adobe_analytics", "matomo", "posthog", "plausible", "piano"))) {
        stop(paste("Error! \"", this_object$`provider`, "\" cannot be assigned to `provider`. Must be \"google_analytics\", \"adobe_analytics\", \"matomo\", \"posthog\", \"plausible\", \"piano\".", sep = ""))
      }
      self$`provider` <- this_object$`provider`
      self$`property` <- this_object$`property`
      self$`columns` <- ApiClient$new()$deserializeObj(this_object$`columns`, "array[WebAnalyticsQueryResponseColumnsInner]", loadNamespace("llmpulse"))
      self$`rows` <- ApiClient$new()$deserializeObj(this_object$`rows`, "array[array[object]]", loadNamespace("llmpulse"))
      self$`row_count` <- this_object$`row_count`
      self$`total_rows` <- this_object$`total_rows`
      self$`truncated` <- this_object$`truncated`
      self$`totals` <- ApiClient$new()$deserializeObj(this_object$`totals`, "map(object)", loadNamespace("llmpulse"))
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[character]", loadNamespace("llmpulse"))
      self$`meta` <- ApiClient$new()$deserializeObj(this_object$`meta`, "map(object)", loadNamespace("llmpulse"))
      self$`fetched_at` <- this_object$`fetched_at`
      self$`cached` <- this_object$`cached`
      self$`query` <- ApiClient$new()$deserializeObj(this_object$`query`, "map(object)", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to WebAnalyticsQueryResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WebAnalyticsQueryResponse
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
# WebAnalyticsQueryResponse$unlock()
#
## Below is an example to define the print function
# WebAnalyticsQueryResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WebAnalyticsQueryResponse$lock()

