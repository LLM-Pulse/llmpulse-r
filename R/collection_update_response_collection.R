#' Create a new CollectionUpdateResponseCollection
#'
#' @description
#' CollectionUpdateResponseCollection Class
#'
#' @docType class
#' @title CollectionUpdateResponseCollection
#' @description CollectionUpdateResponseCollection Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field name  character
#' @field description  character
#' @field prompts_count  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CollectionUpdateResponseCollection <- R6::R6Class(
  "CollectionUpdateResponseCollection",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `description` = NULL,
    `prompts_count` = NULL,

    #' @description
    #' Initialize a new CollectionUpdateResponseCollection class.
    #'
    #' @param id id
    #' @param name name
    #' @param description description
    #' @param prompts_count prompts_count
    #' @param ... Other optional arguments.
    initialize = function(`id`, `name`, `description`, `prompts_count`, ...) {
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
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`prompts_count`)) {
        if (!(is.numeric(`prompts_count`) && length(`prompts_count`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_count`. Must be an integer:", `prompts_count`))
        }
        self$`prompts_count` <- `prompts_count`
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
    #' @return CollectionUpdateResponseCollection as a base R list.
    #' @examples
    #' # convert array of CollectionUpdateResponseCollection (x) to a data frame
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
    #' Convert CollectionUpdateResponseCollection to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CollectionUpdateResponseCollectionObject <- list()
      if (!is.null(self$`id`)) {
        CollectionUpdateResponseCollectionObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CollectionUpdateResponseCollectionObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`description`)) {
        CollectionUpdateResponseCollectionObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`prompts_count`)) {
        CollectionUpdateResponseCollectionObject[["prompts_count"]] <-
          self$`prompts_count`
      }
      return(CollectionUpdateResponseCollectionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CollectionUpdateResponseCollection
    #'
    #' @param input_json the JSON input
    #' @return the instance of CollectionUpdateResponseCollection
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`prompts_count`)) {
        self$`prompts_count` <- this_object$`prompts_count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CollectionUpdateResponseCollection in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CollectionUpdateResponseCollection
    #'
    #' @param input_json the JSON input
    #' @return the instance of CollectionUpdateResponseCollection
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`description` <- this_object$`description`
      self$`prompts_count` <- this_object$`prompts_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to CollectionUpdateResponseCollection and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CollectionUpdateResponseCollection: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionUpdateResponseCollection: the required field `name` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionUpdateResponseCollection: the required field `description` is missing."))
      }
      # check the required field `prompts_count`
      if (!is.null(input_json$`prompts_count`)) {
        if (!(is.numeric(input_json$`prompts_count`) && length(input_json$`prompts_count`) == 1)) {
          stop(paste("Error! Invalid data for `prompts_count`. Must be an integer:", input_json$`prompts_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CollectionUpdateResponseCollection: the required field `prompts_count` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CollectionUpdateResponseCollection
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `prompts_count` is null
      if (is.null(self$`prompts_count`)) {
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `prompts_count` is null
      if (is.null(self$`prompts_count`)) {
        invalid_fields["prompts_count"] <- "Non-nullable required field `prompts_count` cannot be null."
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
# CollectionUpdateResponseCollection$unlock()
#
## Below is an example to define the print function
# CollectionUpdateResponseCollection$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CollectionUpdateResponseCollection$lock()

