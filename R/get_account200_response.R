#' Create a new GetAccount200Response
#'
#' @description
#' GetAccount200Response Class
#'
#' @docType class
#' @title GetAccount200Response
#' @description GetAccount200Response Class
#' @format An \code{R6Class} generator object
#' @field plan Plan key (starter, growth, scale, ...) character [optional]
#' @field tracking_frequency How often prompts run (weekly, daily, monthly, ...) character [optional]
#' @field role Whether the key belongs to the account owner or a team member character [optional]
#' @field subscription  \link{GetAccount200ResponseSubscription} [optional]
#' @field limits  \link{GetAccount200ResponseLimits} [optional]
#' @field rate_limits  \link{GetAccount200ResponseRateLimits} [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetAccount200Response <- R6::R6Class(
  "GetAccount200Response",
  public = list(
    `plan` = NULL,
    `tracking_frequency` = NULL,
    `role` = NULL,
    `subscription` = NULL,
    `limits` = NULL,
    `rate_limits` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new GetAccount200Response class.
    #'
    #' @param plan Plan key (starter, growth, scale, ...)
    #' @param tracking_frequency How often prompts run (weekly, daily, monthly, ...)
    #' @param role Whether the key belongs to the account owner or a team member
    #' @param subscription subscription
    #' @param limits limits
    #' @param rate_limits rate_limits
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`plan` = NULL, `tracking_frequency` = NULL, `role` = NULL, `subscription` = NULL, `limits` = NULL, `rate_limits` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`plan`)) {
        if (!(is.character(`plan`) && length(`plan`) == 1)) {
          stop(paste("Error! Invalid data for `plan`. Must be a string:", `plan`))
        }
        self$`plan` <- `plan`
      }
      if (!is.null(`tracking_frequency`)) {
        if (!(is.character(`tracking_frequency`) && length(`tracking_frequency`) == 1)) {
          stop(paste("Error! Invalid data for `tracking_frequency`. Must be a string:", `tracking_frequency`))
        }
        self$`tracking_frequency` <- `tracking_frequency`
      }
      if (!is.null(`role`)) {
        if (!(`role` %in% c("owner", "member"))) {
          stop(paste("Error! \"", `role`, "\" cannot be assigned to `role`. Must be \"owner\", \"member\".", sep = ""))
        }
        if (!(is.character(`role`) && length(`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", `role`))
        }
        self$`role` <- `role`
      }
      if (!is.null(`subscription`)) {
        stopifnot(R6::is.R6(`subscription`))
        self$`subscription` <- `subscription`
      }
      if (!is.null(`limits`)) {
        stopifnot(R6::is.R6(`limits`))
        self$`limits` <- `limits`
      }
      if (!is.null(`rate_limits`)) {
        stopifnot(R6::is.R6(`rate_limits`))
        self$`rate_limits` <- `rate_limits`
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
    #' @return GetAccount200Response as a base R list.
    #' @examples
    #' # convert array of GetAccount200Response (x) to a data frame
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
    #' Convert GetAccount200Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GetAccount200ResponseObject <- list()
      if (!is.null(self$`plan`)) {
        GetAccount200ResponseObject[["plan"]] <-
          self$`plan`
      }
      if (!is.null(self$`tracking_frequency`)) {
        GetAccount200ResponseObject[["tracking_frequency"]] <-
          self$`tracking_frequency`
      }
      if (!is.null(self$`role`)) {
        GetAccount200ResponseObject[["role"]] <-
          self$`role`
      }
      if (!is.null(self$`subscription`)) {
        GetAccount200ResponseObject[["subscription"]] <-
          self$extractSimpleType(self$`subscription`)
      }
      if (!is.null(self$`limits`)) {
        GetAccount200ResponseObject[["limits"]] <-
          self$extractSimpleType(self$`limits`)
      }
      if (!is.null(self$`rate_limits`)) {
        GetAccount200ResponseObject[["rate_limits"]] <-
          self$extractSimpleType(self$`rate_limits`)
      }
      if (!is.null(self$`request_id`)) {
        GetAccount200ResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(GetAccount200ResponseObject)
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
    #' Deserialize JSON string into an instance of GetAccount200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetAccount200Response
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`plan`)) {
        self$`plan` <- this_object$`plan`
      }
      if (!is.null(this_object$`tracking_frequency`)) {
        self$`tracking_frequency` <- this_object$`tracking_frequency`
      }
      if (!is.null(this_object$`role`)) {
        if (!is.null(this_object$`role`) && !(this_object$`role` %in% c("owner", "member"))) {
          stop(paste("Error! \"", this_object$`role`, "\" cannot be assigned to `role`. Must be \"owner\", \"member\".", sep = ""))
        }
        self$`role` <- this_object$`role`
      }
      if (!is.null(this_object$`subscription`)) {
        `subscription_object` <- GetAccount200ResponseSubscription$new()
        `subscription_object`$fromJSON(jsonlite::toJSON(this_object$`subscription`, auto_unbox = TRUE, digits = NA))
        self$`subscription` <- `subscription_object`
      }
      if (!is.null(this_object$`limits`)) {
        `limits_object` <- GetAccount200ResponseLimits$new()
        `limits_object`$fromJSON(jsonlite::toJSON(this_object$`limits`, auto_unbox = TRUE, digits = NA))
        self$`limits` <- `limits_object`
      }
      if (!is.null(this_object$`rate_limits`)) {
        `rate_limits_object` <- GetAccount200ResponseRateLimits$new()
        `rate_limits_object`$fromJSON(jsonlite::toJSON(this_object$`rate_limits`, auto_unbox = TRUE, digits = NA))
        self$`rate_limits` <- `rate_limits_object`
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
    #' @return GetAccount200Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GetAccount200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetAccount200Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`plan` <- this_object$`plan`
      self$`tracking_frequency` <- this_object$`tracking_frequency`
      if (!is.null(this_object$`role`) && !(this_object$`role` %in% c("owner", "member"))) {
        stop(paste("Error! \"", this_object$`role`, "\" cannot be assigned to `role`. Must be \"owner\", \"member\".", sep = ""))
      }
      self$`role` <- this_object$`role`
      self$`subscription` <- GetAccount200ResponseSubscription$new()$fromJSON(jsonlite::toJSON(this_object$`subscription`, auto_unbox = TRUE, digits = NA))
      self$`limits` <- GetAccount200ResponseLimits$new()$fromJSON(jsonlite::toJSON(this_object$`limits`, auto_unbox = TRUE, digits = NA))
      self$`rate_limits` <- GetAccount200ResponseRateLimits$new()$fromJSON(jsonlite::toJSON(this_object$`rate_limits`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to GetAccount200Response and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GetAccount200Response
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
# GetAccount200Response$unlock()
#
## Below is an example to define the print function
# GetAccount200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetAccount200Response$lock()

