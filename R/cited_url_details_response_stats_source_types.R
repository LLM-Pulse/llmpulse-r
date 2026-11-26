#' Create a new CitedUrlDetailsResponseStatsSourceTypes
#'
#' @description
#' Citations by ownership
#'
#' @docType class
#' @title CitedUrlDetailsResponseStatsSourceTypes
#' @description CitedUrlDetailsResponseStatsSourceTypes Class
#' @format An \code{R6Class} generator object
#' @field owned  integer
#' @field competitor  integer
#' @field third_party  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CitedUrlDetailsResponseStatsSourceTypes <- R6::R6Class(
  "CitedUrlDetailsResponseStatsSourceTypes",
  public = list(
    `owned` = NULL,
    `competitor` = NULL,
    `third_party` = NULL,

    #' @description
    #' Initialize a new CitedUrlDetailsResponseStatsSourceTypes class.
    #'
    #' @param owned owned
    #' @param competitor competitor
    #' @param third_party third_party
    #' @param ... Other optional arguments.
    initialize = function(`owned`, `competitor`, `third_party`, ...) {
      if (!missing(`owned`)) {
        if (!(is.numeric(`owned`) && length(`owned`) == 1)) {
          stop(paste("Error! Invalid data for `owned`. Must be an integer:", `owned`))
        }
        self$`owned` <- `owned`
      }
      if (!missing(`competitor`)) {
        if (!(is.numeric(`competitor`) && length(`competitor`) == 1)) {
          stop(paste("Error! Invalid data for `competitor`. Must be an integer:", `competitor`))
        }
        self$`competitor` <- `competitor`
      }
      if (!missing(`third_party`)) {
        if (!(is.numeric(`third_party`) && length(`third_party`) == 1)) {
          stop(paste("Error! Invalid data for `third_party`. Must be an integer:", `third_party`))
        }
        self$`third_party` <- `third_party`
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
    #' @return CitedUrlDetailsResponseStatsSourceTypes as a base R list.
    #' @examples
    #' # convert array of CitedUrlDetailsResponseStatsSourceTypes (x) to a data frame
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
    #' Convert CitedUrlDetailsResponseStatsSourceTypes to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CitedUrlDetailsResponseStatsSourceTypesObject <- list()
      if (!is.null(self$`owned`)) {
        CitedUrlDetailsResponseStatsSourceTypesObject[["owned"]] <-
          self$`owned`
      }
      if (!is.null(self$`competitor`)) {
        CitedUrlDetailsResponseStatsSourceTypesObject[["competitor"]] <-
          self$`competitor`
      }
      if (!is.null(self$`third_party`)) {
        CitedUrlDetailsResponseStatsSourceTypesObject[["third_party"]] <-
          self$`third_party`
      }
      return(CitedUrlDetailsResponseStatsSourceTypesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CitedUrlDetailsResponseStatsSourceTypes
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitedUrlDetailsResponseStatsSourceTypes
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`owned`)) {
        self$`owned` <- this_object$`owned`
      }
      if (!is.null(this_object$`competitor`)) {
        self$`competitor` <- this_object$`competitor`
      }
      if (!is.null(this_object$`third_party`)) {
        self$`third_party` <- this_object$`third_party`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CitedUrlDetailsResponseStatsSourceTypes in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CitedUrlDetailsResponseStatsSourceTypes
    #'
    #' @param input_json the JSON input
    #' @return the instance of CitedUrlDetailsResponseStatsSourceTypes
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`owned` <- this_object$`owned`
      self$`competitor` <- this_object$`competitor`
      self$`third_party` <- this_object$`third_party`
      self
    },

    #' @description
    #' Validate JSON input with respect to CitedUrlDetailsResponseStatsSourceTypes and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `owned`
      if (!is.null(input_json$`owned`)) {
        if (!(is.numeric(input_json$`owned`) && length(input_json$`owned`) == 1)) {
          stop(paste("Error! Invalid data for `owned`. Must be an integer:", input_json$`owned`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponseStatsSourceTypes: the required field `owned` is missing."))
      }
      # check the required field `competitor`
      if (!is.null(input_json$`competitor`)) {
        if (!(is.numeric(input_json$`competitor`) && length(input_json$`competitor`) == 1)) {
          stop(paste("Error! Invalid data for `competitor`. Must be an integer:", input_json$`competitor`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponseStatsSourceTypes: the required field `competitor` is missing."))
      }
      # check the required field `third_party`
      if (!is.null(input_json$`third_party`)) {
        if (!(is.numeric(input_json$`third_party`) && length(input_json$`third_party`) == 1)) {
          stop(paste("Error! Invalid data for `third_party`. Must be an integer:", input_json$`third_party`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CitedUrlDetailsResponseStatsSourceTypes: the required field `third_party` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CitedUrlDetailsResponseStatsSourceTypes
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `owned` is null
      if (is.null(self$`owned`)) {
        return(FALSE)
      }

      # check if the required `competitor` is null
      if (is.null(self$`competitor`)) {
        return(FALSE)
      }

      # check if the required `third_party` is null
      if (is.null(self$`third_party`)) {
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
      # check if the required `owned` is null
      if (is.null(self$`owned`)) {
        invalid_fields["owned"] <- "Non-nullable required field `owned` cannot be null."
      }

      # check if the required `competitor` is null
      if (is.null(self$`competitor`)) {
        invalid_fields["competitor"] <- "Non-nullable required field `competitor` cannot be null."
      }

      # check if the required `third_party` is null
      if (is.null(self$`third_party`)) {
        invalid_fields["third_party"] <- "Non-nullable required field `third_party` cannot be null."
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
# CitedUrlDetailsResponseStatsSourceTypes$unlock()
#
## Below is an example to define the print function
# CitedUrlDetailsResponseStatsSourceTypes$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CitedUrlDetailsResponseStatsSourceTypes$lock()

