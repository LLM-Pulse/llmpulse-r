#' Create a new CatalogPromptSuggestionsCreateRequest
#'
#' @description
#' CatalogPromptSuggestionsCreateRequest Class
#'
#' @docType class
#' @title CatalogPromptSuggestionsCreateRequest
#' @description CatalogPromptSuggestionsCreateRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field platform  character
#' @field country_code Defaults to the project country character [optional]
#' @field language_code Defaults to the project language character [optional]
#' @field products  list(\link{CatalogProduct})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CatalogPromptSuggestionsCreateRequest <- R6::R6Class(
  "CatalogPromptSuggestionsCreateRequest",
  public = list(
    `project_id` = NULL,
    `platform` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,
    `products` = NULL,

    #' @description
    #' Initialize a new CatalogPromptSuggestionsCreateRequest class.
    #'
    #' @param project_id project_id
    #' @param platform platform
    #' @param products products
    #' @param country_code Defaults to the project country
    #' @param language_code Defaults to the project language
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `platform`, `products`, `country_code` = NULL, `language_code` = NULL, ...) {
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
      if (!missing(`products`)) {
        stopifnot(is.vector(`products`), length(`products`) != 0)
        sapply(`products`, function(x) stopifnot(R6::is.R6(x)))
        self$`products` <- `products`
      }
      if (!is.null(`country_code`)) {
        if (!(is.character(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", `country_code`))
        }
        self$`country_code` <- `country_code`
      }
      if (!is.null(`language_code`)) {
        if (!(is.character(`language_code`) && length(`language_code`) == 1)) {
          stop(paste("Error! Invalid data for `language_code`. Must be a string:", `language_code`))
        }
        self$`language_code` <- `language_code`
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
    #' @return CatalogPromptSuggestionsCreateRequest as a base R list.
    #' @examples
    #' # convert array of CatalogPromptSuggestionsCreateRequest (x) to a data frame
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
    #' Convert CatalogPromptSuggestionsCreateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CatalogPromptSuggestionsCreateRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        CatalogPromptSuggestionsCreateRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`platform`)) {
        CatalogPromptSuggestionsCreateRequestObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`country_code`)) {
        CatalogPromptSuggestionsCreateRequestObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        CatalogPromptSuggestionsCreateRequestObject[["language_code"]] <-
          self$`language_code`
      }
      if (!is.null(self$`products`)) {
        CatalogPromptSuggestionsCreateRequestObject[["products"]] <-
          self$extractSimpleType(self$`products`)
      }
      return(CatalogPromptSuggestionsCreateRequestObject)
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
    #' Deserialize JSON string into an instance of CatalogPromptSuggestionsCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestionsCreateRequest
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
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      if (!is.null(this_object$`products`)) {
        self$`products` <- ApiClient$new()$deserializeObj(this_object$`products`, "array[CatalogProduct]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CatalogPromptSuggestionsCreateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CatalogPromptSuggestionsCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogPromptSuggestionsCreateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`platform`) && !(this_object$`platform` %in% c("shopify"))) {
        stop(paste("Error! \"", this_object$`platform`, "\" cannot be assigned to `platform`. Must be \"shopify\".", sep = ""))
      }
      self$`platform` <- this_object$`platform`
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self$`products` <- ApiClient$new()$deserializeObj(this_object$`products`, "array[CatalogProduct]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CatalogPromptSuggestionsCreateRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsCreateRequest: the required field `project_id` is missing."))
      }
      # check the required field `platform`
      if (!is.null(input_json$`platform`)) {
        if (!(is.character(input_json$`platform`) && length(input_json$`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", input_json$`platform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsCreateRequest: the required field `platform` is missing."))
      }
      # check the required field `products`
      if (!is.null(input_json$`products`)) {
        stopifnot(is.vector(input_json$`products`), length(input_json$`products`) != 0)
        tmp <- sapply(input_json$`products`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogPromptSuggestionsCreateRequest: the required field `products` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CatalogPromptSuggestionsCreateRequest
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

      # check if the required `products` is null
      if (is.null(self$`products`)) {
        return(FALSE)
      }

      if (length(self$`products`) > 20) {
        return(FALSE)
      }
      if (length(self$`products`) < 1) {
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

      # check if the required `products` is null
      if (is.null(self$`products`)) {
        invalid_fields["products"] <- "Non-nullable required field `products` cannot be null."
      }

      if (length(self$`products`) > 20) {
        invalid_fields["products"] <- "Invalid length for `products`, number of items must be less than or equal to 20."
      }
      if (length(self$`products`) < 1) {
        invalid_fields["products"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
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
# CatalogPromptSuggestionsCreateRequest$unlock()
#
## Below is an example to define the print function
# CatalogPromptSuggestionsCreateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CatalogPromptSuggestionsCreateRequest$lock()

