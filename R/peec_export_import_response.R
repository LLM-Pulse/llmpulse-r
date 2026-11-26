#' Create a new PeecExportImportResponse
#'
#' @description
#' PeecExportImportResponse Class
#'
#' @docType class
#' @title PeecExportImportResponse
#' @description PeecExportImportResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field import_id  integer
#' @field status The import was accepted and finishes in the background character
#' @field prompts Distinct prompts of the file, per country and language; each becomes a tracked prompt of the project integer
#' @field new_prompts The prompts the project does not hold yet, counted against the plan integer
#' @field planned_answers Weekly answers the import files (prompts x tracked AI models x weeks) integer
#' @field models Each AI model name of the file that is imported, with the tracked AI model its answers are filed under named list(character)
#' @field skipped_models AI model names of the file whose answers are skipped, because the account does not track them list(character)
#' @field detected_brands Brand names the export's mentions column lists (up to 50), none of them created as competitors list(character)
#' @field app_url Opens the project's prompts in the app character
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PeecExportImportResponse <- R6::R6Class(
  "PeecExportImportResponse",
  public = list(
    `project_id` = NULL,
    `import_id` = NULL,
    `status` = NULL,
    `prompts` = NULL,
    `new_prompts` = NULL,
    `planned_answers` = NULL,
    `models` = NULL,
    `skipped_models` = NULL,
    `detected_brands` = NULL,
    `app_url` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new PeecExportImportResponse class.
    #'
    #' @param project_id project_id
    #' @param import_id import_id
    #' @param status The import was accepted and finishes in the background
    #' @param prompts Distinct prompts of the file, per country and language; each becomes a tracked prompt of the project
    #' @param new_prompts The prompts the project does not hold yet, counted against the plan
    #' @param planned_answers Weekly answers the import files (prompts x tracked AI models x weeks)
    #' @param models Each AI model name of the file that is imported, with the tracked AI model its answers are filed under
    #' @param skipped_models AI model names of the file whose answers are skipped, because the account does not track them
    #' @param detected_brands Brand names the export's mentions column lists (up to 50), none of them created as competitors
    #' @param app_url Opens the project's prompts in the app
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `import_id`, `status`, `prompts`, `new_prompts`, `planned_answers`, `models`, `skipped_models`, `detected_brands`, `app_url`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`import_id`)) {
        if (!(is.numeric(`import_id`) && length(`import_id`) == 1)) {
          stop(paste("Error! Invalid data for `import_id`. Must be an integer:", `import_id`))
        }
        self$`import_id` <- `import_id`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c("started"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"started\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`prompts`)) {
        if (!(is.numeric(`prompts`) && length(`prompts`) == 1)) {
          stop(paste("Error! Invalid data for `prompts`. Must be an integer:", `prompts`))
        }
        self$`prompts` <- `prompts`
      }
      if (!missing(`new_prompts`)) {
        if (!(is.numeric(`new_prompts`) && length(`new_prompts`) == 1)) {
          stop(paste("Error! Invalid data for `new_prompts`. Must be an integer:", `new_prompts`))
        }
        self$`new_prompts` <- `new_prompts`
      }
      if (!missing(`planned_answers`)) {
        if (!(is.numeric(`planned_answers`) && length(`planned_answers`) == 1)) {
          stop(paste("Error! Invalid data for `planned_answers`. Must be an integer:", `planned_answers`))
        }
        self$`planned_answers` <- `planned_answers`
      }
      if (!missing(`models`)) {
        stopifnot(is.vector(`models`), length(`models`) != 0)
        sapply(`models`, function(x) stopifnot(is.character(x)))
        self$`models` <- `models`
      }
      if (!missing(`skipped_models`)) {
        stopifnot(is.vector(`skipped_models`), length(`skipped_models`) != 0)
        sapply(`skipped_models`, function(x) stopifnot(is.character(x)))
        self$`skipped_models` <- `skipped_models`
      }
      if (!missing(`detected_brands`)) {
        stopifnot(is.vector(`detected_brands`), length(`detected_brands`) != 0)
        sapply(`detected_brands`, function(x) stopifnot(is.character(x)))
        self$`detected_brands` <- `detected_brands`
      }
      if (!missing(`app_url`)) {
        if (!(is.character(`app_url`) && length(`app_url`) == 1)) {
          stop(paste("Error! Invalid data for `app_url`. Must be a string:", `app_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `app_url`. Must be a URL:", `app_url`))
        }
        self$`app_url` <- `app_url`
      }
      if (!missing(`request_id`)) {
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
    #' @return PeecExportImportResponse as a base R list.
    #' @examples
    #' # convert array of PeecExportImportResponse (x) to a data frame
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
    #' Convert PeecExportImportResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PeecExportImportResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        PeecExportImportResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`import_id`)) {
        PeecExportImportResponseObject[["import_id"]] <-
          self$`import_id`
      }
      if (!is.null(self$`status`)) {
        PeecExportImportResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`prompts`)) {
        PeecExportImportResponseObject[["prompts"]] <-
          self$`prompts`
      }
      if (!is.null(self$`new_prompts`)) {
        PeecExportImportResponseObject[["new_prompts"]] <-
          self$`new_prompts`
      }
      if (!is.null(self$`planned_answers`)) {
        PeecExportImportResponseObject[["planned_answers"]] <-
          self$`planned_answers`
      }
      if (!is.null(self$`models`)) {
        PeecExportImportResponseObject[["models"]] <-
          self$`models`
      }
      if (!is.null(self$`skipped_models`)) {
        PeecExportImportResponseObject[["skipped_models"]] <-
          self$`skipped_models`
      }
      if (!is.null(self$`detected_brands`)) {
        PeecExportImportResponseObject[["detected_brands"]] <-
          self$`detected_brands`
      }
      if (!is.null(self$`app_url`)) {
        PeecExportImportResponseObject[["app_url"]] <-
          self$`app_url`
      }
      if (!is.null(self$`request_id`)) {
        PeecExportImportResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(PeecExportImportResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PeecExportImportResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PeecExportImportResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`import_id`)) {
        self$`import_id` <- this_object$`import_id`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("started"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"started\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`prompts`)) {
        self$`prompts` <- this_object$`prompts`
      }
      if (!is.null(this_object$`new_prompts`)) {
        self$`new_prompts` <- this_object$`new_prompts`
      }
      if (!is.null(this_object$`planned_answers`)) {
        self$`planned_answers` <- this_object$`planned_answers`
      }
      if (!is.null(this_object$`models`)) {
        self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "map(character)", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`skipped_models`)) {
        self$`skipped_models` <- ApiClient$new()$deserializeObj(this_object$`skipped_models`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`detected_brands`)) {
        self$`detected_brands` <- ApiClient$new()$deserializeObj(this_object$`detected_brands`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`app_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `app_url`. Must be a URL:", this_object$`app_url`))
        }
        self$`app_url` <- this_object$`app_url`
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
    #' @return PeecExportImportResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PeecExportImportResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PeecExportImportResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`import_id` <- this_object$`import_id`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("started"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"started\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`prompts` <- this_object$`prompts`
      self$`new_prompts` <- this_object$`new_prompts`
      self$`planned_answers` <- this_object$`planned_answers`
      self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "map(character)", loadNamespace("llmpulse"))
      self$`skipped_models` <- ApiClient$new()$deserializeObj(this_object$`skipped_models`, "array[character]", loadNamespace("llmpulse"))
      self$`detected_brands` <- ApiClient$new()$deserializeObj(this_object$`detected_brands`, "array[character]", loadNamespace("llmpulse"))
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `app_url`. Must be a URL:", this_object$`app_url`))
      }
      self$`app_url` <- this_object$`app_url`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to PeecExportImportResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `project_id`
      if (!is.null(input_json$`project_id`)) {
        if (!(is.numeric(input_json$`project_id`) && length(input_json$`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", input_json$`project_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeecExportImportResponse: the required field `project_id` is missing."))
      }
      # check the required field `import_id`
      if (!is.null(input_json$`import_id`)) {
        if (!(is.numeric(input_json$`import_id`) && length(input_json$`import_id`) == 1)) {
          stop(paste("Error! Invalid data for `import_id`. Must be an integer:", input_json$`import_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeecExportImportResponse: the required field `import_id` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeecExportImportResponse: the required field `status` is missing."))
      }
      # check the required field `prompts`
      if (!is.null(input_json$`prompts`)) {
        if (!(is.numeric(input_json$`prompts`) && length(input_json$`prompts`) == 1)) {
          stop(paste("Error! Invalid data for `prompts`. Must be an integer:", input_json$`prompts`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeecExportImportResponse: the required field `prompts` is missing."))
      }
      # check the required field `new_prompts`
      if (!is.null(input_json$`new_prompts`)) {
        if (!(is.numeric(input_json$`new_prompts`) && length(input_json$`new_prompts`) == 1)) {
          stop(paste("Error! Invalid data for `new_prompts`. Must be an integer:", input_json$`new_prompts`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeecExportImportResponse: the required field `new_prompts` is missing."))
      }
      # check the required field `planned_answers`
      if (!is.null(input_json$`planned_answers`)) {
        if (!(is.numeric(input_json$`planned_answers`) && length(input_json$`planned_answers`) == 1)) {
          stop(paste("Error! Invalid data for `planned_answers`. Must be an integer:", input_json$`planned_answers`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeecExportImportResponse: the required field `planned_answers` is missing."))
      }
      # check the required field `models`
      if (!is.null(input_json$`models`)) {
        stopifnot(is.vector(input_json$`models`), length(input_json$`models`) != 0)
        tmp <- sapply(input_json$`models`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeecExportImportResponse: the required field `models` is missing."))
      }
      # check the required field `skipped_models`
      if (!is.null(input_json$`skipped_models`)) {
        stopifnot(is.vector(input_json$`skipped_models`), length(input_json$`skipped_models`) != 0)
        tmp <- sapply(input_json$`skipped_models`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeecExportImportResponse: the required field `skipped_models` is missing."))
      }
      # check the required field `detected_brands`
      if (!is.null(input_json$`detected_brands`)) {
        stopifnot(is.vector(input_json$`detected_brands`), length(input_json$`detected_brands`) != 0)
        tmp <- sapply(input_json$`detected_brands`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeecExportImportResponse: the required field `detected_brands` is missing."))
      }
      # check the required field `app_url`
      if (!is.null(input_json$`app_url`)) {
        if (!(is.character(input_json$`app_url`) && length(input_json$`app_url`) == 1)) {
          stop(paste("Error! Invalid data for `app_url`. Must be a string:", input_json$`app_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(input_json$`app_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `app_url`. Must be a URL:", input_json$`app_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeecExportImportResponse: the required field `app_url` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeecExportImportResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PeecExportImportResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        return(FALSE)
      }

      # check if the required `import_id` is null
      if (is.null(self$`import_id`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `prompts` is null
      if (is.null(self$`prompts`)) {
        return(FALSE)
      }

      # check if the required `new_prompts` is null
      if (is.null(self$`new_prompts`)) {
        return(FALSE)
      }

      # check if the required `planned_answers` is null
      if (is.null(self$`planned_answers`)) {
        return(FALSE)
      }

      # check if the required `models` is null
      if (is.null(self$`models`)) {
        return(FALSE)
      }

      # check if the required `skipped_models` is null
      if (is.null(self$`skipped_models`)) {
        return(FALSE)
      }

      # check if the required `detected_brands` is null
      if (is.null(self$`detected_brands`)) {
        return(FALSE)
      }

      # check if the required `app_url` is null
      if (is.null(self$`app_url`)) {
        return(FALSE)
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
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
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        invalid_fields["project_id"] <- "Non-nullable required field `project_id` cannot be null."
      }

      # check if the required `import_id` is null
      if (is.null(self$`import_id`)) {
        invalid_fields["import_id"] <- "Non-nullable required field `import_id` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `prompts` is null
      if (is.null(self$`prompts`)) {
        invalid_fields["prompts"] <- "Non-nullable required field `prompts` cannot be null."
      }

      # check if the required `new_prompts` is null
      if (is.null(self$`new_prompts`)) {
        invalid_fields["new_prompts"] <- "Non-nullable required field `new_prompts` cannot be null."
      }

      # check if the required `planned_answers` is null
      if (is.null(self$`planned_answers`)) {
        invalid_fields["planned_answers"] <- "Non-nullable required field `planned_answers` cannot be null."
      }

      # check if the required `models` is null
      if (is.null(self$`models`)) {
        invalid_fields["models"] <- "Non-nullable required field `models` cannot be null."
      }

      # check if the required `skipped_models` is null
      if (is.null(self$`skipped_models`)) {
        invalid_fields["skipped_models"] <- "Non-nullable required field `skipped_models` cannot be null."
      }

      # check if the required `detected_brands` is null
      if (is.null(self$`detected_brands`)) {
        invalid_fields["detected_brands"] <- "Non-nullable required field `detected_brands` cannot be null."
      }

      # check if the required `app_url` is null
      if (is.null(self$`app_url`)) {
        invalid_fields["app_url"] <- "Non-nullable required field `app_url` cannot be null."
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
        invalid_fields["request_id"] <- "Non-nullable required field `request_id` cannot be null."
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
# PeecExportImportResponse$unlock()
#
## Below is an example to define the print function
# PeecExportImportResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PeecExportImportResponse$lock()

