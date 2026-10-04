#' Create a new StoreConnectionResponse
#'
#' @description
#' StoreConnectionResponse Class
#'
#' @docType class
#' @title StoreConnectionResponse
#' @description StoreConnectionResponse Class
#' @format An \code{R6Class} generator object
#' @field platform The store platform, e.g. shopify character
#' @field domain The store domain as compared: lowercase, without scheme, www or path character
#' @field project  \link{StoreConnectionResponseProject}
#' @field ambiguous True when several live projects match the store domain (for example one project per market). project is then null and the app asks the key holder to pick from candidates. character
#' @field candidates Every live project of the account, for a project picker list(\link{StoreConnectionResponseCandidatesInner})
#' @field account  \link{StoreConnectionResponseAccount}
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StoreConnectionResponse <- R6::R6Class(
  "StoreConnectionResponse",
  public = list(
    `platform` = NULL,
    `domain` = NULL,
    `project` = NULL,
    `ambiguous` = NULL,
    `candidates` = NULL,
    `account` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new StoreConnectionResponse class.
    #'
    #' @param platform The store platform, e.g. shopify
    #' @param domain The store domain as compared: lowercase, without scheme, www or path
    #' @param project project
    #' @param ambiguous True when several live projects match the store domain (for example one project per market). project is then null and the app asks the key holder to pick from candidates.
    #' @param candidates Every live project of the account, for a project picker
    #' @param account account
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`platform`, `domain`, `project`, `ambiguous`, `candidates`, `account`, `request_id`, ...) {
      if (!missing(`platform`)) {
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!missing(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!missing(`project`)) {
        stopifnot(R6::is.R6(`project`))
        self$`project` <- `project`
      }
      if (!missing(`ambiguous`)) {
        if (!(is.logical(`ambiguous`) && length(`ambiguous`) == 1)) {
          stop(paste("Error! Invalid data for `ambiguous`. Must be a boolean:", `ambiguous`))
        }
        self$`ambiguous` <- `ambiguous`
      }
      if (!missing(`candidates`)) {
        stopifnot(is.vector(`candidates`), length(`candidates`) != 0)
        sapply(`candidates`, function(x) stopifnot(R6::is.R6(x)))
        self$`candidates` <- `candidates`
      }
      if (!missing(`account`)) {
        stopifnot(R6::is.R6(`account`))
        self$`account` <- `account`
      }
      if (!missing(`request_id`)) {
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
    #' @return StoreConnectionResponse as a base R list.
    #' @examples
    #' # convert array of StoreConnectionResponse (x) to a data frame
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
    #' Convert StoreConnectionResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StoreConnectionResponseObject <- list()
      if (!is.null(self$`platform`)) {
        StoreConnectionResponseObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`domain`)) {
        StoreConnectionResponseObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`project`)) {
        StoreConnectionResponseObject[["project"]] <-
          self$extractSimpleType(self$`project`)
      }
      if (!is.null(self$`ambiguous`)) {
        StoreConnectionResponseObject[["ambiguous"]] <-
          self$`ambiguous`
      }
      if (!is.null(self$`candidates`)) {
        StoreConnectionResponseObject[["candidates"]] <-
          self$extractSimpleType(self$`candidates`)
      }
      if (!is.null(self$`account`)) {
        StoreConnectionResponseObject[["account"]] <-
          self$extractSimpleType(self$`account`)
      }
      if (!is.null(self$`request_id`)) {
        StoreConnectionResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(StoreConnectionResponseObject)
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
    #' Deserialize JSON string into an instance of StoreConnectionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of StoreConnectionResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`platform`)) {
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`project`)) {
        `project_object` <- StoreConnectionResponseProject$new()
        `project_object`$fromJSON(jsonlite::toJSON(this_object$`project`, auto_unbox = TRUE, digits = NA))
        self$`project` <- `project_object`
      }
      if (!is.null(this_object$`ambiguous`)) {
        self$`ambiguous` <- this_object$`ambiguous`
      }
      if (!is.null(this_object$`candidates`)) {
        self$`candidates` <- ApiClient$new()$deserializeObj(this_object$`candidates`, "array[StoreConnectionResponseCandidatesInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`account`)) {
        `account_object` <- StoreConnectionResponseAccount$new()
        `account_object`$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
        self$`account` <- `account_object`
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
    #' @return StoreConnectionResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StoreConnectionResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of StoreConnectionResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`platform` <- this_object$`platform`
      self$`domain` <- this_object$`domain`
      self$`project` <- StoreConnectionResponseProject$new()$fromJSON(jsonlite::toJSON(this_object$`project`, auto_unbox = TRUE, digits = NA))
      self$`ambiguous` <- this_object$`ambiguous`
      self$`candidates` <- ApiClient$new()$deserializeObj(this_object$`candidates`, "array[StoreConnectionResponseCandidatesInner]", loadNamespace("llmpulse"))
      self$`account` <- StoreConnectionResponseAccount$new()$fromJSON(jsonlite::toJSON(this_object$`account`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to StoreConnectionResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `platform`
      if (!is.null(input_json$`platform`)) {
        if (!(is.character(input_json$`platform`) && length(input_json$`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", input_json$`platform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StoreConnectionResponse: the required field `platform` is missing."))
      }
      # check the required field `domain`
      if (!is.null(input_json$`domain`)) {
        if (!(is.character(input_json$`domain`) && length(input_json$`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", input_json$`domain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StoreConnectionResponse: the required field `domain` is missing."))
      }
      # check the required field `project`
      if (!is.null(input_json$`project`)) {
        stopifnot(R6::is.R6(input_json$`project`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StoreConnectionResponse: the required field `project` is missing."))
      }
      # check the required field `ambiguous`
      if (!is.null(input_json$`ambiguous`)) {
        if (!(is.logical(input_json$`ambiguous`) && length(input_json$`ambiguous`) == 1)) {
          stop(paste("Error! Invalid data for `ambiguous`. Must be a boolean:", input_json$`ambiguous`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StoreConnectionResponse: the required field `ambiguous` is missing."))
      }
      # check the required field `candidates`
      if (!is.null(input_json$`candidates`)) {
        stopifnot(is.vector(input_json$`candidates`), length(input_json$`candidates`) != 0)
        tmp <- sapply(input_json$`candidates`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StoreConnectionResponse: the required field `candidates` is missing."))
      }
      # check the required field `account`
      if (!is.null(input_json$`account`)) {
        stopifnot(R6::is.R6(input_json$`account`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StoreConnectionResponse: the required field `account` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StoreConnectionResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StoreConnectionResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        return(FALSE)
      }

      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        return(FALSE)
      }

      # check if the required `ambiguous` is null
      if (is.null(self$`ambiguous`)) {
        return(FALSE)
      }

      # check if the required `candidates` is null
      if (is.null(self$`candidates`)) {
        return(FALSE)
      }

      # check if the required `account` is null
      if (is.null(self$`account`)) {
        return(FALSE)
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        invalid_fields["platform"] <- "Non-nullable required field `platform` cannot be null."
      }

      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        invalid_fields["domain"] <- "Non-nullable required field `domain` cannot be null."
      }

      # check if the required `ambiguous` is null
      if (is.null(self$`ambiguous`)) {
        invalid_fields["ambiguous"] <- "Non-nullable required field `ambiguous` cannot be null."
      }

      # check if the required `candidates` is null
      if (is.null(self$`candidates`)) {
        invalid_fields["candidates"] <- "Non-nullable required field `candidates` cannot be null."
      }

      # check if the required `account` is null
      if (is.null(self$`account`)) {
        invalid_fields["account"] <- "Non-nullable required field `account` cannot be null."
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
        invalid_fields["request_id"] <- "Non-nullable required field `request_id` cannot be null."
      }

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
# StoreConnectionResponse$unlock()
#
## Below is an example to define the print function
# StoreConnectionResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StoreConnectionResponse$lock()

