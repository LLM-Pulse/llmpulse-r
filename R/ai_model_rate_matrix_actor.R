#' Create a new AiModelRateMatrixActor
#'
#' @description
#' An actor (the standard actor shape) with one rate cell per model
#'
#' @docType class
#' @title AiModelRateMatrixActor
#' @description AiModelRateMatrixActor Class
#' @format An \code{R6Class} generator object
#' @field type  character [optional]
#' @field id Project id, or competitor id integer [optional]
#' @field competitor_id Null for the project, the competitor id otherwise integer [optional]
#' @field name  character [optional]
#' @field domain Bare (scheme-less) domain. Null for the project actor when the project has no URL. character [optional]
#' @field total The actor's numerators summed over the models integer [optional]
#' @field models One cell per model, keyed by model named list(\link{AiModelRateCell}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiModelRateMatrixActor <- R6::R6Class(
  "AiModelRateMatrixActor",
  public = list(
    `type` = NULL,
    `id` = NULL,
    `competitor_id` = NULL,
    `name` = NULL,
    `domain` = NULL,
    `total` = NULL,
    `models` = NULL,

    #' @description
    #' Initialize a new AiModelRateMatrixActor class.
    #'
    #' @param type type
    #' @param id Project id, or competitor id
    #' @param competitor_id Null for the project, the competitor id otherwise
    #' @param name name
    #' @param domain Bare (scheme-less) domain. Null for the project actor when the project has no URL.
    #' @param total The actor's numerators summed over the models
    #' @param models One cell per model, keyed by model
    #' @param ... Other optional arguments.
    initialize = function(`type` = NULL, `id` = NULL, `competitor_id` = NULL, `name` = NULL, `domain` = NULL, `total` = NULL, `models` = NULL, ...) {
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
      if (!is.null(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!is.null(`models`)) {
        stopifnot(is.vector(`models`), length(`models`) != 0)
        sapply(`models`, function(x) stopifnot(R6::is.R6(x)))
        self$`models` <- `models`
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
    #' @return AiModelRateMatrixActor as a base R list.
    #' @examples
    #' # convert array of AiModelRateMatrixActor (x) to a data frame
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
    #' Convert AiModelRateMatrixActor to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiModelRateMatrixActorObject <- list()
      if (!is.null(self$`type`)) {
        AiModelRateMatrixActorObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`id`)) {
        AiModelRateMatrixActorObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`competitor_id`)) {
        AiModelRateMatrixActorObject[["competitor_id"]] <-
          self$`competitor_id`
      }
      if (!is.null(self$`name`)) {
        AiModelRateMatrixActorObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`domain`)) {
        AiModelRateMatrixActorObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`total`)) {
        AiModelRateMatrixActorObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`models`)) {
        AiModelRateMatrixActorObject[["models"]] <-
          self$extractSimpleType(self$`models`)
      }
      return(AiModelRateMatrixActorObject)
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
    #' Deserialize JSON string into an instance of AiModelRateMatrixActor
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelRateMatrixActor
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
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`models`)) {
        self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "map(AiModelRateCell)", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiModelRateMatrixActor in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiModelRateMatrixActor
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiModelRateMatrixActor
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
      self$`total` <- this_object$`total`
      self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "map(AiModelRateCell)", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AiModelRateMatrixActor and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiModelRateMatrixActor
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
# AiModelRateMatrixActor$unlock()
#
## Below is an example to define the print function
# AiModelRateMatrixActor$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiModelRateMatrixActor$lock()

