#' Create a new UpdateProjectRequest
#'
#' @description
#' UpdateProjectRequest Class
#'
#' @docType class
#' @title UpdateProjectRequest
#' @description UpdateProjectRequest Class
#' @format An \code{R6Class} generator object
#' @field brand_name Brand name used to detect mentions. Applies to future runs; it does not rewrite history character [optional]
#' @field description What the brand does. Context for Recommendations and GEO Writer (Brand Book) character [optional]
#' @field industry Single industry key (e.g. SAAS); unknown keys are rejected character [optional]
#' @field business_model Business model key (e.g. B2B_SAAS); unknown keys are rejected character [optional]
#' @field business_model_other Free-text business model, only accepted when business_model is OTHER; rejected against any other key character [optional]
#' @field target_audience Who the brand sells to (Brand Book) character [optional]
#' @field brand_voice Tone of voice guidance for generated content (Brand Book) character [optional]
#' @field goals What the brand wants to achieve. Context for GEO Writer and prompt suggestions character [optional]
#' @field primary_products Full replacement list of the main products or services list(character) [optional]
#' @field matching_names FULL replacement list of the brand-name variants used to detect mentions; send every variant to keep list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateProjectRequest <- R6::R6Class(
  "UpdateProjectRequest",
  public = list(
    `brand_name` = NULL,
    `description` = NULL,
    `industry` = NULL,
    `business_model` = NULL,
    `business_model_other` = NULL,
    `target_audience` = NULL,
    `brand_voice` = NULL,
    `goals` = NULL,
    `primary_products` = NULL,
    `matching_names` = NULL,

    #' @description
    #' Initialize a new UpdateProjectRequest class.
    #'
    #' @param brand_name Brand name used to detect mentions. Applies to future runs; it does not rewrite history
    #' @param description What the brand does. Context for Recommendations and GEO Writer (Brand Book)
    #' @param industry Single industry key (e.g. SAAS); unknown keys are rejected
    #' @param business_model Business model key (e.g. B2B_SAAS); unknown keys are rejected
    #' @param business_model_other Free-text business model, only accepted when business_model is OTHER; rejected against any other key
    #' @param target_audience Who the brand sells to (Brand Book)
    #' @param brand_voice Tone of voice guidance for generated content (Brand Book)
    #' @param goals What the brand wants to achieve. Context for GEO Writer and prompt suggestions
    #' @param primary_products Full replacement list of the main products or services
    #' @param matching_names FULL replacement list of the brand-name variants used to detect mentions; send every variant to keep
    #' @param ... Other optional arguments.
    initialize = function(`brand_name` = NULL, `description` = NULL, `industry` = NULL, `business_model` = NULL, `business_model_other` = NULL, `target_audience` = NULL, `brand_voice` = NULL, `goals` = NULL, `primary_products` = NULL, `matching_names` = NULL, ...) {
      if (!is.null(`brand_name`)) {
        if (!(is.character(`brand_name`) && length(`brand_name`) == 1)) {
          stop(paste("Error! Invalid data for `brand_name`. Must be a string:", `brand_name`))
        }
        self$`brand_name` <- `brand_name`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`industry`)) {
        if (!(is.character(`industry`) && length(`industry`) == 1)) {
          stop(paste("Error! Invalid data for `industry`. Must be a string:", `industry`))
        }
        self$`industry` <- `industry`
      }
      if (!is.null(`business_model`)) {
        if (!(is.character(`business_model`) && length(`business_model`) == 1)) {
          stop(paste("Error! Invalid data for `business_model`. Must be a string:", `business_model`))
        }
        self$`business_model` <- `business_model`
      }
      if (!is.null(`business_model_other`)) {
        if (!(is.character(`business_model_other`) && length(`business_model_other`) == 1)) {
          stop(paste("Error! Invalid data for `business_model_other`. Must be a string:", `business_model_other`))
        }
        self$`business_model_other` <- `business_model_other`
      }
      if (!is.null(`target_audience`)) {
        if (!(is.character(`target_audience`) && length(`target_audience`) == 1)) {
          stop(paste("Error! Invalid data for `target_audience`. Must be a string:", `target_audience`))
        }
        self$`target_audience` <- `target_audience`
      }
      if (!is.null(`brand_voice`)) {
        if (!(is.character(`brand_voice`) && length(`brand_voice`) == 1)) {
          stop(paste("Error! Invalid data for `brand_voice`. Must be a string:", `brand_voice`))
        }
        self$`brand_voice` <- `brand_voice`
      }
      if (!is.null(`goals`)) {
        if (!(is.character(`goals`) && length(`goals`) == 1)) {
          stop(paste("Error! Invalid data for `goals`. Must be a string:", `goals`))
        }
        self$`goals` <- `goals`
      }
      if (!is.null(`primary_products`)) {
        stopifnot(is.vector(`primary_products`), length(`primary_products`) != 0)
        sapply(`primary_products`, function(x) stopifnot(is.character(x)))
        self$`primary_products` <- `primary_products`
      }
      if (!is.null(`matching_names`)) {
        stopifnot(is.vector(`matching_names`), length(`matching_names`) != 0)
        sapply(`matching_names`, function(x) stopifnot(is.character(x)))
        self$`matching_names` <- `matching_names`
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
    #' @return UpdateProjectRequest as a base R list.
    #' @examples
    #' # convert array of UpdateProjectRequest (x) to a data frame
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
    #' Convert UpdateProjectRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpdateProjectRequestObject <- list()
      if (!is.null(self$`brand_name`)) {
        UpdateProjectRequestObject[["brand_name"]] <-
          self$`brand_name`
      }
      if (!is.null(self$`description`)) {
        UpdateProjectRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`industry`)) {
        UpdateProjectRequestObject[["industry"]] <-
          self$`industry`
      }
      if (!is.null(self$`business_model`)) {
        UpdateProjectRequestObject[["business_model"]] <-
          self$`business_model`
      }
      if (!is.null(self$`business_model_other`)) {
        UpdateProjectRequestObject[["business_model_other"]] <-
          self$`business_model_other`
      }
      if (!is.null(self$`target_audience`)) {
        UpdateProjectRequestObject[["target_audience"]] <-
          self$`target_audience`
      }
      if (!is.null(self$`brand_voice`)) {
        UpdateProjectRequestObject[["brand_voice"]] <-
          self$`brand_voice`
      }
      if (!is.null(self$`goals`)) {
        UpdateProjectRequestObject[["goals"]] <-
          self$`goals`
      }
      if (!is.null(self$`primary_products`)) {
        UpdateProjectRequestObject[["primary_products"]] <-
          self$`primary_products`
      }
      if (!is.null(self$`matching_names`)) {
        UpdateProjectRequestObject[["matching_names"]] <-
          self$`matching_names`
      }
      return(UpdateProjectRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateProjectRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateProjectRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`brand_name`)) {
        self$`brand_name` <- this_object$`brand_name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`industry`)) {
        self$`industry` <- this_object$`industry`
      }
      if (!is.null(this_object$`business_model`)) {
        self$`business_model` <- this_object$`business_model`
      }
      if (!is.null(this_object$`business_model_other`)) {
        self$`business_model_other` <- this_object$`business_model_other`
      }
      if (!is.null(this_object$`target_audience`)) {
        self$`target_audience` <- this_object$`target_audience`
      }
      if (!is.null(this_object$`brand_voice`)) {
        self$`brand_voice` <- this_object$`brand_voice`
      }
      if (!is.null(this_object$`goals`)) {
        self$`goals` <- this_object$`goals`
      }
      if (!is.null(this_object$`primary_products`)) {
        self$`primary_products` <- ApiClient$new()$deserializeObj(this_object$`primary_products`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`matching_names`)) {
        self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UpdateProjectRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateProjectRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateProjectRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`brand_name` <- this_object$`brand_name`
      self$`description` <- this_object$`description`
      self$`industry` <- this_object$`industry`
      self$`business_model` <- this_object$`business_model`
      self$`business_model_other` <- this_object$`business_model_other`
      self$`target_audience` <- this_object$`target_audience`
      self$`brand_voice` <- this_object$`brand_voice`
      self$`goals` <- this_object$`goals`
      self$`primary_products` <- ApiClient$new()$deserializeObj(this_object$`primary_products`, "array[character]", loadNamespace("llmpulse"))
      self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdateProjectRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateProjectRequest
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
# UpdateProjectRequest$unlock()
#
## Below is an example to define the print function
# UpdateProjectRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateProjectRequest$lock()

