#' Create a new AnswerDetails
#'
#' @description
#' AnswerDetails Class
#'
#' @docType class
#' @title AnswerDetails
#' @description AnswerDetails Class
#' @format An \code{R6Class} generator object
#' @field id  integer [optional]
#' @field prompt_id  integer [optional]
#' @field prompt_text  character [optional]
#' @field model  character [optional]
#' @field response  character [optional]
#' @field response_truncated  character [optional]
#' @field executed_at  character [optional]
#' @field duration_ms  integer [optional]
#' @field success  character [optional]
#' @field fan_out_queries  list(character) [optional]
#' @field mentions  list(object) [optional]
#' @field citations  list(object) [optional]
#' @field competitor_mentions  list(object) [optional]
#' @field competitor_citations  list(object) [optional]
#' @field sentiments  list(object) [optional]
#' @field sources  list(object) [optional]
#' @field shopping_products  list(object) [optional]
#' @field brand_entities  list(object) [optional]
#' @field local_businesses  list(object) [optional]
#' @field locale  \link{AnswerDetailsLocale} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnswerDetails <- R6::R6Class(
  "AnswerDetails",
  public = list(
    `id` = NULL,
    `prompt_id` = NULL,
    `prompt_text` = NULL,
    `model` = NULL,
    `response` = NULL,
    `response_truncated` = NULL,
    `executed_at` = NULL,
    `duration_ms` = NULL,
    `success` = NULL,
    `fan_out_queries` = NULL,
    `mentions` = NULL,
    `citations` = NULL,
    `competitor_mentions` = NULL,
    `competitor_citations` = NULL,
    `sentiments` = NULL,
    `sources` = NULL,
    `shopping_products` = NULL,
    `brand_entities` = NULL,
    `local_businesses` = NULL,
    `locale` = NULL,

    #' @description
    #' Initialize a new AnswerDetails class.
    #'
    #' @param id id
    #' @param prompt_id prompt_id
    #' @param prompt_text prompt_text
    #' @param model model
    #' @param response response
    #' @param response_truncated response_truncated
    #' @param executed_at executed_at
    #' @param duration_ms duration_ms
    #' @param success success
    #' @param fan_out_queries fan_out_queries
    #' @param mentions mentions
    #' @param citations citations
    #' @param competitor_mentions competitor_mentions
    #' @param competitor_citations competitor_citations
    #' @param sentiments sentiments
    #' @param sources sources
    #' @param shopping_products shopping_products
    #' @param brand_entities brand_entities
    #' @param local_businesses local_businesses
    #' @param locale locale
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `prompt_id` = NULL, `prompt_text` = NULL, `model` = NULL, `response` = NULL, `response_truncated` = NULL, `executed_at` = NULL, `duration_ms` = NULL, `success` = NULL, `fan_out_queries` = NULL, `mentions` = NULL, `citations` = NULL, `competitor_mentions` = NULL, `competitor_citations` = NULL, `sentiments` = NULL, `sources` = NULL, `shopping_products` = NULL, `brand_entities` = NULL, `local_businesses` = NULL, `locale` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`prompt_id`)) {
        if (!(is.numeric(`prompt_id`) && length(`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", `prompt_id`))
        }
        self$`prompt_id` <- `prompt_id`
      }
      if (!is.null(`prompt_text`)) {
        if (!(is.character(`prompt_text`) && length(`prompt_text`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_text`. Must be a string:", `prompt_text`))
        }
        self$`prompt_text` <- `prompt_text`
      }
      if (!is.null(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!is.null(`response`)) {
        if (!(is.character(`response`) && length(`response`) == 1)) {
          stop(paste("Error! Invalid data for `response`. Must be a string:", `response`))
        }
        self$`response` <- `response`
      }
      if (!is.null(`response_truncated`)) {
        if (!(is.logical(`response_truncated`) && length(`response_truncated`) == 1)) {
          stop(paste("Error! Invalid data for `response_truncated`. Must be a boolean:", `response_truncated`))
        }
        self$`response_truncated` <- `response_truncated`
      }
      if (!is.null(`executed_at`)) {
        if (!is.character(`executed_at`)) {
          stop(paste("Error! Invalid data for `executed_at`. Must be a string:", `executed_at`))
        }
        self$`executed_at` <- `executed_at`
      }
      if (!is.null(`duration_ms`)) {
        if (!(is.numeric(`duration_ms`) && length(`duration_ms`) == 1)) {
          stop(paste("Error! Invalid data for `duration_ms`. Must be an integer:", `duration_ms`))
        }
        self$`duration_ms` <- `duration_ms`
      }
      if (!is.null(`success`)) {
        if (!(is.logical(`success`) && length(`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", `success`))
        }
        self$`success` <- `success`
      }
      if (!is.null(`fan_out_queries`)) {
        stopifnot(is.vector(`fan_out_queries`), length(`fan_out_queries`) != 0)
        sapply(`fan_out_queries`, function(x) stopifnot(is.character(x)))
        self$`fan_out_queries` <- `fan_out_queries`
      }
      if (!is.null(`mentions`)) {
        stopifnot(is.vector(`mentions`), length(`mentions`) != 0)
        sapply(`mentions`, function(x) stopifnot(is.character(x)))
        self$`mentions` <- `mentions`
      }
      if (!is.null(`citations`)) {
        stopifnot(is.vector(`citations`), length(`citations`) != 0)
        sapply(`citations`, function(x) stopifnot(is.character(x)))
        self$`citations` <- `citations`
      }
      if (!is.null(`competitor_mentions`)) {
        stopifnot(is.vector(`competitor_mentions`), length(`competitor_mentions`) != 0)
        sapply(`competitor_mentions`, function(x) stopifnot(is.character(x)))
        self$`competitor_mentions` <- `competitor_mentions`
      }
      if (!is.null(`competitor_citations`)) {
        stopifnot(is.vector(`competitor_citations`), length(`competitor_citations`) != 0)
        sapply(`competitor_citations`, function(x) stopifnot(is.character(x)))
        self$`competitor_citations` <- `competitor_citations`
      }
      if (!is.null(`sentiments`)) {
        stopifnot(is.vector(`sentiments`), length(`sentiments`) != 0)
        sapply(`sentiments`, function(x) stopifnot(is.character(x)))
        self$`sentiments` <- `sentiments`
      }
      if (!is.null(`sources`)) {
        stopifnot(is.vector(`sources`), length(`sources`) != 0)
        sapply(`sources`, function(x) stopifnot(is.character(x)))
        self$`sources` <- `sources`
      }
      if (!is.null(`shopping_products`)) {
        stopifnot(is.vector(`shopping_products`), length(`shopping_products`) != 0)
        sapply(`shopping_products`, function(x) stopifnot(is.character(x)))
        self$`shopping_products` <- `shopping_products`
      }
      if (!is.null(`brand_entities`)) {
        stopifnot(is.vector(`brand_entities`), length(`brand_entities`) != 0)
        sapply(`brand_entities`, function(x) stopifnot(is.character(x)))
        self$`brand_entities` <- `brand_entities`
      }
      if (!is.null(`local_businesses`)) {
        stopifnot(is.vector(`local_businesses`), length(`local_businesses`) != 0)
        sapply(`local_businesses`, function(x) stopifnot(is.character(x)))
        self$`local_businesses` <- `local_businesses`
      }
      if (!is.null(`locale`)) {
        stopifnot(R6::is.R6(`locale`))
        self$`locale` <- `locale`
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
    #' @return AnswerDetails as a base R list.
    #' @examples
    #' # convert array of AnswerDetails (x) to a data frame
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
    #' Convert AnswerDetails to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnswerDetailsObject <- list()
      if (!is.null(self$`id`)) {
        AnswerDetailsObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`prompt_id`)) {
        AnswerDetailsObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`prompt_text`)) {
        AnswerDetailsObject[["prompt_text"]] <-
          self$`prompt_text`
      }
      if (!is.null(self$`model`)) {
        AnswerDetailsObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`response`)) {
        AnswerDetailsObject[["response"]] <-
          self$`response`
      }
      if (!is.null(self$`response_truncated`)) {
        AnswerDetailsObject[["response_truncated"]] <-
          self$`response_truncated`
      }
      if (!is.null(self$`executed_at`)) {
        AnswerDetailsObject[["executed_at"]] <-
          self$`executed_at`
      }
      if (!is.null(self$`duration_ms`)) {
        AnswerDetailsObject[["duration_ms"]] <-
          self$`duration_ms`
      }
      if (!is.null(self$`success`)) {
        AnswerDetailsObject[["success"]] <-
          self$`success`
      }
      if (!is.null(self$`fan_out_queries`)) {
        AnswerDetailsObject[["fan_out_queries"]] <-
          self$`fan_out_queries`
      }
      if (!is.null(self$`mentions`)) {
        AnswerDetailsObject[["mentions"]] <-
          self$`mentions`
      }
      if (!is.null(self$`citations`)) {
        AnswerDetailsObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`competitor_mentions`)) {
        AnswerDetailsObject[["competitor_mentions"]] <-
          self$`competitor_mentions`
      }
      if (!is.null(self$`competitor_citations`)) {
        AnswerDetailsObject[["competitor_citations"]] <-
          self$`competitor_citations`
      }
      if (!is.null(self$`sentiments`)) {
        AnswerDetailsObject[["sentiments"]] <-
          self$`sentiments`
      }
      if (!is.null(self$`sources`)) {
        AnswerDetailsObject[["sources"]] <-
          self$`sources`
      }
      if (!is.null(self$`shopping_products`)) {
        AnswerDetailsObject[["shopping_products"]] <-
          self$`shopping_products`
      }
      if (!is.null(self$`brand_entities`)) {
        AnswerDetailsObject[["brand_entities"]] <-
          self$`brand_entities`
      }
      if (!is.null(self$`local_businesses`)) {
        AnswerDetailsObject[["local_businesses"]] <-
          self$`local_businesses`
      }
      if (!is.null(self$`locale`)) {
        AnswerDetailsObject[["locale"]] <-
          self$extractSimpleType(self$`locale`)
      }
      return(AnswerDetailsObject)
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
    #' Deserialize JSON string into an instance of AnswerDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnswerDetails
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`prompt_id`)) {
        self$`prompt_id` <- this_object$`prompt_id`
      }
      if (!is.null(this_object$`prompt_text`)) {
        self$`prompt_text` <- this_object$`prompt_text`
      }
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`response`)) {
        self$`response` <- this_object$`response`
      }
      if (!is.null(this_object$`response_truncated`)) {
        self$`response_truncated` <- this_object$`response_truncated`
      }
      if (!is.null(this_object$`executed_at`)) {
        self$`executed_at` <- this_object$`executed_at`
      }
      if (!is.null(this_object$`duration_ms`)) {
        self$`duration_ms` <- this_object$`duration_ms`
      }
      if (!is.null(this_object$`success`)) {
        self$`success` <- this_object$`success`
      }
      if (!is.null(this_object$`fan_out_queries`)) {
        self$`fan_out_queries` <- ApiClient$new()$deserializeObj(this_object$`fan_out_queries`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`mentions`)) {
        self$`mentions` <- ApiClient$new()$deserializeObj(this_object$`mentions`, "array[object]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- ApiClient$new()$deserializeObj(this_object$`citations`, "array[object]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`competitor_mentions`)) {
        self$`competitor_mentions` <- ApiClient$new()$deserializeObj(this_object$`competitor_mentions`, "array[object]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`competitor_citations`)) {
        self$`competitor_citations` <- ApiClient$new()$deserializeObj(this_object$`competitor_citations`, "array[object]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`sentiments`)) {
        self$`sentiments` <- ApiClient$new()$deserializeObj(this_object$`sentiments`, "array[object]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`sources`)) {
        self$`sources` <- ApiClient$new()$deserializeObj(this_object$`sources`, "array[object]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`shopping_products`)) {
        self$`shopping_products` <- ApiClient$new()$deserializeObj(this_object$`shopping_products`, "array[object]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`brand_entities`)) {
        self$`brand_entities` <- ApiClient$new()$deserializeObj(this_object$`brand_entities`, "array[object]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`local_businesses`)) {
        self$`local_businesses` <- ApiClient$new()$deserializeObj(this_object$`local_businesses`, "array[object]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`locale`)) {
        `locale_object` <- AnswerDetailsLocale$new()
        `locale_object`$fromJSON(jsonlite::toJSON(this_object$`locale`, auto_unbox = TRUE, digits = NA))
        self$`locale` <- `locale_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnswerDetails in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnswerDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnswerDetails
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`prompt_id` <- this_object$`prompt_id`
      self$`prompt_text` <- this_object$`prompt_text`
      self$`model` <- this_object$`model`
      self$`response` <- this_object$`response`
      self$`response_truncated` <- this_object$`response_truncated`
      self$`executed_at` <- this_object$`executed_at`
      self$`duration_ms` <- this_object$`duration_ms`
      self$`success` <- this_object$`success`
      self$`fan_out_queries` <- ApiClient$new()$deserializeObj(this_object$`fan_out_queries`, "array[character]", loadNamespace("llmpulse"))
      self$`mentions` <- ApiClient$new()$deserializeObj(this_object$`mentions`, "array[object]", loadNamespace("llmpulse"))
      self$`citations` <- ApiClient$new()$deserializeObj(this_object$`citations`, "array[object]", loadNamespace("llmpulse"))
      self$`competitor_mentions` <- ApiClient$new()$deserializeObj(this_object$`competitor_mentions`, "array[object]", loadNamespace("llmpulse"))
      self$`competitor_citations` <- ApiClient$new()$deserializeObj(this_object$`competitor_citations`, "array[object]", loadNamespace("llmpulse"))
      self$`sentiments` <- ApiClient$new()$deserializeObj(this_object$`sentiments`, "array[object]", loadNamespace("llmpulse"))
      self$`sources` <- ApiClient$new()$deserializeObj(this_object$`sources`, "array[object]", loadNamespace("llmpulse"))
      self$`shopping_products` <- ApiClient$new()$deserializeObj(this_object$`shopping_products`, "array[object]", loadNamespace("llmpulse"))
      self$`brand_entities` <- ApiClient$new()$deserializeObj(this_object$`brand_entities`, "array[object]", loadNamespace("llmpulse"))
      self$`local_businesses` <- ApiClient$new()$deserializeObj(this_object$`local_businesses`, "array[object]", loadNamespace("llmpulse"))
      self$`locale` <- AnswerDetailsLocale$new()$fromJSON(jsonlite::toJSON(this_object$`locale`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to AnswerDetails and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnswerDetails
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
# AnswerDetails$unlock()
#
## Below is an example to define the print function
# AnswerDetails$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnswerDetails$lock()

