#' Create a new CitingDomainMentionShareResponseDataInnerActorsInner
#'
#' @description
#' CitingDomainMentionShareResponseDataInnerActorsInner Class
#'
#' @docType class
#' @title CitingDomainMentionShareResponseDataInnerActorsInner
#' @description CitingDomainMentionShareResponseDataInnerActorsInner Class
#' @format An \code{R6Class} generator object
#' @field type brand or competitor character
#' @field id Null for the brand, the competitor id otherwise integer
#' @field name  character
#' @field mentions  integer
#' @field share mentions as a percentage (0-100) of total_mentions numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitingDomainMentionShareResponseDataInnerActorsInner <- R6::R6Class(
  "CitingDomainMentionShareResponseDataInnerActorsInner",
  public = list(
    `type` = NULL,
    `id` = NULL,
    `name` = NULL,
    `mentions` = NULL,
    `share` = NULL,

    #' @description
    #' Initialize a new CitingDomainMentionShareResponseDataInnerActorsInner class.
    #'
    #' @param type brand or competitor
    #' @param id Null for the brand, the competitor id otherwise
    #' @param name name
    #' @param mentions mentions
    #' @param share mentions as a percentage (0-100) of total_mentions
    #' @param ... Other optional arguments.
    initialize = function(`type`, `id`, `name`, `mentions`, `share`, ...) {
      if (!missing(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`mentions`)) {
        if (!(is.numeric(`mentions`) && length(`mentions`) == 1)) {
          stop(paste("Error! Invalid data for `mentions`. Must be an integer:", `mentions`))
        }
        self$`mentions` <- `mentions`
      }
      if (!missing(`share`)) {
        self$`share` <- `share`
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
    #' @return CitingDomainMentionShareResponseDataInnerActorsInner as a base R list.
    #' @examples
    #' # convert array of CitingDomainMentionShareResponseDataInnerActorsInner (x) to a data frame
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
    #' Convert CitingDomainMentionShareResponseDataInnerActorsInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitingDomainMentionShareResponseDataInnerActorsInnerObject <- list()
      if (!is.null(self$`type`)) {
        CitingDomainMentionShareResponseDataInnerActorsInnerObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`id`)) {
        CitingDomainMentionShareResponseDataInnerActorsInnerObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CitingDomainMentionShareResponseDataInnerActorsInnerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`mentions`)) {
        CitingDomainMentionShareResponseDataInnerActorsInnerObject[["mentions"]] <-
          self$`mentions`
      }
      if (!is.null(self$`share`)) {
        CitingDomainMentionShareResponseDataInnerActorsInnerObject[["share"]] <-
          self$`share`
      }
      return(CitingDomainMentionShareResponseDataInnerActorsInnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CitingDomainMentionShareResponseDataInnerActorsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitingDomainMentionShareResponseDataInnerActorsInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`mentions`)) {
        self$`mentions` <- this_object$`mentions`
      }
      if (!is.null(this_object$`share`)) {
        self$`share` <- this_object$`share`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CitingDomainMentionShareResponseDataInnerActorsInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitingDomainMentionShareResponseDataInnerActorsInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitingDomainMentionShareResponseDataInnerActorsInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`type` <- this_object$`type`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`mentions` <- this_object$`mentions`
      self$`share` <- this_object$`share`
      self
    },

    #' @description
    #' Validate JSON input with respect to CitingDomainMentionShareResponseDataInnerActorsInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitingDomainMentionShareResponseDataInnerActorsInner: the required field `type` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitingDomainMentionShareResponseDataInnerActorsInner: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitingDomainMentionShareResponseDataInnerActorsInner: the required field `name` is missing."))
      }
      # check the required field `mentions`
      if (!is.null(input_json$`mentions`)) {
        if (!(is.numeric(input_json$`mentions`) && length(input_json$`mentions`) == 1)) {
          stop(paste("Error! Invalid data for `mentions`. Must be an integer:", input_json$`mentions`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitingDomainMentionShareResponseDataInnerActorsInner: the required field `mentions` is missing."))
      }
      # check the required field `share`
      if (!is.null(input_json$`share`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitingDomainMentionShareResponseDataInnerActorsInner: the required field `share` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitingDomainMentionShareResponseDataInnerActorsInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `mentions` is null
      if (is.null(self$`mentions`)) {
        return(FALSE)
      }

      # check if the required `share` is null
      if (is.null(self$`share`)) {
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
      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `mentions` is null
      if (is.null(self$`mentions`)) {
        invalid_fields["mentions"] <- "Non-nullable required field `mentions` cannot be null."
      }

      # check if the required `share` is null
      if (is.null(self$`share`)) {
        invalid_fields["share"] <- "Non-nullable required field `share` cannot be null."
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
# CitingDomainMentionShareResponseDataInnerActorsInner$unlock()
#
## Below is an example to define the print function
# CitingDomainMentionShareResponseDataInnerActorsInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitingDomainMentionShareResponseDataInnerActorsInner$lock()

