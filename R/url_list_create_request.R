#' Create a new UrlListCreateRequest
#'
#' @description
#' UrlListCreateRequest Class
#'
#' @docType class
#' @title UrlListCreateRequest
#' @description UrlListCreateRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field name  character
#' @field description  character [optional]
#' @field currency  character [optional]
#' @field entries  list(\link{UrlListEntryInput}) [optional]
#' @field match_type Read every entry without its own match_type as this type. Default detects it from each value. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListCreateRequest <- R6::R6Class(
  "UrlListCreateRequest",
  public = list(
    `project_id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `currency` = NULL,
    `entries` = NULL,
    `match_type` = NULL,

    #' @description
    #' Initialize a new UrlListCreateRequest class.
    #'
    #' @param project_id project_id
    #' @param name name
    #' @param description description
    #' @param currency currency. Default to "USD".
    #' @param entries entries
    #' @param match_type Read every entry without its own match_type as this type. Default detects it from each value.
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `name`, `description` = NULL, `currency` = "USD", `entries` = NULL, `match_type` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`currency`)) {
        if (!(`currency` %in% c("USD", "EUR", "GBP"))) {
          stop(paste("Error! \"", `currency`, "\" cannot be assigned to `currency`. Must be \"USD\", \"EUR\", \"GBP\".", sep = ""))
        }
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!is.null(`entries`)) {
        stopifnot(is.vector(`entries`), length(`entries`) != 0)
        sapply(`entries`, function(x) stopifnot(R6::is.R6(x)))
        self$`entries` <- `entries`
      }
      if (!is.null(`match_type`)) {
        if (!(`match_type` %in% c("url", "prefix", "domain"))) {
          stop(paste("Error! \"", `match_type`, "\" cannot be assigned to `match_type`. Must be \"url\", \"prefix\", \"domain\".", sep = ""))
        }
        if (!(is.character(`match_type`) && length(`match_type`) == 1)) {
          stop(paste("Error! Invalid data for `match_type`. Must be a string:", `match_type`))
        }
        self$`match_type` <- `match_type`
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
    #' @return UrlListCreateRequest as a base R list.
    #' @examples
    #' # convert array of UrlListCreateRequest (x) to a data frame
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
    #' Convert UrlListCreateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListCreateRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        UrlListCreateRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`name`)) {
        UrlListCreateRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        UrlListCreateRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`currency`)) {
        UrlListCreateRequestObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`entries`)) {
        UrlListCreateRequestObject[["entries"]] <-
          self$extractSimpleType(self$`entries`)
      }
      if (!is.null(self$`match_type`)) {
        UrlListCreateRequestObject[["match_type"]] <-
          self$`match_type`
      }
      return(UrlListCreateRequestObject)
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
    #' Deserialize JSON string into an instance of UrlListCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListCreateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`currency`)) {
        if (!is.null(this_object$`currency`) && !(this_object$`currency` %in% c("USD", "EUR", "GBP"))) {
          stop(paste("Error! \"", this_object$`currency`, "\" cannot be assigned to `currency`. Must be \"USD\", \"EUR\", \"GBP\".", sep = ""))
        }
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`entries`)) {
        self$`entries` <- ApiClient$new()$deserializeObj(this_object$`entries`, "array[UrlListEntryInput]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`match_type`)) {
        if (!is.null(this_object$`match_type`) && !(this_object$`match_type` %in% c("url", "prefix", "domain"))) {
          stop(paste("Error! \"", this_object$`match_type`, "\" cannot be assigned to `match_type`. Must be \"url\", \"prefix\", \"domain\".", sep = ""))
        }
        self$`match_type` <- this_object$`match_type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UrlListCreateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListCreateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`currency`) && !(this_object$`currency` %in% c("USD", "EUR", "GBP"))) {
        stop(paste("Error! \"", this_object$`currency`, "\" cannot be assigned to `currency`. Must be \"USD\", \"EUR\", \"GBP\".", sep = ""))
      }
      self$`currency` <- this_object$`currency`
      self$`entries` <- ApiClient$new()$deserializeObj(this_object$`entries`, "array[UrlListEntryInput]", loadNamespace("llmpulse"))
      if (!is.null(this_object$`match_type`) && !(this_object$`match_type` %in% c("url", "prefix", "domain"))) {
        stop(paste("Error! \"", this_object$`match_type`, "\" cannot be assigned to `match_type`. Must be \"url\", \"prefix\", \"domain\".", sep = ""))
      }
      self$`match_type` <- this_object$`match_type`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListCreateRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `project_id`
      if (!is.null(input_json$`project_id`)) {
        if (!(is.numeric(input_json$`project_id`) && length(input_json$`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", input_json$`project_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListCreateRequest: the required field `project_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListCreateRequest: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListCreateRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        invalid_fields["project_id"] <- "Non-nullable required field `project_id` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# UrlListCreateRequest$unlock()
#
## Below is an example to define the print function
# UrlListCreateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListCreateRequest$lock()

