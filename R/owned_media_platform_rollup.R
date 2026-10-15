#' Create a new OwnedMediaPlatformRollup
#'
#' @description
#' OwnedMediaPlatformRollup Class
#'
#' @docType class
#' @title OwnedMediaPlatformRollup
#' @description OwnedMediaPlatformRollup Class
#' @format An \code{R6Class} generator object
#' @field provider  character [optional]
#' @field connected  character [optional]
#' @field total  integer [optional]
#' @field yours  integer [optional]
#' @field share_pct  numeric [optional]
#' @field weekly  list(\link{OwnedMediaPlatformRollupWeeklyInner}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaPlatformRollup <- R6::R6Class(
  "OwnedMediaPlatformRollup",
  public = list(
    `provider` = NULL,
    `connected` = NULL,
    `total` = NULL,
    `yours` = NULL,
    `share_pct` = NULL,
    `weekly` = NULL,

    #' @description
    #' Initialize a new OwnedMediaPlatformRollup class.
    #'
    #' @param provider provider
    #' @param connected connected
    #' @param total total
    #' @param yours yours
    #' @param share_pct share_pct
    #' @param weekly weekly
    #' @param ... Other optional arguments.
    initialize = function(`provider` = NULL, `connected` = NULL, `total` = NULL, `yours` = NULL, `share_pct` = NULL, `weekly` = NULL, ...) {
      if (!is.null(`provider`)) {
        if (!(`provider` %in% c("youtube", "mobile_apps", "instagram", "facebook", "tiktok", "linkedin", "reddit"))) {
          stop(paste("Error! \"", `provider`, "\" cannot be assigned to `provider`. Must be \"youtube\", \"mobile_apps\", \"instagram\", \"facebook\", \"tiktok\", \"linkedin\", \"reddit\".", sep = ""))
        }
        if (!(is.character(`provider`) && length(`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", `provider`))
        }
        self$`provider` <- `provider`
      }
      if (!is.null(`connected`)) {
        if (!(is.logical(`connected`) && length(`connected`) == 1)) {
          stop(paste("Error! Invalid data for `connected`. Must be a boolean:", `connected`))
        }
        self$`connected` <- `connected`
      }
      if (!is.null(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!is.null(`yours`)) {
        if (!(is.numeric(`yours`) && length(`yours`) == 1)) {
          stop(paste("Error! Invalid data for `yours`. Must be an integer:", `yours`))
        }
        self$`yours` <- `yours`
      }
      if (!is.null(`share_pct`)) {
        self$`share_pct` <- `share_pct`
      }
      if (!is.null(`weekly`)) {
        stopifnot(is.vector(`weekly`), length(`weekly`) != 0)
        sapply(`weekly`, function(x) stopifnot(R6::is.R6(x)))
        self$`weekly` <- `weekly`
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
    #' @return OwnedMediaPlatformRollup as a base R list.
    #' @examples
    #' # convert array of OwnedMediaPlatformRollup (x) to a data frame
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
    #' Convert OwnedMediaPlatformRollup to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaPlatformRollupObject <- list()
      if (!is.null(self$`provider`)) {
        OwnedMediaPlatformRollupObject[["provider"]] <-
          self$`provider`
      }
      if (!is.null(self$`connected`)) {
        OwnedMediaPlatformRollupObject[["connected"]] <-
          self$`connected`
      }
      if (!is.null(self$`total`)) {
        OwnedMediaPlatformRollupObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`yours`)) {
        OwnedMediaPlatformRollupObject[["yours"]] <-
          self$`yours`
      }
      if (!is.null(self$`share_pct`)) {
        OwnedMediaPlatformRollupObject[["share_pct"]] <-
          self$`share_pct`
      }
      if (!is.null(self$`weekly`)) {
        OwnedMediaPlatformRollupObject[["weekly"]] <-
          self$extractSimpleType(self$`weekly`)
      }
      return(OwnedMediaPlatformRollupObject)
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
    #' Deserialize JSON string into an instance of OwnedMediaPlatformRollup
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaPlatformRollup
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`provider`)) {
        if (!is.null(this_object$`provider`) && !(this_object$`provider` %in% c("youtube", "mobile_apps", "instagram", "facebook", "tiktok", "linkedin", "reddit"))) {
          stop(paste("Error! \"", this_object$`provider`, "\" cannot be assigned to `provider`. Must be \"youtube\", \"mobile_apps\", \"instagram\", \"facebook\", \"tiktok\", \"linkedin\", \"reddit\".", sep = ""))
        }
        self$`provider` <- this_object$`provider`
      }
      if (!is.null(this_object$`connected`)) {
        self$`connected` <- this_object$`connected`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`yours`)) {
        self$`yours` <- this_object$`yours`
      }
      if (!is.null(this_object$`share_pct`)) {
        self$`share_pct` <- this_object$`share_pct`
      }
      if (!is.null(this_object$`weekly`)) {
        self$`weekly` <- ApiClient$new()$deserializeObj(this_object$`weekly`, "array[OwnedMediaPlatformRollupWeeklyInner]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaPlatformRollup in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaPlatformRollup
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaPlatformRollup
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`provider`) && !(this_object$`provider` %in% c("youtube", "mobile_apps", "instagram", "facebook", "tiktok", "linkedin", "reddit"))) {
        stop(paste("Error! \"", this_object$`provider`, "\" cannot be assigned to `provider`. Must be \"youtube\", \"mobile_apps\", \"instagram\", \"facebook\", \"tiktok\", \"linkedin\", \"reddit\".", sep = ""))
      }
      self$`provider` <- this_object$`provider`
      self$`connected` <- this_object$`connected`
      self$`total` <- this_object$`total`
      self$`yours` <- this_object$`yours`
      self$`share_pct` <- this_object$`share_pct`
      self$`weekly` <- ApiClient$new()$deserializeObj(this_object$`weekly`, "array[OwnedMediaPlatformRollupWeeklyInner]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaPlatformRollup and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaPlatformRollup
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
# OwnedMediaPlatformRollup$unlock()
#
## Below is an example to define the print function
# OwnedMediaPlatformRollup$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaPlatformRollup$lock()

