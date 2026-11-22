#' Create a new BingWebmasterSummaryResponse
#'
#' @description
#' BingWebmasterSummaryResponse Class
#'
#' @docType class
#' @title BingWebmasterSummaryResponse
#' @description BingWebmasterSummaryResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer [optional]
#' @field site The connected site, as Bing Webmaster Tools names it (e.g. https://example.com/) character [optional]
#' @field sync_status State of the daily sync: pending, syncing, completed, failed or on_hold. on_hold means Bing refused the stored API key or the site is no longer verified: the data already synced still answers but stops updating until the site is reconnected in Preferences > Project Settings > Connections. character [optional]
#' @field last_synced_at When the site last synced. Null before its first sync, or while history_current is false. character [optional]
#' @field history_current False right after the site was changed and before its first sync. Until then the response holds no data and data_through is null. character [optional]
#' @field from  character [optional]
#' @field to  character [optional]
#' @field data_through The last day synced for the site. Later days are missing, not zero. character [optional]
#' @field totals  \link{BingWebmasterMetrics} [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BingWebmasterSummaryResponse <- R6::R6Class(
  "BingWebmasterSummaryResponse",
  public = list(
    `project_id` = NULL,
    `site` = NULL,
    `sync_status` = NULL,
    `last_synced_at` = NULL,
    `history_current` = NULL,
    `from` = NULL,
    `to` = NULL,
    `data_through` = NULL,
    `totals` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new BingWebmasterSummaryResponse class.
    #'
    #' @param project_id project_id
    #' @param site The connected site, as Bing Webmaster Tools names it (e.g. https://example.com/)
    #' @param sync_status State of the daily sync: pending, syncing, completed, failed or on_hold. on_hold means Bing refused the stored API key or the site is no longer verified: the data already synced still answers but stops updating until the site is reconnected in Preferences > Project Settings > Connections.
    #' @param last_synced_at When the site last synced. Null before its first sync, or while history_current is false.
    #' @param history_current False right after the site was changed and before its first sync. Until then the response holds no data and data_through is null.
    #' @param from from
    #' @param to to
    #' @param data_through The last day synced for the site. Later days are missing, not zero.
    #' @param totals totals
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id` = NULL, `site` = NULL, `sync_status` = NULL, `last_synced_at` = NULL, `history_current` = NULL, `from` = NULL, `to` = NULL, `data_through` = NULL, `totals` = NULL, `request_id` = NULL, ...) {
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
      if (!is.null(`totals`)) {
        stopifnot(R6::is.R6(`totals`))
        self$`totals` <- `totals`
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
    #' @return BingWebmasterSummaryResponse as a base R list.
    #' @examples
    #' # convert array of BingWebmasterSummaryResponse (x) to a data frame
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
    #' Convert BingWebmasterSummaryResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BingWebmasterSummaryResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        BingWebmasterSummaryResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`site`)) {
        BingWebmasterSummaryResponseObject[["site"]] <-
          self$`site`
      }
      if (!is.null(self$`sync_status`)) {
        BingWebmasterSummaryResponseObject[["sync_status"]] <-
          self$`sync_status`
      }
      if (!is.null(self$`last_synced_at`)) {
        BingWebmasterSummaryResponseObject[["last_synced_at"]] <-
          self$`last_synced_at`
      }
      if (!is.null(self$`history_current`)) {
        BingWebmasterSummaryResponseObject[["history_current"]] <-
          self$`history_current`
      }
      if (!is.null(self$`from`)) {
        BingWebmasterSummaryResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        BingWebmasterSummaryResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`data_through`)) {
        BingWebmasterSummaryResponseObject[["data_through"]] <-
          self$`data_through`
      }
      if (!is.null(self$`totals`)) {
        BingWebmasterSummaryResponseObject[["totals"]] <-
          self$extractSimpleType(self$`totals`)
      }
      if (!is.null(self$`request_id`)) {
        BingWebmasterSummaryResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(BingWebmasterSummaryResponseObject)
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
    #' Deserialize JSON string into an instance of BingWebmasterSummaryResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BingWebmasterSummaryResponse
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
      if (!is.null(this_object$`totals`)) {
        `totals_object` <- BingWebmasterMetrics$new()
        `totals_object`$fromJSON(jsonlite::toJSON(this_object$`totals`, auto_unbox = TRUE, digits = NA))
        self$`totals` <- `totals_object`
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
    #' @return BingWebmasterSummaryResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BingWebmasterSummaryResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of BingWebmasterSummaryResponse
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
      self$`totals` <- BingWebmasterMetrics$new()$fromJSON(jsonlite::toJSON(this_object$`totals`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to BingWebmasterSummaryResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BingWebmasterSummaryResponse
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
# BingWebmasterSummaryResponse$unlock()
#
## Below is an example to define the print function
# BingWebmasterSummaryResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BingWebmasterSummaryResponse$lock()

