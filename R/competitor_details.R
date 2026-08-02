#' Create a new CompetitorDetails
#'
#' @description
#' CompetitorDetails Class
#'
#' @docType class
#' @title CompetitorDetails
#' @description CompetitorDetails Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field project_id  integer [optional]
#' @field brand_name  character [optional]
#' @field domain  character [optional]
#' @field matching_names  list(character) [optional]
#' @field google_play_id  character [optional]
#' @field app_store_id  character [optional]
#' @field color  character [optional]
#' @field created_at  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompetitorDetails <- R6::R6Class(
  "CompetitorDetails",
  public = list(
    `id` = NULL,
    `project_id` = NULL,
    `brand_name` = NULL,
    `domain` = NULL,
    `matching_names` = NULL,
    `google_play_id` = NULL,
    `app_store_id` = NULL,
    `color` = NULL,
    `created_at` = NULL,

    #' @description
    #' Initialize a new CompetitorDetails class.
    #'
    #' @param id id
    #' @param project_id project_id
    #' @param brand_name brand_name
    #' @param domain domain
    #' @param matching_names matching_names
    #' @param google_play_id google_play_id
    #' @param app_store_id app_store_id
    #' @param color color
    #' @param created_at created_at
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `project_id` = NULL, `brand_name` = NULL, `domain` = NULL, `matching_names` = NULL, `google_play_id` = NULL, `app_store_id` = NULL, `color` = NULL, `created_at` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`brand_name`)) {
        if (!(is.character(`brand_name`) && length(`brand_name`) == 1)) {
          stop(paste("Error! Invalid data for `brand_name`. Must be a string:", `brand_name`))
        }
        self$`brand_name` <- `brand_name`
      }
      if (!is.null(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!is.null(`matching_names`)) {
        stopifnot(is.vector(`matching_names`), length(`matching_names`) != 0)
        sapply(`matching_names`, function(x) stopifnot(is.character(x)))
        self$`matching_names` <- `matching_names`
      }
      if (!is.null(`google_play_id`)) {
        if (!(is.character(`google_play_id`) && length(`google_play_id`) == 1)) {
          stop(paste("Error! Invalid data for `google_play_id`. Must be a string:", `google_play_id`))
        }
        self$`google_play_id` <- `google_play_id`
      }
      if (!is.null(`app_store_id`)) {
        if (!(is.character(`app_store_id`) && length(`app_store_id`) == 1)) {
          stop(paste("Error! Invalid data for `app_store_id`. Must be a string:", `app_store_id`))
        }
        self$`app_store_id` <- `app_store_id`
      }
      if (!is.null(`color`)) {
        if (!(is.character(`color`) && length(`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", `color`))
        }
        self$`color` <- `color`
      }
      if (!is.null(`created_at`)) {
        if (!is.character(`created_at`)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
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
    #' @return CompetitorDetails as a base R list.
    #' @examples
    #' # convert array of CompetitorDetails (x) to a data frame
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
    #' Convert CompetitorDetails to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CompetitorDetailsObject <- list()
      if (!is.null(self$`id`)) {
        CompetitorDetailsObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`project_id`)) {
        CompetitorDetailsObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`brand_name`)) {
        CompetitorDetailsObject[["brand_name"]] <-
          self$`brand_name`
      }
      if (!is.null(self$`domain`)) {
        CompetitorDetailsObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`matching_names`)) {
        CompetitorDetailsObject[["matching_names"]] <-
          self$`matching_names`
      }
      if (!is.null(self$`google_play_id`)) {
        CompetitorDetailsObject[["google_play_id"]] <-
          self$`google_play_id`
      }
      if (!is.null(self$`app_store_id`)) {
        CompetitorDetailsObject[["app_store_id"]] <-
          self$`app_store_id`
      }
      if (!is.null(self$`color`)) {
        CompetitorDetailsObject[["color"]] <-
          self$`color`
      }
      if (!is.null(self$`created_at`)) {
        CompetitorDetailsObject[["created_at"]] <-
          self$`created_at`
      }
      return(CompetitorDetailsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CompetitorDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompetitorDetails
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`brand_name`)) {
        self$`brand_name` <- this_object$`brand_name`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`matching_names`)) {
        self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`google_play_id`)) {
        self$`google_play_id` <- this_object$`google_play_id`
      }
      if (!is.null(this_object$`app_store_id`)) {
        self$`app_store_id` <- this_object$`app_store_id`
      }
      if (!is.null(this_object$`color`)) {
        self$`color` <- this_object$`color`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CompetitorDetails in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CompetitorDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompetitorDetails
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`project_id` <- this_object$`project_id`
      self$`brand_name` <- this_object$`brand_name`
      self$`domain` <- this_object$`domain`
      self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      self$`google_play_id` <- this_object$`google_play_id`
      self$`app_store_id` <- this_object$`app_store_id`
      self$`color` <- this_object$`color`
      self$`created_at` <- this_object$`created_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to CompetitorDetails and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CompetitorDetails
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
# CompetitorDetails$unlock()
#
## Below is an example to define the print function
# CompetitorDetails$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompetitorDetails$lock()

