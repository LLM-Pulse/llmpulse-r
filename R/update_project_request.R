#' Create a new UpdateProjectRequest
#'
#' @description
#' UpdateProjectRequest Class
#'
#' @docType class
#' @title UpdateProjectRequest
#' @description UpdateProjectRequest Class
#' @format An \code{R6Class} generator object
#' @field name Project name shown in the app. A label: it does not change mention detection unless brand_name is empty. Cannot be blank character [optional]
#' @field brand_name Brand name used to detect mentions. Applies to future runs; it does not rewrite history character [optional]
#' @field description What the brand does. Context for Recommendations and GEO Writer (Brand Book) character [optional]
#' @field industry Single industry key (e.g. SAAS), stored as sent; an array of keys is also accepted and stored as an array, like the in-app multi-select. Unknown keys are rejected with the valid keys listed character [optional]
#' @field business_model Business model key (e.g. B2B_SAAS); unknown keys are rejected character [optional]
#' @field business_model_other Free-text business model, only accepted when business_model is OTHER; rejected against any other key character [optional]
#' @field target_audience Who the brand sells to (Brand Book) character [optional]
#' @field brand_voice Tone of voice guidance for generated content (Brand Book) character [optional]
#' @field goals What the brand wants to achieve. Context for GEO Writer and prompt suggestions character [optional]
#' @field primary_products Full replacement list of the main products or services list(character) [optional]
#' @field matching_names FULL replacement list of the brand-name variants used to detect mentions; send every variant to keep list(character) [optional]
#' @field additional_owned_domains FULL replacement list (at most 10) of other domains the brand owns, such as a blog or a country site; [] clears it. Citations from them count as owned, like the project website. Each entry is a website's own domain and covers its subdomains; a pasted URL is stored as its domain (https://www.acme.co.uk/x becomes acme.co.uk). A list the domain editor would refuse (a subdomain such as blog.acme.com, a platform many companies share such as youtube.com, amazon.com or wordpress.com, the project website, a tracked competitor domain, a duplicate or an entry that is not a domain) is rejected with ERR_INVALID_PARAM and the reason. Order does not matter, and an unchanged list starts nothing. Account owner only, on every plan list(character) [optional]
#' @field prompt_limit The most prompts this project can hold, a JSON integer from 1 to 2147483647; null removes the project's limit. A string, a decimal, 0 or a negative number is rejected with ERR_INVALID_PARAM. The account's plan allowance still applies, so the lower of the two wins (GET /dimensions/projects/{id} returns prompt_limit and stats.prompts_available). A limit below the current count keeps every prompt and refuses new ones until the project is under it; note says what the project can now hold. Account owner or a co-owner with Projects update permission only; a key limited to some projects answers ERR_KEY_PROJECT_SCOPED. The Swift, Kotlin, Dart and R clients leave a null field out of the request body, so they can set a limit but not remove one: remove it with a plain HTTP request that sends prompt_limit as null integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdateProjectRequest <- R6::R6Class(
  "UpdateProjectRequest",
  public = list(
    `name` = NULL,
    `brand_name` = NULL,
    `description` = NULL,
    `industry` = NULL,
    `business_model` = NULL,
    `business_model_other` = NULL,
    `target_audience` = NULL,
    `brand_voice` = NULL,
    `goals` = NULL,
    `primary_products` = NULL,
    `matching_names` = NULL,
    `additional_owned_domains` = NULL,
    `prompt_limit` = NULL,

    #' @description
    #' Initialize a new UpdateProjectRequest class.
    #'
    #' @param name Project name shown in the app. A label: it does not change mention detection unless brand_name is empty. Cannot be blank
    #' @param brand_name Brand name used to detect mentions. Applies to future runs; it does not rewrite history
    #' @param description What the brand does. Context for Recommendations and GEO Writer (Brand Book)
    #' @param industry Single industry key (e.g. SAAS), stored as sent; an array of keys is also accepted and stored as an array, like the in-app multi-select. Unknown keys are rejected with the valid keys listed
    #' @param business_model Business model key (e.g. B2B_SAAS); unknown keys are rejected
    #' @param business_model_other Free-text business model, only accepted when business_model is OTHER; rejected against any other key
    #' @param target_audience Who the brand sells to (Brand Book)
    #' @param brand_voice Tone of voice guidance for generated content (Brand Book)
    #' @param goals What the brand wants to achieve. Context for GEO Writer and prompt suggestions
    #' @param primary_products Full replacement list of the main products or services
    #' @param matching_names FULL replacement list of the brand-name variants used to detect mentions; send every variant to keep
    #' @param additional_owned_domains FULL replacement list (at most 10) of other domains the brand owns, such as a blog or a country site; [] clears it. Citations from them count as owned, like the project website. Each entry is a website's own domain and covers its subdomains; a pasted URL is stored as its domain (https://www.acme.co.uk/x becomes acme.co.uk). A list the domain editor would refuse (a subdomain such as blog.acme.com, a platform many companies share such as youtube.com, amazon.com or wordpress.com, the project website, a tracked competitor domain, a duplicate or an entry that is not a domain) is rejected with ERR_INVALID_PARAM and the reason. Order does not matter, and an unchanged list starts nothing. Account owner only, on every plan
    #' @param prompt_limit The most prompts this project can hold, a JSON integer from 1 to 2147483647; null removes the project's limit. A string, a decimal, 0 or a negative number is rejected with ERR_INVALID_PARAM. The account's plan allowance still applies, so the lower of the two wins (GET /dimensions/projects/{id} returns prompt_limit and stats.prompts_available). A limit below the current count keeps every prompt and refuses new ones until the project is under it; note says what the project can now hold. Account owner or a co-owner with Projects update permission only; a key limited to some projects answers ERR_KEY_PROJECT_SCOPED. The Swift, Kotlin, Dart and R clients leave a null field out of the request body, so they can set a limit but not remove one: remove it with a plain HTTP request that sends prompt_limit as null
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `brand_name` = NULL, `description` = NULL, `industry` = NULL, `business_model` = NULL, `business_model_other` = NULL, `target_audience` = NULL, `brand_voice` = NULL, `goals` = NULL, `primary_products` = NULL, `matching_names` = NULL, `additional_owned_domains` = NULL, `prompt_limit` = NULL, ...) {
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
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
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
      if (!is.null(`primary_products`)) {
        stopifnot(is.vector(`primary_products`), length(`primary_products`) != 0)
        sapply(`primary_products`, function(x) stopifnot(is.character(x)))
        self$`primary_products` <- `primary_products`
      }
      if (!is.null(`matching_names`)) {
        stopifnot(is.vector(`matching_names`), length(`matching_names`) != 0)
        sapply(`matching_names`, function(x) stopifnot(is.character(x)))
        self$`matching_names` <- `matching_names`
      }
      if (!is.null(`additional_owned_domains`)) {
        stopifnot(is.vector(`additional_owned_domains`), length(`additional_owned_domains`) != 0)
        sapply(`additional_owned_domains`, function(x) stopifnot(is.character(x)))
        self$`additional_owned_domains` <- `additional_owned_domains`
      }
      if (!is.null(`prompt_limit`)) {
        if (!(is.numeric(`prompt_limit`) && length(`prompt_limit`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_limit`. Must be an integer:", `prompt_limit`))
        }
        self$`prompt_limit` <- `prompt_limit`
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
    #' @return UpdateProjectRequest as a base R list.
    #' @examples
    #' # convert array of UpdateProjectRequest (x) to a data frame
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
    #' Convert UpdateProjectRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpdateProjectRequestObject <- list()
      if (!is.null(self$`name`)) {
        UpdateProjectRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`brand_name`)) {
        UpdateProjectRequestObject[["brand_name"]] <-
          self$`brand_name`
      }
      if (!is.null(self$`description`)) {
        UpdateProjectRequestObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`industry`)) {
        UpdateProjectRequestObject[["industry"]] <-
          self$`industry`
      }
      if (!is.null(self$`business_model`)) {
        UpdateProjectRequestObject[["business_model"]] <-
          self$`business_model`
      }
      if (!is.null(self$`business_model_other`)) {
        UpdateProjectRequestObject[["business_model_other"]] <-
          self$`business_model_other`
      }
      if (!is.null(self$`target_audience`)) {
        UpdateProjectRequestObject[["target_audience"]] <-
          self$`target_audience`
      }
      if (!is.null(self$`brand_voice`)) {
        UpdateProjectRequestObject[["brand_voice"]] <-
          self$`brand_voice`
      }
      if (!is.null(self$`goals`)) {
        UpdateProjectRequestObject[["goals"]] <-
          self$`goals`
      }
      if (!is.null(self$`primary_products`)) {
        UpdateProjectRequestObject[["primary_products"]] <-
          self$`primary_products`
      }
      if (!is.null(self$`matching_names`)) {
        UpdateProjectRequestObject[["matching_names"]] <-
          self$`matching_names`
      }
      if (!is.null(self$`additional_owned_domains`)) {
        UpdateProjectRequestObject[["additional_owned_domains"]] <-
          self$`additional_owned_domains`
      }
      if (!is.null(self$`prompt_limit`)) {
        UpdateProjectRequestObject[["prompt_limit"]] <-
          self$`prompt_limit`
      }
      return(UpdateProjectRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateProjectRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateProjectRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
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
      if (!is.null(this_object$`brand_voice`)) {
        self$`brand_voice` <- this_object$`brand_voice`
      }
      if (!is.null(this_object$`goals`)) {
        self$`goals` <- this_object$`goals`
      }
      if (!is.null(this_object$`primary_products`)) {
        self$`primary_products` <- ApiClient$new()$deserializeObj(this_object$`primary_products`, "array[character]", loadNamespace("llmpulse"))
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
    #' @return UpdateProjectRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdateProjectRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdateProjectRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`brand_name` <- this_object$`brand_name`
      self$`description` <- this_object$`description`
      self$`industry` <- this_object$`industry`
      self$`business_model` <- this_object$`business_model`
      self$`business_model_other` <- this_object$`business_model_other`
      self$`target_audience` <- this_object$`target_audience`
      self$`brand_voice` <- this_object$`brand_voice`
      self$`goals` <- this_object$`goals`
      self$`primary_products` <- ApiClient$new()$deserializeObj(this_object$`primary_products`, "array[character]", loadNamespace("llmpulse"))
      self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      self$`additional_owned_domains` <- ApiClient$new()$deserializeObj(this_object$`additional_owned_domains`, "array[character]", loadNamespace("llmpulse"))
      self$`prompt_limit` <- this_object$`prompt_limit`
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdateProjectRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdateProjectRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (self$`prompt_limit` > 2147483647) {
        return(FALSE)
      }
      if (self$`prompt_limit` < 1) {
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
      if (self$`prompt_limit` > 2147483647) {
        invalid_fields["prompt_limit"] <- "Invalid value for `prompt_limit`, must be smaller than or equal to 2147483647."
      }
      if (self$`prompt_limit` < 1) {
        invalid_fields["prompt_limit"] <- "Invalid value for `prompt_limit`, must be bigger than or equal to 1."
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
# UpdateProjectRequest$unlock()
#
## Below is an example to define the print function
# UpdateProjectRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdateProjectRequest$lock()

