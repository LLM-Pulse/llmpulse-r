#' Create a new CreateApiKey201Response
#'
#' @description
#' CreateApiKey201Response Class
#'
#' @docType class
#' @title CreateApiKey201Response
#' @description CreateApiKey201Response Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field name  character
#' @field prefix The visible start of the token, to recognize the key. Never the secret itself. character
#' @field scope  character
#' @field project_scoped True when the key is limited to project_ids; false for an account-wide key. character
#' @field project_ids The projects the key is limited to; empty for an account-wide key. list(integer)
#' @field created_at  character
#' @field last_used_at Updated at most once a minute. character
#' @field revoked_at  character
#' @field token The secret to send as Bearer token. Shown only in this response. character
#' @field request_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateApiKey201Response <- R6::R6Class(
  "CreateApiKey201Response",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `prefix` = NULL,
    `scope` = NULL,
    `project_scoped` = NULL,
    `project_ids` = NULL,
    `created_at` = NULL,
    `last_used_at` = NULL,
    `revoked_at` = NULL,
    `token` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new CreateApiKey201Response class.
    #'
    #' @param id id
    #' @param name name
    #' @param prefix The visible start of the token, to recognize the key. Never the secret itself.
    #' @param scope scope
    #' @param project_scoped True when the key is limited to project_ids; false for an account-wide key.
    #' @param project_ids The projects the key is limited to; empty for an account-wide key.
    #' @param created_at created_at
    #' @param last_used_at Updated at most once a minute.
    #' @param revoked_at revoked_at
    #' @param token The secret to send as Bearer token. Shown only in this response.
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`id`, `name`, `prefix`, `scope`, `project_scoped`, `project_ids`, `created_at`, `last_used_at`, `revoked_at`, `token`, `request_id` = NULL, ...) {
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
      if (!missing(`prefix`)) {
        if (!(is.character(`prefix`) && length(`prefix`) == 1)) {
          stop(paste("Error! Invalid data for `prefix`. Must be a string:", `prefix`))
        }
        self$`prefix` <- `prefix`
      }
      if (!missing(`scope`)) {
        if (!(`scope` %in% c("read", "read_write"))) {
          stop(paste("Error! \"", `scope`, "\" cannot be assigned to `scope`. Must be \"read\", \"read_write\".", sep = ""))
        }
        if (!(is.character(`scope`) && length(`scope`) == 1)) {
          stop(paste("Error! Invalid data for `scope`. Must be a string:", `scope`))
        }
        self$`scope` <- `scope`
      }
      if (!missing(`project_scoped`)) {
        if (!(is.logical(`project_scoped`) && length(`project_scoped`) == 1)) {
          stop(paste("Error! Invalid data for `project_scoped`. Must be a boolean:", `project_scoped`))
        }
        self$`project_scoped` <- `project_scoped`
      }
      if (!missing(`project_ids`)) {
        stopifnot(is.vector(`project_ids`), length(`project_ids`) != 0)
        sapply(`project_ids`, function(x) stopifnot(is.character(x)))
        self$`project_ids` <- `project_ids`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`last_used_at`)) {
        if (!(is.character(`last_used_at`) && length(`last_used_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_used_at`. Must be a string:", `last_used_at`))
        }
        self$`last_used_at` <- `last_used_at`
      }
      if (!missing(`revoked_at`)) {
        if (!(is.character(`revoked_at`) && length(`revoked_at`) == 1)) {
          stop(paste("Error! Invalid data for `revoked_at`. Must be a string:", `revoked_at`))
        }
        self$`revoked_at` <- `revoked_at`
      }
      if (!missing(`token`)) {
        if (!(is.character(`token`) && length(`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", `token`))
        }
        self$`token` <- `token`
      }
      if (!is.null(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
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
    #' @return CreateApiKey201Response as a base R list.
    #' @examples
    #' # convert array of CreateApiKey201Response (x) to a data frame
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
    #' Convert CreateApiKey201Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateApiKey201ResponseObject <- list()
      if (!is.null(self$`id`)) {
        CreateApiKey201ResponseObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        CreateApiKey201ResponseObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`prefix`)) {
        CreateApiKey201ResponseObject[["prefix"]] <-
          self$`prefix`
      }
      if (!is.null(self$`scope`)) {
        CreateApiKey201ResponseObject[["scope"]] <-
          self$`scope`
      }
      if (!is.null(self$`project_scoped`)) {
        CreateApiKey201ResponseObject[["project_scoped"]] <-
          self$`project_scoped`
      }
      if (!is.null(self$`project_ids`)) {
        CreateApiKey201ResponseObject[["project_ids"]] <-
          self$`project_ids`
      }
      if (!is.null(self$`created_at`)) {
        CreateApiKey201ResponseObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`last_used_at`)) {
        CreateApiKey201ResponseObject[["last_used_at"]] <-
          self$`last_used_at`
      }
      if (!is.null(self$`revoked_at`)) {
        CreateApiKey201ResponseObject[["revoked_at"]] <-
          self$`revoked_at`
      }
      if (!is.null(self$`token`)) {
        CreateApiKey201ResponseObject[["token"]] <-
          self$`token`
      }
      if (!is.null(self$`request_id`)) {
        CreateApiKey201ResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(CreateApiKey201ResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateApiKey201Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateApiKey201Response
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`prefix`)) {
        self$`prefix` <- this_object$`prefix`
      }
      if (!is.null(this_object$`scope`)) {
        if (!is.null(this_object$`scope`) && !(this_object$`scope` %in% c("read", "read_write"))) {
          stop(paste("Error! \"", this_object$`scope`, "\" cannot be assigned to `scope`. Must be \"read\", \"read_write\".", sep = ""))
        }
        self$`scope` <- this_object$`scope`
      }
      if (!is.null(this_object$`project_scoped`)) {
        self$`project_scoped` <- this_object$`project_scoped`
      }
      if (!is.null(this_object$`project_ids`)) {
        self$`project_ids` <- ApiClient$new()$deserializeObj(this_object$`project_ids`, "array[integer]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`last_used_at`)) {
        self$`last_used_at` <- this_object$`last_used_at`
      }
      if (!is.null(this_object$`revoked_at`)) {
        self$`revoked_at` <- this_object$`revoked_at`
      }
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
      }
      if (!is.null(this_object$`request_id`)) {
        self$`request_id` <- this_object$`request_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateApiKey201Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateApiKey201Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateApiKey201Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`prefix` <- this_object$`prefix`
      if (!is.null(this_object$`scope`) && !(this_object$`scope` %in% c("read", "read_write"))) {
        stop(paste("Error! \"", this_object$`scope`, "\" cannot be assigned to `scope`. Must be \"read\", \"read_write\".", sep = ""))
      }
      self$`scope` <- this_object$`scope`
      self$`project_scoped` <- this_object$`project_scoped`
      self$`project_ids` <- ApiClient$new()$deserializeObj(this_object$`project_ids`, "array[integer]", loadNamespace("llmpulse"))
      self$`created_at` <- this_object$`created_at`
      self$`last_used_at` <- this_object$`last_used_at`
      self$`revoked_at` <- this_object$`revoked_at`
      self$`token` <- this_object$`token`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateApiKey201Response and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CreateApiKey201Response: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateApiKey201Response: the required field `name` is missing."))
      }
      # check the required field `prefix`
      if (!is.null(input_json$`prefix`)) {
        if (!(is.character(input_json$`prefix`) && length(input_json$`prefix`) == 1)) {
          stop(paste("Error! Invalid data for `prefix`. Must be a string:", input_json$`prefix`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateApiKey201Response: the required field `prefix` is missing."))
      }
      # check the required field `scope`
      if (!is.null(input_json$`scope`)) {
        if (!(is.character(input_json$`scope`) && length(input_json$`scope`) == 1)) {
          stop(paste("Error! Invalid data for `scope`. Must be a string:", input_json$`scope`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateApiKey201Response: the required field `scope` is missing."))
      }
      # check the required field `project_scoped`
      if (!is.null(input_json$`project_scoped`)) {
        if (!(is.logical(input_json$`project_scoped`) && length(input_json$`project_scoped`) == 1)) {
          stop(paste("Error! Invalid data for `project_scoped`. Must be a boolean:", input_json$`project_scoped`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateApiKey201Response: the required field `project_scoped` is missing."))
      }
      # check the required field `project_ids`
      if (!is.null(input_json$`project_ids`)) {
        stopifnot(is.vector(input_json$`project_ids`), length(input_json$`project_ids`) != 0)
        tmp <- sapply(input_json$`project_ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateApiKey201Response: the required field `project_ids` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateApiKey201Response: the required field `created_at` is missing."))
      }
      # check the required field `last_used_at`
      if (!is.null(input_json$`last_used_at`)) {
        if (!(is.character(input_json$`last_used_at`) && length(input_json$`last_used_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_used_at`. Must be a string:", input_json$`last_used_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateApiKey201Response: the required field `last_used_at` is missing."))
      }
      # check the required field `revoked_at`
      if (!is.null(input_json$`revoked_at`)) {
        if (!(is.character(input_json$`revoked_at`) && length(input_json$`revoked_at`) == 1)) {
          stop(paste("Error! Invalid data for `revoked_at`. Must be a string:", input_json$`revoked_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateApiKey201Response: the required field `revoked_at` is missing."))
      }
      # check the required field `token`
      if (!is.null(input_json$`token`)) {
        if (!(is.character(input_json$`token`) && length(input_json$`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", input_json$`token`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateApiKey201Response: the required field `token` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateApiKey201Response
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

      # check if the required `prefix` is null
      if (is.null(self$`prefix`)) {
        return(FALSE)
      }

      # check if the required `scope` is null
      if (is.null(self$`scope`)) {
        return(FALSE)
      }

      # check if the required `project_scoped` is null
      if (is.null(self$`project_scoped`)) {
        return(FALSE)
      }

      # check if the required `project_ids` is null
      if (is.null(self$`project_ids`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `token` is null
      if (is.null(self$`token`)) {
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

      # check if the required `prefix` is null
      if (is.null(self$`prefix`)) {
        invalid_fields["prefix"] <- "Non-nullable required field `prefix` cannot be null."
      }

      # check if the required `scope` is null
      if (is.null(self$`scope`)) {
        invalid_fields["scope"] <- "Non-nullable required field `scope` cannot be null."
      }

      # check if the required `project_scoped` is null
      if (is.null(self$`project_scoped`)) {
        invalid_fields["project_scoped"] <- "Non-nullable required field `project_scoped` cannot be null."
      }

      # check if the required `project_ids` is null
      if (is.null(self$`project_ids`)) {
        invalid_fields["project_ids"] <- "Non-nullable required field `project_ids` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `token` is null
      if (is.null(self$`token`)) {
        invalid_fields["token"] <- "Non-nullable required field `token` cannot be null."
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
# CreateApiKey201Response$unlock()
#
## Below is an example to define the print function
# CreateApiKey201Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateApiKey201Response$lock()

