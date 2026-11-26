#' Create a new CitationGroupRowAggregateDetails
#'
#' @description
#' domain and host views only. The distinct cited pages of the group.
#'
#' @docType class
#' @title CitationGroupRowAggregateDetails
#' @description CitationGroupRowAggregateDetails Class
#' @format An \code{R6Class} generator object
#' @field unique_urls_count  integer
#' @field crawled_urls_count Pages with usable content integer
#' @field brand_mentioned_urls_count Pages analyzed for the project that mention the brand; null when none is analyzed integer
#' @field competitor_mentioned_urls_count Pages analyzed for the project that mention a competitor; null when none is analyzed integer
#' @field last_crawled_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitationGroupRowAggregateDetails <- R6::R6Class(
  "CitationGroupRowAggregateDetails",
  public = list(
    `unique_urls_count` = NULL,
    `crawled_urls_count` = NULL,
    `brand_mentioned_urls_count` = NULL,
    `competitor_mentioned_urls_count` = NULL,
    `last_crawled_at` = NULL,

    #' @description
    #' Initialize a new CitationGroupRowAggregateDetails class.
    #'
    #' @param unique_urls_count unique_urls_count
    #' @param crawled_urls_count Pages with usable content
    #' @param brand_mentioned_urls_count Pages analyzed for the project that mention the brand; null when none is analyzed
    #' @param competitor_mentioned_urls_count Pages analyzed for the project that mention a competitor; null when none is analyzed
    #' @param last_crawled_at last_crawled_at
    #' @param ... Other optional arguments.
    initialize = function(`unique_urls_count`, `crawled_urls_count`, `brand_mentioned_urls_count`, `competitor_mentioned_urls_count`, `last_crawled_at`, ...) {
      if (!missing(`unique_urls_count`)) {
        if (!(is.numeric(`unique_urls_count`) && length(`unique_urls_count`) == 1)) {
          stop(paste("Error! Invalid data for `unique_urls_count`. Must be an integer:", `unique_urls_count`))
        }
        self$`unique_urls_count` <- `unique_urls_count`
      }
      if (!missing(`crawled_urls_count`)) {
        if (!(is.numeric(`crawled_urls_count`) && length(`crawled_urls_count`) == 1)) {
          stop(paste("Error! Invalid data for `crawled_urls_count`. Must be an integer:", `crawled_urls_count`))
        }
        self$`crawled_urls_count` <- `crawled_urls_count`
      }
      if (!missing(`brand_mentioned_urls_count`)) {
        if (!(is.numeric(`brand_mentioned_urls_count`) && length(`brand_mentioned_urls_count`) == 1)) {
          stop(paste("Error! Invalid data for `brand_mentioned_urls_count`. Must be an integer:", `brand_mentioned_urls_count`))
        }
        self$`brand_mentioned_urls_count` <- `brand_mentioned_urls_count`
      }
      if (!missing(`competitor_mentioned_urls_count`)) {
        if (!(is.numeric(`competitor_mentioned_urls_count`) && length(`competitor_mentioned_urls_count`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_mentioned_urls_count`. Must be an integer:", `competitor_mentioned_urls_count`))
        }
        self$`competitor_mentioned_urls_count` <- `competitor_mentioned_urls_count`
      }
      if (!missing(`last_crawled_at`)) {
        if (!(is.character(`last_crawled_at`) && length(`last_crawled_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_crawled_at`. Must be a string:", `last_crawled_at`))
        }
        self$`last_crawled_at` <- `last_crawled_at`
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
    #' @return CitationGroupRowAggregateDetails as a base R list.
    #' @examples
    #' # convert array of CitationGroupRowAggregateDetails (x) to a data frame
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
    #' Convert CitationGroupRowAggregateDetails to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitationGroupRowAggregateDetailsObject <- list()
      if (!is.null(self$`unique_urls_count`)) {
        CitationGroupRowAggregateDetailsObject[["unique_urls_count"]] <-
          self$`unique_urls_count`
      }
      if (!is.null(self$`crawled_urls_count`)) {
        CitationGroupRowAggregateDetailsObject[["crawled_urls_count"]] <-
          self$`crawled_urls_count`
      }
      if (!is.null(self$`brand_mentioned_urls_count`)) {
        CitationGroupRowAggregateDetailsObject[["brand_mentioned_urls_count"]] <-
          self$`brand_mentioned_urls_count`
      }
      if (!is.null(self$`competitor_mentioned_urls_count`)) {
        CitationGroupRowAggregateDetailsObject[["competitor_mentioned_urls_count"]] <-
          self$`competitor_mentioned_urls_count`
      }
      if (!is.null(self$`last_crawled_at`)) {
        CitationGroupRowAggregateDetailsObject[["last_crawled_at"]] <-
          self$`last_crawled_at`
      }
      return(CitationGroupRowAggregateDetailsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationGroupRowAggregateDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationGroupRowAggregateDetails
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`unique_urls_count`)) {
        self$`unique_urls_count` <- this_object$`unique_urls_count`
      }
      if (!is.null(this_object$`crawled_urls_count`)) {
        self$`crawled_urls_count` <- this_object$`crawled_urls_count`
      }
      if (!is.null(this_object$`brand_mentioned_urls_count`)) {
        self$`brand_mentioned_urls_count` <- this_object$`brand_mentioned_urls_count`
      }
      if (!is.null(this_object$`competitor_mentioned_urls_count`)) {
        self$`competitor_mentioned_urls_count` <- this_object$`competitor_mentioned_urls_count`
      }
      if (!is.null(this_object$`last_crawled_at`)) {
        self$`last_crawled_at` <- this_object$`last_crawled_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CitationGroupRowAggregateDetails in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationGroupRowAggregateDetails
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationGroupRowAggregateDetails
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`unique_urls_count` <- this_object$`unique_urls_count`
      self$`crawled_urls_count` <- this_object$`crawled_urls_count`
      self$`brand_mentioned_urls_count` <- this_object$`brand_mentioned_urls_count`
      self$`competitor_mentioned_urls_count` <- this_object$`competitor_mentioned_urls_count`
      self$`last_crawled_at` <- this_object$`last_crawled_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to CitationGroupRowAggregateDetails and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `unique_urls_count`
      if (!is.null(input_json$`unique_urls_count`)) {
        if (!(is.numeric(input_json$`unique_urls_count`) && length(input_json$`unique_urls_count`) == 1)) {
          stop(paste("Error! Invalid data for `unique_urls_count`. Must be an integer:", input_json$`unique_urls_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRowAggregateDetails: the required field `unique_urls_count` is missing."))
      }
      # check the required field `crawled_urls_count`
      if (!is.null(input_json$`crawled_urls_count`)) {
        if (!(is.numeric(input_json$`crawled_urls_count`) && length(input_json$`crawled_urls_count`) == 1)) {
          stop(paste("Error! Invalid data for `crawled_urls_count`. Must be an integer:", input_json$`crawled_urls_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRowAggregateDetails: the required field `crawled_urls_count` is missing."))
      }
      # check the required field `brand_mentioned_urls_count`
      if (!is.null(input_json$`brand_mentioned_urls_count`)) {
        if (!(is.numeric(input_json$`brand_mentioned_urls_count`) && length(input_json$`brand_mentioned_urls_count`) == 1)) {
          stop(paste("Error! Invalid data for `brand_mentioned_urls_count`. Must be an integer:", input_json$`brand_mentioned_urls_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRowAggregateDetails: the required field `brand_mentioned_urls_count` is missing."))
      }
      # check the required field `competitor_mentioned_urls_count`
      if (!is.null(input_json$`competitor_mentioned_urls_count`)) {
        if (!(is.numeric(input_json$`competitor_mentioned_urls_count`) && length(input_json$`competitor_mentioned_urls_count`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_mentioned_urls_count`. Must be an integer:", input_json$`competitor_mentioned_urls_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRowAggregateDetails: the required field `competitor_mentioned_urls_count` is missing."))
      }
      # check the required field `last_crawled_at`
      if (!is.null(input_json$`last_crawled_at`)) {
        if (!(is.character(input_json$`last_crawled_at`) && length(input_json$`last_crawled_at`) == 1)) {
          stop(paste("Error! Invalid data for `last_crawled_at`. Must be a string:", input_json$`last_crawled_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationGroupRowAggregateDetails: the required field `last_crawled_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitationGroupRowAggregateDetails
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `unique_urls_count` is null
      if (is.null(self$`unique_urls_count`)) {
        return(FALSE)
      }

      # check if the required `crawled_urls_count` is null
      if (is.null(self$`crawled_urls_count`)) {
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
      # check if the required `unique_urls_count` is null
      if (is.null(self$`unique_urls_count`)) {
        invalid_fields["unique_urls_count"] <- "Non-nullable required field `unique_urls_count` cannot be null."
      }

      # check if the required `crawled_urls_count` is null
      if (is.null(self$`crawled_urls_count`)) {
        invalid_fields["crawled_urls_count"] <- "Non-nullable required field `crawled_urls_count` cannot be null."
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
# CitationGroupRowAggregateDetails$unlock()
#
## Below is an example to define the print function
# CitationGroupRowAggregateDetails$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitationGroupRowAggregateDetails$lock()

