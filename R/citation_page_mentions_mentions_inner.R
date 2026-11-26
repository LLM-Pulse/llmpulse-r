#' Create a new CitationPageMentionsMentionsInner
#'
#' @description
#' CitationPageMentionsMentionsInner Class
#'
#' @docType class
#' @title CitationPageMentionsMentionsInner
#' @description CitationPageMentionsMentionsInner Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field matched_key The name that matched character
#' @field snippet  character
#' @field start_offset  integer
#' @field end_offset  integer
#' @field position  integer
#' @field actor_type project or competitor character
#' @field competitor_id Null for the project integer
#' @field actor_name  character
#' @field actor_domain The competitor's domain, or the project's URL character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitationPageMentionsMentionsInner <- R6::R6Class(
  "CitationPageMentionsMentionsInner",
  public = list(
    `id` = NULL,
    `matched_key` = NULL,
    `snippet` = NULL,
    `start_offset` = NULL,
    `end_offset` = NULL,
    `position` = NULL,
    `actor_type` = NULL,
    `competitor_id` = NULL,
    `actor_name` = NULL,
    `actor_domain` = NULL,

    #' @description
    #' Initialize a new CitationPageMentionsMentionsInner class.
    #'
    #' @param id id
    #' @param matched_key The name that matched
    #' @param snippet snippet
    #' @param start_offset start_offset
    #' @param end_offset end_offset
    #' @param position position
    #' @param actor_type project or competitor
    #' @param competitor_id Null for the project
    #' @param actor_name actor_name
    #' @param actor_domain The competitor's domain, or the project's URL
    #' @param ... Other optional arguments.
    initialize = function(`id`, `matched_key`, `snippet`, `start_offset`, `end_offset`, `position`, `actor_type`, `competitor_id`, `actor_name`, `actor_domain`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`matched_key`)) {
        if (!(is.character(`matched_key`) && length(`matched_key`) == 1)) {
          stop(paste("Error! Invalid data for `matched_key`. Must be a string:", `matched_key`))
        }
        self$`matched_key` <- `matched_key`
      }
      if (!missing(`snippet`)) {
        if (!(is.character(`snippet`) && length(`snippet`) == 1)) {
          stop(paste("Error! Invalid data for `snippet`. Must be a string:", `snippet`))
        }
        self$`snippet` <- `snippet`
      }
      if (!missing(`start_offset`)) {
        if (!(is.numeric(`start_offset`) && length(`start_offset`) == 1)) {
          stop(paste("Error! Invalid data for `start_offset`. Must be an integer:", `start_offset`))
        }
        self$`start_offset` <- `start_offset`
      }
      if (!missing(`end_offset`)) {
        if (!(is.numeric(`end_offset`) && length(`end_offset`) == 1)) {
          stop(paste("Error! Invalid data for `end_offset`. Must be an integer:", `end_offset`))
        }
        self$`end_offset` <- `end_offset`
      }
      if (!missing(`position`)) {
        if (!(is.numeric(`position`) && length(`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", `position`))
        }
        self$`position` <- `position`
      }
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
      if (!missing(`actor_name`)) {
        if (!(is.character(`actor_name`) && length(`actor_name`) == 1)) {
          stop(paste("Error! Invalid data for `actor_name`. Must be a string:", `actor_name`))
        }
        self$`actor_name` <- `actor_name`
      }
      if (!missing(`actor_domain`)) {
        if (!(is.character(`actor_domain`) && length(`actor_domain`) == 1)) {
          stop(paste("Error! Invalid data for `actor_domain`. Must be a string:", `actor_domain`))
        }
        self$`actor_domain` <- `actor_domain`
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
    #' @return CitationPageMentionsMentionsInner as a base R list.
    #' @examples
    #' # convert array of CitationPageMentionsMentionsInner (x) to a data frame
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
    #' Convert CitationPageMentionsMentionsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitationPageMentionsMentionsInnerObject <- list()
      if (!is.null(self$`id`)) {
        CitationPageMentionsMentionsInnerObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`matched_key`)) {
        CitationPageMentionsMentionsInnerObject[["matched_key"]] <-
          self$`matched_key`
      }
      if (!is.null(self$`snippet`)) {
        CitationPageMentionsMentionsInnerObject[["snippet"]] <-
          self$`snippet`
      }
      if (!is.null(self$`start_offset`)) {
        CitationPageMentionsMentionsInnerObject[["start_offset"]] <-
          self$`start_offset`
      }
      if (!is.null(self$`end_offset`)) {
        CitationPageMentionsMentionsInnerObject[["end_offset"]] <-
          self$`end_offset`
      }
      if (!is.null(self$`position`)) {
        CitationPageMentionsMentionsInnerObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`actor_type`)) {
        CitationPageMentionsMentionsInnerObject[["actor_type"]] <-
          self$`actor_type`
      }
      if (!is.null(self$`competitor_id`)) {
        CitationPageMentionsMentionsInnerObject[["competitor_id"]] <-
          self$`competitor_id`
      }
      if (!is.null(self$`actor_name`)) {
        CitationPageMentionsMentionsInnerObject[["actor_name"]] <-
          self$`actor_name`
      }
      if (!is.null(self$`actor_domain`)) {
        CitationPageMentionsMentionsInnerObject[["actor_domain"]] <-
          self$`actor_domain`
      }
      return(CitationPageMentionsMentionsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationPageMentionsMentionsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationPageMentionsMentionsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`matched_key`)) {
        self$`matched_key` <- this_object$`matched_key`
      }
      if (!is.null(this_object$`snippet`)) {
        self$`snippet` <- this_object$`snippet`
      }
      if (!is.null(this_object$`start_offset`)) {
        self$`start_offset` <- this_object$`start_offset`
      }
      if (!is.null(this_object$`end_offset`)) {
        self$`end_offset` <- this_object$`end_offset`
      }
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      if (!is.null(this_object$`actor_type`)) {
        self$`actor_type` <- this_object$`actor_type`
      }
      if (!is.null(this_object$`competitor_id`)) {
        self$`competitor_id` <- this_object$`competitor_id`
      }
      if (!is.null(this_object$`actor_name`)) {
        self$`actor_name` <- this_object$`actor_name`
      }
      if (!is.null(this_object$`actor_domain`)) {
        self$`actor_domain` <- this_object$`actor_domain`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CitationPageMentionsMentionsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationPageMentionsMentionsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationPageMentionsMentionsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`matched_key` <- this_object$`matched_key`
      self$`snippet` <- this_object$`snippet`
      self$`start_offset` <- this_object$`start_offset`
      self$`end_offset` <- this_object$`end_offset`
      self$`position` <- this_object$`position`
      self$`actor_type` <- this_object$`actor_type`
      self$`competitor_id` <- this_object$`competitor_id`
      self$`actor_name` <- this_object$`actor_name`
      self$`actor_domain` <- this_object$`actor_domain`
      self
    },

    #' @description
    #' Validate JSON input with respect to CitationPageMentionsMentionsInner and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsMentionsInner: the required field `id` is missing."))
      }
      # check the required field `matched_key`
      if (!is.null(input_json$`matched_key`)) {
        if (!(is.character(input_json$`matched_key`) && length(input_json$`matched_key`) == 1)) {
          stop(paste("Error! Invalid data for `matched_key`. Must be a string:", input_json$`matched_key`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsMentionsInner: the required field `matched_key` is missing."))
      }
      # check the required field `snippet`
      if (!is.null(input_json$`snippet`)) {
        if (!(is.character(input_json$`snippet`) && length(input_json$`snippet`) == 1)) {
          stop(paste("Error! Invalid data for `snippet`. Must be a string:", input_json$`snippet`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsMentionsInner: the required field `snippet` is missing."))
      }
      # check the required field `start_offset`
      if (!is.null(input_json$`start_offset`)) {
        if (!(is.numeric(input_json$`start_offset`) && length(input_json$`start_offset`) == 1)) {
          stop(paste("Error! Invalid data for `start_offset`. Must be an integer:", input_json$`start_offset`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsMentionsInner: the required field `start_offset` is missing."))
      }
      # check the required field `end_offset`
      if (!is.null(input_json$`end_offset`)) {
        if (!(is.numeric(input_json$`end_offset`) && length(input_json$`end_offset`) == 1)) {
          stop(paste("Error! Invalid data for `end_offset`. Must be an integer:", input_json$`end_offset`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsMentionsInner: the required field `end_offset` is missing."))
      }
      # check the required field `position`
      if (!is.null(input_json$`position`)) {
        if (!(is.numeric(input_json$`position`) && length(input_json$`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", input_json$`position`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsMentionsInner: the required field `position` is missing."))
      }
      # check the required field `actor_type`
      if (!is.null(input_json$`actor_type`)) {
        if (!(is.character(input_json$`actor_type`) && length(input_json$`actor_type`) == 1)) {
          stop(paste("Error! Invalid data for `actor_type`. Must be a string:", input_json$`actor_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsMentionsInner: the required field `actor_type` is missing."))
      }
      # check the required field `competitor_id`
      if (!is.null(input_json$`competitor_id`)) {
        if (!(is.numeric(input_json$`competitor_id`) && length(input_json$`competitor_id`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_id`. Must be an integer:", input_json$`competitor_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsMentionsInner: the required field `competitor_id` is missing."))
      }
      # check the required field `actor_name`
      if (!is.null(input_json$`actor_name`)) {
        if (!(is.character(input_json$`actor_name`) && length(input_json$`actor_name`) == 1)) {
          stop(paste("Error! Invalid data for `actor_name`. Must be a string:", input_json$`actor_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsMentionsInner: the required field `actor_name` is missing."))
      }
      # check the required field `actor_domain`
      if (!is.null(input_json$`actor_domain`)) {
        if (!(is.character(input_json$`actor_domain`) && length(input_json$`actor_domain`) == 1)) {
          stop(paste("Error! Invalid data for `actor_domain`. Must be a string:", input_json$`actor_domain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentionsMentionsInner: the required field `actor_domain` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitationPageMentionsMentionsInner
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

      # check if the required `matched_key` is null
      if (is.null(self$`matched_key`)) {
        return(FALSE)
      }

      # check if the required `start_offset` is null
      if (is.null(self$`start_offset`)) {
        return(FALSE)
      }

      # check if the required `end_offset` is null
      if (is.null(self$`end_offset`)) {
        return(FALSE)
      }

      # check if the required `actor_type` is null
      if (is.null(self$`actor_type`)) {
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

      # check if the required `matched_key` is null
      if (is.null(self$`matched_key`)) {
        invalid_fields["matched_key"] <- "Non-nullable required field `matched_key` cannot be null."
      }

      # check if the required `start_offset` is null
      if (is.null(self$`start_offset`)) {
        invalid_fields["start_offset"] <- "Non-nullable required field `start_offset` cannot be null."
      }

      # check if the required `end_offset` is null
      if (is.null(self$`end_offset`)) {
        invalid_fields["end_offset"] <- "Non-nullable required field `end_offset` cannot be null."
      }

      # check if the required `actor_type` is null
      if (is.null(self$`actor_type`)) {
        invalid_fields["actor_type"] <- "Non-nullable required field `actor_type` cannot be null."
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
# CitationPageMentionsMentionsInner$unlock()
#
## Below is an example to define the print function
# CitationPageMentionsMentionsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitationPageMentionsMentionsInner$lock()

