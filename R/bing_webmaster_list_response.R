#' Create a new BingWebmasterListResponse
#'
#' @description
#' BingWebmasterListResponse Class
#'
#' @docType class
#' @title BingWebmasterListResponse
#' @description BingWebmasterListResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field site The connected site, as Bing Webmaster Tools names it (e.g. https://example.com/) character [optional]
#' @field sync_status State of the daily sync: pending, syncing, completed, failed or on_hold (the data already synced still answers, but stops updating until the site is reconnected) character [optional]
#' @field last_synced_at When the site last synced. Null before its first sync, or while history_current is false. character [optional]
#' @field history_current False right after the site was changed and before its first sync. Until then data is empty and data_through is null. character [optional]
#' @field from  character [optional]
#' @field to  character [optional]
#' @field data_through The last week_ending synced for the site (the Friday that closes a Bing week) character [optional]
#' @field page  integer [optional]
#' @field per_page  integer [optional]
#' @field total Distinct pages or queries found in the weeks of the window integer [optional]
#' @field sort  character [optional]
#' @field weeks_covered Weeks with data whose week_ending falls in the window integer [optional]
#' @field data  list(\link{BingWebmasterListResponseDataInner}) [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BingWebmasterListResponse <- R6::R6Class(
  "BingWebmasterListResponse",
  public = list(
    `project_id` = NULL,
    `site` = NULL,
    `sync_status` = NULL,
    `last_synced_at` = NULL,
    `history_current` = NULL,
    `from` = NULL,
    `to` = NULL,
    `data_through` = NULL,
    `page` = NULL,
    `per_page` = NULL,
    `total` = NULL,
    `sort` = NULL,
    `weeks_covered` = NULL,
    `data` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new BingWebmasterListResponse class.
    #'
    #' @param project_id project_id
    #' @param site The connected site, as Bing Webmaster Tools names it (e.g. https://example.com/)
    #' @param sync_status State of the daily sync: pending, syncing, completed, failed or on_hold (the data already synced still answers, but stops updating until the site is reconnected)
    #' @param last_synced_at When the site last synced. Null before its first sync, or while history_current is false.
    #' @param history_current False right after the site was changed and before its first sync. Until then data is empty and data_through is null.
    #' @param from from
    #' @param to to
    #' @param data_through The last week_ending synced for the site (the Friday that closes a Bing week)
    #' @param page page
    #' @param per_page per_page
    #' @param total Distinct pages or queries found in the weeks of the window
    #' @param sort sort
    #' @param weeks_covered Weeks with data whose week_ending falls in the window
    #' @param data data
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `site` = NULL, `sync_status` = NULL, `last_synced_at` = NULL, `history_current` = NULL, `from` = NULL, `to` = NULL, `data_through` = NULL, `page` = NULL, `per_page` = NULL, `total` = NULL, `sort` = NULL, `weeks_covered` = NULL, `data` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`site`)) {
        if (!(is.character(`site`) && length(`site`) == 1)) {
          stop(paste("Error! Invalid data for `site`. Must be a string:", `site`))
        }
        self$`site` <- `site`
      }
      if (!is.null(`sync_status`)) {
        if (!(is.character(`sync_status`) && length(`sync_status`) == 1)) {
          stop(paste("Error! Invalid data for `sync_status`. Must be a string:", `sync_status`))
        }
        self$`sync_status` <- `sync_status`
      }
      if (!is.null(`last_synced_at`)) {
        if (!is.character(`last_synced_at`)) {
          stop(paste("Error! Invalid data for `last_synced_at`. Must be a string:", `last_synced_at`))
        }
        self$`last_synced_at` <- `last_synced_at`
      }
      if (!is.null(`history_current`)) {
        if (!(is.logical(`history_current`) && length(`history_current`) == 1)) {
          stop(paste("Error! Invalid data for `history_current`. Must be a boolean:", `history_current`))
        }
        self$`history_current` <- `history_current`
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
      if (!is.null(`sort`)) {
        if (!(is.character(`sort`) && length(`sort`) == 1)) {
          stop(paste("Error! Invalid data for `sort`. Must be a string:", `sort`))
        }
        self$`sort` <- `sort`
      }
      if (!is.null(`weeks_covered`)) {
        if (!(is.numeric(`weeks_covered`) && length(`weeks_covered`) == 1)) {
          stop(paste("Error! Invalid data for `weeks_covered`. Must be an integer:", `weeks_covered`))
        }
        self$`weeks_covered` <- `weeks_covered`
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
    #' @return BingWebmasterListResponse as a base R list.
    #' @examples
    #' # convert array of BingWebmasterListResponse (x) to a data frame
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
    #' Convert BingWebmasterListResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BingWebmasterListResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        BingWebmasterListResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`site`)) {
        BingWebmasterListResponseObject[["site"]] <-
          self$`site`
      }
      if (!is.null(self$`sync_status`)) {
        BingWebmasterListResponseObject[["sync_status"]] <-
          self$`sync_status`
      }
      if (!is.null(self$`last_synced_at`)) {
        BingWebmasterListResponseObject[["last_synced_at"]] <-
          self$`last_synced_at`
      }
      if (!is.null(self$`history_current`)) {
        BingWebmasterListResponseObject[["history_current"]] <-
          self$`history_current`
      }
      if (!is.null(self$`from`)) {
        BingWebmasterListResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        BingWebmasterListResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`data_through`)) {
        BingWebmasterListResponseObject[["data_through"]] <-
          self$`data_through`
      }
      if (!is.null(self$`page`)) {
        BingWebmasterListResponseObject[["page"]] <-
          self$`page`
      }
      if (!is.null(self$`per_page`)) {
        BingWebmasterListResponseObject[["per_page"]] <-
          self$`per_page`
      }
      if (!is.null(self$`total`)) {
        BingWebmasterListResponseObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`sort`)) {
        BingWebmasterListResponseObject[["sort"]] <-
          self$`sort`
      }
      if (!is.null(self$`weeks_covered`)) {
        BingWebmasterListResponseObject[["weeks_covered"]] <-
          self$`weeks_covered`
      }
      if (!is.null(self$`data`)) {
        BingWebmasterListResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      if (!is.null(self$`request_id`)) {
        BingWebmasterListResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(BingWebmasterListResponseObject)
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
    #' Deserialize JSON string into an instance of BingWebmasterListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BingWebmasterListResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`site`)) {
        self$`site` <- this_object$`site`
      }
      if (!is.null(this_object$`sync_status`)) {
        self$`sync_status` <- this_object$`sync_status`
      }
      if (!is.null(this_object$`last_synced_at`)) {
        self$`last_synced_at` <- this_object$`last_synced_at`
      }
      if (!is.null(this_object$`history_current`)) {
        self$`history_current` <- this_object$`history_current`
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
      if (!is.null(this_object$`page`)) {
        self$`page` <- this_object$`page`
      }
      if (!is.null(this_object$`per_page`)) {
        self$`per_page` <- this_object$`per_page`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`sort`)) {
        self$`sort` <- this_object$`sort`
      }
      if (!is.null(this_object$`weeks_covered`)) {
        self$`weeks_covered` <- this_object$`weeks_covered`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[BingWebmasterListResponseDataInner]", loadNamespace("llmpulse"))
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
    #' @return BingWebmasterListResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BingWebmasterListResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BingWebmasterListResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`site` <- this_object$`site`
      self$`sync_status` <- this_object$`sync_status`
      self$`last_synced_at` <- this_object$`last_synced_at`
      self$`history_current` <- this_object$`history_current`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`data_through` <- this_object$`data_through`
      self$`page` <- this_object$`page`
      self$`per_page` <- this_object$`per_page`
      self$`total` <- this_object$`total`
      self$`sort` <- this_object$`sort`
      self$`weeks_covered` <- this_object$`weeks_covered`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[BingWebmasterListResponseDataInner]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to BingWebmasterListResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BingWebmasterListResponse
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
# BingWebmasterListResponse$unlock()
#
## Below is an example to define the print function
# BingWebmasterListResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BingWebmasterListResponse$lock()

