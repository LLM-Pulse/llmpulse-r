#' Create a new UrlList
#'
#' @description
#' UrlList Class
#'
#' @docType class
#' @title UrlList
#' @description UrlList Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field name  character
#' @field description  character
#' @field currency The currency of the entry costs. character
#' @field created_at  character
#' @field updated_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlList <- R6::R6Class(
  "UrlList",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `currency` = NULL,
    `created_at` = NULL,
    `updated_at` = NULL,

    #' @description
    #' Initialize a new UrlList class.
    #'
    #' @param id id
    #' @param name name
    #' @param description description
    #' @param currency The currency of the entry costs.
    #' @param created_at created_at
    #' @param updated_at updated_at
    #' @param ... Other optional arguments.
    initialize = function(`id`, `name`, `description`, `currency`, `created_at`, `updated_at`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`currency`)) {
        if (!(`currency` %in% c("USD", "EUR", "GBP"))) {
          stop(paste("Error! \"", `currency`, "\" cannot be assigned to `currency`. Must be \"USD\", \"EUR\", \"GBP\".", sep = ""))
        }
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`updated_at`)) {
        if (!(is.character(`updated_at`) && length(`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
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
    #' @return UrlList as a base R list.
    #' @examples
    #' # convert array of UrlList (x) to a data frame
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
    #' Convert UrlList to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListObject <- list()
      if (!is.null(self$`id`)) {
        UrlListObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        UrlListObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        UrlListObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`currency`)) {
        UrlListObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`created_at`)) {
        UrlListObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        UrlListObject[["updated_at"]] <-
          self$`updated_at`
      }
      return(UrlListObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlList
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlList
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
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
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UrlList in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlList
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlList
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      if (!is.null(this_object$`currency`) && !(this_object$`currency` %in% c("USD", "EUR", "GBP"))) {
        stop(paste("Error! \"", this_object$`currency`, "\" cannot be assigned to `currency`. Must be \"USD\", \"EUR\", \"GBP\".", sep = ""))
      }
      self$`currency` <- this_object$`currency`
      self$`created_at` <- this_object$`created_at`
      self$`updated_at` <- this_object$`updated_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlList and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlList: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlList: the required field `name` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlList: the required field `description` is missing."))
      }
      # check the required field `currency`
      if (!is.null(input_json$`currency`)) {
        if (!(is.character(input_json$`currency`) && length(input_json$`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", input_json$`currency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlList: the required field `currency` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlList: the required field `created_at` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlList: the required field `updated_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlList
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        invalid_fields["currency"] <- "Non-nullable required field `currency` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
        invalid_fields["updated_at"] <- "Non-nullable required field `updated_at` cannot be null."
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
# UrlList$unlock()
#
## Below is an example to define the print function
# UrlList$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlList$lock()

