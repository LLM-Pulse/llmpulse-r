#' Create a new CompetitorSuggestion
#'
#' @description
#' CompetitorSuggestion Class
#'
#' @docType class
#' @title CompetitorSuggestion
#' @description CompetitorSuggestion Class
#' @format An \code{R6Class} generator object
#' @field id The suggestion key (brands) or the id of one citing source row (citations) character
#' @field domain  character
#' @field brand_name The proposed brand name; null for a cited domain character [optional]
#' @field matching_names The names a tracked competitor would be matched by; empty for a cited domain list(character)
#' @field mentions Answers naming the brand, when the discovery counted them (brands only) integer [optional]
#' @field citations Answers citing the domain (citations only) integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompetitorSuggestion <- R6::R6Class(
  "CompetitorSuggestion",
  public = list(
    `id` = NULL,
    `domain` = NULL,
    `brand_name` = NULL,
    `matching_names` = NULL,
    `mentions` = NULL,
    `citations` = NULL,

    #' @description
    #' Initialize a new CompetitorSuggestion class.
    #'
    #' @param id The suggestion key (brands) or the id of one citing source row (citations)
    #' @param domain domain
    #' @param matching_names The names a tracked competitor would be matched by; empty for a cited domain
    #' @param brand_name The proposed brand name; null for a cited domain
    #' @param mentions Answers naming the brand, when the discovery counted them (brands only)
    #' @param citations Answers citing the domain (citations only)
    #' @param ... Other optional arguments.
    initialize = function(`id`, `domain`, `matching_names`, `brand_name` = NULL, `mentions` = NULL, `citations` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!missing(`matching_names`)) {
        stopifnot(is.vector(`matching_names`), length(`matching_names`) != 0)
        sapply(`matching_names`, function(x) stopifnot(is.character(x)))
        self$`matching_names` <- `matching_names`
      }
      if (!is.null(`brand_name`)) {
        if (!(is.character(`brand_name`) && length(`brand_name`) == 1)) {
          stop(paste("Error! Invalid data for `brand_name`. Must be a string:", `brand_name`))
        }
        self$`brand_name` <- `brand_name`
      }
      if (!is.null(`mentions`)) {
        if (!(is.numeric(`mentions`) && length(`mentions`) == 1)) {
          stop(paste("Error! Invalid data for `mentions`. Must be an integer:", `mentions`))
        }
        self$`mentions` <- `mentions`
      }
      if (!is.null(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
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
    #' @return CompetitorSuggestion as a base R list.
    #' @examples
    #' # convert array of CompetitorSuggestion (x) to a data frame
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
    #' Convert CompetitorSuggestion to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CompetitorSuggestionObject <- list()
      if (!is.null(self$`id`)) {
        CompetitorSuggestionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`domain`)) {
        CompetitorSuggestionObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`brand_name`)) {
        CompetitorSuggestionObject[["brand_name"]] <-
          self$`brand_name`
      }
      if (!is.null(self$`matching_names`)) {
        CompetitorSuggestionObject[["matching_names"]] <-
          self$`matching_names`
      }
      if (!is.null(self$`mentions`)) {
        CompetitorSuggestionObject[["mentions"]] <-
          self$`mentions`
      }
      if (!is.null(self$`citations`)) {
        CompetitorSuggestionObject[["citations"]] <-
          self$`citations`
      }
      return(CompetitorSuggestionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CompetitorSuggestion
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompetitorSuggestion
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`brand_name`)) {
        self$`brand_name` <- this_object$`brand_name`
      }
      if (!is.null(this_object$`matching_names`)) {
        self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`mentions`)) {
        self$`mentions` <- this_object$`mentions`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CompetitorSuggestion in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CompetitorSuggestion
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompetitorSuggestion
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`domain` <- this_object$`domain`
      self$`brand_name` <- this_object$`brand_name`
      self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      self$`mentions` <- this_object$`mentions`
      self$`citations` <- this_object$`citations`
      self
    },

    #' @description
    #' Validate JSON input with respect to CompetitorSuggestion and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorSuggestion: the required field `id` is missing."))
      }
      # check the required field `domain`
      if (!is.null(input_json$`domain`)) {
        if (!(is.character(input_json$`domain`) && length(input_json$`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", input_json$`domain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorSuggestion: the required field `domain` is missing."))
      }
      # check the required field `matching_names`
      if (!is.null(input_json$`matching_names`)) {
        stopifnot(is.vector(input_json$`matching_names`), length(input_json$`matching_names`) != 0)
        tmp <- sapply(input_json$`matching_names`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorSuggestion: the required field `matching_names` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CompetitorSuggestion
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

      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        return(FALSE)
      }

      # check if the required `matching_names` is null
      if (is.null(self$`matching_names`)) {
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

      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        invalid_fields["domain"] <- "Non-nullable required field `domain` cannot be null."
      }

      # check if the required `matching_names` is null
      if (is.null(self$`matching_names`)) {
        invalid_fields["matching_names"] <- "Non-nullable required field `matching_names` cannot be null."
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
# CompetitorSuggestion$unlock()
#
## Below is an example to define the print function
# CompetitorSuggestion$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompetitorSuggestion$lock()

