#' Create a new AiOrdersUpdateRequest
#'
#' @description
#' AiOrdersUpdateRequest Class
#'
#' @docType class
#' @title AiOrdersUpdateRequest
#' @description AiOrdersUpdateRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field platform  character
#' @field currency ISO 4217 code, e.g. EUR character
#' @field from First day of the window this push replaces character
#' @field to Last day of the window; at most 400 days after from character
#' @field days  list(\link{AiOrdersUpdateRequestDaysInner})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiOrdersUpdateRequest <- R6::R6Class(
  "AiOrdersUpdateRequest",
  public = list(
    `project_id` = NULL,
    `platform` = NULL,
    `currency` = NULL,
    `from` = NULL,
    `to` = NULL,
    `days` = NULL,

    #' @description
    #' Initialize a new AiOrdersUpdateRequest class.
    #'
    #' @param project_id project_id
    #' @param platform platform
    #' @param currency ISO 4217 code, e.g. EUR
    #' @param from First day of the window this push replaces
    #' @param to Last day of the window; at most 400 days after from
    #' @param days days
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `platform`, `currency`, `from`, `to`, `days`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`platform`)) {
        if (!(`platform` %in% c("shopify"))) {
          stop(paste("Error! \"", `platform`, "\" cannot be assigned to `platform`. Must be \"shopify\".", sep = ""))
        }
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!missing(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!missing(`from`)) {
        if (!(is.character(`from`) && length(`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!missing(`to`)) {
        if (!(is.character(`to`) && length(`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!missing(`days`)) {
        stopifnot(is.vector(`days`), length(`days`) != 0)
        sapply(`days`, function(x) stopifnot(R6::is.R6(x)))
        self$`days` <- `days`
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
    #' @return AiOrdersUpdateRequest as a base R list.
    #' @examples
    #' # convert array of AiOrdersUpdateRequest (x) to a data frame
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
    #' Convert AiOrdersUpdateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiOrdersUpdateRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        AiOrdersUpdateRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`platform`)) {
        AiOrdersUpdateRequestObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`currency`)) {
        AiOrdersUpdateRequestObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`from`)) {
        AiOrdersUpdateRequestObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        AiOrdersUpdateRequestObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`days`)) {
        AiOrdersUpdateRequestObject[["days"]] <-
          self$extractSimpleType(self$`days`)
      }
      return(AiOrdersUpdateRequestObject)
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
    #' Deserialize JSON string into an instance of AiOrdersUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiOrdersUpdateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`platform`)) {
        if (!is.null(this_object$`platform`) && !(this_object$`platform` %in% c("shopify"))) {
          stop(paste("Error! \"", this_object$`platform`, "\" cannot be assigned to `platform`. Must be \"shopify\".", sep = ""))
        }
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`days`)) {
        self$`days` <- ApiClient$new()$deserializeObj(this_object$`days`, "array[AiOrdersUpdateRequestDaysInner]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiOrdersUpdateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiOrdersUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiOrdersUpdateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`platform`) && !(this_object$`platform` %in% c("shopify"))) {
        stop(paste("Error! \"", this_object$`platform`, "\" cannot be assigned to `platform`. Must be \"shopify\".", sep = ""))
      }
      self$`platform` <- this_object$`platform`
      self$`currency` <- this_object$`currency`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`days` <- ApiClient$new()$deserializeObj(this_object$`days`, "array[AiOrdersUpdateRequestDaysInner]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AiOrdersUpdateRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateRequest: the required field `project_id` is missing."))
      }
      # check the required field `platform`
      if (!is.null(input_json$`platform`)) {
        if (!(is.character(input_json$`platform`) && length(input_json$`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", input_json$`platform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateRequest: the required field `platform` is missing."))
      }
      # check the required field `currency`
      if (!is.null(input_json$`currency`)) {
        if (!(is.character(input_json$`currency`) && length(input_json$`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", input_json$`currency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateRequest: the required field `currency` is missing."))
      }
      # check the required field `from`
      if (!is.null(input_json$`from`)) {
        if (!(is.character(input_json$`from`) && length(input_json$`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", input_json$`from`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateRequest: the required field `from` is missing."))
      }
      # check the required field `to`
      if (!is.null(input_json$`to`)) {
        if (!(is.character(input_json$`to`) && length(input_json$`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", input_json$`to`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateRequest: the required field `to` is missing."))
      }
      # check the required field `days`
      if (!is.null(input_json$`days`)) {
        stopifnot(is.vector(input_json$`days`), length(input_json$`days`) != 0)
        tmp <- sapply(input_json$`days`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiOrdersUpdateRequest: the required field `days` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiOrdersUpdateRequest
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

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        return(FALSE)
      }

      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        return(FALSE)
      }

      # check if the required `from` is null
      if (is.null(self$`from`)) {
        return(FALSE)
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        return(FALSE)
      }

      # check if the required `days` is null
      if (is.null(self$`days`)) {
        return(FALSE)
      }

      if (length(self$`days`) > 400) {
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

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        invalid_fields["platform"] <- "Non-nullable required field `platform` cannot be null."
      }

      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        invalid_fields["currency"] <- "Non-nullable required field `currency` cannot be null."
      }

      # check if the required `from` is null
      if (is.null(self$`from`)) {
        invalid_fields["from"] <- "Non-nullable required field `from` cannot be null."
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        invalid_fields["to"] <- "Non-nullable required field `to` cannot be null."
      }

      # check if the required `days` is null
      if (is.null(self$`days`)) {
        invalid_fields["days"] <- "Non-nullable required field `days` cannot be null."
      }

      if (length(self$`days`) > 400) {
        invalid_fields["days"] <- "Invalid length for `days`, number of items must be less than or equal to 400."
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
# AiOrdersUpdateRequest$unlock()
#
## Below is an example to define the print function
# AiOrdersUpdateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiOrdersUpdateRequest$lock()

