#' Create a new UrlListUpdateRequest
#'
#' @description
#' UrlListUpdateRequest Class
#'
#' @docType class
#' @title UrlListUpdateRequest
#' @description UrlListUpdateRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field name  character [optional]
#' @field description  character [optional]
#' @field currency  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListUpdateRequest <- R6::R6Class(
  "UrlListUpdateRequest",
  public = list(
    `project_id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `currency` = NULL,

    #' @description
    #' Initialize a new UrlListUpdateRequest class.
    #'
    #' @param project_id project_id
    #' @param name name
    #' @param description description
    #' @param currency currency
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `name` = NULL, `description` = NULL, `currency` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`name`)) {
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
    #' @return UrlListUpdateRequest as a base R list.
    #' @examples
    #' # convert array of UrlListUpdateRequest (x) to a data frame
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
    #' Convert UrlListUpdateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListUpdateRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        UrlListUpdateRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`name`)) {
        UrlListUpdateRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        UrlListUpdateRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`currency`)) {
        UrlListUpdateRequestObject[["currency"]] <-
          self$`currency`
      }
      return(UrlListUpdateRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListUpdateRequest
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UrlListUpdateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListUpdateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`currency`) && !(this_object$`currency` %in% c("USD", "EUR", "GBP"))) {
        stop(paste("Error! \"", this_object$`currency`, "\" cannot be assigned to `currency`. Must be \"USD\", \"EUR\", \"GBP\".", sep = ""))
      }
      self$`currency` <- this_object$`currency`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListUpdateRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UrlListUpdateRequest: the required field `project_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListUpdateRequest
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
# UrlListUpdateRequest$unlock()
#
## Below is an example to define the print function
# UrlListUpdateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListUpdateRequest$lock()

