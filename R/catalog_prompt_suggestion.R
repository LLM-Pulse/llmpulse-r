#' Create a new CatalogPromptSuggestion
#'
#' @description
#' CatalogPromptSuggestion Class
#'
#' @docType class
#' @title CatalogPromptSuggestion
#' @description CatalogPromptSuggestion Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field prompt  character
#' @field status pending, accepted or rejected character
#' @field source Always catalog character
#' @field country_code  character
#' @field language_code  character
#' @field product  \link{CatalogPromptSuggestionProduct}
#' @field prompt_id The tracked prompt an accepted suggestion became; null until accepted integer
#' @field accepted_at When the suggestion was accepted; null until then character
#' @field created_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CatalogPromptSuggestion <- R6::R6Class(
  "CatalogPromptSuggestion",
  public = list(
    `id` = NULL,
    `prompt` = NULL,
    `status` = NULL,
    `source` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,
    `product` = NULL,
    `prompt_id` = NULL,
    `accepted_at` = NULL,
    `created_at` = NULL,

    #' @description
    #' Initialize a new CatalogPromptSuggestion class.
    #'
    #' @param id id
    #' @param prompt prompt
    #' @param status pending, accepted or rejected
    #' @param source Always catalog
    #' @param country_code country_code
    #' @param language_code language_code
    #' @param product product
    #' @param prompt_id The tracked prompt an accepted suggestion became; null until accepted
    #' @param accepted_at When the suggestion was accepted; null until then
    #' @param created_at created_at
    #' @param ... Other optional arguments.
    initialize = function(`id`, `prompt`, `status`, `source`, `country_code`, `language_code`, `product`, `prompt_id`, `accepted_at`, `created_at`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`prompt`)) {
        if (!(is.character(`prompt`) && length(`prompt`) == 1)) {
          stop(paste("Error! Invalid data for `prompt`. Must be a string:", `prompt`))
        }
        self$`prompt` <- `prompt`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`country_code`)) {
        if (!(is.character(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", `country_code`))
        }
        self$`country_code` <- `country_code`
      }
      if (!missing(`language_code`)) {
        if (!(is.character(`language_code`) && length(`language_code`) == 1)) {
          stop(paste("Error! Invalid data for `language_code`. Must be a string:", `language_code`))
        }
        self$`language_code` <- `language_code`
      }
      if (!missing(`product`)) {
        stopifnot(R6::is.R6(`product`))
        self$`product` <- `product`
      }
      if (!missing(`prompt_id`)) {
        if (!(is.numeric(`prompt_id`) && length(`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", `prompt_id`))
        }
        self$`prompt_id` <- `prompt_id`
      }
      if (!missing(`accepted_at`)) {
        if (!(is.character(`accepted_at`) && length(`accepted_at`) == 1)) {
          stop(paste("Error! Invalid data for `accepted_at`. Must be a string:", `accepted_at`))
        }
        self$`accepted_at` <- `accepted_at`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
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
    #' @return CatalogPromptSuggestion as a base R list.
    #' @examples
    #' # convert array of CatalogPromptSuggestion (x) to a data frame
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
    #' Convert CatalogPromptSuggestion to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CatalogPromptSuggestionObject <- list()
      if (!is.null(self$`id`)) {
        CatalogPromptSuggestionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`prompt`)) {
        CatalogPromptSuggestionObject[["prompt"]] <-
          self$`prompt`
      }
      if (!is.null(self$`status`)) {
        CatalogPromptSuggestionObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`source`)) {
        CatalogPromptSuggestionObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`country_code`)) {
        CatalogPromptSuggestionObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        CatalogPromptSuggestionObject[["language_code"]] <-
          self$`language_code`
      }
      if (!is.null(self$`product`)) {
        CatalogPromptSuggestionObject[["product"]] <-
          self$extractSimpleType(self$`product`)
      }
      if (!is.null(self$`prompt_id`)) {
        CatalogPromptSuggestionObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`accepted_at`)) {
        CatalogPromptSuggestionObject[["accepted_at"]] <-
          self$`accepted_at`
      }
      if (!is.null(self$`created_at`)) {
        CatalogPromptSuggestionObject[["created_at"]] <-
          self$`created_at`
      }
      return(CatalogPromptSuggestionObject)
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
    #' Deserialize JSON string into an instance of CatalogPromptSuggestion
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestion
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`prompt`)) {
        self$`prompt` <- this_object$`prompt`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      if (!is.null(this_object$`product`)) {
        `product_object` <- CatalogPromptSuggestionProduct$new()
        `product_object`$fromJSON(jsonlite::toJSON(this_object$`product`, auto_unbox = TRUE, digits = NA))
        self$`product` <- `product_object`
      }
      if (!is.null(this_object$`prompt_id`)) {
        self$`prompt_id` <- this_object$`prompt_id`
      }
      if (!is.null(this_object$`accepted_at`)) {
        self$`accepted_at` <- this_object$`accepted_at`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CatalogPromptSuggestion in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CatalogPromptSuggestion
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestion
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`prompt` <- this_object$`prompt`
      self$`status` <- this_object$`status`
      self$`source` <- this_object$`source`
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self$`product` <- CatalogPromptSuggestionProduct$new()$fromJSON(jsonlite::toJSON(this_object$`product`, auto_unbox = TRUE, digits = NA))
      self$`prompt_id` <- this_object$`prompt_id`
      self$`accepted_at` <- this_object$`accepted_at`
      self$`created_at` <- this_object$`created_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to CatalogPromptSuggestion and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestion: the required field `id` is missing."))
      }
      # check the required field `prompt`
      if (!is.null(input_json$`prompt`)) {
        if (!(is.character(input_json$`prompt`) && length(input_json$`prompt`) == 1)) {
          stop(paste("Error! Invalid data for `prompt`. Must be a string:", input_json$`prompt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestion: the required field `prompt` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestion: the required field `status` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestion: the required field `source` is missing."))
      }
      # check the required field `country_code`
      if (!is.null(input_json$`country_code`)) {
        if (!(is.character(input_json$`country_code`) && length(input_json$`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", input_json$`country_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestion: the required field `country_code` is missing."))
      }
      # check the required field `language_code`
      if (!is.null(input_json$`language_code`)) {
        if (!(is.character(input_json$`language_code`) && length(input_json$`language_code`) == 1)) {
          stop(paste("Error! Invalid data for `language_code`. Must be a string:", input_json$`language_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestion: the required field `language_code` is missing."))
      }
      # check the required field `product`
      if (!is.null(input_json$`product`)) {
        stopifnot(R6::is.R6(input_json$`product`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestion: the required field `product` is missing."))
      }
      # check the required field `prompt_id`
      if (!is.null(input_json$`prompt_id`)) {
        if (!(is.numeric(input_json$`prompt_id`) && length(input_json$`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", input_json$`prompt_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestion: the required field `prompt_id` is missing."))
      }
      # check the required field `accepted_at`
      if (!is.null(input_json$`accepted_at`)) {
        if (!(is.character(input_json$`accepted_at`) && length(input_json$`accepted_at`) == 1)) {
          stop(paste("Error! Invalid data for `accepted_at`. Must be a string:", input_json$`accepted_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestion: the required field `accepted_at` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestion: the required field `created_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CatalogPromptSuggestion
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

      # check if the required `prompt` is null
      if (is.null(self$`prompt`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `product` is null
      if (is.null(self$`product`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
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

      # check if the required `prompt` is null
      if (is.null(self$`prompt`)) {
        invalid_fields["prompt"] <- "Non-nullable required field `prompt` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `product` is null
      if (is.null(self$`product`)) {
        invalid_fields["product"] <- "Non-nullable required field `product` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
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
# CatalogPromptSuggestion$unlock()
#
## Below is an example to define the print function
# CatalogPromptSuggestion$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CatalogPromptSuggestion$lock()

