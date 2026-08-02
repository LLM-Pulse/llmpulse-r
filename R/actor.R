#' Create a new Actor
#'
#' @description
#' Actor Class
#'
#' @docType class
#' @title Actor
#' @description Actor Class
#' @format An \code{R6Class} generator object
#' @field type  character [optional]
#' @field id  integer [optional]
#' @field competitor_id  integer [optional]
#' @field name  character [optional]
#' @field domain Bare (scheme-less) domain character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Actor <- R6::R6Class(
  "Actor",
  public = list(
    `type` = NULL,
    `id` = NULL,
    `competitor_id` = NULL,
    `name` = NULL,
    `domain` = NULL,

    #' @description
    #' Initialize a new Actor class.
    #'
    #' @param type type
    #' @param id id
    #' @param competitor_id competitor_id
    #' @param name name
    #' @param domain Bare (scheme-less) domain
    #' @param ... Other optional arguments.
    initialize = function(`type` = NULL, `id` = NULL, `competitor_id` = NULL, `name` = NULL, `domain` = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(`type` %in% c("project", "competitor"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"project\", \"competitor\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`competitor_id`)) {
        if (!(is.numeric(`competitor_id`) && length(`competitor_id`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_id`. Must be an integer:", `competitor_id`))
        }
        self$`competitor_id` <- `competitor_id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
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
    #' @return Actor as a base R list.
    #' @examples
    #' # convert array of Actor (x) to a data frame
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
    #' Convert Actor to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ActorObject <- list()
      if (!is.null(self$`type`)) {
        ActorObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`id`)) {
        ActorObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`competitor_id`)) {
        ActorObject[["competitor_id"]] <-
          self$`competitor_id`
      }
      if (!is.null(self$`name`)) {
        ActorObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`domain`)) {
        ActorObject[["domain"]] <-
          self$`domain`
      }
      return(ActorObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Actor
    #'
    #' @param input_json the JSON input
    #' @return the instance of Actor
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("project", "competitor"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"project\", \"competitor\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Actor in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Actor
    #'
    #' @param input_json the JSON input
    #' @return the instance of Actor
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("project", "competitor"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"project\", \"competitor\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`id` <- this_object$`id`
      self$`competitor_id` <- this_object$`competitor_id`
      self$`name` <- this_object$`name`
      self$`domain` <- this_object$`domain`
      self
    },

    #' @description
    #' Validate JSON input with respect to Actor and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Actor
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
# Actor$unlock()
#
## Below is an example to define the print function
# Actor$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Actor$lock()

