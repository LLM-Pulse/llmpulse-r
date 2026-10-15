#' Create a new CustomReportFilters
#'
#' @description
#' CustomReportFilters Class
#'
#' @docType class
#' @title CustomReportFilters
#' @description CustomReportFilters Class
#' @format An \code{R6Class} generator object
#' @field models AI models the report covers; empty means every enabled model list(character)
#' @field collection_ids Tags the report is limited to; empty means every prompt list(integer)
#' @field brand_kind  character [optional]
#' @field competitor_ids Competitors compared, the report's own choice or else the Overview selection list(integer)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomReportFilters <- R6::R6Class(
  "CustomReportFilters",
  public = list(
    `models` = NULL,
    `collection_ids` = NULL,
    `brand_kind` = NULL,
    `competitor_ids` = NULL,

    #' @description
    #' Initialize a new CustomReportFilters class.
    #'
    #' @param models AI models the report covers; empty means every enabled model
    #' @param collection_ids Tags the report is limited to; empty means every prompt
    #' @param competitor_ids Competitors compared, the report's own choice or else the Overview selection
    #' @param brand_kind brand_kind
    #' @param ... Other optional arguments.
    initialize = function(`models`, `collection_ids`, `competitor_ids`, `brand_kind` = NULL, ...) {
      if (!missing(`models`)) {
        stopifnot(is.vector(`models`), length(`models`) != 0)
        sapply(`models`, function(x) stopifnot(is.character(x)))
        self$`models` <- `models`
      }
      if (!missing(`collection_ids`)) {
        stopifnot(is.vector(`collection_ids`), length(`collection_ids`) != 0)
        sapply(`collection_ids`, function(x) stopifnot(is.character(x)))
        self$`collection_ids` <- `collection_ids`
      }
      if (!missing(`competitor_ids`)) {
        stopifnot(is.vector(`competitor_ids`), length(`competitor_ids`) != 0)
        sapply(`competitor_ids`, function(x) stopifnot(is.character(x)))
        self$`competitor_ids` <- `competitor_ids`
      }
      if (!is.null(`brand_kind`)) {
        if (!(is.character(`brand_kind`) && length(`brand_kind`) == 1)) {
          stop(paste("Error! Invalid data for `brand_kind`. Must be a string:", `brand_kind`))
        }
        self$`brand_kind` <- `brand_kind`
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
    #' @return CustomReportFilters as a base R list.
    #' @examples
    #' # convert array of CustomReportFilters (x) to a data frame
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
    #' Convert CustomReportFilters to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomReportFiltersObject <- list()
      if (!is.null(self$`models`)) {
        CustomReportFiltersObject[["models"]] <-
          self$`models`
      }
      if (!is.null(self$`collection_ids`)) {
        CustomReportFiltersObject[["collection_ids"]] <-
          self$`collection_ids`
      }
      if (!is.null(self$`brand_kind`)) {
        CustomReportFiltersObject[["brand_kind"]] <-
          self$`brand_kind`
      }
      if (!is.null(self$`competitor_ids`)) {
        CustomReportFiltersObject[["competitor_ids"]] <-
          self$`competitor_ids`
      }
      return(CustomReportFiltersObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomReportFilters
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportFilters
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`models`)) {
        self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`collection_ids`)) {
        self$`collection_ids` <- ApiClient$new()$deserializeObj(this_object$`collection_ids`, "array[integer]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`brand_kind`)) {
        self$`brand_kind` <- this_object$`brand_kind`
      }
      if (!is.null(this_object$`competitor_ids`)) {
        self$`competitor_ids` <- ApiClient$new()$deserializeObj(this_object$`competitor_ids`, "array[integer]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CustomReportFilters in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomReportFilters
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomReportFilters
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[character]", loadNamespace("llmpulse"))
      self$`collection_ids` <- ApiClient$new()$deserializeObj(this_object$`collection_ids`, "array[integer]", loadNamespace("llmpulse"))
      self$`brand_kind` <- this_object$`brand_kind`
      self$`competitor_ids` <- ApiClient$new()$deserializeObj(this_object$`competitor_ids`, "array[integer]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CustomReportFilters and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `models`
      if (!is.null(input_json$`models`)) {
        stopifnot(is.vector(input_json$`models`), length(input_json$`models`) != 0)
        tmp <- sapply(input_json$`models`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportFilters: the required field `models` is missing."))
      }
      # check the required field `collection_ids`
      if (!is.null(input_json$`collection_ids`)) {
        stopifnot(is.vector(input_json$`collection_ids`), length(input_json$`collection_ids`) != 0)
        tmp <- sapply(input_json$`collection_ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportFilters: the required field `collection_ids` is missing."))
      }
      # check the required field `competitor_ids`
      if (!is.null(input_json$`competitor_ids`)) {
        stopifnot(is.vector(input_json$`competitor_ids`), length(input_json$`competitor_ids`) != 0)
        tmp <- sapply(input_json$`competitor_ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomReportFilters: the required field `competitor_ids` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CustomReportFilters
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `models` is null
      if (is.null(self$`models`)) {
        return(FALSE)
      }

      # check if the required `collection_ids` is null
      if (is.null(self$`collection_ids`)) {
        return(FALSE)
      }

      # check if the required `competitor_ids` is null
      if (is.null(self$`competitor_ids`)) {
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
      # check if the required `models` is null
      if (is.null(self$`models`)) {
        invalid_fields["models"] <- "Non-nullable required field `models` cannot be null."
      }

      # check if the required `collection_ids` is null
      if (is.null(self$`collection_ids`)) {
        invalid_fields["collection_ids"] <- "Non-nullable required field `collection_ids` cannot be null."
      }

      # check if the required `competitor_ids` is null
      if (is.null(self$`competitor_ids`)) {
        invalid_fields["competitor_ids"] <- "Non-nullable required field `competitor_ids` cannot be null."
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
# CustomReportFilters$unlock()
#
## Below is an example to define the print function
# CustomReportFilters$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CustomReportFilters$lock()

