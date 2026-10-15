#' Create a new OwnedMediaSummaryResponse
#'
#' @description
#' OwnedMediaSummaryResponse Class
#'
#' @docType class
#' @title OwnedMediaSummaryResponse
#' @description OwnedMediaSummaryResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field provider  character [optional]
#' @field from  character [optional]
#' @field to  character [optional]
#' @field connected Whether a profile is claimed on the platform (on overview, on any platform) character [optional]
#' @field kpis  \link{OwnedMediaKpis} [optional]
#' @field previous  \link{OwnedMediaSummaryResponsePrevious} [optional]
#' @field changes  \link{OwnedMediaKpiChanges} [optional]
#' @field weekly  list(\link{OwnedMediaWeek}) [optional]
#' @field by_model Null for provider=overview list(\link{OwnedMediaModelShare}) [optional]
#' @field by_country Null for provider=overview list(\link{OwnedMediaCountryShare}) [optional]
#' @field content_types Social and YouTube providers only list(\link{OwnedMediaContentTypeShare}) [optional]
#' @field age_buckets Social and YouTube providers only. Posts or videos without a known publication date are left out list(\link{OwnedMediaAgeBucketShare}) [optional]
#' @field stores provider=mobile_apps only list(\link{OwnedMediaStoreTotals}) [optional]
#' @field platforms provider=overview only, one row per platform the caller can read list(\link{OwnedMediaPlatformRollup}) [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaSummaryResponse <- R6::R6Class(
  "OwnedMediaSummaryResponse",
  public = list(
    `project_id` = NULL,
    `provider` = NULL,
    `from` = NULL,
    `to` = NULL,
    `connected` = NULL,
    `kpis` = NULL,
    `previous` = NULL,
    `changes` = NULL,
    `weekly` = NULL,
    `by_model` = NULL,
    `by_country` = NULL,
    `content_types` = NULL,
    `age_buckets` = NULL,
    `stores` = NULL,
    `platforms` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new OwnedMediaSummaryResponse class.
    #'
    #' @param project_id project_id
    #' @param provider provider
    #' @param from from
    #' @param to to
    #' @param connected Whether a profile is claimed on the platform (on overview, on any platform)
    #' @param kpis kpis
    #' @param previous previous
    #' @param changes changes
    #' @param weekly weekly
    #' @param by_model Null for provider=overview
    #' @param by_country Null for provider=overview
    #' @param content_types Social and YouTube providers only
    #' @param age_buckets Social and YouTube providers only. Posts or videos without a known publication date are left out
    #' @param stores provider=mobile_apps only
    #' @param platforms provider=overview only, one row per platform the caller can read
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `provider` = NULL, `from` = NULL, `to` = NULL, `connected` = NULL, `kpis` = NULL, `previous` = NULL, `changes` = NULL, `weekly` = NULL, `by_model` = NULL, `by_country` = NULL, `content_types` = NULL, `age_buckets` = NULL, `stores` = NULL, `platforms` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`provider`)) {
        if (!(is.character(`provider`) && length(`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", `provider`))
        }
        self$`provider` <- `provider`
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
      if (!is.null(`connected`)) {
        if (!(is.logical(`connected`) && length(`connected`) == 1)) {
          stop(paste("Error! Invalid data for `connected`. Must be a boolean:", `connected`))
        }
        self$`connected` <- `connected`
      }
      if (!is.null(`kpis`)) {
        stopifnot(R6::is.R6(`kpis`))
        self$`kpis` <- `kpis`
      }
      if (!is.null(`previous`)) {
        stopifnot(R6::is.R6(`previous`))
        self$`previous` <- `previous`
      }
      if (!is.null(`changes`)) {
        stopifnot(R6::is.R6(`changes`))
        self$`changes` <- `changes`
      }
      if (!is.null(`weekly`)) {
        stopifnot(is.vector(`weekly`), length(`weekly`) != 0)
        sapply(`weekly`, function(x) stopifnot(R6::is.R6(x)))
        self$`weekly` <- `weekly`
      }
      if (!is.null(`by_model`)) {
        stopifnot(is.vector(`by_model`), length(`by_model`) != 0)
        sapply(`by_model`, function(x) stopifnot(R6::is.R6(x)))
        self$`by_model` <- `by_model`
      }
      if (!is.null(`by_country`)) {
        stopifnot(is.vector(`by_country`), length(`by_country`) != 0)
        sapply(`by_country`, function(x) stopifnot(R6::is.R6(x)))
        self$`by_country` <- `by_country`
      }
      if (!is.null(`content_types`)) {
        stopifnot(is.vector(`content_types`), length(`content_types`) != 0)
        sapply(`content_types`, function(x) stopifnot(R6::is.R6(x)))
        self$`content_types` <- `content_types`
      }
      if (!is.null(`age_buckets`)) {
        stopifnot(is.vector(`age_buckets`), length(`age_buckets`) != 0)
        sapply(`age_buckets`, function(x) stopifnot(R6::is.R6(x)))
        self$`age_buckets` <- `age_buckets`
      }
      if (!is.null(`stores`)) {
        stopifnot(is.vector(`stores`), length(`stores`) != 0)
        sapply(`stores`, function(x) stopifnot(R6::is.R6(x)))
        self$`stores` <- `stores`
      }
      if (!is.null(`platforms`)) {
        stopifnot(is.vector(`platforms`), length(`platforms`) != 0)
        sapply(`platforms`, function(x) stopifnot(R6::is.R6(x)))
        self$`platforms` <- `platforms`
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
    #' @return OwnedMediaSummaryResponse as a base R list.
    #' @examples
    #' # convert array of OwnedMediaSummaryResponse (x) to a data frame
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
    #' Convert OwnedMediaSummaryResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaSummaryResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        OwnedMediaSummaryResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`provider`)) {
        OwnedMediaSummaryResponseObject[["provider"]] <-
          self$`provider`
      }
      if (!is.null(self$`from`)) {
        OwnedMediaSummaryResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        OwnedMediaSummaryResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`connected`)) {
        OwnedMediaSummaryResponseObject[["connected"]] <-
          self$`connected`
      }
      if (!is.null(self$`kpis`)) {
        OwnedMediaSummaryResponseObject[["kpis"]] <-
          self$extractSimpleType(self$`kpis`)
      }
      if (!is.null(self$`previous`)) {
        OwnedMediaSummaryResponseObject[["previous"]] <-
          self$extractSimpleType(self$`previous`)
      }
      if (!is.null(self$`changes`)) {
        OwnedMediaSummaryResponseObject[["changes"]] <-
          self$extractSimpleType(self$`changes`)
      }
      if (!is.null(self$`weekly`)) {
        OwnedMediaSummaryResponseObject[["weekly"]] <-
          self$extractSimpleType(self$`weekly`)
      }
      if (!is.null(self$`by_model`)) {
        OwnedMediaSummaryResponseObject[["by_model"]] <-
          self$extractSimpleType(self$`by_model`)
      }
      if (!is.null(self$`by_country`)) {
        OwnedMediaSummaryResponseObject[["by_country"]] <-
          self$extractSimpleType(self$`by_country`)
      }
      if (!is.null(self$`content_types`)) {
        OwnedMediaSummaryResponseObject[["content_types"]] <-
          self$extractSimpleType(self$`content_types`)
      }
      if (!is.null(self$`age_buckets`)) {
        OwnedMediaSummaryResponseObject[["age_buckets"]] <-
          self$extractSimpleType(self$`age_buckets`)
      }
      if (!is.null(self$`stores`)) {
        OwnedMediaSummaryResponseObject[["stores"]] <-
          self$extractSimpleType(self$`stores`)
      }
      if (!is.null(self$`platforms`)) {
        OwnedMediaSummaryResponseObject[["platforms"]] <-
          self$extractSimpleType(self$`platforms`)
      }
      if (!is.null(self$`request_id`)) {
        OwnedMediaSummaryResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(OwnedMediaSummaryResponseObject)
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
    #' Deserialize JSON string into an instance of OwnedMediaSummaryResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaSummaryResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`provider`)) {
        self$`provider` <- this_object$`provider`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`connected`)) {
        self$`connected` <- this_object$`connected`
      }
      if (!is.null(this_object$`kpis`)) {
        `kpis_object` <- OwnedMediaKpis$new()
        `kpis_object`$fromJSON(jsonlite::toJSON(this_object$`kpis`, auto_unbox = TRUE, digits = NA))
        self$`kpis` <- `kpis_object`
      }
      if (!is.null(this_object$`previous`)) {
        `previous_object` <- OwnedMediaSummaryResponsePrevious$new()
        `previous_object`$fromJSON(jsonlite::toJSON(this_object$`previous`, auto_unbox = TRUE, digits = NA))
        self$`previous` <- `previous_object`
      }
      if (!is.null(this_object$`changes`)) {
        `changes_object` <- OwnedMediaKpiChanges$new()
        `changes_object`$fromJSON(jsonlite::toJSON(this_object$`changes`, auto_unbox = TRUE, digits = NA))
        self$`changes` <- `changes_object`
      }
      if (!is.null(this_object$`weekly`)) {
        self$`weekly` <- ApiClient$new()$deserializeObj(this_object$`weekly`, "array[OwnedMediaWeek]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`by_model`)) {
        self$`by_model` <- ApiClient$new()$deserializeObj(this_object$`by_model`, "array[OwnedMediaModelShare]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`by_country`)) {
        self$`by_country` <- ApiClient$new()$deserializeObj(this_object$`by_country`, "array[OwnedMediaCountryShare]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`content_types`)) {
        self$`content_types` <- ApiClient$new()$deserializeObj(this_object$`content_types`, "array[OwnedMediaContentTypeShare]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`age_buckets`)) {
        self$`age_buckets` <- ApiClient$new()$deserializeObj(this_object$`age_buckets`, "array[OwnedMediaAgeBucketShare]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`stores`)) {
        self$`stores` <- ApiClient$new()$deserializeObj(this_object$`stores`, "array[OwnedMediaStoreTotals]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`platforms`)) {
        self$`platforms` <- ApiClient$new()$deserializeObj(this_object$`platforms`, "array[OwnedMediaPlatformRollup]", loadNamespace("llmpulse"))
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
    #' @return OwnedMediaSummaryResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaSummaryResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaSummaryResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`provider` <- this_object$`provider`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`connected` <- this_object$`connected`
      self$`kpis` <- OwnedMediaKpis$new()$fromJSON(jsonlite::toJSON(this_object$`kpis`, auto_unbox = TRUE, digits = NA))
      self$`previous` <- OwnedMediaSummaryResponsePrevious$new()$fromJSON(jsonlite::toJSON(this_object$`previous`, auto_unbox = TRUE, digits = NA))
      self$`changes` <- OwnedMediaKpiChanges$new()$fromJSON(jsonlite::toJSON(this_object$`changes`, auto_unbox = TRUE, digits = NA))
      self$`weekly` <- ApiClient$new()$deserializeObj(this_object$`weekly`, "array[OwnedMediaWeek]", loadNamespace("llmpulse"))
      self$`by_model` <- ApiClient$new()$deserializeObj(this_object$`by_model`, "array[OwnedMediaModelShare]", loadNamespace("llmpulse"))
      self$`by_country` <- ApiClient$new()$deserializeObj(this_object$`by_country`, "array[OwnedMediaCountryShare]", loadNamespace("llmpulse"))
      self$`content_types` <- ApiClient$new()$deserializeObj(this_object$`content_types`, "array[OwnedMediaContentTypeShare]", loadNamespace("llmpulse"))
      self$`age_buckets` <- ApiClient$new()$deserializeObj(this_object$`age_buckets`, "array[OwnedMediaAgeBucketShare]", loadNamespace("llmpulse"))
      self$`stores` <- ApiClient$new()$deserializeObj(this_object$`stores`, "array[OwnedMediaStoreTotals]", loadNamespace("llmpulse"))
      self$`platforms` <- ApiClient$new()$deserializeObj(this_object$`platforms`, "array[OwnedMediaPlatformRollup]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaSummaryResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaSummaryResponse
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
# OwnedMediaSummaryResponse$unlock()
#
## Below is an example to define the print function
# OwnedMediaSummaryResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaSummaryResponse$lock()

