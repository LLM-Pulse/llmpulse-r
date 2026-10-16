#' Create a new ProjectProfile
#'
#' @description
#' The project name and profile, as PATCH /projects/{id} and the update_project MCP tool return them
#'
#' @docType class
#' @title ProjectProfile
#' @description ProjectProfile Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field name  character
#' @field brand_name  character [optional]
#' @field description  character [optional]
#' @field industry Industry as stored: one key as a string (e.g. SAAS), or an array of key strings. Deliberately untyped so generated clients decode either shape object [optional]
#' @field business_model  character [optional]
#' @field business_model_other Set only when business_model is OTHER character [optional]
#' @field target_audience  character [optional]
#' @field primary_products  list(character) [optional]
#' @field brand_voice  character [optional]
#' @field goals  character [optional]
#' @field matching_names  list(character)
#' @field additional_owned_domains Other domains the brand owns (at most 10, each a website's own domain covering its subdomains), whose citations count as owned like the project website. Empty when none list(character)
#' @field prompt_limit The most prompts this project can hold, set by the account owner or a co-owner (Account Settings > Prompt Limits). Null when the project has no limit of its own; the account's plan allowance applies either way integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectProfile <- R6::R6Class(
  "ProjectProfile",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `brand_name` = NULL,
    `description` = NULL,
    `industry` = NULL,
    `business_model` = NULL,
    `business_model_other` = NULL,
    `target_audience` = NULL,
    `primary_products` = NULL,
    `brand_voice` = NULL,
    `goals` = NULL,
    `matching_names` = NULL,
    `additional_owned_domains` = NULL,
    `prompt_limit` = NULL,

    #' @description
    #' Initialize a new ProjectProfile class.
    #'
    #' @param id id
    #' @param name name
    #' @param matching_names matching_names
    #' @param additional_owned_domains Other domains the brand owns (at most 10, each a website's own domain covering its subdomains), whose citations count as owned like the project website. Empty when none
    #' @param prompt_limit The most prompts this project can hold, set by the account owner or a co-owner (Account Settings > Prompt Limits). Null when the project has no limit of its own; the account's plan allowance applies either way
    #' @param brand_name brand_name
    #' @param description description
    #' @param industry Industry as stored: one key as a string (e.g. SAAS), or an array of key strings. Deliberately untyped so generated clients decode either shape
    #' @param business_model business_model
    #' @param business_model_other Set only when business_model is OTHER
    #' @param target_audience target_audience
    #' @param primary_products primary_products
    #' @param brand_voice brand_voice
    #' @param goals goals
    #' @param ... Other optional arguments.
    initialize = function(`id`, `name`, `matching_names`, `additional_owned_domains`, `prompt_limit`, `brand_name` = NULL, `description` = NULL, `industry` = NULL, `business_model` = NULL, `business_model_other` = NULL, `target_audience` = NULL, `primary_products` = NULL, `brand_voice` = NULL, `goals` = NULL, ...) {
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
      if (!missing(`matching_names`)) {
        stopifnot(is.vector(`matching_names`), length(`matching_names`) != 0)
        sapply(`matching_names`, function(x) stopifnot(is.character(x)))
        self$`matching_names` <- `matching_names`
      }
      if (!missing(`additional_owned_domains`)) {
        stopifnot(is.vector(`additional_owned_domains`), length(`additional_owned_domains`) != 0)
        sapply(`additional_owned_domains`, function(x) stopifnot(is.character(x)))
        self$`additional_owned_domains` <- `additional_owned_domains`
      }
      if (!missing(`prompt_limit`)) {
        if (!(is.numeric(`prompt_limit`) && length(`prompt_limit`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_limit`. Must be an integer:", `prompt_limit`))
        }
        self$`prompt_limit` <- `prompt_limit`
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
        self$`industry` <- `industry`
      }
      if (!is.null(`business_model`)) {
        if (!(is.character(`business_model`) && length(`business_model`) == 1)) {
          stop(paste("Error! Invalid data for `business_model`. Must be a string:", `business_model`))
        }
        self$`business_model` <- `business_model`
      }
      if (!is.null(`business_model_other`)) {
        if (!(is.character(`business_model_other`) && length(`business_model_other`) == 1)) {
          stop(paste("Error! Invalid data for `business_model_other`. Must be a string:", `business_model_other`))
        }
        self$`business_model_other` <- `business_model_other`
      }
      if (!is.null(`target_audience`)) {
        if (!(is.character(`target_audience`) && length(`target_audience`) == 1)) {
          stop(paste("Error! Invalid data for `target_audience`. Must be a string:", `target_audience`))
        }
        self$`target_audience` <- `target_audience`
      }
      if (!is.null(`primary_products`)) {
        stopifnot(is.vector(`primary_products`), length(`primary_products`) != 0)
        sapply(`primary_products`, function(x) stopifnot(is.character(x)))
        self$`primary_products` <- `primary_products`
      }
      if (!is.null(`brand_voice`)) {
        if (!(is.character(`brand_voice`) && length(`brand_voice`) == 1)) {
          stop(paste("Error! Invalid data for `brand_voice`. Must be a string:", `brand_voice`))
        }
        self$`brand_voice` <- `brand_voice`
      }
      if (!is.null(`goals`)) {
        if (!(is.character(`goals`) && length(`goals`) == 1)) {
          stop(paste("Error! Invalid data for `goals`. Must be a string:", `goals`))
        }
        self$`goals` <- `goals`
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
    #' @return ProjectProfile as a base R list.
    #' @examples
    #' # convert array of ProjectProfile (x) to a data frame
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
    #' Convert ProjectProfile to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectProfileObject <- list()
      if (!is.null(self$`id`)) {
        ProjectProfileObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        ProjectProfileObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`brand_name`)) {
        ProjectProfileObject[["brand_name"]] <-
          self$`brand_name`
      }
      if (!is.null(self$`description`)) {
        ProjectProfileObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`industry`)) {
        ProjectProfileObject[["industry"]] <-
          self$`industry`
      }
      if (!is.null(self$`business_model`)) {
        ProjectProfileObject[["business_model"]] <-
          self$`business_model`
      }
      if (!is.null(self$`business_model_other`)) {
        ProjectProfileObject[["business_model_other"]] <-
          self$`business_model_other`
      }
      if (!is.null(self$`target_audience`)) {
        ProjectProfileObject[["target_audience"]] <-
          self$`target_audience`
      }
      if (!is.null(self$`primary_products`)) {
        ProjectProfileObject[["primary_products"]] <-
          self$`primary_products`
      }
      if (!is.null(self$`brand_voice`)) {
        ProjectProfileObject[["brand_voice"]] <-
          self$`brand_voice`
      }
      if (!is.null(self$`goals`)) {
        ProjectProfileObject[["goals"]] <-
          self$`goals`
      }
      if (!is.null(self$`matching_names`)) {
        ProjectProfileObject[["matching_names"]] <-
          self$`matching_names`
      }
      if (!is.null(self$`additional_owned_domains`)) {
        ProjectProfileObject[["additional_owned_domains"]] <-
          self$`additional_owned_domains`
      }
      if (!is.null(self$`prompt_limit`)) {
        ProjectProfileObject[["prompt_limit"]] <-
          self$`prompt_limit`
      }
      return(ProjectProfileObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectProfile
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectProfile
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`brand_name`)) {
        self$`brand_name` <- this_object$`brand_name`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`industry`)) {
        self$`industry` <- this_object$`industry`
      }
      if (!is.null(this_object$`business_model`)) {
        self$`business_model` <- this_object$`business_model`
      }
      if (!is.null(this_object$`business_model_other`)) {
        self$`business_model_other` <- this_object$`business_model_other`
      }
      if (!is.null(this_object$`target_audience`)) {
        self$`target_audience` <- this_object$`target_audience`
      }
      if (!is.null(this_object$`primary_products`)) {
        self$`primary_products` <- ApiClient$new()$deserializeObj(this_object$`primary_products`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`brand_voice`)) {
        self$`brand_voice` <- this_object$`brand_voice`
      }
      if (!is.null(this_object$`goals`)) {
        self$`goals` <- this_object$`goals`
      }
      if (!is.null(this_object$`matching_names`)) {
        self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`additional_owned_domains`)) {
        self$`additional_owned_domains` <- ApiClient$new()$deserializeObj(this_object$`additional_owned_domains`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`prompt_limit`)) {
        self$`prompt_limit` <- this_object$`prompt_limit`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectProfile in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectProfile
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectProfile
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`brand_name` <- this_object$`brand_name`
      self$`description` <- this_object$`description`
      self$`industry` <- this_object$`industry`
      self$`business_model` <- this_object$`business_model`
      self$`business_model_other` <- this_object$`business_model_other`
      self$`target_audience` <- this_object$`target_audience`
      self$`primary_products` <- ApiClient$new()$deserializeObj(this_object$`primary_products`, "array[character]", loadNamespace("llmpulse"))
      self$`brand_voice` <- this_object$`brand_voice`
      self$`goals` <- this_object$`goals`
      self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      self$`additional_owned_domains` <- ApiClient$new()$deserializeObj(this_object$`additional_owned_domains`, "array[character]", loadNamespace("llmpulse"))
      self$`prompt_limit` <- this_object$`prompt_limit`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectProfile and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ProjectProfile: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectProfile: the required field `name` is missing."))
      }
      # check the required field `matching_names`
      if (!is.null(input_json$`matching_names`)) {
        stopifnot(is.vector(input_json$`matching_names`), length(input_json$`matching_names`) != 0)
        tmp <- sapply(input_json$`matching_names`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectProfile: the required field `matching_names` is missing."))
      }
      # check the required field `additional_owned_domains`
      if (!is.null(input_json$`additional_owned_domains`)) {
        stopifnot(is.vector(input_json$`additional_owned_domains`), length(input_json$`additional_owned_domains`) != 0)
        tmp <- sapply(input_json$`additional_owned_domains`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectProfile: the required field `additional_owned_domains` is missing."))
      }
      # check the required field `prompt_limit`
      if (!is.null(input_json$`prompt_limit`)) {
        if (!(is.numeric(input_json$`prompt_limit`) && length(input_json$`prompt_limit`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_limit`. Must be an integer:", input_json$`prompt_limit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProjectProfile: the required field `prompt_limit` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectProfile
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

      # check if the required `matching_names` is null
      if (is.null(self$`matching_names`)) {
        return(FALSE)
      }

      # check if the required `additional_owned_domains` is null
      if (is.null(self$`additional_owned_domains`)) {
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

      # check if the required `matching_names` is null
      if (is.null(self$`matching_names`)) {
        invalid_fields["matching_names"] <- "Non-nullable required field `matching_names` cannot be null."
      }

      # check if the required `additional_owned_domains` is null
      if (is.null(self$`additional_owned_domains`)) {
        invalid_fields["additional_owned_domains"] <- "Non-nullable required field `additional_owned_domains` cannot be null."
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
# ProjectProfile$unlock()
#
## Below is an example to define the print function
# ProjectProfile$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectProfile$lock()

