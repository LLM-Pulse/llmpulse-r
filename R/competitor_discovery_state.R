#' Create a new CompetitorDiscoveryState
#'
#' @description
#' CompetitorDiscoveryState Class
#'
#' @docType class
#' @title CompetitorDiscoveryState
#' @description CompetitorDiscoveryState Class
#' @format An \code{R6Class} generator object
#' @field status The last discovery run: pending, processing, completed or failed; null when none ever ran character [optional]
#' @field loading A discovery run is in progress character
#' @field generated_at  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompetitorDiscoveryState <- R6::R6Class(
  "CompetitorDiscoveryState",
  public = list(
    `status` = NULL,
    `loading` = NULL,
    `generated_at` = NULL,

    #' @description
    #' Initialize a new CompetitorDiscoveryState class.
    #'
    #' @param loading A discovery run is in progress
    #' @param status The last discovery run: pending, processing, completed or failed; null when none ever ran
    #' @param generated_at generated_at
    #' @param ... Other optional arguments.
    initialize = function(`loading`, `status` = NULL, `generated_at` = NULL, ...) {
      if (!missing(`loading`)) {
        if (!(is.logical(`loading`) && length(`loading`) == 1)) {
          stop(paste("Error! Invalid data for `loading`. Must be a boolean:", `loading`))
        }
        self$`loading` <- `loading`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`generated_at`)) {
        if (!is.character(`generated_at`)) {
          stop(paste("Error! Invalid data for `generated_at`. Must be a string:", `generated_at`))
        }
        self$`generated_at` <- `generated_at`
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
    #' @return CompetitorDiscoveryState as a base R list.
    #' @examples
    #' # convert array of CompetitorDiscoveryState (x) to a data frame
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
    #' Convert CompetitorDiscoveryState to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CompetitorDiscoveryStateObject <- list()
      if (!is.null(self$`status`)) {
        CompetitorDiscoveryStateObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`loading`)) {
        CompetitorDiscoveryStateObject[["loading"]] <-
          self$`loading`
      }
      if (!is.null(self$`generated_at`)) {
        CompetitorDiscoveryStateObject[["generated_at"]] <-
          self$`generated_at`
      }
      return(CompetitorDiscoveryStateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CompetitorDiscoveryState
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompetitorDiscoveryState
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`loading`)) {
        self$`loading` <- this_object$`loading`
      }
      if (!is.null(this_object$`generated_at`)) {
        self$`generated_at` <- this_object$`generated_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CompetitorDiscoveryState in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CompetitorDiscoveryState
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompetitorDiscoveryState
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`status` <- this_object$`status`
      self$`loading` <- this_object$`loading`
      self$`generated_at` <- this_object$`generated_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to CompetitorDiscoveryState and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `loading`
      if (!is.null(input_json$`loading`)) {
        if (!(is.logical(input_json$`loading`) && length(input_json$`loading`) == 1)) {
          stop(paste("Error! Invalid data for `loading`. Must be a boolean:", input_json$`loading`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorDiscoveryState: the required field `loading` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CompetitorDiscoveryState
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `loading` is null
      if (is.null(self$`loading`)) {
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
      # check if the required `loading` is null
      if (is.null(self$`loading`)) {
        invalid_fields["loading"] <- "Non-nullable required field `loading` cannot be null."
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
# CompetitorDiscoveryState$unlock()
#
## Below is an example to define the print function
# CompetitorDiscoveryState$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompetitorDiscoveryState$lock()

