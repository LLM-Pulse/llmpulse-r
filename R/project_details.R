#' Create a new ProjectDetails
#'
#' @description
#' ProjectDetails Class
#'
#' @docType class
#' @title ProjectDetails
#' @description ProjectDetails Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field name Internal project label (sidebar, settings, admin) character [optional]
#' @field brand_name LLM-facing brand label (used in prompts and customer-facing charts). Defaults to `name` when not set. character [optional]
#' @field url  character [optional]
#' @field description  character [optional]
#' @field matching_names  list(character) [optional]
#' @field industry  character [optional]
#' @field business_model  character [optional]
#' @field primary_products  character [optional]
#' @field target_audience  character [optional]
#' @field brand_voice  character [optional]
#' @field country_code  character [optional]
#' @field language_code  character [optional]
#' @field paused  character [optional]
#' @field google_play_id  character [optional]
#' @field app_store_id  character [optional]
#' @field created_at  character [optional]
#' @field stats  \link{ProjectDetailsAllOfStats} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDetails <- R6::R6Class(
  "ProjectDetails",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `brand_name` = NULL,
    `url` = NULL,
    `description` = NULL,
    `matching_names` = NULL,
    `industry` = NULL,
    `business_model` = NULL,
    `primary_products` = NULL,
    `target_audience` = NULL,
    `brand_voice` = NULL,
    `country_code` = NULL,
    `language_code` = NULL,
    `paused` = NULL,
    `google_play_id` = NULL,
    `app_store_id` = NULL,
    `created_at` = NULL,
    `stats` = NULL,

    #' @description
    #' Initialize a new ProjectDetails class.
    #'
    #' @param id id
    #' @param name Internal project label (sidebar, settings, admin)
    #' @param brand_name LLM-facing brand label (used in prompts and customer-facing charts). Defaults to `name` when not set.
    #' @param url url
    #' @param description description
    #' @param matching_names matching_names
    #' @param industry industry
    #' @param business_model business_model
    #' @param primary_products primary_products
    #' @param target_audience target_audience
    #' @param brand_voice brand_voice
    #' @param country_code country_code
    #' @param language_code language_code
    #' @param paused paused
    #' @param google_play_id google_play_id
    #' @param app_store_id app_store_id
    #' @param created_at created_at
    #' @param stats stats
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, `brand_name` = NULL, `url` = NULL, `description` = NULL, `matching_names` = NULL, `industry` = NULL, `business_model` = NULL, `primary_products` = NULL, `target_audience` = NULL, `brand_voice` = NULL, `country_code` = NULL, `language_code` = NULL, `paused` = NULL, `google_play_id` = NULL, `app_store_id` = NULL, `created_at` = NULL, `stats` = NULL, ...) {
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
      if (!is.null(`brand_name`)) {
        if (!(is.character(`brand_name`) && length(`brand_name`) == 1)) {
          stop(paste("Error! Invalid data for `brand_name`. Must be a string:", `brand_name`))
        }
        self$`brand_name` <- `brand_name`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `url`. Must be a URL:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`matching_names`)) {
        stopifnot(is.vector(`matching_names`), length(`matching_names`) != 0)
        sapply(`matching_names`, function(x) stopifnot(is.character(x)))
        self$`matching_names` <- `matching_names`
      }
      if (!is.null(`industry`)) {
        if (!(is.character(`industry`) && length(`industry`) == 1)) {
          stop(paste("Error! Invalid data for `industry`. Must be a string:", `industry`))
        }
        self$`industry` <- `industry`
      }
      if (!is.null(`business_model`)) {
        if (!(is.character(`business_model`) && length(`business_model`) == 1)) {
          stop(paste("Error! Invalid data for `business_model`. Must be a string:", `business_model`))
        }
        self$`business_model` <- `business_model`
      }
      if (!is.null(`primary_products`)) {
        if (!(is.character(`primary_products`) && length(`primary_products`) == 1)) {
          stop(paste("Error! Invalid data for `primary_products`. Must be a string:", `primary_products`))
        }
        self$`primary_products` <- `primary_products`
      }
      if (!is.null(`target_audience`)) {
        if (!(is.character(`target_audience`) && length(`target_audience`) == 1)) {
          stop(paste("Error! Invalid data for `target_audience`. Must be a string:", `target_audience`))
        }
        self$`target_audience` <- `target_audience`
      }
      if (!is.null(`brand_voice`)) {
        if (!(is.character(`brand_voice`) && length(`brand_voice`) == 1)) {
          stop(paste("Error! Invalid data for `brand_voice`. Must be a string:", `brand_voice`))
        }
        self$`brand_voice` <- `brand_voice`
      }
      if (!is.null(`country_code`)) {
        if (!(is.character(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", `country_code`))
        }
        self$`country_code` <- `country_code`
      }
      if (!is.null(`language_code`)) {
        if (!(is.character(`language_code`) && length(`language_code`) == 1)) {
          stop(paste("Error! Invalid data for `language_code`. Must be a string:", `language_code`))
        }
        self$`language_code` <- `language_code`
      }
      if (!is.null(`paused`)) {
        if (!(is.logical(`paused`) && length(`paused`) == 1)) {
          stop(paste("Error! Invalid data for `paused`. Must be a boolean:", `paused`))
        }
        self$`paused` <- `paused`
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
      if (!is.null(`created_at`)) {
        if (!is.character(`created_at`)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!is.null(`stats`)) {
        stopifnot(R6::is.R6(`stats`))
        self$`stats` <- `stats`
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
    #' @return ProjectDetails as a base R list.
    #' @examples
    #' # convert array of ProjectDetails (x) to a data frame
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
    #' Convert ProjectDetails to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectDetailsObject <- list()
      if (!is.null(self$`id`)) {
        ProjectDetailsObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        ProjectDetailsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`brand_name`)) {
        ProjectDetailsObject[["brand_name"]] <-
          self$`brand_name`
      }
      if (!is.null(self$`url`)) {
        ProjectDetailsObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`description`)) {
        ProjectDetailsObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`matching_names`)) {
        ProjectDetailsObject[["matching_names"]] <-
          self$`matching_names`
      }
      if (!is.null(self$`industry`)) {
        ProjectDetailsObject[["industry"]] <-
          self$`industry`
      }
      if (!is.null(self$`business_model`)) {
        ProjectDetailsObject[["business_model"]] <-
          self$`business_model`
      }
      if (!is.null(self$`primary_products`)) {
        ProjectDetailsObject[["primary_products"]] <-
          self$`primary_products`
      }
      if (!is.null(self$`target_audience`)) {
        ProjectDetailsObject[["target_audience"]] <-
          self$`target_audience`
      }
      if (!is.null(self$`brand_voice`)) {
        ProjectDetailsObject[["brand_voice"]] <-
          self$`brand_voice`
      }
      if (!is.null(self$`country_code`)) {
        ProjectDetailsObject[["country_code"]] <-
          self$`country_code`
      }
      if (!is.null(self$`language_code`)) {
        ProjectDetailsObject[["language_code"]] <-
          self$`language_code`
      }
      if (!is.null(self$`paused`)) {
        ProjectDetailsObject[["paused"]] <-
          self$`paused`
      }
      if (!is.null(self$`google_play_id`)) {
        ProjectDetailsObject[["google_play_id"]] <-
          self$`google_play_id`
      }
      if (!is.null(self$`app_store_id`)) {
        ProjectDetailsObject[["app_store_id"]] <-
          self$`app_store_id`
      }
      if (!is.null(self$`created_at`)) {
        ProjectDetailsObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`stats`)) {
        ProjectDetailsObject[["stats"]] <-
          self$extractSimpleType(self$`stats`)
      }
      return(ProjectDetailsObject)
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
    #' Deserialize JSON string into an instance of ProjectDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetails
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
      if (!is.null(this_object$`url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `url`. Must be a URL:", this_object$`url`))
        }
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`matching_names`)) {
        self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`industry`)) {
        self$`industry` <- this_object$`industry`
      }
      if (!is.null(this_object$`business_model`)) {
        self$`business_model` <- this_object$`business_model`
      }
      if (!is.null(this_object$`primary_products`)) {
        self$`primary_products` <- this_object$`primary_products`
      }
      if (!is.null(this_object$`target_audience`)) {
        self$`target_audience` <- this_object$`target_audience`
      }
      if (!is.null(this_object$`brand_voice`)) {
        self$`brand_voice` <- this_object$`brand_voice`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      if (!is.null(this_object$`language_code`)) {
        self$`language_code` <- this_object$`language_code`
      }
      if (!is.null(this_object$`paused`)) {
        self$`paused` <- this_object$`paused`
      }
      if (!is.null(this_object$`google_play_id`)) {
        self$`google_play_id` <- this_object$`google_play_id`
      }
      if (!is.null(this_object$`app_store_id`)) {
        self$`app_store_id` <- this_object$`app_store_id`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`stats`)) {
        `stats_object` <- ProjectDetailsAllOfStats$new()
        `stats_object`$fromJSON(jsonlite::toJSON(this_object$`stats`, auto_unbox = TRUE, digits = NA))
        self$`stats` <- `stats_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectDetails in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetails
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`brand_name` <- this_object$`brand_name`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `url`. Must be a URL:", this_object$`url`))
      }
      self$`url` <- this_object$`url`
      self$`description` <- this_object$`description`
      self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      self$`industry` <- this_object$`industry`
      self$`business_model` <- this_object$`business_model`
      self$`primary_products` <- this_object$`primary_products`
      self$`target_audience` <- this_object$`target_audience`
      self$`brand_voice` <- this_object$`brand_voice`
      self$`country_code` <- this_object$`country_code`
      self$`language_code` <- this_object$`language_code`
      self$`paused` <- this_object$`paused`
      self$`google_play_id` <- this_object$`google_play_id`
      self$`app_store_id` <- this_object$`app_store_id`
      self$`created_at` <- this_object$`created_at`
      self$`stats` <- ProjectDetailsAllOfStats$new()$fromJSON(jsonlite::toJSON(this_object$`stats`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectDetails and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectDetails
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
# ProjectDetails$unlock()
#
## Below is an example to define the print function
# ProjectDetails$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectDetails$lock()

