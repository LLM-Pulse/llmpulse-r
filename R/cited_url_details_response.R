#' Create a new CitedUrlDetailsResponse
#'
#' @description
#' CitedUrlDetailsResponse Class
#'
#' @docType class
#' @title CitedUrlDetailsResponse
#' @description CitedUrlDetailsResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field url_sha256  character
#' @field url The URL as first cited character
#' @field normalized_url  character
#' @field domain  character
#' @field host  character
#' @field stats  \link{CitedUrlDetailsResponseStats}
#' @field urls Up to 20 spellings of the URL as cited, alphabetically list(character)
#' @field page_details  \link{CitationPageDetails}
#' @field citation_series  \link{CitationSeries} [optional]
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitedUrlDetailsResponse <- R6::R6Class(
  "CitedUrlDetailsResponse",
  public = list(
    `project_id` = NULL,
    `url_sha256` = NULL,
    `url` = NULL,
    `normalized_url` = NULL,
    `domain` = NULL,
    `host` = NULL,
    `stats` = NULL,
    `urls` = NULL,
    `page_details` = NULL,
    `citation_series` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new CitedUrlDetailsResponse class.
    #'
    #' @param project_id project_id
    #' @param url_sha256 url_sha256
    #' @param url The URL as first cited
    #' @param normalized_url normalized_url
    #' @param domain domain
    #' @param host host
    #' @param stats stats
    #' @param urls Up to 20 spellings of the URL as cited, alphabetically
    #' @param page_details page_details
    #' @param request_id request_id
    #' @param citation_series citation_series
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `url_sha256`, `url`, `normalized_url`, `domain`, `host`, `stats`, `urls`, `page_details`, `request_id`, `citation_series` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`url_sha256`)) {
        if (!(is.character(`url_sha256`) && length(`url_sha256`) == 1)) {
          stop(paste("Error! Invalid data for `url_sha256`. Must be a string:", `url_sha256`))
        }
        self$`url_sha256` <- `url_sha256`
      }
      if (!missing(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!missing(`normalized_url`)) {
        if (!(is.character(`normalized_url`) && length(`normalized_url`) == 1)) {
          stop(paste("Error! Invalid data for `normalized_url`. Must be a string:", `normalized_url`))
        }
        self$`normalized_url` <- `normalized_url`
      }
      if (!missing(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!missing(`host`)) {
        if (!(is.character(`host`) && length(`host`) == 1)) {
          stop(paste("Error! Invalid data for `host`. Must be a string:", `host`))
        }
        self$`host` <- `host`
      }
      if (!missing(`stats`)) {
        stopifnot(R6::is.R6(`stats`))
        self$`stats` <- `stats`
      }
      if (!missing(`urls`)) {
        stopifnot(is.vector(`urls`), length(`urls`) != 0)
        sapply(`urls`, function(x) stopifnot(is.character(x)))
        self$`urls` <- `urls`
      }
      if (!missing(`page_details`)) {
        stopifnot(R6::is.R6(`page_details`))
        self$`page_details` <- `page_details`
      }
      if (!missing(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
      }
      if (!is.null(`citation_series`)) {
        stopifnot(R6::is.R6(`citation_series`))
        self$`citation_series` <- `citation_series`
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
    #' @return CitedUrlDetailsResponse as a base R list.
    #' @examples
    #' # convert array of CitedUrlDetailsResponse (x) to a data frame
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
    #' Convert CitedUrlDetailsResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitedUrlDetailsResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        CitedUrlDetailsResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`url_sha256`)) {
        CitedUrlDetailsResponseObject[["url_sha256"]] <-
          self$`url_sha256`
      }
      if (!is.null(self$`url`)) {
        CitedUrlDetailsResponseObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`normalized_url`)) {
        CitedUrlDetailsResponseObject[["normalized_url"]] <-
          self$`normalized_url`
      }
      if (!is.null(self$`domain`)) {
        CitedUrlDetailsResponseObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`host`)) {
        CitedUrlDetailsResponseObject[["host"]] <-
          self$`host`
      }
      if (!is.null(self$`stats`)) {
        CitedUrlDetailsResponseObject[["stats"]] <-
          self$extractSimpleType(self$`stats`)
      }
      if (!is.null(self$`urls`)) {
        CitedUrlDetailsResponseObject[["urls"]] <-
          self$`urls`
      }
      if (!is.null(self$`page_details`)) {
        CitedUrlDetailsResponseObject[["page_details"]] <-
          self$extractSimpleType(self$`page_details`)
      }
      if (!is.null(self$`citation_series`)) {
        CitedUrlDetailsResponseObject[["citation_series"]] <-
          self$extractSimpleType(self$`citation_series`)
      }
      if (!is.null(self$`request_id`)) {
        CitedUrlDetailsResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(CitedUrlDetailsResponseObject)
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
    #' Deserialize JSON string into an instance of CitedUrlDetailsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitedUrlDetailsResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`url_sha256`)) {
        self$`url_sha256` <- this_object$`url_sha256`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`normalized_url`)) {
        self$`normalized_url` <- this_object$`normalized_url`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`host`)) {
        self$`host` <- this_object$`host`
      }
      if (!is.null(this_object$`stats`)) {
        `stats_object` <- CitedUrlDetailsResponseStats$new()
        `stats_object`$fromJSON(jsonlite::toJSON(this_object$`stats`, auto_unbox = TRUE, digits = NA))
        self$`stats` <- `stats_object`
      }
      if (!is.null(this_object$`urls`)) {
        self$`urls` <- ApiClient$new()$deserializeObj(this_object$`urls`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`page_details`)) {
        `page_details_object` <- CitationPageDetails$new()
        `page_details_object`$fromJSON(jsonlite::toJSON(this_object$`page_details`, auto_unbox = TRUE, digits = NA))
        self$`page_details` <- `page_details_object`
      }
      if (!is.null(this_object$`citation_series`)) {
        `citation_series_object` <- CitationSeries$new()
        `citation_series_object`$fromJSON(jsonlite::toJSON(this_object$`citation_series`, auto_unbox = TRUE, digits = NA))
        self$`citation_series` <- `citation_series_object`
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
    #' @return CitedUrlDetailsResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitedUrlDetailsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitedUrlDetailsResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`url_sha256` <- this_object$`url_sha256`
      self$`url` <- this_object$`url`
      self$`normalized_url` <- this_object$`normalized_url`
      self$`domain` <- this_object$`domain`
      self$`host` <- this_object$`host`
      self$`stats` <- CitedUrlDetailsResponseStats$new()$fromJSON(jsonlite::toJSON(this_object$`stats`, auto_unbox = TRUE, digits = NA))
      self$`urls` <- ApiClient$new()$deserializeObj(this_object$`urls`, "array[character]", loadNamespace("llmpulse"))
      self$`page_details` <- CitationPageDetails$new()$fromJSON(jsonlite::toJSON(this_object$`page_details`, auto_unbox = TRUE, digits = NA))
      self$`citation_series` <- CitationSeries$new()$fromJSON(jsonlite::toJSON(this_object$`citation_series`, auto_unbox = TRUE, digits = NA))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CitedUrlDetailsResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponse: the required field `project_id` is missing."))
      }
      # check the required field `url_sha256`
      if (!is.null(input_json$`url_sha256`)) {
        if (!(is.character(input_json$`url_sha256`) && length(input_json$`url_sha256`) == 1)) {
          stop(paste("Error! Invalid data for `url_sha256`. Must be a string:", input_json$`url_sha256`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponse: the required field `url_sha256` is missing."))
      }
      # check the required field `url`
      if (!is.null(input_json$`url`)) {
        if (!(is.character(input_json$`url`) && length(input_json$`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", input_json$`url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponse: the required field `url` is missing."))
      }
      # check the required field `normalized_url`
      if (!is.null(input_json$`normalized_url`)) {
        if (!(is.character(input_json$`normalized_url`) && length(input_json$`normalized_url`) == 1)) {
          stop(paste("Error! Invalid data for `normalized_url`. Must be a string:", input_json$`normalized_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponse: the required field `normalized_url` is missing."))
      }
      # check the required field `domain`
      if (!is.null(input_json$`domain`)) {
        if (!(is.character(input_json$`domain`) && length(input_json$`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", input_json$`domain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponse: the required field `domain` is missing."))
      }
      # check the required field `host`
      if (!is.null(input_json$`host`)) {
        if (!(is.character(input_json$`host`) && length(input_json$`host`) == 1)) {
          stop(paste("Error! Invalid data for `host`. Must be a string:", input_json$`host`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponse: the required field `host` is missing."))
      }
      # check the required field `stats`
      if (!is.null(input_json$`stats`)) {
        stopifnot(R6::is.R6(input_json$`stats`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponse: the required field `stats` is missing."))
      }
      # check the required field `urls`
      if (!is.null(input_json$`urls`)) {
        stopifnot(is.vector(input_json$`urls`), length(input_json$`urls`) != 0)
        tmp <- sapply(input_json$`urls`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponse: the required field `urls` is missing."))
      }
      # check the required field `page_details`
      if (!is.null(input_json$`page_details`)) {
        stopifnot(R6::is.R6(input_json$`page_details`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponse: the required field `page_details` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitedUrlDetailsResponse
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

      # check if the required `url_sha256` is null
      if (is.null(self$`url_sha256`)) {
        return(FALSE)
      }

      # check if the required `normalized_url` is null
      if (is.null(self$`normalized_url`)) {
        return(FALSE)
      }

      # check if the required `stats` is null
      if (is.null(self$`stats`)) {
        return(FALSE)
      }

      # check if the required `urls` is null
      if (is.null(self$`urls`)) {
        return(FALSE)
      }

      # check if the required `page_details` is null
      if (is.null(self$`page_details`)) {
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

      # check if the required `url_sha256` is null
      if (is.null(self$`url_sha256`)) {
        invalid_fields["url_sha256"] <- "Non-nullable required field `url_sha256` cannot be null."
      }

      # check if the required `normalized_url` is null
      if (is.null(self$`normalized_url`)) {
        invalid_fields["normalized_url"] <- "Non-nullable required field `normalized_url` cannot be null."
      }

      # check if the required `stats` is null
      if (is.null(self$`stats`)) {
        invalid_fields["stats"] <- "Non-nullable required field `stats` cannot be null."
      }

      # check if the required `urls` is null
      if (is.null(self$`urls`)) {
        invalid_fields["urls"] <- "Non-nullable required field `urls` cannot be null."
      }

      # check if the required `page_details` is null
      if (is.null(self$`page_details`)) {
        invalid_fields["page_details"] <- "Non-nullable required field `page_details` cannot be null."
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
# CitedUrlDetailsResponse$unlock()
#
## Below is an example to define the print function
# CitedUrlDetailsResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitedUrlDetailsResponse$lock()

