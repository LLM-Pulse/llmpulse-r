#' Create a new SearchConsoleCannibalizationResponse
#'
#' @description
#' SearchConsoleCannibalizationResponse Class
#'
#' @docType class
#' @title SearchConsoleCannibalizationResponse
#' @description SearchConsoleCannibalizationResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field property  \link{SearchConsoleProperty} [optional]
#' @field properties With a list or all in the property parameter, the properties whose data the response holds (instead of property) list(\link{SearchConsoleProperty}) [optional]
#' @field excluded_properties With a list or all, selected properties left out because another selected property already counts them list(\link{SearchConsoleExcludedProperty}) [optional]
#' @field property_errors With a list or all, selected properties Google refused, left out of the figures list(\link{SearchConsolePropertyError}) [optional]
#' @field from  character [optional]
#' @field to  character [optional]
#' @field data_through Latest date Google has published for the property, or for every combined property (it lags 2-3 days). Later days are missing, not zero. character [optional]
#' @field min_impressions  integer [optional]
#' @field min_share  numeric [optional]
#' @field page  integer [optional]
#' @field per_page  integer [optional]
#' @field total Rows in the report before paging integer [optional]
#' @field truncated Present (true) when Google returned its 25,000-row maximum for a property, so the report covers its top rows only character [optional]
#' @field data  list(\link{SearchConsoleCannibalizationResponseDataInner}) [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchConsoleCannibalizationResponse <- R6::R6Class(
  "SearchConsoleCannibalizationResponse",
  public = list(
    `project_id` = NULL,
    `property` = NULL,
    `properties` = NULL,
    `excluded_properties` = NULL,
    `property_errors` = NULL,
    `from` = NULL,
    `to` = NULL,
    `data_through` = NULL,
    `min_impressions` = NULL,
    `min_share` = NULL,
    `page` = NULL,
    `per_page` = NULL,
    `total` = NULL,
    `truncated` = NULL,
    `data` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new SearchConsoleCannibalizationResponse class.
    #'
    #' @param project_id project_id
    #' @param property property
    #' @param properties With a list or all in the property parameter, the properties whose data the response holds (instead of property)
    #' @param excluded_properties With a list or all, selected properties left out because another selected property already counts them
    #' @param property_errors With a list or all, selected properties Google refused, left out of the figures
    #' @param from from
    #' @param to to
    #' @param data_through Latest date Google has published for the property, or for every combined property (it lags 2-3 days). Later days are missing, not zero.
    #' @param min_impressions min_impressions
    #' @param min_share min_share
    #' @param page page
    #' @param per_page per_page
    #' @param total Rows in the report before paging
    #' @param truncated Present (true) when Google returned its 25,000-row maximum for a property, so the report covers its top rows only
    #' @param data data
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `property` = NULL, `properties` = NULL, `excluded_properties` = NULL, `property_errors` = NULL, `from` = NULL, `to` = NULL, `data_through` = NULL, `min_impressions` = NULL, `min_share` = NULL, `page` = NULL, `per_page` = NULL, `total` = NULL, `truncated` = NULL, `data` = NULL, `request_id` = NULL, ...) {
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
      if (!is.null(`properties`)) {
        stopifnot(is.vector(`properties`), length(`properties`) != 0)
        sapply(`properties`, function(x) stopifnot(R6::is.R6(x)))
        self$`properties` <- `properties`
      }
      if (!is.null(`excluded_properties`)) {
        stopifnot(is.vector(`excluded_properties`), length(`excluded_properties`) != 0)
        sapply(`excluded_properties`, function(x) stopifnot(R6::is.R6(x)))
        self$`excluded_properties` <- `excluded_properties`
      }
      if (!is.null(`property_errors`)) {
        stopifnot(is.vector(`property_errors`), length(`property_errors`) != 0)
        sapply(`property_errors`, function(x) stopifnot(R6::is.R6(x)))
        self$`property_errors` <- `property_errors`
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
      if (!is.null(`min_impressions`)) {
        if (!(is.numeric(`min_impressions`) && length(`min_impressions`) == 1)) {
          stop(paste("Error! Invalid data for `min_impressions`. Must be an integer:", `min_impressions`))
        }
        self$`min_impressions` <- `min_impressions`
      }
      if (!is.null(`min_share`)) {
        self$`min_share` <- `min_share`
      }
      if (!is.null(`page`)) {
        if (!(is.numeric(`page`) && length(`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", `page`))
        }
        self$`page` <- `page`
      }
      if (!is.null(`per_page`)) {
        if (!(is.numeric(`per_page`) && length(`per_page`) == 1)) {
          stop(paste("Error! Invalid data for `per_page`. Must be an integer:", `per_page`))
        }
        self$`per_page` <- `per_page`
      }
      if (!is.null(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!is.null(`truncated`)) {
        if (!(is.logical(`truncated`) && length(`truncated`) == 1)) {
          stop(paste("Error! Invalid data for `truncated`. Must be a boolean:", `truncated`))
        }
        self$`truncated` <- `truncated`
      }
      if (!is.null(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
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
    #' @return SearchConsoleCannibalizationResponse as a base R list.
    #' @examples
    #' # convert array of SearchConsoleCannibalizationResponse (x) to a data frame
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
    #' Convert SearchConsoleCannibalizationResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SearchConsoleCannibalizationResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        SearchConsoleCannibalizationResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`property`)) {
        SearchConsoleCannibalizationResponseObject[["property"]] <-
          self$extractSimpleType(self$`property`)
      }
      if (!is.null(self$`properties`)) {
        SearchConsoleCannibalizationResponseObject[["properties"]] <-
          self$extractSimpleType(self$`properties`)
      }
      if (!is.null(self$`excluded_properties`)) {
        SearchConsoleCannibalizationResponseObject[["excluded_properties"]] <-
          self$extractSimpleType(self$`excluded_properties`)
      }
      if (!is.null(self$`property_errors`)) {
        SearchConsoleCannibalizationResponseObject[["property_errors"]] <-
          self$extractSimpleType(self$`property_errors`)
      }
      if (!is.null(self$`from`)) {
        SearchConsoleCannibalizationResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        SearchConsoleCannibalizationResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`data_through`)) {
        SearchConsoleCannibalizationResponseObject[["data_through"]] <-
          self$`data_through`
      }
      if (!is.null(self$`min_impressions`)) {
        SearchConsoleCannibalizationResponseObject[["min_impressions"]] <-
          self$`min_impressions`
      }
      if (!is.null(self$`min_share`)) {
        SearchConsoleCannibalizationResponseObject[["min_share"]] <-
          self$`min_share`
      }
      if (!is.null(self$`page`)) {
        SearchConsoleCannibalizationResponseObject[["page"]] <-
          self$`page`
      }
      if (!is.null(self$`per_page`)) {
        SearchConsoleCannibalizationResponseObject[["per_page"]] <-
          self$`per_page`
      }
      if (!is.null(self$`total`)) {
        SearchConsoleCannibalizationResponseObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`truncated`)) {
        SearchConsoleCannibalizationResponseObject[["truncated"]] <-
          self$`truncated`
      }
      if (!is.null(self$`data`)) {
        SearchConsoleCannibalizationResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      if (!is.null(self$`request_id`)) {
        SearchConsoleCannibalizationResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(SearchConsoleCannibalizationResponseObject)
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
    #' Deserialize JSON string into an instance of SearchConsoleCannibalizationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleCannibalizationResponse
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
      if (!is.null(this_object$`properties`)) {
        self$`properties` <- ApiClient$new()$deserializeObj(this_object$`properties`, "array[SearchConsoleProperty]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`excluded_properties`)) {
        self$`excluded_properties` <- ApiClient$new()$deserializeObj(this_object$`excluded_properties`, "array[SearchConsoleExcludedProperty]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`property_errors`)) {
        self$`property_errors` <- ApiClient$new()$deserializeObj(this_object$`property_errors`, "array[SearchConsolePropertyError]", loadNamespace("llmpulse"))
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
      if (!is.null(this_object$`min_impressions`)) {
        self$`min_impressions` <- this_object$`min_impressions`
      }
      if (!is.null(this_object$`min_share`)) {
        self$`min_share` <- this_object$`min_share`
      }
      if (!is.null(this_object$`page`)) {
        self$`page` <- this_object$`page`
      }
      if (!is.null(this_object$`per_page`)) {
        self$`per_page` <- this_object$`per_page`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`truncated`)) {
        self$`truncated` <- this_object$`truncated`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[SearchConsoleCannibalizationResponseDataInner]", loadNamespace("llmpulse"))
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
    #' @return SearchConsoleCannibalizationResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SearchConsoleCannibalizationResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SearchConsoleCannibalizationResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`property` <- SearchConsoleProperty$new()$fromJSON(jsonlite::toJSON(this_object$`property`, auto_unbox = TRUE, digits = NA))
      self$`properties` <- ApiClient$new()$deserializeObj(this_object$`properties`, "array[SearchConsoleProperty]", loadNamespace("llmpulse"))
      self$`excluded_properties` <- ApiClient$new()$deserializeObj(this_object$`excluded_properties`, "array[SearchConsoleExcludedProperty]", loadNamespace("llmpulse"))
      self$`property_errors` <- ApiClient$new()$deserializeObj(this_object$`property_errors`, "array[SearchConsolePropertyError]", loadNamespace("llmpulse"))
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`data_through` <- this_object$`data_through`
      self$`min_impressions` <- this_object$`min_impressions`
      self$`min_share` <- this_object$`min_share`
      self$`page` <- this_object$`page`
      self$`per_page` <- this_object$`per_page`
      self$`total` <- this_object$`total`
      self$`truncated` <- this_object$`truncated`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[SearchConsoleCannibalizationResponseDataInner]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to SearchConsoleCannibalizationResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SearchConsoleCannibalizationResponse
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
# SearchConsoleCannibalizationResponse$unlock()
#
## Below is an example to define the print function
# SearchConsoleCannibalizationResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SearchConsoleCannibalizationResponse$lock()

