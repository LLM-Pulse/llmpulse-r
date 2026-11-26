#' Create a new CitationPageMentionsBrandsInner
#'
#' @description
#' CitationPageMentionsBrandsInner Class
#'
#' @docType class
#' @title CitationPageMentionsBrandsInner
#' @description CitationPageMentionsBrandsInner Class
#' @format An \code{R6Class} generator object
#' @field actor_type project or competitor character
#' @field competitor_id Null for the project integer
#' @field name  character
#' @field domain The competitor's domain, or the project's URL (null when it has none) character
#' @field position  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitationPageMentionsBrandsInner <- R6::R6Class(
  "CitationPageMentionsBrandsInner",
  public = list(
    `actor_type` = NULL,
    `competitor_id` = NULL,
    `name` = NULL,
    `domain` = NULL,
    `position` = NULL,

    #' @description
    #' Initialize a new CitationPageMentionsBrandsInner class.
    #'
    #' @param actor_type project or competitor
    #' @param competitor_id Null for the project
    #' @param name name
    #' @param domain The competitor's domain, or the project's URL (null when it has none)
    #' @param position position
    #' @param ... Other optional arguments.
    initialize = function(`actor_type`, `competitor_id`, `name`, `domain`, `position`, ...) {
      if (!missing(`actor_type`)) {
        if (!(is.character(`actor_type`) && length(`actor_type`) == 1)) {
          stop(paste("Error! Invalid data for `actor_type`. Must be a string:", `actor_type`))
        }
        self$`actor_type` <- `actor_type`
      }
      if (!missing(`competitor_id`)) {
        if (!(is.numeric(`competitor_id`) && length(`competitor_id`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_id`. Must be an integer:", `competitor_id`))
        }
        self$`competitor_id` <- `competitor_id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!missing(`position`)) {
        if (!(is.numeric(`position`) && length(`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", `position`))
        }
        self$`position` <- `position`
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
    #' @return CitationPageMentionsBrandsInner as a base R list.
    #' @examples
    #' # convert array of CitationPageMentionsBrandsInner (x) to a data frame
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
    #' Convert CitationPageMentionsBrandsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitationPageMentionsBrandsInnerObject <- list()
      if (!is.null(self$`actor_type`)) {
        CitationPageMentionsBrandsInnerObject[["actor_type"]] <-
          self$`actor_type`
      }
      if (!is.null(self$`competitor_id`)) {
        CitationPageMentionsBrandsInnerObject[["competitor_id"]] <-
          self$`competitor_id`
      }
      if (!is.null(self$`name`)) {
        CitationPageMentionsBrandsInnerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`domain`)) {
        CitationPageMentionsBrandsInnerObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`position`)) {
        CitationPageMentionsBrandsInnerObject[["position"]] <-
          self$`position`
      }
      return(CitationPageMentionsBrandsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationPageMentionsBrandsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationPageMentionsBrandsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`actor_type`)) {
        self$`actor_type` <- this_object$`actor_type`
      }
      if (!is.null(this_object$`competitor_id`)) {
        self$`competitor_id` <- this_object$`competitor_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CitationPageMentionsBrandsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationPageMentionsBrandsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationPageMentionsBrandsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`actor_type` <- this_object$`actor_type`
      self$`competitor_id` <- this_object$`competitor_id`
      self$`name` <- this_object$`name`
      self$`domain` <- this_object$`domain`
      self$`position` <- this_object$`position`
      self
    },

    #' @description
    #' Validate JSON input with respect to CitationPageMentionsBrandsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `actor_type`
      if (!is.null(input_json$`actor_type`)) {
        if (!(is.character(input_json$`actor_type`) && length(input_json$`actor_type`) == 1)) {
          stop(paste("Error! Invalid data for `actor_type`. Must be a string:", input_json$`actor_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsBrandsInner: the required field `actor_type` is missing."))
      }
      # check the required field `competitor_id`
      if (!is.null(input_json$`competitor_id`)) {
        if (!(is.numeric(input_json$`competitor_id`) && length(input_json$`competitor_id`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_id`. Must be an integer:", input_json$`competitor_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsBrandsInner: the required field `competitor_id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsBrandsInner: the required field `name` is missing."))
      }
      # check the required field `domain`
      if (!is.null(input_json$`domain`)) {
        if (!(is.character(input_json$`domain`) && length(input_json$`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", input_json$`domain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsBrandsInner: the required field `domain` is missing."))
      }
      # check the required field `position`
      if (!is.null(input_json$`position`)) {
        if (!(is.numeric(input_json$`position`) && length(input_json$`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", input_json$`position`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsBrandsInner: the required field `position` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitationPageMentionsBrandsInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `actor_type` is null
      if (is.null(self$`actor_type`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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
      # check if the required `actor_type` is null
      if (is.null(self$`actor_type`)) {
        invalid_fields["actor_type"] <- "Non-nullable required field `actor_type` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# CitationPageMentionsBrandsInner$unlock()
#
## Below is an example to define the print function
# CitationPageMentionsBrandsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitationPageMentionsBrandsInner$lock()

