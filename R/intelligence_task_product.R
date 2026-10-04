#' Create a new IntelligenceTaskProduct
#'
#' @description
#' The store product a product_listing task rewrites
#'
#' @docType class
#' @title IntelligenceTaskProduct
#' @description IntelligenceTaskProduct Class
#' @format An \code{R6Class} generator object
#' @field external_id  character [optional]
#' @field title  character
#' @field description_html  character [optional]
#' @field seo_title  character [optional]
#' @field seo_description  character [optional]
#' @field url  character [optional]
#' @field product_type  character [optional]
#' @field images  list(\link{IntelligenceTaskProductImagesInner}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IntelligenceTaskProduct <- R6::R6Class(
  "IntelligenceTaskProduct",
  public = list(
    `external_id` = NULL,
    `title` = NULL,
    `description_html` = NULL,
    `seo_title` = NULL,
    `seo_description` = NULL,
    `url` = NULL,
    `product_type` = NULL,
    `images` = NULL,

    #' @description
    #' Initialize a new IntelligenceTaskProduct class.
    #'
    #' @param title title
    #' @param external_id external_id
    #' @param description_html description_html
    #' @param seo_title seo_title
    #' @param seo_description seo_description
    #' @param url url
    #' @param product_type product_type
    #' @param images images
    #' @param ... Other optional arguments.
    initialize = function(`title`, `external_id` = NULL, `description_html` = NULL, `seo_title` = NULL, `seo_description` = NULL, `url` = NULL, `product_type` = NULL, `images` = NULL, ...) {
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`external_id`)) {
        if (!(is.character(`external_id`) && length(`external_id`) == 1)) {
          stop(paste("Error! Invalid data for `external_id`. Must be a string:", `external_id`))
        }
        self$`external_id` <- `external_id`
      }
      if (!is.null(`description_html`)) {
        if (!(is.character(`description_html`) && length(`description_html`) == 1)) {
          stop(paste("Error! Invalid data for `description_html`. Must be a string:", `description_html`))
        }
        self$`description_html` <- `description_html`
      }
      if (!is.null(`seo_title`)) {
        if (!(is.character(`seo_title`) && length(`seo_title`) == 1)) {
          stop(paste("Error! Invalid data for `seo_title`. Must be a string:", `seo_title`))
        }
        self$`seo_title` <- `seo_title`
      }
      if (!is.null(`seo_description`)) {
        if (!(is.character(`seo_description`) && length(`seo_description`) == 1)) {
          stop(paste("Error! Invalid data for `seo_description`. Must be a string:", `seo_description`))
        }
        self$`seo_description` <- `seo_description`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`product_type`)) {
        if (!(is.character(`product_type`) && length(`product_type`) == 1)) {
          stop(paste("Error! Invalid data for `product_type`. Must be a string:", `product_type`))
        }
        self$`product_type` <- `product_type`
      }
      if (!is.null(`images`)) {
        stopifnot(is.vector(`images`), length(`images`) != 0)
        sapply(`images`, function(x) stopifnot(R6::is.R6(x)))
        self$`images` <- `images`
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
    #' @return IntelligenceTaskProduct as a base R list.
    #' @examples
    #' # convert array of IntelligenceTaskProduct (x) to a data frame
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
    #' Convert IntelligenceTaskProduct to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IntelligenceTaskProductObject <- list()
      if (!is.null(self$`external_id`)) {
        IntelligenceTaskProductObject[["external_id"]] <-
          self$`external_id`
      }
      if (!is.null(self$`title`)) {
        IntelligenceTaskProductObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`description_html`)) {
        IntelligenceTaskProductObject[["description_html"]] <-
          self$`description_html`
      }
      if (!is.null(self$`seo_title`)) {
        IntelligenceTaskProductObject[["seo_title"]] <-
          self$`seo_title`
      }
      if (!is.null(self$`seo_description`)) {
        IntelligenceTaskProductObject[["seo_description"]] <-
          self$`seo_description`
      }
      if (!is.null(self$`url`)) {
        IntelligenceTaskProductObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`product_type`)) {
        IntelligenceTaskProductObject[["product_type"]] <-
          self$`product_type`
      }
      if (!is.null(self$`images`)) {
        IntelligenceTaskProductObject[["images"]] <-
          self$extractSimpleType(self$`images`)
      }
      return(IntelligenceTaskProductObject)
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
    #' Deserialize JSON string into an instance of IntelligenceTaskProduct
    #'
    #' @param input_json the JSON input
    #' @return the instance of IntelligenceTaskProduct
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`external_id`)) {
        self$`external_id` <- this_object$`external_id`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`description_html`)) {
        self$`description_html` <- this_object$`description_html`
      }
      if (!is.null(this_object$`seo_title`)) {
        self$`seo_title` <- this_object$`seo_title`
      }
      if (!is.null(this_object$`seo_description`)) {
        self$`seo_description` <- this_object$`seo_description`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`product_type`)) {
        self$`product_type` <- this_object$`product_type`
      }
      if (!is.null(this_object$`images`)) {
        self$`images` <- ApiClient$new()$deserializeObj(this_object$`images`, "array[IntelligenceTaskProductImagesInner]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IntelligenceTaskProduct in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IntelligenceTaskProduct
    #'
    #' @param input_json the JSON input
    #' @return the instance of IntelligenceTaskProduct
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`external_id` <- this_object$`external_id`
      self$`title` <- this_object$`title`
      self$`description_html` <- this_object$`description_html`
      self$`seo_title` <- this_object$`seo_title`
      self$`seo_description` <- this_object$`seo_description`
      self$`url` <- this_object$`url`
      self$`product_type` <- this_object$`product_type`
      self$`images` <- ApiClient$new()$deserializeObj(this_object$`images`, "array[IntelligenceTaskProductImagesInner]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to IntelligenceTaskProduct and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IntelligenceTaskProduct: the required field `title` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IntelligenceTaskProduct
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `title` is null
      if (is.null(self$`title`)) {
        return(FALSE)
      }

      if (nchar(self$`description_html`) > 20000) {
        return(FALSE)
      }

      if (length(self$`images`) > 20) {
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
      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      if (nchar(self$`description_html`) > 20000) {
        invalid_fields["description_html"] <- "Invalid length for `description_html`, must be smaller than or equal to 20000."
      }

      if (length(self$`images`) > 20) {
        invalid_fields["images"] <- "Invalid length for `images`, number of items must be less than or equal to 20."
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
# IntelligenceTaskProduct$unlock()
#
## Below is an example to define the print function
# IntelligenceTaskProduct$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IntelligenceTaskProduct$lock()

