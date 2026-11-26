#' Create a new CitationPageMentions
#'
#' @description
#' The brands the cited page mentions, from its analysis for the requesting project. A page not yet analyzed for it has null brand_mentioned, competitor_mentioned and brand_position and empty lists.
#'
#' @docType class
#' @title CitationPageMentions
#' @description CitationPageMentions Class
#' @format An \code{R6Class} generator object
#' @field brand_mentioned  character
#' @field competitor_mentioned  character
#' @field brand_position Rank of the brand's first mention on the page; null when it has none integer
#' @field content_gap_status missing_page_cache, content_unavailable, mentions_not_processed, mentioned, gap (a competitor but not the brand) or not_mentioned character
#' @field brands Each brand the page mentions once, in order of first mention list(\link{CitationPageMentionsBrandsInner})
#' @field mentions Every mention on the page with its snippet; not sent on GET /citation_intelligence/groups list(\link{CitationPageMentionsMentionsInner}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitationPageMentions <- R6::R6Class(
  "CitationPageMentions",
  public = list(
    `brand_mentioned` = NULL,
    `competitor_mentioned` = NULL,
    `brand_position` = NULL,
    `content_gap_status` = NULL,
    `brands` = NULL,
    `mentions` = NULL,

    #' @description
    #' Initialize a new CitationPageMentions class.
    #'
    #' @param brand_mentioned brand_mentioned
    #' @param competitor_mentioned competitor_mentioned
    #' @param brand_position Rank of the brand's first mention on the page; null when it has none
    #' @param content_gap_status missing_page_cache, content_unavailable, mentions_not_processed, mentioned, gap (a competitor but not the brand) or not_mentioned
    #' @param brands Each brand the page mentions once, in order of first mention
    #' @param mentions Every mention on the page with its snippet; not sent on GET /citation_intelligence/groups
    #' @param ... Other optional arguments.
    initialize = function(`brand_mentioned`, `competitor_mentioned`, `brand_position`, `content_gap_status`, `brands`, `mentions` = NULL, ...) {
      if (!missing(`brand_mentioned`)) {
        if (!(is.logical(`brand_mentioned`) && length(`brand_mentioned`) == 1)) {
          stop(paste("Error! Invalid data for `brand_mentioned`. Must be a boolean:", `brand_mentioned`))
        }
        self$`brand_mentioned` <- `brand_mentioned`
      }
      if (!missing(`competitor_mentioned`)) {
        if (!(is.logical(`competitor_mentioned`) && length(`competitor_mentioned`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_mentioned`. Must be a boolean:", `competitor_mentioned`))
        }
        self$`competitor_mentioned` <- `competitor_mentioned`
      }
      if (!missing(`brand_position`)) {
        if (!(is.numeric(`brand_position`) && length(`brand_position`) == 1)) {
          stop(paste("Error! Invalid data for `brand_position`. Must be an integer:", `brand_position`))
        }
        self$`brand_position` <- `brand_position`
      }
      if (!missing(`content_gap_status`)) {
        if (!(is.character(`content_gap_status`) && length(`content_gap_status`) == 1)) {
          stop(paste("Error! Invalid data for `content_gap_status`. Must be a string:", `content_gap_status`))
        }
        self$`content_gap_status` <- `content_gap_status`
      }
      if (!missing(`brands`)) {
        stopifnot(is.vector(`brands`), length(`brands`) != 0)
        sapply(`brands`, function(x) stopifnot(R6::is.R6(x)))
        self$`brands` <- `brands`
      }
      if (!is.null(`mentions`)) {
        stopifnot(is.vector(`mentions`), length(`mentions`) != 0)
        sapply(`mentions`, function(x) stopifnot(R6::is.R6(x)))
        self$`mentions` <- `mentions`
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
    #' @return CitationPageMentions as a base R list.
    #' @examples
    #' # convert array of CitationPageMentions (x) to a data frame
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
    #' Convert CitationPageMentions to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitationPageMentionsObject <- list()
      if (!is.null(self$`brand_mentioned`)) {
        CitationPageMentionsObject[["brand_mentioned"]] <-
          self$`brand_mentioned`
      }
      if (!is.null(self$`competitor_mentioned`)) {
        CitationPageMentionsObject[["competitor_mentioned"]] <-
          self$`competitor_mentioned`
      }
      if (!is.null(self$`brand_position`)) {
        CitationPageMentionsObject[["brand_position"]] <-
          self$`brand_position`
      }
      if (!is.null(self$`content_gap_status`)) {
        CitationPageMentionsObject[["content_gap_status"]] <-
          self$`content_gap_status`
      }
      if (!is.null(self$`brands`)) {
        CitationPageMentionsObject[["brands"]] <-
          self$extractSimpleType(self$`brands`)
      }
      if (!is.null(self$`mentions`)) {
        CitationPageMentionsObject[["mentions"]] <-
          self$extractSimpleType(self$`mentions`)
      }
      return(CitationPageMentionsObject)
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
    #' Deserialize JSON string into an instance of CitationPageMentions
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationPageMentions
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`brand_mentioned`)) {
        self$`brand_mentioned` <- this_object$`brand_mentioned`
      }
      if (!is.null(this_object$`competitor_mentioned`)) {
        self$`competitor_mentioned` <- this_object$`competitor_mentioned`
      }
      if (!is.null(this_object$`brand_position`)) {
        self$`brand_position` <- this_object$`brand_position`
      }
      if (!is.null(this_object$`content_gap_status`)) {
        self$`content_gap_status` <- this_object$`content_gap_status`
      }
      if (!is.null(this_object$`brands`)) {
        self$`brands` <- ApiClient$new()$deserializeObj(this_object$`brands`, "array[CitationPageMentionsBrandsInner]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`mentions`)) {
        self$`mentions` <- ApiClient$new()$deserializeObj(this_object$`mentions`, "array[CitationPageMentionsMentionsInner]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CitationPageMentions in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitationPageMentions
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitationPageMentions
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`brand_mentioned` <- this_object$`brand_mentioned`
      self$`competitor_mentioned` <- this_object$`competitor_mentioned`
      self$`brand_position` <- this_object$`brand_position`
      self$`content_gap_status` <- this_object$`content_gap_status`
      self$`brands` <- ApiClient$new()$deserializeObj(this_object$`brands`, "array[CitationPageMentionsBrandsInner]", loadNamespace("llmpulse"))
      self$`mentions` <- ApiClient$new()$deserializeObj(this_object$`mentions`, "array[CitationPageMentionsMentionsInner]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CitationPageMentions and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `brand_mentioned`
      if (!is.null(input_json$`brand_mentioned`)) {
        if (!(is.logical(input_json$`brand_mentioned`) && length(input_json$`brand_mentioned`) == 1)) {
          stop(paste("Error! Invalid data for `brand_mentioned`. Must be a boolean:", input_json$`brand_mentioned`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentions: the required field `brand_mentioned` is missing."))
      }
      # check the required field `competitor_mentioned`
      if (!is.null(input_json$`competitor_mentioned`)) {
        if (!(is.logical(input_json$`competitor_mentioned`) && length(input_json$`competitor_mentioned`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_mentioned`. Must be a boolean:", input_json$`competitor_mentioned`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentions: the required field `competitor_mentioned` is missing."))
      }
      # check the required field `brand_position`
      if (!is.null(input_json$`brand_position`)) {
        if (!(is.numeric(input_json$`brand_position`) && length(input_json$`brand_position`) == 1)) {
          stop(paste("Error! Invalid data for `brand_position`. Must be an integer:", input_json$`brand_position`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentions: the required field `brand_position` is missing."))
      }
      # check the required field `content_gap_status`
      if (!is.null(input_json$`content_gap_status`)) {
        if (!(is.character(input_json$`content_gap_status`) && length(input_json$`content_gap_status`) == 1)) {
          stop(paste("Error! Invalid data for `content_gap_status`. Must be a string:", input_json$`content_gap_status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentions: the required field `content_gap_status` is missing."))
      }
      # check the required field `brands`
      if (!is.null(input_json$`brands`)) {
        stopifnot(is.vector(input_json$`brands`), length(input_json$`brands`) != 0)
        tmp <- sapply(input_json$`brands`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitationPageMentions: the required field `brands` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitationPageMentions
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `content_gap_status` is null
      if (is.null(self$`content_gap_status`)) {
        return(FALSE)
      }

      # check if the required `brands` is null
      if (is.null(self$`brands`)) {
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
      # check if the required `content_gap_status` is null
      if (is.null(self$`content_gap_status`)) {
        invalid_fields["content_gap_status"] <- "Non-nullable required field `content_gap_status` cannot be null."
      }

      # check if the required `brands` is null
      if (is.null(self$`brands`)) {
        invalid_fields["brands"] <- "Non-nullable required field `brands` cannot be null."
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
# CitationPageMentions$unlock()
#
## Below is an example to define the print function
# CitationPageMentions$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitationPageMentions$lock()

