#' Create a new ProjectCreateResponse
#'
#' @description
#' ProjectCreateResponse Class
#'
#' @docType class
#' @title ProjectCreateResponse
#' @description ProjectCreateResponse Class
#' @format An \code{R6Class} generator object
#' @field project Same shape as GET /dimensions/projects/{id} object [optional]
#' @field prompts  \link{ProjectCreateResponsePrompts} [optional]
#' @field competitors  \link{ProjectCreateResponseCompetitors} [optional]
#' @field email_subscription  \link{ProjectCreateResponseEmailSubscription} [optional]
#' @field limits  \link{ProjectCreateResponseLimits} [optional]
#' @field idempotent Present and true only on external_identifier replays character [optional]
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectCreateResponse <- R6::R6Class(
  "ProjectCreateResponse",
  public = list(
    `project` = NULL,
    `prompts` = NULL,
    `competitors` = NULL,
    `email_subscription` = NULL,
    `limits` = NULL,
    `idempotent` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new ProjectCreateResponse class.
    #'
    #' @param project Same shape as GET /dimensions/projects/{id}
    #' @param prompts prompts
    #' @param competitors competitors
    #' @param email_subscription email_subscription
    #' @param limits limits
    #' @param idempotent Present and true only on external_identifier replays
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project` = NULL, `prompts` = NULL, `competitors` = NULL, `email_subscription` = NULL, `limits` = NULL, `idempotent` = NULL, `request_id` = NULL, ...) {
      if (!is.null(`project`)) {
        self$`project` <- `project`
      }
      if (!is.null(`prompts`)) {
        stopifnot(R6::is.R6(`prompts`))
        self$`prompts` <- `prompts`
      }
      if (!is.null(`competitors`)) {
        stopifnot(R6::is.R6(`competitors`))
        self$`competitors` <- `competitors`
      }
      if (!is.null(`email_subscription`)) {
        stopifnot(R6::is.R6(`email_subscription`))
        self$`email_subscription` <- `email_subscription`
      }
      if (!is.null(`limits`)) {
        stopifnot(R6::is.R6(`limits`))
        self$`limits` <- `limits`
      }
      if (!is.null(`idempotent`)) {
        if (!(is.logical(`idempotent`) && length(`idempotent`) == 1)) {
          stop(paste("Error! Invalid data for `idempotent`. Must be a boolean:", `idempotent`))
        }
        self$`idempotent` <- `idempotent`
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
    #' @return ProjectCreateResponse as a base R list.
    #' @examples
    #' # convert array of ProjectCreateResponse (x) to a data frame
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
    #' Convert ProjectCreateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectCreateResponseObject <- list()
      if (!is.null(self$`project`)) {
        ProjectCreateResponseObject[["project"]] <-
          self$`project`
      }
      if (!is.null(self$`prompts`)) {
        ProjectCreateResponseObject[["prompts"]] <-
          self$extractSimpleType(self$`prompts`)
      }
      if (!is.null(self$`competitors`)) {
        ProjectCreateResponseObject[["competitors"]] <-
          self$extractSimpleType(self$`competitors`)
      }
      if (!is.null(self$`email_subscription`)) {
        ProjectCreateResponseObject[["email_subscription"]] <-
          self$extractSimpleType(self$`email_subscription`)
      }
      if (!is.null(self$`limits`)) {
        ProjectCreateResponseObject[["limits"]] <-
          self$extractSimpleType(self$`limits`)
      }
      if (!is.null(self$`idempotent`)) {
        ProjectCreateResponseObject[["idempotent"]] <-
          self$`idempotent`
      }
      if (!is.null(self$`request_id`)) {
        ProjectCreateResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(ProjectCreateResponseObject)
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
    #' Deserialize JSON string into an instance of ProjectCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project`)) {
        self$`project` <- this_object$`project`
      }
      if (!is.null(this_object$`prompts`)) {
        `prompts_object` <- ProjectCreateResponsePrompts$new()
        `prompts_object`$fromJSON(jsonlite::toJSON(this_object$`prompts`, auto_unbox = TRUE, digits = NA))
        self$`prompts` <- `prompts_object`
      }
      if (!is.null(this_object$`competitors`)) {
        `competitors_object` <- ProjectCreateResponseCompetitors$new()
        `competitors_object`$fromJSON(jsonlite::toJSON(this_object$`competitors`, auto_unbox = TRUE, digits = NA))
        self$`competitors` <- `competitors_object`
      }
      if (!is.null(this_object$`email_subscription`)) {
        `email_subscription_object` <- ProjectCreateResponseEmailSubscription$new()
        `email_subscription_object`$fromJSON(jsonlite::toJSON(this_object$`email_subscription`, auto_unbox = TRUE, digits = NA))
        self$`email_subscription` <- `email_subscription_object`
      }
      if (!is.null(this_object$`limits`)) {
        `limits_object` <- ProjectCreateResponseLimits$new()
        `limits_object`$fromJSON(jsonlite::toJSON(this_object$`limits`, auto_unbox = TRUE, digits = NA))
        self$`limits` <- `limits_object`
      }
      if (!is.null(this_object$`idempotent`)) {
        self$`idempotent` <- this_object$`idempotent`
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
    #' @return ProjectCreateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project` <- this_object$`project`
      self$`prompts` <- ProjectCreateResponsePrompts$new()$fromJSON(jsonlite::toJSON(this_object$`prompts`, auto_unbox = TRUE, digits = NA))
      self$`competitors` <- ProjectCreateResponseCompetitors$new()$fromJSON(jsonlite::toJSON(this_object$`competitors`, auto_unbox = TRUE, digits = NA))
      self$`email_subscription` <- ProjectCreateResponseEmailSubscription$new()$fromJSON(jsonlite::toJSON(this_object$`email_subscription`, auto_unbox = TRUE, digits = NA))
      self$`limits` <- ProjectCreateResponseLimits$new()$fromJSON(jsonlite::toJSON(this_object$`limits`, auto_unbox = TRUE, digits = NA))
      self$`idempotent` <- this_object$`idempotent`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectCreateResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectCreateResponse
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
# ProjectCreateResponse$unlock()
#
## Below is an example to define the print function
# ProjectCreateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectCreateResponse$lock()

