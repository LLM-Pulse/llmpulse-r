#' Create a new GeoAuditRunResponse
#'
#' @description
#' GeoAuditRunResponse Class
#'
#' @docType class
#' @title GeoAuditRunResponse
#' @description GeoAuditRunResponse Class
#' @format An \code{R6Class} generator object
#' @field sequence Run number within the audit, starting at 1 integer [optional]
#' @field status  character [optional]
#' @field trigger  character [optional]
#' @field score  numeric [optional]
#' @field grade  character [optional]
#' @field score_delta Score change against the previous completed run numeric [optional]
#' @field comparable_to_previous False when the checks or the audit settings changed since the previous run, so a diff may reflect that change character [optional]
#' @field new_issues  integer [optional]
#' @field fixed_issues  integer [optional]
#' @field regressed_issues  integer [optional]
#' @field error  character [optional]
#' @field engine_version  character [optional]
#' @field created_at  character [optional]
#' @field finished_at  character [optional]
#' @field app_url  character [optional]
#' @field project_id  integer [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoAuditRunResponse <- R6::R6Class(
  "GeoAuditRunResponse",
  public = list(
    `sequence` = NULL,
    `status` = NULL,
    `trigger` = NULL,
    `score` = NULL,
    `grade` = NULL,
    `score_delta` = NULL,
    `comparable_to_previous` = NULL,
    `new_issues` = NULL,
    `fixed_issues` = NULL,
    `regressed_issues` = NULL,
    `error` = NULL,
    `engine_version` = NULL,
    `created_at` = NULL,
    `finished_at` = NULL,
    `app_url` = NULL,
    `project_id` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new GeoAuditRunResponse class.
    #'
    #' @param sequence Run number within the audit, starting at 1
    #' @param status status
    #' @param trigger trigger
    #' @param score score
    #' @param grade grade
    #' @param score_delta Score change against the previous completed run
    #' @param comparable_to_previous False when the checks or the audit settings changed since the previous run, so a diff may reflect that change
    #' @param new_issues new_issues
    #' @param fixed_issues fixed_issues
    #' @param regressed_issues regressed_issues
    #' @param error error
    #' @param engine_version engine_version
    #' @param created_at created_at
    #' @param finished_at finished_at
    #' @param app_url app_url
    #' @param project_id project_id
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`sequence` = NULL, `status` = NULL, `trigger` = NULL, `score` = NULL, `grade` = NULL, `score_delta` = NULL, `comparable_to_previous` = NULL, `new_issues` = NULL, `fixed_issues` = NULL, `regressed_issues` = NULL, `error` = NULL, `engine_version` = NULL, `created_at` = NULL, `finished_at` = NULL, `app_url` = NULL, `project_id` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`sequence`)) {
        if (!(is.numeric(`sequence`) && length(`sequence`) == 1)) {
          stop(paste("Error! Invalid data for `sequence`. Must be an integer:", `sequence`))
        }
        self$`sequence` <- `sequence`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c("queued", "running", "completed", "failed", "unreachable"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"queued\", \"running\", \"completed\", \"failed\", \"unreachable\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`trigger`)) {
        if (!(`trigger` %in% c("scheduled", "manual", "api", "mcp", "legacy_import"))) {
          stop(paste("Error! \"", `trigger`, "\" cannot be assigned to `trigger`. Must be \"scheduled\", \"manual\", \"api\", \"mcp\", \"legacy_import\".", sep = ""))
        }
        if (!(is.character(`trigger`) && length(`trigger`) == 1)) {
          stop(paste("Error! Invalid data for `trigger`. Must be a string:", `trigger`))
        }
        self$`trigger` <- `trigger`
      }
      if (!is.null(`score`)) {
        self$`score` <- `score`
      }
      if (!is.null(`grade`)) {
        if (!(is.character(`grade`) && length(`grade`) == 1)) {
          stop(paste("Error! Invalid data for `grade`. Must be a string:", `grade`))
        }
        self$`grade` <- `grade`
      }
      if (!is.null(`score_delta`)) {
        self$`score_delta` <- `score_delta`
      }
      if (!is.null(`comparable_to_previous`)) {
        if (!(is.logical(`comparable_to_previous`) && length(`comparable_to_previous`) == 1)) {
          stop(paste("Error! Invalid data for `comparable_to_previous`. Must be a boolean:", `comparable_to_previous`))
        }
        self$`comparable_to_previous` <- `comparable_to_previous`
      }
      if (!is.null(`new_issues`)) {
        if (!(is.numeric(`new_issues`) && length(`new_issues`) == 1)) {
          stop(paste("Error! Invalid data for `new_issues`. Must be an integer:", `new_issues`))
        }
        self$`new_issues` <- `new_issues`
      }
      if (!is.null(`fixed_issues`)) {
        if (!(is.numeric(`fixed_issues`) && length(`fixed_issues`) == 1)) {
          stop(paste("Error! Invalid data for `fixed_issues`. Must be an integer:", `fixed_issues`))
        }
        self$`fixed_issues` <- `fixed_issues`
      }
      if (!is.null(`regressed_issues`)) {
        if (!(is.numeric(`regressed_issues`) && length(`regressed_issues`) == 1)) {
          stop(paste("Error! Invalid data for `regressed_issues`. Must be an integer:", `regressed_issues`))
        }
        self$`regressed_issues` <- `regressed_issues`
      }
      if (!is.null(`error`)) {
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
      }
      if (!is.null(`engine_version`)) {
        if (!(is.character(`engine_version`) && length(`engine_version`) == 1)) {
          stop(paste("Error! Invalid data for `engine_version`. Must be a string:", `engine_version`))
        }
        self$`engine_version` <- `engine_version`
      }
      if (!is.null(`created_at`)) {
        if (!is.character(`created_at`)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!is.null(`finished_at`)) {
        if (!is.character(`finished_at`)) {
          stop(paste("Error! Invalid data for `finished_at`. Must be a string:", `finished_at`))
        }
        self$`finished_at` <- `finished_at`
      }
      if (!is.null(`app_url`)) {
        if (!(is.character(`app_url`) && length(`app_url`) == 1)) {
          stop(paste("Error! Invalid data for `app_url`. Must be a string:", `app_url`))
        }
        self$`app_url` <- `app_url`
      }
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
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
    #' @return GeoAuditRunResponse as a base R list.
    #' @examples
    #' # convert array of GeoAuditRunResponse (x) to a data frame
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
    #' Convert GeoAuditRunResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoAuditRunResponseObject <- list()
      if (!is.null(self$`sequence`)) {
        GeoAuditRunResponseObject[["sequence"]] <-
          self$`sequence`
      }
      if (!is.null(self$`status`)) {
        GeoAuditRunResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`trigger`)) {
        GeoAuditRunResponseObject[["trigger"]] <-
          self$`trigger`
      }
      if (!is.null(self$`score`)) {
        GeoAuditRunResponseObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`grade`)) {
        GeoAuditRunResponseObject[["grade"]] <-
          self$`grade`
      }
      if (!is.null(self$`score_delta`)) {
        GeoAuditRunResponseObject[["score_delta"]] <-
          self$`score_delta`
      }
      if (!is.null(self$`comparable_to_previous`)) {
        GeoAuditRunResponseObject[["comparable_to_previous"]] <-
          self$`comparable_to_previous`
      }
      if (!is.null(self$`new_issues`)) {
        GeoAuditRunResponseObject[["new_issues"]] <-
          self$`new_issues`
      }
      if (!is.null(self$`fixed_issues`)) {
        GeoAuditRunResponseObject[["fixed_issues"]] <-
          self$`fixed_issues`
      }
      if (!is.null(self$`regressed_issues`)) {
        GeoAuditRunResponseObject[["regressed_issues"]] <-
          self$`regressed_issues`
      }
      if (!is.null(self$`error`)) {
        GeoAuditRunResponseObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`engine_version`)) {
        GeoAuditRunResponseObject[["engine_version"]] <-
          self$`engine_version`
      }
      if (!is.null(self$`created_at`)) {
        GeoAuditRunResponseObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`finished_at`)) {
        GeoAuditRunResponseObject[["finished_at"]] <-
          self$`finished_at`
      }
      if (!is.null(self$`app_url`)) {
        GeoAuditRunResponseObject[["app_url"]] <-
          self$`app_url`
      }
      if (!is.null(self$`project_id`)) {
        GeoAuditRunResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`request_id`)) {
        GeoAuditRunResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(GeoAuditRunResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditRunResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditRunResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sequence`)) {
        self$`sequence` <- this_object$`sequence`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("queued", "running", "completed", "failed", "unreachable"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"queued\", \"running\", \"completed\", \"failed\", \"unreachable\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`trigger`)) {
        if (!is.null(this_object$`trigger`) && !(this_object$`trigger` %in% c("scheduled", "manual", "api", "mcp", "legacy_import"))) {
          stop(paste("Error! \"", this_object$`trigger`, "\" cannot be assigned to `trigger`. Must be \"scheduled\", \"manual\", \"api\", \"mcp\", \"legacy_import\".", sep = ""))
        }
        self$`trigger` <- this_object$`trigger`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`grade`)) {
        self$`grade` <- this_object$`grade`
      }
      if (!is.null(this_object$`score_delta`)) {
        self$`score_delta` <- this_object$`score_delta`
      }
      if (!is.null(this_object$`comparable_to_previous`)) {
        self$`comparable_to_previous` <- this_object$`comparable_to_previous`
      }
      if (!is.null(this_object$`new_issues`)) {
        self$`new_issues` <- this_object$`new_issues`
      }
      if (!is.null(this_object$`fixed_issues`)) {
        self$`fixed_issues` <- this_object$`fixed_issues`
      }
      if (!is.null(this_object$`regressed_issues`)) {
        self$`regressed_issues` <- this_object$`regressed_issues`
      }
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      if (!is.null(this_object$`engine_version`)) {
        self$`engine_version` <- this_object$`engine_version`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`finished_at`)) {
        self$`finished_at` <- this_object$`finished_at`
      }
      if (!is.null(this_object$`app_url`)) {
        self$`app_url` <- this_object$`app_url`
      }
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
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
    #' @return GeoAuditRunResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditRunResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditRunResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sequence` <- this_object$`sequence`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("queued", "running", "completed", "failed", "unreachable"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"queued\", \"running\", \"completed\", \"failed\", \"unreachable\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      if (!is.null(this_object$`trigger`) && !(this_object$`trigger` %in% c("scheduled", "manual", "api", "mcp", "legacy_import"))) {
        stop(paste("Error! \"", this_object$`trigger`, "\" cannot be assigned to `trigger`. Must be \"scheduled\", \"manual\", \"api\", \"mcp\", \"legacy_import\".", sep = ""))
      }
      self$`trigger` <- this_object$`trigger`
      self$`score` <- this_object$`score`
      self$`grade` <- this_object$`grade`
      self$`score_delta` <- this_object$`score_delta`
      self$`comparable_to_previous` <- this_object$`comparable_to_previous`
      self$`new_issues` <- this_object$`new_issues`
      self$`fixed_issues` <- this_object$`fixed_issues`
      self$`regressed_issues` <- this_object$`regressed_issues`
      self$`error` <- this_object$`error`
      self$`engine_version` <- this_object$`engine_version`
      self$`created_at` <- this_object$`created_at`
      self$`finished_at` <- this_object$`finished_at`
      self$`app_url` <- this_object$`app_url`
      self$`project_id` <- this_object$`project_id`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoAuditRunResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoAuditRunResponse
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
# GeoAuditRunResponse$unlock()
#
## Below is an example to define the print function
# GeoAuditRunResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoAuditRunResponse$lock()

