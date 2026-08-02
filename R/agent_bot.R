#' Create a new AgentBot
#'
#' @description
#' AgentBot Class
#'
#' @docType class
#' @title AgentBot
#' @description AgentBot Class
#' @format An \code{R6Class} generator object
#' @field slug  character [optional]
#' @field name  character [optional]
#' @field company  character [optional]
#' @field category  character [optional]
#' @field cf_verified_category  character [optional]
#' @field description  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AgentBot <- R6::R6Class(
  "AgentBot",
  public = list(
    `slug` = NULL,
    `name` = NULL,
    `company` = NULL,
    `category` = NULL,
    `cf_verified_category` = NULL,
    `description` = NULL,

    #' @description
    #' Initialize a new AgentBot class.
    #'
    #' @param slug slug
    #' @param name name
    #' @param company company
    #' @param category category
    #' @param cf_verified_category cf_verified_category
    #' @param description description
    #' @param ... Other optional arguments.
    initialize = function(`slug` = NULL, `name` = NULL, `company` = NULL, `category` = NULL, `cf_verified_category` = NULL, `description` = NULL, ...) {
      if (!is.null(`slug`)) {
        if (!(is.character(`slug`) && length(`slug`) == 1)) {
          stop(paste("Error! Invalid data for `slug`. Must be a string:", `slug`))
        }
        self$`slug` <- `slug`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`company`)) {
        if (!(is.character(`company`) && length(`company`) == 1)) {
          stop(paste("Error! Invalid data for `company`. Must be a string:", `company`))
        }
        self$`company` <- `company`
      }
      if (!is.null(`category`)) {
        if (!(is.character(`category`) && length(`category`) == 1)) {
          stop(paste("Error! Invalid data for `category`. Must be a string:", `category`))
        }
        self$`category` <- `category`
      }
      if (!is.null(`cf_verified_category`)) {
        if (!(is.character(`cf_verified_category`) && length(`cf_verified_category`) == 1)) {
          stop(paste("Error! Invalid data for `cf_verified_category`. Must be a string:", `cf_verified_category`))
        }
        self$`cf_verified_category` <- `cf_verified_category`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
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
    #' @return AgentBot as a base R list.
    #' @examples
    #' # convert array of AgentBot (x) to a data frame
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
    #' Convert AgentBot to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AgentBotObject <- list()
      if (!is.null(self$`slug`)) {
        AgentBotObject[["slug"]] <-
          self$`slug`
      }
      if (!is.null(self$`name`)) {
        AgentBotObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`company`)) {
        AgentBotObject[["company"]] <-
          self$`company`
      }
      if (!is.null(self$`category`)) {
        AgentBotObject[["category"]] <-
          self$`category`
      }
      if (!is.null(self$`cf_verified_category`)) {
        AgentBotObject[["cf_verified_category"]] <-
          self$`cf_verified_category`
      }
      if (!is.null(self$`description`)) {
        AgentBotObject[["description"]] <-
          self$`description`
      }
      return(AgentBotObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AgentBot
    #'
    #' @param input_json the JSON input
    #' @return the instance of AgentBot
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`slug`)) {
        self$`slug` <- this_object$`slug`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`company`)) {
        self$`company` <- this_object$`company`
      }
      if (!is.null(this_object$`category`)) {
        self$`category` <- this_object$`category`
      }
      if (!is.null(this_object$`cf_verified_category`)) {
        self$`cf_verified_category` <- this_object$`cf_verified_category`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AgentBot in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AgentBot
    #'
    #' @param input_json the JSON input
    #' @return the instance of AgentBot
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`slug` <- this_object$`slug`
      self$`name` <- this_object$`name`
      self$`company` <- this_object$`company`
      self$`category` <- this_object$`category`
      self$`cf_verified_category` <- this_object$`cf_verified_category`
      self$`description` <- this_object$`description`
      self
    },

    #' @description
    #' Validate JSON input with respect to AgentBot and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AgentBot
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
# AgentBot$unlock()
#
## Below is an example to define the print function
# AgentBot$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AgentBot$lock()

