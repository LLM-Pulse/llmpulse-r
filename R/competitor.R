#' Create a new Competitor
#'
#' @description
#' Competitor Class
#'
#' @docType class
#' @title Competitor
#' @description Competitor Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field name  character [optional]
#' @field domain  character [optional]
#' @field actor_type Only present when include_project_brand=true character [optional]
#' @field is_own Only present when include_project_brand=true character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Competitor <- R6::R6Class(
  "Competitor",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `domain` = NULL,
    `actor_type` = NULL,
    `is_own` = NULL,

    #' @description
    #' Initialize a new Competitor class.
    #'
    #' @param id id
    #' @param name name
    #' @param domain domain
    #' @param actor_type Only present when include_project_brand=true
    #' @param is_own Only present when include_project_brand=true
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `domain` = NULL, `actor_type` = NULL, `is_own` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
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
      if (!is.null(`actor_type`)) {
        if (!(`actor_type` %in% c("project", "competitor"))) {
          stop(paste("Error! \"", `actor_type`, "\" cannot be assigned to `actor_type`. Must be \"project\", \"competitor\".", sep = ""))
        }
        if (!(is.character(`actor_type`) && length(`actor_type`) == 1)) {
          stop(paste("Error! Invalid data for `actor_type`. Must be a string:", `actor_type`))
        }
        self$`actor_type` <- `actor_type`
      }
      if (!is.null(`is_own`)) {
        if (!(is.logical(`is_own`) && length(`is_own`) == 1)) {
          stop(paste("Error! Invalid data for `is_own`. Must be a boolean:", `is_own`))
        }
        self$`is_own` <- `is_own`
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
    #' @return Competitor as a base R list.
    #' @examples
    #' # convert array of Competitor (x) to a data frame
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
    #' Convert Competitor to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CompetitorObject <- list()
      if (!is.null(self$`id`)) {
        CompetitorObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CompetitorObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`domain`)) {
        CompetitorObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`actor_type`)) {
        CompetitorObject[["actor_type"]] <-
          self$`actor_type`
      }
      if (!is.null(self$`is_own`)) {
        CompetitorObject[["is_own"]] <-
          self$`is_own`
      }
      return(CompetitorObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Competitor
    #'
    #' @param input_json the JSON input
    #' @return the instance of Competitor
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`actor_type`)) {
        if (!is.null(this_object$`actor_type`) && !(this_object$`actor_type` %in% c("project", "competitor"))) {
          stop(paste("Error! \"", this_object$`actor_type`, "\" cannot be assigned to `actor_type`. Must be \"project\", \"competitor\".", sep = ""))
        }
        self$`actor_type` <- this_object$`actor_type`
      }
      if (!is.null(this_object$`is_own`)) {
        self$`is_own` <- this_object$`is_own`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Competitor in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Competitor
    #'
    #' @param input_json the JSON input
    #' @return the instance of Competitor
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`domain` <- this_object$`domain`
      if (!is.null(this_object$`actor_type`) && !(this_object$`actor_type` %in% c("project", "competitor"))) {
        stop(paste("Error! \"", this_object$`actor_type`, "\" cannot be assigned to `actor_type`. Must be \"project\", \"competitor\".", sep = ""))
      }
      self$`actor_type` <- this_object$`actor_type`
      self$`is_own` <- this_object$`is_own`
      self
    },

    #' @description
    #' Validate JSON input with respect to Competitor and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Competitor
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
# Competitor$unlock()
#
## Below is an example to define the print function
# Competitor$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Competitor$lock()

