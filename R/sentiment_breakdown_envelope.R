#' Create a new SentimentBreakdownEnvelope
#'
#' @description
#' SentimentBreakdownEnvelope Class
#'
#' @docType class
#' @title SentimentBreakdownEnvelope
#' @description SentimentBreakdownEnvelope Class
#' @format An \code{R6Class} generator object
#' @field from  character
#' @field to  character
#' @field brand  \link{SentimentBreakdownBrand}
#' @field sort  character
#' @field sort_dir  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SentimentBreakdownEnvelope <- R6::R6Class(
  "SentimentBreakdownEnvelope",
  public = list(
    `from` = NULL,
    `to` = NULL,
    `brand` = NULL,
    `sort` = NULL,
    `sort_dir` = NULL,

    #' @description
    #' Initialize a new SentimentBreakdownEnvelope class.
    #'
    #' @param from from
    #' @param to to
    #' @param brand brand
    #' @param sort sort
    #' @param sort_dir sort_dir
    #' @param ... Other optional arguments.
    initialize = function(`from`, `to`, `brand`, `sort`, `sort_dir`, ...) {
      if (!missing(`from`)) {
        if (!(is.character(`from`) && length(`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!missing(`to`)) {
        if (!(is.character(`to`) && length(`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!missing(`brand`)) {
        stopifnot(R6::is.R6(`brand`))
        self$`brand` <- `brand`
      }
      if (!missing(`sort`)) {
        if (!(is.character(`sort`) && length(`sort`) == 1)) {
          stop(paste("Error! Invalid data for `sort`. Must be a string:", `sort`))
        }
        self$`sort` <- `sort`
      }
      if (!missing(`sort_dir`)) {
        if (!(is.character(`sort_dir`) && length(`sort_dir`) == 1)) {
          stop(paste("Error! Invalid data for `sort_dir`. Must be a string:", `sort_dir`))
        }
        self$`sort_dir` <- `sort_dir`
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
    #' @return SentimentBreakdownEnvelope as a base R list.
    #' @examples
    #' # convert array of SentimentBreakdownEnvelope (x) to a data frame
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
    #' Convert SentimentBreakdownEnvelope to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SentimentBreakdownEnvelopeObject <- list()
      if (!is.null(self$`from`)) {
        SentimentBreakdownEnvelopeObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        SentimentBreakdownEnvelopeObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`brand`)) {
        SentimentBreakdownEnvelopeObject[["brand"]] <-
          self$extractSimpleType(self$`brand`)
      }
      if (!is.null(self$`sort`)) {
        SentimentBreakdownEnvelopeObject[["sort"]] <-
          self$`sort`
      }
      if (!is.null(self$`sort_dir`)) {
        SentimentBreakdownEnvelopeObject[["sort_dir"]] <-
          self$`sort_dir`
      }
      return(SentimentBreakdownEnvelopeObject)
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
    #' Deserialize JSON string into an instance of SentimentBreakdownEnvelope
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentBreakdownEnvelope
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`brand`)) {
        `brand_object` <- SentimentBreakdownBrand$new()
        `brand_object`$fromJSON(jsonlite::toJSON(this_object$`brand`, auto_unbox = TRUE, digits = NA))
        self$`brand` <- `brand_object`
      }
      if (!is.null(this_object$`sort`)) {
        self$`sort` <- this_object$`sort`
      }
      if (!is.null(this_object$`sort_dir`)) {
        self$`sort_dir` <- this_object$`sort_dir`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SentimentBreakdownEnvelope in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SentimentBreakdownEnvelope
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentBreakdownEnvelope
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`brand` <- SentimentBreakdownBrand$new()$fromJSON(jsonlite::toJSON(this_object$`brand`, auto_unbox = TRUE, digits = NA))
      self$`sort` <- this_object$`sort`
      self$`sort_dir` <- this_object$`sort_dir`
      self
    },

    #' @description
    #' Validate JSON input with respect to SentimentBreakdownEnvelope and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `from`
      if (!is.null(input_json$`from`)) {
        if (!(is.character(input_json$`from`) && length(input_json$`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", input_json$`from`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentBreakdownEnvelope: the required field `from` is missing."))
      }
      # check the required field `to`
      if (!is.null(input_json$`to`)) {
        if (!(is.character(input_json$`to`) && length(input_json$`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", input_json$`to`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentBreakdownEnvelope: the required field `to` is missing."))
      }
      # check the required field `brand`
      if (!is.null(input_json$`brand`)) {
        stopifnot(R6::is.R6(input_json$`brand`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentBreakdownEnvelope: the required field `brand` is missing."))
      }
      # check the required field `sort`
      if (!is.null(input_json$`sort`)) {
        if (!(is.character(input_json$`sort`) && length(input_json$`sort`) == 1)) {
          stop(paste("Error! Invalid data for `sort`. Must be a string:", input_json$`sort`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentBreakdownEnvelope: the required field `sort` is missing."))
      }
      # check the required field `sort_dir`
      if (!is.null(input_json$`sort_dir`)) {
        if (!(is.character(input_json$`sort_dir`) && length(input_json$`sort_dir`) == 1)) {
          stop(paste("Error! Invalid data for `sort_dir`. Must be a string:", input_json$`sort_dir`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentBreakdownEnvelope: the required field `sort_dir` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SentimentBreakdownEnvelope
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `from` is null
      if (is.null(self$`from`)) {
        return(FALSE)
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        return(FALSE)
      }

      # check if the required `brand` is null
      if (is.null(self$`brand`)) {
        return(FALSE)
      }

      # check if the required `sort` is null
      if (is.null(self$`sort`)) {
        return(FALSE)
      }

      # check if the required `sort_dir` is null
      if (is.null(self$`sort_dir`)) {
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
      # check if the required `from` is null
      if (is.null(self$`from`)) {
        invalid_fields["from"] <- "Non-nullable required field `from` cannot be null."
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        invalid_fields["to"] <- "Non-nullable required field `to` cannot be null."
      }

      # check if the required `brand` is null
      if (is.null(self$`brand`)) {
        invalid_fields["brand"] <- "Non-nullable required field `brand` cannot be null."
      }

      # check if the required `sort` is null
      if (is.null(self$`sort`)) {
        invalid_fields["sort"] <- "Non-nullable required field `sort` cannot be null."
      }

      # check if the required `sort_dir` is null
      if (is.null(self$`sort_dir`)) {
        invalid_fields["sort_dir"] <- "Non-nullable required field `sort_dir` cannot be null."
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
# SentimentBreakdownEnvelope$unlock()
#
## Below is an example to define the print function
# SentimentBreakdownEnvelope$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SentimentBreakdownEnvelope$lock()

