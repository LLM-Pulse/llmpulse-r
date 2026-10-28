#' Create a new CreateApiKeyRequest
#'
#' @description
#' CreateApiKeyRequest Class
#'
#' @docType class
#' @title CreateApiKeyRequest
#' @description CreateApiKeyRequest Class
#' @format An \code{R6Class} generator object
#' @field name A label to recognize the key, for example the customer it is for character
#' @field scope read (default) only reads data; read_write can also create, change and delete within the key's projects character [optional]
#' @field project_ids The projects the key is limited to, at least one list(integer)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateApiKeyRequest <- R6::R6Class(
  "CreateApiKeyRequest",
  public = list(
    `name` = NULL,
    `scope` = NULL,
    `project_ids` = NULL,

    #' @description
    #' Initialize a new CreateApiKeyRequest class.
    #'
    #' @param name A label to recognize the key, for example the customer it is for
    #' @param project_ids The projects the key is limited to, at least one
    #' @param scope read (default) only reads data; read_write can also create, change and delete within the key's projects. Default to "read".
    #' @param ... Other optional arguments.
    initialize = function(`name`, `project_ids`, `scope` = "read", ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`project_ids`)) {
        stopifnot(is.vector(`project_ids`), length(`project_ids`) != 0)
        sapply(`project_ids`, function(x) stopifnot(is.character(x)))
        self$`project_ids` <- `project_ids`
      }
      if (!is.null(`scope`)) {
        if (!(`scope` %in% c("read", "read_write"))) {
          stop(paste("Error! \"", `scope`, "\" cannot be assigned to `scope`. Must be \"read\", \"read_write\".", sep = ""))
        }
        if (!(is.character(`scope`) && length(`scope`) == 1)) {
          stop(paste("Error! Invalid data for `scope`. Must be a string:", `scope`))
        }
        self$`scope` <- `scope`
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
    #' @return CreateApiKeyRequest as a base R list.
    #' @examples
    #' # convert array of CreateApiKeyRequest (x) to a data frame
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
    #' Convert CreateApiKeyRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateApiKeyRequestObject <- list()
      if (!is.null(self$`name`)) {
        CreateApiKeyRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`scope`)) {
        CreateApiKeyRequestObject[["scope"]] <-
          self$`scope`
      }
      if (!is.null(self$`project_ids`)) {
        CreateApiKeyRequestObject[["project_ids"]] <-
          self$`project_ids`
      }
      return(CreateApiKeyRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateApiKeyRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateApiKeyRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`scope`)) {
        if (!is.null(this_object$`scope`) && !(this_object$`scope` %in% c("read", "read_write"))) {
          stop(paste("Error! \"", this_object$`scope`, "\" cannot be assigned to `scope`. Must be \"read\", \"read_write\".", sep = ""))
        }
        self$`scope` <- this_object$`scope`
      }
      if (!is.null(this_object$`project_ids`)) {
        self$`project_ids` <- ApiClient$new()$deserializeObj(this_object$`project_ids`, "array[integer]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateApiKeyRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateApiKeyRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateApiKeyRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      if (!is.null(this_object$`scope`) && !(this_object$`scope` %in% c("read", "read_write"))) {
        stop(paste("Error! \"", this_object$`scope`, "\" cannot be assigned to `scope`. Must be \"read\", \"read_write\".", sep = ""))
      }
      self$`scope` <- this_object$`scope`
      self$`project_ids` <- ApiClient$new()$deserializeObj(this_object$`project_ids`, "array[integer]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateApiKeyRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateApiKeyRequest: the required field `name` is missing."))
      }
      # check the required field `project_ids`
      if (!is.null(input_json$`project_ids`)) {
        stopifnot(is.vector(input_json$`project_ids`), length(input_json$`project_ids`) != 0)
        tmp <- sapply(input_json$`project_ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateApiKeyRequest: the required field `project_ids` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateApiKeyRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 100) {
        return(FALSE)
      }

      # check if the required `project_ids` is null
      if (is.null(self$`project_ids`)) {
        return(FALSE)
      }

      if (length(self$`project_ids`) < 1) {
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) > 100) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 100."
      }

      # check if the required `project_ids` is null
      if (is.null(self$`project_ids`)) {
        invalid_fields["project_ids"] <- "Non-nullable required field `project_ids` cannot be null."
      }

      if (length(self$`project_ids`) < 1) {
        invalid_fields["project_ids"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
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
# CreateApiKeyRequest$unlock()
#
## Below is an example to define the print function
# CreateApiKeyRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateApiKeyRequest$lock()

