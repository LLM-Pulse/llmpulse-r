#' Create a new ProjectCreateRequest
#'
#' @description
#' ProjectCreateRequest Class
#'
#' @docType class
#' @title ProjectCreateRequest
#' @description ProjectCreateRequest Class
#' @format An \code{R6Class} generator object
#' @field website_url Public HTTP(S) URL with a DNS hostname or public IP address. Credentials, private and special IP addresses, localhost and internal hostnames are rejected. character
#' @field name  character
#' @field main_country  character
#' @field main_language  character
#' @field brand_name  character [optional]
#' @field description  character [optional]
#' @field industry  list(character) [optional]
#' @field matching_names  list(character) [optional]
#' @field prompts  list(character) [optional]
#' @field competitors  list(\link{ProjectCreateRequestCompetitorsInner}) [optional]
#' @field owned_media  \link{ProjectCreateRequestOwnedMedia} [optional]
#' @field use_subdomain  character [optional]
#' @field weekly_email_subscribed  character [optional]
#' @field external_identifier Embed-enabled (Enterprise) accounts only; other accounts receive ERR_PLAN_REQUIRED. Idempotency key and embed-session join key, unique per account character [optional]
#' @field execute_prompts_immediately  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectCreateRequest <- R6::R6Class(
  "ProjectCreateRequest",
  public = list(
    `website_url` = NULL,
    `name` = NULL,
    `main_country` = NULL,
    `main_language` = NULL,
    `brand_name` = NULL,
    `description` = NULL,
    `industry` = NULL,
    `matching_names` = NULL,
    `prompts` = NULL,
    `competitors` = NULL,
    `owned_media` = NULL,
    `use_subdomain` = NULL,
    `weekly_email_subscribed` = NULL,
    `external_identifier` = NULL,
    `execute_prompts_immediately` = NULL,

    #' @description
    #' Initialize a new ProjectCreateRequest class.
    #'
    #' @param website_url Public HTTP(S) URL with a DNS hostname or public IP address. Credentials, private and special IP addresses, localhost and internal hostnames are rejected.
    #' @param name name
    #' @param main_country main_country
    #' @param main_language main_language
    #' @param brand_name brand_name
    #' @param description description
    #' @param industry industry
    #' @param matching_names matching_names
    #' @param prompts prompts
    #' @param competitors competitors
    #' @param owned_media owned_media
    #' @param use_subdomain use_subdomain. Default to FALSE.
    #' @param weekly_email_subscribed weekly_email_subscribed. Default to FALSE.
    #' @param external_identifier Embed-enabled (Enterprise) accounts only; other accounts receive ERR_PLAN_REQUIRED. Idempotency key and embed-session join key, unique per account
    #' @param execute_prompts_immediately execute_prompts_immediately. Default to TRUE.
    #' @param ... Other optional arguments.
    initialize = function(`website_url`, `name`, `main_country`, `main_language`, `brand_name` = NULL, `description` = NULL, `industry` = NULL, `matching_names` = NULL, `prompts` = NULL, `competitors` = NULL, `owned_media` = NULL, `use_subdomain` = FALSE, `weekly_email_subscribed` = FALSE, `external_identifier` = NULL, `execute_prompts_immediately` = TRUE, ...) {
      if (!missing(`website_url`)) {
        if (!(is.character(`website_url`) && length(`website_url`) == 1)) {
          stop(paste("Error! Invalid data for `website_url`. Must be a string:", `website_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`website_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `website_url`. Must be a URL:", `website_url`))
        }
        self$`website_url` <- `website_url`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`main_country`)) {
        if (!(is.character(`main_country`) && length(`main_country`) == 1)) {
          stop(paste("Error! Invalid data for `main_country`. Must be a string:", `main_country`))
        }
        self$`main_country` <- `main_country`
      }
      if (!missing(`main_language`)) {
        if (!(is.character(`main_language`) && length(`main_language`) == 1)) {
          stop(paste("Error! Invalid data for `main_language`. Must be a string:", `main_language`))
        }
        self$`main_language` <- `main_language`
      }
      if (!is.null(`brand_name`)) {
        if (!(is.character(`brand_name`) && length(`brand_name`) == 1)) {
          stop(paste("Error! Invalid data for `brand_name`. Must be a string:", `brand_name`))
        }
        self$`brand_name` <- `brand_name`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`industry`)) {
        stopifnot(is.vector(`industry`), length(`industry`) != 0)
        sapply(`industry`, function(x) stopifnot(is.character(x)))
        self$`industry` <- `industry`
      }
      if (!is.null(`matching_names`)) {
        stopifnot(is.vector(`matching_names`), length(`matching_names`) != 0)
        sapply(`matching_names`, function(x) stopifnot(is.character(x)))
        self$`matching_names` <- `matching_names`
      }
      if (!is.null(`prompts`)) {
        stopifnot(is.vector(`prompts`), length(`prompts`) != 0)
        sapply(`prompts`, function(x) stopifnot(is.character(x)))
        self$`prompts` <- `prompts`
      }
      if (!is.null(`competitors`)) {
        stopifnot(is.vector(`competitors`), length(`competitors`) != 0)
        sapply(`competitors`, function(x) stopifnot(R6::is.R6(x)))
        self$`competitors` <- `competitors`
      }
      if (!is.null(`owned_media`)) {
        stopifnot(R6::is.R6(`owned_media`))
        self$`owned_media` <- `owned_media`
      }
      if (!is.null(`use_subdomain`)) {
        if (!(is.logical(`use_subdomain`) && length(`use_subdomain`) == 1)) {
          stop(paste("Error! Invalid data for `use_subdomain`. Must be a boolean:", `use_subdomain`))
        }
        self$`use_subdomain` <- `use_subdomain`
      }
      if (!is.null(`weekly_email_subscribed`)) {
        if (!(is.logical(`weekly_email_subscribed`) && length(`weekly_email_subscribed`) == 1)) {
          stop(paste("Error! Invalid data for `weekly_email_subscribed`. Must be a boolean:", `weekly_email_subscribed`))
        }
        self$`weekly_email_subscribed` <- `weekly_email_subscribed`
      }
      if (!is.null(`external_identifier`)) {
        if (!(is.character(`external_identifier`) && length(`external_identifier`) == 1)) {
          stop(paste("Error! Invalid data for `external_identifier`. Must be a string:", `external_identifier`))
        }
        self$`external_identifier` <- `external_identifier`
      }
      if (!is.null(`execute_prompts_immediately`)) {
        if (!(is.logical(`execute_prompts_immediately`) && length(`execute_prompts_immediately`) == 1)) {
          stop(paste("Error! Invalid data for `execute_prompts_immediately`. Must be a boolean:", `execute_prompts_immediately`))
        }
        self$`execute_prompts_immediately` <- `execute_prompts_immediately`
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
    #' @return ProjectCreateRequest as a base R list.
    #' @examples
    #' # convert array of ProjectCreateRequest (x) to a data frame
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
    #' Convert ProjectCreateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectCreateRequestObject <- list()
      if (!is.null(self$`website_url`)) {
        ProjectCreateRequestObject[["website_url"]] <-
          self$`website_url`
      }
      if (!is.null(self$`name`)) {
        ProjectCreateRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`main_country`)) {
        ProjectCreateRequestObject[["main_country"]] <-
          self$`main_country`
      }
      if (!is.null(self$`main_language`)) {
        ProjectCreateRequestObject[["main_language"]] <-
          self$`main_language`
      }
      if (!is.null(self$`brand_name`)) {
        ProjectCreateRequestObject[["brand_name"]] <-
          self$`brand_name`
      }
      if (!is.null(self$`description`)) {
        ProjectCreateRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`industry`)) {
        ProjectCreateRequestObject[["industry"]] <-
          self$`industry`
      }
      if (!is.null(self$`matching_names`)) {
        ProjectCreateRequestObject[["matching_names"]] <-
          self$`matching_names`
      }
      if (!is.null(self$`prompts`)) {
        ProjectCreateRequestObject[["prompts"]] <-
          self$`prompts`
      }
      if (!is.null(self$`competitors`)) {
        ProjectCreateRequestObject[["competitors"]] <-
          self$extractSimpleType(self$`competitors`)
      }
      if (!is.null(self$`owned_media`)) {
        ProjectCreateRequestObject[["owned_media"]] <-
          self$extractSimpleType(self$`owned_media`)
      }
      if (!is.null(self$`use_subdomain`)) {
        ProjectCreateRequestObject[["use_subdomain"]] <-
          self$`use_subdomain`
      }
      if (!is.null(self$`weekly_email_subscribed`)) {
        ProjectCreateRequestObject[["weekly_email_subscribed"]] <-
          self$`weekly_email_subscribed`
      }
      if (!is.null(self$`external_identifier`)) {
        ProjectCreateRequestObject[["external_identifier"]] <-
          self$`external_identifier`
      }
      if (!is.null(self$`execute_prompts_immediately`)) {
        ProjectCreateRequestObject[["execute_prompts_immediately"]] <-
          self$`execute_prompts_immediately`
      }
      return(ProjectCreateRequestObject)
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
    #' Deserialize JSON string into an instance of ProjectCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`website_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`website_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `website_url`. Must be a URL:", this_object$`website_url`))
        }
        self$`website_url` <- this_object$`website_url`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`main_country`)) {
        self$`main_country` <- this_object$`main_country`
      }
      if (!is.null(this_object$`main_language`)) {
        self$`main_language` <- this_object$`main_language`
      }
      if (!is.null(this_object$`brand_name`)) {
        self$`brand_name` <- this_object$`brand_name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`industry`)) {
        self$`industry` <- ApiClient$new()$deserializeObj(this_object$`industry`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`matching_names`)) {
        self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`prompts`)) {
        self$`prompts` <- ApiClient$new()$deserializeObj(this_object$`prompts`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`competitors`)) {
        self$`competitors` <- ApiClient$new()$deserializeObj(this_object$`competitors`, "array[ProjectCreateRequestCompetitorsInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`owned_media`)) {
        `owned_media_object` <- ProjectCreateRequestOwnedMedia$new()
        `owned_media_object`$fromJSON(jsonlite::toJSON(this_object$`owned_media`, auto_unbox = TRUE, digits = NA))
        self$`owned_media` <- `owned_media_object`
      }
      if (!is.null(this_object$`use_subdomain`)) {
        self$`use_subdomain` <- this_object$`use_subdomain`
      }
      if (!is.null(this_object$`weekly_email_subscribed`)) {
        self$`weekly_email_subscribed` <- this_object$`weekly_email_subscribed`
      }
      if (!is.null(this_object$`external_identifier`)) {
        self$`external_identifier` <- this_object$`external_identifier`
      }
      if (!is.null(this_object$`execute_prompts_immediately`)) {
        self$`execute_prompts_immediately` <- this_object$`execute_prompts_immediately`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectCreateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectCreateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`website_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `website_url`. Must be a URL:", this_object$`website_url`))
      }
      self$`website_url` <- this_object$`website_url`
      self$`name` <- this_object$`name`
      self$`main_country` <- this_object$`main_country`
      self$`main_language` <- this_object$`main_language`
      self$`brand_name` <- this_object$`brand_name`
      self$`description` <- this_object$`description`
      self$`industry` <- ApiClient$new()$deserializeObj(this_object$`industry`, "array[character]", loadNamespace("llmpulse"))
      self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      self$`prompts` <- ApiClient$new()$deserializeObj(this_object$`prompts`, "array[character]", loadNamespace("llmpulse"))
      self$`competitors` <- ApiClient$new()$deserializeObj(this_object$`competitors`, "array[ProjectCreateRequestCompetitorsInner]", loadNamespace("llmpulse"))
      self$`owned_media` <- ProjectCreateRequestOwnedMedia$new()$fromJSON(jsonlite::toJSON(this_object$`owned_media`, auto_unbox = TRUE, digits = NA))
      self$`use_subdomain` <- this_object$`use_subdomain`
      self$`weekly_email_subscribed` <- this_object$`weekly_email_subscribed`
      self$`external_identifier` <- this_object$`external_identifier`
      self$`execute_prompts_immediately` <- this_object$`execute_prompts_immediately`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectCreateRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `website_url`
      if (!is.null(input_json$`website_url`)) {
        if (!(is.character(input_json$`website_url`) && length(input_json$`website_url`) == 1)) {
          stop(paste("Error! Invalid data for `website_url`. Must be a string:", input_json$`website_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(input_json$`website_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `website_url`. Must be a URL:", input_json$`website_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectCreateRequest: the required field `website_url` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectCreateRequest: the required field `name` is missing."))
      }
      # check the required field `main_country`
      if (!is.null(input_json$`main_country`)) {
        if (!(is.character(input_json$`main_country`) && length(input_json$`main_country`) == 1)) {
          stop(paste("Error! Invalid data for `main_country`. Must be a string:", input_json$`main_country`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectCreateRequest: the required field `main_country` is missing."))
      }
      # check the required field `main_language`
      if (!is.null(input_json$`main_language`)) {
        if (!(is.character(input_json$`main_language`) && length(input_json$`main_language`) == 1)) {
          stop(paste("Error! Invalid data for `main_language`. Must be a string:", input_json$`main_language`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectCreateRequest: the required field `main_language` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectCreateRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `website_url` is null
      if (is.null(self$`website_url`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `main_country` is null
      if (is.null(self$`main_country`)) {
        return(FALSE)
      }

      # check if the required `main_language` is null
      if (is.null(self$`main_language`)) {
        return(FALSE)
      }

      if (length(self$`prompts`) > 100) {
        return(FALSE)
      }

      if (!str_detect(self$`external_identifier`, "^[a-z0-9_-]{1,64}$")) {
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
      # check if the required `website_url` is null
      if (is.null(self$`website_url`)) {
        invalid_fields["website_url"] <- "Non-nullable required field `website_url` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `main_country` is null
      if (is.null(self$`main_country`)) {
        invalid_fields["main_country"] <- "Non-nullable required field `main_country` cannot be null."
      }

      # check if the required `main_language` is null
      if (is.null(self$`main_language`)) {
        invalid_fields["main_language"] <- "Non-nullable required field `main_language` cannot be null."
      }

      if (length(self$`prompts`) > 100) {
        invalid_fields["prompts"] <- "Invalid length for `prompts`, number of items must be less than or equal to 100."
      }

      if (!str_detect(self$`external_identifier`, "^[a-z0-9_-]{1,64}$")) {
        invalid_fields["external_identifier"] <- "Invalid value for `external_identifier`, must conform to the pattern ^[a-z0-9_-]{1,64}$."
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
# ProjectCreateRequest$unlock()
#
## Below is an example to define the print function
# ProjectCreateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectCreateRequest$lock()

