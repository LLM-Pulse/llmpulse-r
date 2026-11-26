#' Create a new CitationPageCache
#'
#' @description
#' What was read on the cited page. Metadata is null when the page has no usable content.
#'
#' @docType class
#' @title CitationPageCache
#' @description CitationPageCache Class
#' @format An \code{R6Class} generator object
#' @field present Whether the page has a saved copy character
#' @field last_crawled_at When the saved copy was read; null without usable content character
#' @field status_code A saved successful response or an observed 404/410; null otherwise integer
#' @field error_message Always null; crawl errors are not exposed character
#' @field content_format  character
#' @field bytes  integer
#' @field html_title  character
#' @field meta_title  character
#' @field meta_description  character
#' @field h1  character
#' @field canonical_url  character
#' @field language  character
#' @field mentions_processed Whether the page's mention analysis has completed for this project character
#' @field content_available  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitationPageCache <- R6::R6Class(
  "CitationPageCache",
  public = list(
    `present` = NULL,
    `last_crawled_at` = NULL,
    `status_code` = NULL,
    `error_message` = NULL,
    `content_format` = NULL,
    `bytes` = NULL,
    `html_title` = NULL,
    `meta_title` = NULL,
    `meta_description` = NULL,
    `h1` = NULL,
    `canonical_url` = NULL,
    `language` = NULL,
    `mentions_processed` = NULL,
    `content_available` = NULL,

    #' @description
    #' Initialize a new CitationPageCache class.
    #'
    #' @param present Whether the page has a saved copy
    #' @param last_crawled_at When the saved copy was read; null without usable content
    #' @param status_code A saved successful response or an observed 404/410; null otherwise
    #' @param error_message Always null; crawl errors are not exposed
    #' @param content_format content_format
    #' @param bytes bytes
    #' @param html_title html_title
    #' @param meta_title meta_title
    #' @param meta_description meta_description
    #' @param h1 h1
    #' @param canonical_url canonical_url
    #' @param language language
    #' @param mentions_processed Whether the page's mention analysis has completed for this project
    #' @param content_available content_available
    #' @param ... Other optional arguments.
    initialize = function(`present`, `last_crawled_at`, `status_code`, `error_message`, `content_format`, `bytes`, `html_title`, `meta_title`, `meta_description`, `h1`, `canonical_url`, `language`, `mentions_processed`, `content_available`, ...) {
      if (!missing(`present`)) {
        if (!(is.logical(`present`) && length(`present`) == 1)) {
          stop(paste("Error! Invalid data for `present`. Must be a boolean:", `present`))
        }
        self$`present` <- `present`
      }
      if (!missing(`last_crawled_at`)) {
        if (!(is.character(`last_crawled_at`) && length(`last_crawled_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_crawled_at`. Must be a string:", `last_crawled_at`))
        }
        self$`last_crawled_at` <- `last_crawled_at`
      }
      if (!missing(`status_code`)) {
        if (!(is.numeric(`status_code`) && length(`status_code`) == 1)) {
          stop(paste("Error! Invalid data for `status_code`. Must be an integer:", `status_code`))
        }
        self$`status_code` <- `status_code`
      }
      if (!missing(`error_message`)) {
        if (!(is.character(`error_message`) && length(`error_message`) == 1)) {
          stop(paste("Error! Invalid data for `error_message`. Must be a string:", `error_message`))
        }
        self$`error_message` <- `error_message`
      }
      if (!missing(`content_format`)) {
        if (!(is.character(`content_format`) && length(`content_format`) == 1)) {
          stop(paste("Error! Invalid data for `content_format`. Must be a string:", `content_format`))
        }
        self$`content_format` <- `content_format`
      }
      if (!missing(`bytes`)) {
        if (!(is.numeric(`bytes`) && length(`bytes`) == 1)) {
          stop(paste("Error! Invalid data for `bytes`. Must be an integer:", `bytes`))
        }
        self$`bytes` <- `bytes`
      }
      if (!missing(`html_title`)) {
        if (!(is.character(`html_title`) && length(`html_title`) == 1)) {
          stop(paste("Error! Invalid data for `html_title`. Must be a string:", `html_title`))
        }
        self$`html_title` <- `html_title`
      }
      if (!missing(`meta_title`)) {
        if (!(is.character(`meta_title`) && length(`meta_title`) == 1)) {
          stop(paste("Error! Invalid data for `meta_title`. Must be a string:", `meta_title`))
        }
        self$`meta_title` <- `meta_title`
      }
      if (!missing(`meta_description`)) {
        if (!(is.character(`meta_description`) && length(`meta_description`) == 1)) {
          stop(paste("Error! Invalid data for `meta_description`. Must be a string:", `meta_description`))
        }
        self$`meta_description` <- `meta_description`
      }
      if (!missing(`h1`)) {
        if (!(is.character(`h1`) && length(`h1`) == 1)) {
          stop(paste("Error! Invalid data for `h1`. Must be a string:", `h1`))
        }
        self$`h1` <- `h1`
      }
      if (!missing(`canonical_url`)) {
        if (!(is.character(`canonical_url`) && length(`canonical_url`) == 1)) {
          stop(paste("Error! Invalid data for `canonical_url`. Must be a string:", `canonical_url`))
        }
        self$`canonical_url` <- `canonical_url`
      }
      if (!missing(`language`)) {
        if (!(is.character(`language`) && length(`language`) == 1)) {
          stop(paste("Error! Invalid data for `language`. Must be a string:", `language`))
        }
        self$`language` <- `language`
      }
      if (!missing(`mentions_processed`)) {
        if (!(is.logical(`mentions_processed`) && length(`mentions_processed`) == 1)) {
          stop(paste("Error! Invalid data for `mentions_processed`. Must be a boolean:", `mentions_processed`))
        }
        self$`mentions_processed` <- `mentions_processed`
      }
      if (!missing(`content_available`)) {
        if (!(is.logical(`content_available`) && length(`content_available`) == 1)) {
          stop(paste("Error! Invalid data for `content_available`. Must be a boolean:", `content_available`))
        }
        self$`content_available` <- `content_available`
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
    #' @return CitationPageCache as a base R list.
    #' @examples
    #' # convert array of CitationPageCache (x) to a data frame
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
    #' Convert CitationPageCache to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitationPageCacheObject <- list()
      if (!is.null(self$`present`)) {
        CitationPageCacheObject[["present"]] <-
          self$`present`
      }
      if (!is.null(self$`last_crawled_at`)) {
        CitationPageCacheObject[["last_crawled_at"]] <-
          self$`last_crawled_at`
      }
      if (!is.null(self$`status_code`)) {
        CitationPageCacheObject[["status_code"]] <-
          self$`status_code`
      }
      if (!is.null(self$`error_message`)) {
        CitationPageCacheObject[["error_message"]] <-
          self$`error_message`
      }
      if (!is.null(self$`content_format`)) {
        CitationPageCacheObject[["content_format"]] <-
          self$`content_format`
      }
      if (!is.null(self$`bytes`)) {
        CitationPageCacheObject[["bytes"]] <-
          self$`bytes`
      }
      if (!is.null(self$`html_title`)) {
        CitationPageCacheObject[["html_title"]] <-
          self$`html_title`
      }
      if (!is.null(self$`meta_title`)) {
        CitationPageCacheObject[["meta_title"]] <-
          self$`meta_title`
      }
      if (!is.null(self$`meta_description`)) {
        CitationPageCacheObject[["meta_description"]] <-
          self$`meta_description`
      }
      if (!is.null(self$`h1`)) {
        CitationPageCacheObject[["h1"]] <-
          self$`h1`
      }
      if (!is.null(self$`canonical_url`)) {
        CitationPageCacheObject[["canonical_url"]] <-
          self$`canonical_url`
      }
      if (!is.null(self$`language`)) {
        CitationPageCacheObject[["language"]] <-
          self$`language`
      }
      if (!is.null(self$`mentions_processed`)) {
        CitationPageCacheObject[["mentions_processed"]] <-
          self$`mentions_processed`
      }
      if (!is.null(self$`content_available`)) {
        CitationPageCacheObject[["content_available"]] <-
          self$`content_available`
      }
      return(CitationPageCacheObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationPageCache
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationPageCache
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`present`)) {
        self$`present` <- this_object$`present`
      }
      if (!is.null(this_object$`last_crawled_at`)) {
        self$`last_crawled_at` <- this_object$`last_crawled_at`
      }
      if (!is.null(this_object$`status_code`)) {
        self$`status_code` <- this_object$`status_code`
      }
      if (!is.null(this_object$`error_message`)) {
        self$`error_message` <- this_object$`error_message`
      }
      if (!is.null(this_object$`content_format`)) {
        self$`content_format` <- this_object$`content_format`
      }
      if (!is.null(this_object$`bytes`)) {
        self$`bytes` <- this_object$`bytes`
      }
      if (!is.null(this_object$`html_title`)) {
        self$`html_title` <- this_object$`html_title`
      }
      if (!is.null(this_object$`meta_title`)) {
        self$`meta_title` <- this_object$`meta_title`
      }
      if (!is.null(this_object$`meta_description`)) {
        self$`meta_description` <- this_object$`meta_description`
      }
      if (!is.null(this_object$`h1`)) {
        self$`h1` <- this_object$`h1`
      }
      if (!is.null(this_object$`canonical_url`)) {
        self$`canonical_url` <- this_object$`canonical_url`
      }
      if (!is.null(this_object$`language`)) {
        self$`language` <- this_object$`language`
      }
      if (!is.null(this_object$`mentions_processed`)) {
        self$`mentions_processed` <- this_object$`mentions_processed`
      }
      if (!is.null(this_object$`content_available`)) {
        self$`content_available` <- this_object$`content_available`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CitationPageCache in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationPageCache
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationPageCache
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`present` <- this_object$`present`
      self$`last_crawled_at` <- this_object$`last_crawled_at`
      self$`status_code` <- this_object$`status_code`
      self$`error_message` <- this_object$`error_message`
      self$`content_format` <- this_object$`content_format`
      self$`bytes` <- this_object$`bytes`
      self$`html_title` <- this_object$`html_title`
      self$`meta_title` <- this_object$`meta_title`
      self$`meta_description` <- this_object$`meta_description`
      self$`h1` <- this_object$`h1`
      self$`canonical_url` <- this_object$`canonical_url`
      self$`language` <- this_object$`language`
      self$`mentions_processed` <- this_object$`mentions_processed`
      self$`content_available` <- this_object$`content_available`
      self
    },

    #' @description
    #' Validate JSON input with respect to CitationPageCache and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `present`
      if (!is.null(input_json$`present`)) {
        if (!(is.logical(input_json$`present`) && length(input_json$`present`) == 1)) {
          stop(paste("Error! Invalid data for `present`. Must be a boolean:", input_json$`present`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageCache: the required field `present` is missing."))
      }
      # check the required field `last_crawled_at`
      if (!is.null(input_json$`last_crawled_at`)) {
        if (!(is.character(input_json$`last_crawled_at`) && length(input_json$`last_crawled_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_crawled_at`. Must be a string:", input_json$`last_crawled_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageCache: the required field `last_crawled_at` is missing."))
      }
      # check the required field `status_code`
      if (!is.null(input_json$`status_code`)) {
        if (!(is.numeric(input_json$`status_code`) && length(input_json$`status_code`) == 1)) {
          stop(paste("Error! Invalid data for `status_code`. Must be an integer:", input_json$`status_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageCache: the required field `status_code` is missing."))
      }
      # check the required field `error_message`
      if (!is.null(input_json$`error_message`)) {
        if (!(is.character(input_json$`error_message`) && length(input_json$`error_message`) == 1)) {
          stop(paste("Error! Invalid data for `error_message`. Must be a string:", input_json$`error_message`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageCache: the required field `error_message` is missing."))
      }
      # check the required field `content_format`
      if (!is.null(input_json$`content_format`)) {
        if (!(is.character(input_json$`content_format`) && length(input_json$`content_format`) == 1)) {
          stop(paste("Error! Invalid data for `content_format`. Must be a string:", input_json$`content_format`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageCache: the required field `content_format` is missing."))
      }
      # check the required field `bytes`
      if (!is.null(input_json$`bytes`)) {
        if (!(is.numeric(input_json$`bytes`) && length(input_json$`bytes`) == 1)) {
          stop(paste("Error! Invalid data for `bytes`. Must be an integer:", input_json$`bytes`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageCache: the required field `bytes` is missing."))
      }
      # check the required field `html_title`
      if (!is.null(input_json$`html_title`)) {
        if (!(is.character(input_json$`html_title`) && length(input_json$`html_title`) == 1)) {
          stop(paste("Error! Invalid data for `html_title`. Must be a string:", input_json$`html_title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageCache: the required field `html_title` is missing."))
      }
      # check the required field `meta_title`
      if (!is.null(input_json$`meta_title`)) {
        if (!(is.character(input_json$`meta_title`) && length(input_json$`meta_title`) == 1)) {
          stop(paste("Error! Invalid data for `meta_title`. Must be a string:", input_json$`meta_title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageCache: the required field `meta_title` is missing."))
      }
      # check the required field `meta_description`
      if (!is.null(input_json$`meta_description`)) {
        if (!(is.character(input_json$`meta_description`) && length(input_json$`meta_description`) == 1)) {
          stop(paste("Error! Invalid data for `meta_description`. Must be a string:", input_json$`meta_description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageCache: the required field `meta_description` is missing."))
      }
      # check the required field `h1`
      if (!is.null(input_json$`h1`)) {
        if (!(is.character(input_json$`h1`) && length(input_json$`h1`) == 1)) {
          stop(paste("Error! Invalid data for `h1`. Must be a string:", input_json$`h1`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageCache: the required field `h1` is missing."))
      }
      # check the required field `canonical_url`
      if (!is.null(input_json$`canonical_url`)) {
        if (!(is.character(input_json$`canonical_url`) && length(input_json$`canonical_url`) == 1)) {
          stop(paste("Error! Invalid data for `canonical_url`. Must be a string:", input_json$`canonical_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageCache: the required field `canonical_url` is missing."))
      }
      # check the required field `language`
      if (!is.null(input_json$`language`)) {
        if (!(is.character(input_json$`language`) && length(input_json$`language`) == 1)) {
          stop(paste("Error! Invalid data for `language`. Must be a string:", input_json$`language`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageCache: the required field `language` is missing."))
      }
      # check the required field `mentions_processed`
      if (!is.null(input_json$`mentions_processed`)) {
        if (!(is.logical(input_json$`mentions_processed`) && length(input_json$`mentions_processed`) == 1)) {
          stop(paste("Error! Invalid data for `mentions_processed`. Must be a boolean:", input_json$`mentions_processed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageCache: the required field `mentions_processed` is missing."))
      }
      # check the required field `content_available`
      if (!is.null(input_json$`content_available`)) {
        if (!(is.logical(input_json$`content_available`) && length(input_json$`content_available`) == 1)) {
          stop(paste("Error! Invalid data for `content_available`. Must be a boolean:", input_json$`content_available`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageCache: the required field `content_available` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitationPageCache
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `present` is null
      if (is.null(self$`present`)) {
        return(FALSE)
      }

      # check if the required `mentions_processed` is null
      if (is.null(self$`mentions_processed`)) {
        return(FALSE)
      }

      # check if the required `content_available` is null
      if (is.null(self$`content_available`)) {
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
      # check if the required `present` is null
      if (is.null(self$`present`)) {
        invalid_fields["present"] <- "Non-nullable required field `present` cannot be null."
      }

      # check if the required `mentions_processed` is null
      if (is.null(self$`mentions_processed`)) {
        invalid_fields["mentions_processed"] <- "Non-nullable required field `mentions_processed` cannot be null."
      }

      # check if the required `content_available` is null
      if (is.null(self$`content_available`)) {
        invalid_fields["content_available"] <- "Non-nullable required field `content_available` cannot be null."
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
# CitationPageCache$unlock()
#
## Below is an example to define the print function
# CitationPageCache$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitationPageCache$lock()

