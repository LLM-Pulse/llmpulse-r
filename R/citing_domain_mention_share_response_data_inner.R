#' Create a new CitingDomainMentionShareResponseDataInner
#'
#' @description
#' CitingDomainMentionShareResponseDataInner Class
#'
#' @docType class
#' @title CitingDomainMentionShareResponseDataInner
#' @description CitingDomainMentionShareResponseDataInner Class
#' @format An \code{R6Class} generator object
#' @field domain  character
#' @field responses_citing Answers citing the domain integer
#' @field total_mentions Brand and competitor mentions in those answers, each answer counted once per brand integer
#' @field actors The brand and every competitor, most mentions first; empty when no answer cites the domain list(\link{CitingDomainMentionShareResponseDataInnerActorsInner})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitingDomainMentionShareResponseDataInner <- R6::R6Class(
  "CitingDomainMentionShareResponseDataInner",
  public = list(
    `domain` = NULL,
    `responses_citing` = NULL,
    `total_mentions` = NULL,
    `actors` = NULL,

    #' @description
    #' Initialize a new CitingDomainMentionShareResponseDataInner class.
    #'
    #' @param domain domain
    #' @param responses_citing Answers citing the domain
    #' @param total_mentions Brand and competitor mentions in those answers, each answer counted once per brand
    #' @param actors The brand and every competitor, most mentions first; empty when no answer cites the domain
    #' @param ... Other optional arguments.
    initialize = function(`domain`, `responses_citing`, `total_mentions`, `actors`, ...) {
      if (!missing(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!missing(`responses_citing`)) {
        if (!(is.numeric(`responses_citing`) && length(`responses_citing`) == 1)) {
          stop(paste("Error! Invalid data for `responses_citing`. Must be an integer:", `responses_citing`))
        }
        self$`responses_citing` <- `responses_citing`
      }
      if (!missing(`total_mentions`)) {
        if (!(is.numeric(`total_mentions`) && length(`total_mentions`) == 1)) {
          stop(paste("Error! Invalid data for `total_mentions`. Must be an integer:", `total_mentions`))
        }
        self$`total_mentions` <- `total_mentions`
      }
      if (!missing(`actors`)) {
        stopifnot(is.vector(`actors`), length(`actors`) != 0)
        sapply(`actors`, function(x) stopifnot(R6::is.R6(x)))
        self$`actors` <- `actors`
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
    #' @return CitingDomainMentionShareResponseDataInner as a base R list.
    #' @examples
    #' # convert array of CitingDomainMentionShareResponseDataInner (x) to a data frame
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
    #' Convert CitingDomainMentionShareResponseDataInner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitingDomainMentionShareResponseDataInnerObject <- list()
      if (!is.null(self$`domain`)) {
        CitingDomainMentionShareResponseDataInnerObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`responses_citing`)) {
        CitingDomainMentionShareResponseDataInnerObject[["responses_citing"]] <-
          self$`responses_citing`
      }
      if (!is.null(self$`total_mentions`)) {
        CitingDomainMentionShareResponseDataInnerObject[["total_mentions"]] <-
          self$`total_mentions`
      }
      if (!is.null(self$`actors`)) {
        CitingDomainMentionShareResponseDataInnerObject[["actors"]] <-
          self$extractSimpleType(self$`actors`)
      }
      return(CitingDomainMentionShareResponseDataInnerObject)
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
    #' Deserialize JSON string into an instance of CitingDomainMentionShareResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitingDomainMentionShareResponseDataInner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`responses_citing`)) {
        self$`responses_citing` <- this_object$`responses_citing`
      }
      if (!is.null(this_object$`total_mentions`)) {
        self$`total_mentions` <- this_object$`total_mentions`
      }
      if (!is.null(this_object$`actors`)) {
        self$`actors` <- ApiClient$new()$deserializeObj(this_object$`actors`, "array[CitingDomainMentionShareResponseDataInnerActorsInner]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CitingDomainMentionShareResponseDataInner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitingDomainMentionShareResponseDataInner
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitingDomainMentionShareResponseDataInner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`domain` <- this_object$`domain`
      self$`responses_citing` <- this_object$`responses_citing`
      self$`total_mentions` <- this_object$`total_mentions`
      self$`actors` <- ApiClient$new()$deserializeObj(this_object$`actors`, "array[CitingDomainMentionShareResponseDataInnerActorsInner]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CitingDomainMentionShareResponseDataInner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `domain`
      if (!is.null(input_json$`domain`)) {
        if (!(is.character(input_json$`domain`) && length(input_json$`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", input_json$`domain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitingDomainMentionShareResponseDataInner: the required field `domain` is missing."))
      }
      # check the required field `responses_citing`
      if (!is.null(input_json$`responses_citing`)) {
        if (!(is.numeric(input_json$`responses_citing`) && length(input_json$`responses_citing`) == 1)) {
          stop(paste("Error! Invalid data for `responses_citing`. Must be an integer:", input_json$`responses_citing`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitingDomainMentionShareResponseDataInner: the required field `responses_citing` is missing."))
      }
      # check the required field `total_mentions`
      if (!is.null(input_json$`total_mentions`)) {
        if (!(is.numeric(input_json$`total_mentions`) && length(input_json$`total_mentions`) == 1)) {
          stop(paste("Error! Invalid data for `total_mentions`. Must be an integer:", input_json$`total_mentions`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitingDomainMentionShareResponseDataInner: the required field `total_mentions` is missing."))
      }
      # check the required field `actors`
      if (!is.null(input_json$`actors`)) {
        stopifnot(is.vector(input_json$`actors`), length(input_json$`actors`) != 0)
        tmp <- sapply(input_json$`actors`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitingDomainMentionShareResponseDataInner: the required field `actors` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitingDomainMentionShareResponseDataInner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        return(FALSE)
      }

      # check if the required `responses_citing` is null
      if (is.null(self$`responses_citing`)) {
        return(FALSE)
      }

      # check if the required `total_mentions` is null
      if (is.null(self$`total_mentions`)) {
        return(FALSE)
      }

      # check if the required `actors` is null
      if (is.null(self$`actors`)) {
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
      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        invalid_fields["domain"] <- "Non-nullable required field `domain` cannot be null."
      }

      # check if the required `responses_citing` is null
      if (is.null(self$`responses_citing`)) {
        invalid_fields["responses_citing"] <- "Non-nullable required field `responses_citing` cannot be null."
      }

      # check if the required `total_mentions` is null
      if (is.null(self$`total_mentions`)) {
        invalid_fields["total_mentions"] <- "Non-nullable required field `total_mentions` cannot be null."
      }

      # check if the required `actors` is null
      if (is.null(self$`actors`)) {
        invalid_fields["actors"] <- "Non-nullable required field `actors` cannot be null."
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
# CitingDomainMentionShareResponseDataInner$unlock()
#
## Below is an example to define the print function
# CitingDomainMentionShareResponseDataInner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitingDomainMentionShareResponseDataInner$lock()

