#' Create a new WebAnalyticsSchemaResponse
#'
#' @description
#' WebAnalyticsSchemaResponse Class
#'
#' @docType class
#' @title WebAnalyticsSchemaResponse
#' @description WebAnalyticsSchemaResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field provider The connected web analytics provider. character [optional]
#' @field property The property, site, report suite (rsid:...), data view (dataview:...) or project every query runs on. character [optional]
#' @field query_language The native query format the provider accepts. character [optional]
#' @field docs_url The provider's reference for that format. character [optional]
#' @field allowed_fields Top-level query fields that are forwarded. list(character) [optional]
#' @field rules What the bridge enforces and the provider's main constraints. list(character) [optional]
#' @field example A worked query to adapt. named list(object) [optional]
#' @field fields The provider's live field list where it offers one: GA4 dimensions and metrics with custom definitions, Adobe ids, Matomo report methods, PostHog event names, the Plausible catalog. Null when the provider did not return it. named list(object) [optional]
#' @field fields_unavailable Present when the field list could not be read; the format and example still apply. character [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WebAnalyticsSchemaResponse <- R6::R6Class(
  "WebAnalyticsSchemaResponse",
  public = list(
    `project_id` = NULL,
    `provider` = NULL,
    `property` = NULL,
    `query_language` = NULL,
    `docs_url` = NULL,
    `allowed_fields` = NULL,
    `rules` = NULL,
    `example` = NULL,
    `fields` = NULL,
    `fields_unavailable` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new WebAnalyticsSchemaResponse class.
    #'
    #' @param project_id project_id
    #' @param provider The connected web analytics provider.
    #' @param property The property, site, report suite (rsid:...), data view (dataview:...) or project every query runs on.
    #' @param query_language The native query format the provider accepts.
    #' @param docs_url The provider's reference for that format.
    #' @param allowed_fields Top-level query fields that are forwarded.
    #' @param rules What the bridge enforces and the provider's main constraints.
    #' @param example A worked query to adapt.
    #' @param fields The provider's live field list where it offers one: GA4 dimensions and metrics with custom definitions, Adobe ids, Matomo report methods, PostHog event names, the Plausible catalog. Null when the provider did not return it.
    #' @param fields_unavailable Present when the field list could not be read; the format and example still apply.
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `provider` = NULL, `property` = NULL, `query_language` = NULL, `docs_url` = NULL, `allowed_fields` = NULL, `rules` = NULL, `example` = NULL, `fields` = NULL, `fields_unavailable` = NULL, `request_id` = NULL, ...) {
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
      if (!is.null(`query_language`)) {
        if (!(is.character(`query_language`) && length(`query_language`) == 1)) {
          stop(paste("Error! Invalid data for `query_language`. Must be a string:", `query_language`))
        }
        self$`query_language` <- `query_language`
      }
      if (!is.null(`docs_url`)) {
        if (!(is.character(`docs_url`) && length(`docs_url`) == 1)) {
          stop(paste("Error! Invalid data for `docs_url`. Must be a string:", `docs_url`))
        }
        self$`docs_url` <- `docs_url`
      }
      if (!is.null(`allowed_fields`)) {
        stopifnot(is.vector(`allowed_fields`), length(`allowed_fields`) != 0)
        sapply(`allowed_fields`, function(x) stopifnot(is.character(x)))
        self$`allowed_fields` <- `allowed_fields`
      }
      if (!is.null(`rules`)) {
        stopifnot(is.vector(`rules`), length(`rules`) != 0)
        sapply(`rules`, function(x) stopifnot(is.character(x)))
        self$`rules` <- `rules`
      }
      if (!is.null(`example`)) {
        stopifnot(is.vector(`example`), length(`example`) != 0)
        sapply(`example`, function(x) stopifnot(is.character(x)))
        self$`example` <- `example`
      }
      if (!is.null(`fields`)) {
        stopifnot(is.vector(`fields`), length(`fields`) != 0)
        sapply(`fields`, function(x) stopifnot(is.character(x)))
        self$`fields` <- `fields`
      }
      if (!is.null(`fields_unavailable`)) {
        if (!(is.character(`fields_unavailable`) && length(`fields_unavailable`) == 1)) {
          stop(paste("Error! Invalid data for `fields_unavailable`. Must be a string:", `fields_unavailable`))
        }
        self$`fields_unavailable` <- `fields_unavailable`
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
    #' @return WebAnalyticsSchemaResponse as a base R list.
    #' @examples
    #' # convert array of WebAnalyticsSchemaResponse (x) to a data frame
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
    #' Convert WebAnalyticsSchemaResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WebAnalyticsSchemaResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        WebAnalyticsSchemaResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`provider`)) {
        WebAnalyticsSchemaResponseObject[["provider"]] <-
          self$`provider`
      }
      if (!is.null(self$`property`)) {
        WebAnalyticsSchemaResponseObject[["property"]] <-
          self$`property`
      }
      if (!is.null(self$`query_language`)) {
        WebAnalyticsSchemaResponseObject[["query_language"]] <-
          self$`query_language`
      }
      if (!is.null(self$`docs_url`)) {
        WebAnalyticsSchemaResponseObject[["docs_url"]] <-
          self$`docs_url`
      }
      if (!is.null(self$`allowed_fields`)) {
        WebAnalyticsSchemaResponseObject[["allowed_fields"]] <-
          self$`allowed_fields`
      }
      if (!is.null(self$`rules`)) {
        WebAnalyticsSchemaResponseObject[["rules"]] <-
          self$`rules`
      }
      if (!is.null(self$`example`)) {
        WebAnalyticsSchemaResponseObject[["example"]] <-
          self$`example`
      }
      if (!is.null(self$`fields`)) {
        WebAnalyticsSchemaResponseObject[["fields"]] <-
          self$`fields`
      }
      if (!is.null(self$`fields_unavailable`)) {
        WebAnalyticsSchemaResponseObject[["fields_unavailable"]] <-
          self$`fields_unavailable`
      }
      if (!is.null(self$`request_id`)) {
        WebAnalyticsSchemaResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(WebAnalyticsSchemaResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of WebAnalyticsSchemaResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebAnalyticsSchemaResponse
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
      if (!is.null(this_object$`query_language`)) {
        self$`query_language` <- this_object$`query_language`
      }
      if (!is.null(this_object$`docs_url`)) {
        self$`docs_url` <- this_object$`docs_url`
      }
      if (!is.null(this_object$`allowed_fields`)) {
        self$`allowed_fields` <- ApiClient$new()$deserializeObj(this_object$`allowed_fields`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`rules`)) {
        self$`rules` <- ApiClient$new()$deserializeObj(this_object$`rules`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`example`)) {
        self$`example` <- ApiClient$new()$deserializeObj(this_object$`example`, "map(object)", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`fields`)) {
        self$`fields` <- ApiClient$new()$deserializeObj(this_object$`fields`, "map(object)", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`fields_unavailable`)) {
        self$`fields_unavailable` <- this_object$`fields_unavailable`
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
    #' @return WebAnalyticsSchemaResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WebAnalyticsSchemaResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of WebAnalyticsSchemaResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`provider`) && !(this_object$`provider` %in% c("google_analytics", "adobe_analytics", "matomo", "posthog", "plausible", "piano"))) {
        stop(paste("Error! \"", this_object$`provider`, "\" cannot be assigned to `provider`. Must be \"google_analytics\", \"adobe_analytics\", \"matomo\", \"posthog\", \"plausible\", \"piano\".", sep = ""))
      }
      self$`provider` <- this_object$`provider`
      self$`property` <- this_object$`property`
      self$`query_language` <- this_object$`query_language`
      self$`docs_url` <- this_object$`docs_url`
      self$`allowed_fields` <- ApiClient$new()$deserializeObj(this_object$`allowed_fields`, "array[character]", loadNamespace("llmpulse"))
      self$`rules` <- ApiClient$new()$deserializeObj(this_object$`rules`, "array[character]", loadNamespace("llmpulse"))
      self$`example` <- ApiClient$new()$deserializeObj(this_object$`example`, "map(object)", loadNamespace("llmpulse"))
      self$`fields` <- ApiClient$new()$deserializeObj(this_object$`fields`, "map(object)", loadNamespace("llmpulse"))
      self$`fields_unavailable` <- this_object$`fields_unavailable`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to WebAnalyticsSchemaResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WebAnalyticsSchemaResponse
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
# WebAnalyticsSchemaResponse$unlock()
#
## Below is an example to define the print function
# WebAnalyticsSchemaResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WebAnalyticsSchemaResponse$lock()

