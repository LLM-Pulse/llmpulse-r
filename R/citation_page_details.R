#' Create a new CitationPageDetails
#'
#' @description
#' CitationPageDetails Class
#'
#' @docType class
#' @title CitationPageDetails
#' @description CitationPageDetails Class
#' @format An \code{R6Class} generator object
#' @field url_sha256  character
#' @field normalized_url  character
#' @field page_cache  \link{CitationPageCache}
#' @field page_mentions  \link{CitationPageMentions}
#' @field content  \link{CitationPageDetailsContent} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitationPageDetails <- R6::R6Class(
  "CitationPageDetails",
  public = list(
    `url_sha256` = NULL,
    `normalized_url` = NULL,
    `page_cache` = NULL,
    `page_mentions` = NULL,
    `content` = NULL,

    #' @description
    #' Initialize a new CitationPageDetails class.
    #'
    #' @param url_sha256 url_sha256
    #' @param normalized_url normalized_url
    #' @param page_cache page_cache
    #' @param page_mentions page_mentions
    #' @param content content
    #' @param ... Other optional arguments.
    initialize = function(`url_sha256`, `normalized_url`, `page_cache`, `page_mentions`, `content` = NULL, ...) {
      if (!missing(`url_sha256`)) {
        if (!(is.character(`url_sha256`) && length(`url_sha256`) == 1)) {
          stop(paste("Error! Invalid data for `url_sha256`. Must be a string:", `url_sha256`))
        }
        self$`url_sha256` <- `url_sha256`
      }
      if (!missing(`normalized_url`)) {
        if (!(is.character(`normalized_url`) && length(`normalized_url`) == 1)) {
          stop(paste("Error! Invalid data for `normalized_url`. Must be a string:", `normalized_url`))
        }
        self$`normalized_url` <- `normalized_url`
      }
      if (!missing(`page_cache`)) {
        stopifnot(R6::is.R6(`page_cache`))
        self$`page_cache` <- `page_cache`
      }
      if (!missing(`page_mentions`)) {
        stopifnot(R6::is.R6(`page_mentions`))
        self$`page_mentions` <- `page_mentions`
      }
      if (!is.null(`content`)) {
        stopifnot(R6::is.R6(`content`))
        self$`content` <- `content`
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
    #' @return CitationPageDetails as a base R list.
    #' @examples
    #' # convert array of CitationPageDetails (x) to a data frame
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
    #' Convert CitationPageDetails to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitationPageDetailsObject <- list()
      if (!is.null(self$`url_sha256`)) {
        CitationPageDetailsObject[["url_sha256"]] <-
          self$`url_sha256`
      }
      if (!is.null(self$`normalized_url`)) {
        CitationPageDetailsObject[["normalized_url"]] <-
          self$`normalized_url`
      }
      if (!is.null(self$`page_cache`)) {
        CitationPageDetailsObject[["page_cache"]] <-
          self$extractSimpleType(self$`page_cache`)
      }
      if (!is.null(self$`page_mentions`)) {
        CitationPageDetailsObject[["page_mentions"]] <-
          self$extractSimpleType(self$`page_mentions`)
      }
      if (!is.null(self$`content`)) {
        CitationPageDetailsObject[["content"]] <-
          self$extractSimpleType(self$`content`)
      }
      return(CitationPageDetailsObject)
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
    #' Deserialize JSON string into an instance of CitationPageDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationPageDetails
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`url_sha256`)) {
        self$`url_sha256` <- this_object$`url_sha256`
      }
      if (!is.null(this_object$`normalized_url`)) {
        self$`normalized_url` <- this_object$`normalized_url`
      }
      if (!is.null(this_object$`page_cache`)) {
        `page_cache_object` <- CitationPageCache$new()
        `page_cache_object`$fromJSON(jsonlite::toJSON(this_object$`page_cache`, auto_unbox = TRUE, digits = NA))
        self$`page_cache` <- `page_cache_object`
      }
      if (!is.null(this_object$`page_mentions`)) {
        `page_mentions_object` <- CitationPageMentions$new()
        `page_mentions_object`$fromJSON(jsonlite::toJSON(this_object$`page_mentions`, auto_unbox = TRUE, digits = NA))
        self$`page_mentions` <- `page_mentions_object`
      }
      if (!is.null(this_object$`content`)) {
        `content_object` <- CitationPageDetailsContent$new()
        `content_object`$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
        self$`content` <- `content_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CitationPageDetails in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationPageDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationPageDetails
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`url_sha256` <- this_object$`url_sha256`
      self$`normalized_url` <- this_object$`normalized_url`
      self$`page_cache` <- CitationPageCache$new()$fromJSON(jsonlite::toJSON(this_object$`page_cache`, auto_unbox = TRUE, digits = NA))
      self$`page_mentions` <- CitationPageMentions$new()$fromJSON(jsonlite::toJSON(this_object$`page_mentions`, auto_unbox = TRUE, digits = NA))
      self$`content` <- CitationPageDetailsContent$new()$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CitationPageDetails and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `url_sha256`
      if (!is.null(input_json$`url_sha256`)) {
        if (!(is.character(input_json$`url_sha256`) && length(input_json$`url_sha256`) == 1)) {
          stop(paste("Error! Invalid data for `url_sha256`. Must be a string:", input_json$`url_sha256`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageDetails: the required field `url_sha256` is missing."))
      }
      # check the required field `normalized_url`
      if (!is.null(input_json$`normalized_url`)) {
        if (!(is.character(input_json$`normalized_url`) && length(input_json$`normalized_url`) == 1)) {
          stop(paste("Error! Invalid data for `normalized_url`. Must be a string:", input_json$`normalized_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageDetails: the required field `normalized_url` is missing."))
      }
      # check the required field `page_cache`
      if (!is.null(input_json$`page_cache`)) {
        stopifnot(R6::is.R6(input_json$`page_cache`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageDetails: the required field `page_cache` is missing."))
      }
      # check the required field `page_mentions`
      if (!is.null(input_json$`page_mentions`)) {
        stopifnot(R6::is.R6(input_json$`page_mentions`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageDetails: the required field `page_mentions` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitationPageDetails
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `url_sha256` is null
      if (is.null(self$`url_sha256`)) {
        return(FALSE)
      }

      # check if the required `page_cache` is null
      if (is.null(self$`page_cache`)) {
        return(FALSE)
      }

      # check if the required `page_mentions` is null
      if (is.null(self$`page_mentions`)) {
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
      # check if the required `url_sha256` is null
      if (is.null(self$`url_sha256`)) {
        invalid_fields["url_sha256"] <- "Non-nullable required field `url_sha256` cannot be null."
      }

      # check if the required `page_cache` is null
      if (is.null(self$`page_cache`)) {
        invalid_fields["page_cache"] <- "Non-nullable required field `page_cache` cannot be null."
      }

      # check if the required `page_mentions` is null
      if (is.null(self$`page_mentions`)) {
        invalid_fields["page_mentions"] <- "Non-nullable required field `page_mentions` cannot be null."
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
# CitationPageDetails$unlock()
#
## Below is an example to define the print function
# CitationPageDetails$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitationPageDetails$lock()

