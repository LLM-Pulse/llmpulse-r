#' Create a new CatalogProduct
#'
#' @description
#' CatalogProduct Class
#'
#' @docType class
#' @title CatalogProduct
#' @description CatalogProduct Class
#' @format An \code{R6Class} generator object
#' @field external_id The store's product id, e.g. gid://shopify/Product/1 character
#' @field title  character
#' @field handle  character [optional]
#' @field product_type  character [optional]
#' @field vendor  character [optional]
#' @field tags  list(character) [optional]
#' @field collections  list(character) [optional]
#' @field url  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CatalogProduct <- R6::R6Class(
  "CatalogProduct",
  public = list(
    `external_id` = NULL,
    `title` = NULL,
    `handle` = NULL,
    `product_type` = NULL,
    `vendor` = NULL,
    `tags` = NULL,
    `collections` = NULL,
    `url` = NULL,

    #' @description
    #' Initialize a new CatalogProduct class.
    #'
    #' @param external_id The store's product id, e.g. gid://shopify/Product/1
    #' @param title title
    #' @param handle handle
    #' @param product_type product_type
    #' @param vendor vendor
    #' @param tags tags
    #' @param collections collections
    #' @param url url
    #' @param ... Other optional arguments.
    initialize = function(`external_id`, `title`, `handle` = NULL, `product_type` = NULL, `vendor` = NULL, `tags` = NULL, `collections` = NULL, `url` = NULL, ...) {
      if (!missing(`external_id`)) {
        if (!(is.character(`external_id`) && length(`external_id`) == 1)) {
          stop(paste("Error! Invalid data for `external_id`. Must be a string:", `external_id`))
        }
        self$`external_id` <- `external_id`
      }
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`handle`)) {
        if (!(is.character(`handle`) && length(`handle`) == 1)) {
          stop(paste("Error! Invalid data for `handle`. Must be a string:", `handle`))
        }
        self$`handle` <- `handle`
      }
      if (!is.null(`product_type`)) {
        if (!(is.character(`product_type`) && length(`product_type`) == 1)) {
          stop(paste("Error! Invalid data for `product_type`. Must be a string:", `product_type`))
        }
        self$`product_type` <- `product_type`
      }
      if (!is.null(`vendor`)) {
        if (!(is.character(`vendor`) && length(`vendor`) == 1)) {
          stop(paste("Error! Invalid data for `vendor`. Must be a string:", `vendor`))
        }
        self$`vendor` <- `vendor`
      }
      if (!is.null(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
      if (!is.null(`collections`)) {
        stopifnot(is.vector(`collections`), length(`collections`) != 0)
        sapply(`collections`, function(x) stopifnot(is.character(x)))
        self$`collections` <- `collections`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
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
    #' @return CatalogProduct as a base R list.
    #' @examples
    #' # convert array of CatalogProduct (x) to a data frame
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
    #' Convert CatalogProduct to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CatalogProductObject <- list()
      if (!is.null(self$`external_id`)) {
        CatalogProductObject[["external_id"]] <-
          self$`external_id`
      }
      if (!is.null(self$`title`)) {
        CatalogProductObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`handle`)) {
        CatalogProductObject[["handle"]] <-
          self$`handle`
      }
      if (!is.null(self$`product_type`)) {
        CatalogProductObject[["product_type"]] <-
          self$`product_type`
      }
      if (!is.null(self$`vendor`)) {
        CatalogProductObject[["vendor"]] <-
          self$`vendor`
      }
      if (!is.null(self$`tags`)) {
        CatalogProductObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`collections`)) {
        CatalogProductObject[["collections"]] <-
          self$`collections`
      }
      if (!is.null(self$`url`)) {
        CatalogProductObject[["url"]] <-
          self$`url`
      }
      return(CatalogProductObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CatalogProduct
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogProduct
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`external_id`)) {
        self$`external_id` <- this_object$`external_id`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`handle`)) {
        self$`handle` <- this_object$`handle`
      }
      if (!is.null(this_object$`product_type`)) {
        self$`product_type` <- this_object$`product_type`
      }
      if (!is.null(this_object$`vendor`)) {
        self$`vendor` <- this_object$`vendor`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`collections`)) {
        self$`collections` <- ApiClient$new()$deserializeObj(this_object$`collections`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CatalogProduct in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CatalogProduct
    #'
    #' @param input_json the JSON input
    #' @return the instance of CatalogProduct
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`external_id` <- this_object$`external_id`
      self$`title` <- this_object$`title`
      self$`handle` <- this_object$`handle`
      self$`product_type` <- this_object$`product_type`
      self$`vendor` <- this_object$`vendor`
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("llmpulse"))
      self$`collections` <- ApiClient$new()$deserializeObj(this_object$`collections`, "array[character]", loadNamespace("llmpulse"))
      self$`url` <- this_object$`url`
      self
    },

    #' @description
    #' Validate JSON input with respect to CatalogProduct and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `external_id`
      if (!is.null(input_json$`external_id`)) {
        if (!(is.character(input_json$`external_id`) && length(input_json$`external_id`) == 1)) {
          stop(paste("Error! Invalid data for `external_id`. Must be a string:", input_json$`external_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogProduct: the required field `external_id` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CatalogProduct: the required field `title` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CatalogProduct
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `external_id` is null
      if (is.null(self$`external_id`)) {
        return(FALSE)
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        return(FALSE)
      }

      if (length(self$`tags`) > 20) {
        return(FALSE)
      }

      if (length(self$`collections`) > 20) {
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
      # check if the required `external_id` is null
      if (is.null(self$`external_id`)) {
        invalid_fields["external_id"] <- "Non-nullable required field `external_id` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      if (length(self$`tags`) > 20) {
        invalid_fields["tags"] <- "Invalid length for `tags`, number of items must be less than or equal to 20."
      }

      if (length(self$`collections`) > 20) {
        invalid_fields["collections"] <- "Invalid length for `collections`, number of items must be less than or equal to 20."
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
# CatalogProduct$unlock()
#
## Below is an example to define the print function
# CatalogProduct$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CatalogProduct$lock()

