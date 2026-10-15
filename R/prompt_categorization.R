#' Create a new PromptCategorization
#'
#' @description
#' PromptCategorization Class
#'
#' @docType class
#' @title PromptCategorization
#' @description PromptCategorization Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field raw_input  character
#' @field prompt_type  character [optional]
#' @field brand_kind  character [optional]
#' @field categorization_source manual after an edit by hand; the prompt page's revert hands it back to automatic categorization character [optional]
#' @field manually_categorized  character
#' @field categorized_at  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptCategorization <- R6::R6Class(
  "PromptCategorization",
  public = list(
    `id` = NULL,
    `raw_input` = NULL,
    `prompt_type` = NULL,
    `brand_kind` = NULL,
    `categorization_source` = NULL,
    `manually_categorized` = NULL,
    `categorized_at` = NULL,

    #' @description
    #' Initialize a new PromptCategorization class.
    #'
    #' @param id id
    #' @param raw_input raw_input
    #' @param manually_categorized manually_categorized
    #' @param prompt_type prompt_type
    #' @param brand_kind brand_kind
    #' @param categorization_source manual after an edit by hand; the prompt page's revert hands it back to automatic categorization
    #' @param categorized_at categorized_at
    #' @param ... Other optional arguments.
    initialize = function(`id`, `raw_input`, `manually_categorized`, `prompt_type` = NULL, `brand_kind` = NULL, `categorization_source` = NULL, `categorized_at` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`raw_input`)) {
        if (!(is.character(`raw_input`) && length(`raw_input`) == 1)) {
          stop(paste("Error! Invalid data for `raw_input`. Must be a string:", `raw_input`))
        }
        self$`raw_input` <- `raw_input`
      }
      if (!missing(`manually_categorized`)) {
        if (!(is.logical(`manually_categorized`) && length(`manually_categorized`) == 1)) {
          stop(paste("Error! Invalid data for `manually_categorized`. Must be a boolean:", `manually_categorized`))
        }
        self$`manually_categorized` <- `manually_categorized`
      }
      if (!is.null(`prompt_type`)) {
        if (!(is.character(`prompt_type`) && length(`prompt_type`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_type`. Must be a string:", `prompt_type`))
        }
        self$`prompt_type` <- `prompt_type`
      }
      if (!is.null(`brand_kind`)) {
        if (!(is.character(`brand_kind`) && length(`brand_kind`) == 1)) {
          stop(paste("Error! Invalid data for `brand_kind`. Must be a string:", `brand_kind`))
        }
        self$`brand_kind` <- `brand_kind`
      }
      if (!is.null(`categorization_source`)) {
        if (!(is.character(`categorization_source`) && length(`categorization_source`) == 1)) {
          stop(paste("Error! Invalid data for `categorization_source`. Must be a string:", `categorization_source`))
        }
        self$`categorization_source` <- `categorization_source`
      }
      if (!is.null(`categorized_at`)) {
        if (!is.character(`categorized_at`)) {
          stop(paste("Error! Invalid data for `categorized_at`. Must be a string:", `categorized_at`))
        }
        self$`categorized_at` <- `categorized_at`
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
    #' @return PromptCategorization as a base R list.
    #' @examples
    #' # convert array of PromptCategorization (x) to a data frame
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
    #' Convert PromptCategorization to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptCategorizationObject <- list()
      if (!is.null(self$`id`)) {
        PromptCategorizationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`raw_input`)) {
        PromptCategorizationObject[["raw_input"]] <-
          self$`raw_input`
      }
      if (!is.null(self$`prompt_type`)) {
        PromptCategorizationObject[["prompt_type"]] <-
          self$`prompt_type`
      }
      if (!is.null(self$`brand_kind`)) {
        PromptCategorizationObject[["brand_kind"]] <-
          self$`brand_kind`
      }
      if (!is.null(self$`categorization_source`)) {
        PromptCategorizationObject[["categorization_source"]] <-
          self$`categorization_source`
      }
      if (!is.null(self$`manually_categorized`)) {
        PromptCategorizationObject[["manually_categorized"]] <-
          self$`manually_categorized`
      }
      if (!is.null(self$`categorized_at`)) {
        PromptCategorizationObject[["categorized_at"]] <-
          self$`categorized_at`
      }
      return(PromptCategorizationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptCategorization
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptCategorization
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`raw_input`)) {
        self$`raw_input` <- this_object$`raw_input`
      }
      if (!is.null(this_object$`prompt_type`)) {
        self$`prompt_type` <- this_object$`prompt_type`
      }
      if (!is.null(this_object$`brand_kind`)) {
        self$`brand_kind` <- this_object$`brand_kind`
      }
      if (!is.null(this_object$`categorization_source`)) {
        self$`categorization_source` <- this_object$`categorization_source`
      }
      if (!is.null(this_object$`manually_categorized`)) {
        self$`manually_categorized` <- this_object$`manually_categorized`
      }
      if (!is.null(this_object$`categorized_at`)) {
        self$`categorized_at` <- this_object$`categorized_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PromptCategorization in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptCategorization
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptCategorization
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`raw_input` <- this_object$`raw_input`
      self$`prompt_type` <- this_object$`prompt_type`
      self$`brand_kind` <- this_object$`brand_kind`
      self$`categorization_source` <- this_object$`categorization_source`
      self$`manually_categorized` <- this_object$`manually_categorized`
      self$`categorized_at` <- this_object$`categorized_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptCategorization and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PromptCategorization: the required field `id` is missing."))
      }
      # check the required field `raw_input`
      if (!is.null(input_json$`raw_input`)) {
        if (!(is.character(input_json$`raw_input`) && length(input_json$`raw_input`) == 1)) {
          stop(paste("Error! Invalid data for `raw_input`. Must be a string:", input_json$`raw_input`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptCategorization: the required field `raw_input` is missing."))
      }
      # check the required field `manually_categorized`
      if (!is.null(input_json$`manually_categorized`)) {
        if (!(is.logical(input_json$`manually_categorized`) && length(input_json$`manually_categorized`) == 1)) {
          stop(paste("Error! Invalid data for `manually_categorized`. Must be a boolean:", input_json$`manually_categorized`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PromptCategorization: the required field `manually_categorized` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptCategorization
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

      # check if the required `raw_input` is null
      if (is.null(self$`raw_input`)) {
        return(FALSE)
      }

      # check if the required `manually_categorized` is null
      if (is.null(self$`manually_categorized`)) {
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

      # check if the required `raw_input` is null
      if (is.null(self$`raw_input`)) {
        invalid_fields["raw_input"] <- "Non-nullable required field `raw_input` cannot be null."
      }

      # check if the required `manually_categorized` is null
      if (is.null(self$`manually_categorized`)) {
        invalid_fields["manually_categorized"] <- "Non-nullable required field `manually_categorized` cannot be null."
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
# PromptCategorization$unlock()
#
## Below is an example to define the print function
# PromptCategorization$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptCategorization$lock()

