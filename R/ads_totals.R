#' Create a new AdsTotals
#'
#' @description
#' AdsTotals Class
#'
#' @docType class
#' @title AdsTotals
#' @description AdsTotals Class
#' @format An \code{R6Class} generator object
#' @field ads  integer
#' @field advertisers  integer
#' @field your_ads  integer
#' @field your_share your_ads over ads, 0-100 numeric
#' @field avg_position  numeric
#' @field executions_with_ads  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdsTotals <- R6::R6Class(
  "AdsTotals",
  public = list(
    `ads` = NULL,
    `advertisers` = NULL,
    `your_ads` = NULL,
    `your_share` = NULL,
    `avg_position` = NULL,
    `executions_with_ads` = NULL,

    #' @description
    #' Initialize a new AdsTotals class.
    #'
    #' @param ads ads
    #' @param advertisers advertisers
    #' @param your_ads your_ads
    #' @param your_share your_ads over ads, 0-100
    #' @param avg_position avg_position
    #' @param executions_with_ads executions_with_ads
    #' @param ... Other optional arguments.
    initialize = function(`ads`, `advertisers`, `your_ads`, `your_share`, `avg_position`, `executions_with_ads`, ...) {
      if (!missing(`ads`)) {
        if (!(is.numeric(`ads`) && length(`ads`) == 1)) {
          stop(paste("Error! Invalid data for `ads`. Must be an integer:", `ads`))
        }
        self$`ads` <- `ads`
      }
      if (!missing(`advertisers`)) {
        if (!(is.numeric(`advertisers`) && length(`advertisers`) == 1)) {
          stop(paste("Error! Invalid data for `advertisers`. Must be an integer:", `advertisers`))
        }
        self$`advertisers` <- `advertisers`
      }
      if (!missing(`your_ads`)) {
        if (!(is.numeric(`your_ads`) && length(`your_ads`) == 1)) {
          stop(paste("Error! Invalid data for `your_ads`. Must be an integer:", `your_ads`))
        }
        self$`your_ads` <- `your_ads`
      }
      if (!missing(`your_share`)) {
        self$`your_share` <- `your_share`
      }
      if (!missing(`avg_position`)) {
        self$`avg_position` <- `avg_position`
      }
      if (!missing(`executions_with_ads`)) {
        if (!(is.numeric(`executions_with_ads`) && length(`executions_with_ads`) == 1)) {
          stop(paste("Error! Invalid data for `executions_with_ads`. Must be an integer:", `executions_with_ads`))
        }
        self$`executions_with_ads` <- `executions_with_ads`
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
    #' @return AdsTotals as a base R list.
    #' @examples
    #' # convert array of AdsTotals (x) to a data frame
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
    #' Convert AdsTotals to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdsTotalsObject <- list()
      if (!is.null(self$`ads`)) {
        AdsTotalsObject[["ads"]] <-
          self$`ads`
      }
      if (!is.null(self$`advertisers`)) {
        AdsTotalsObject[["advertisers"]] <-
          self$`advertisers`
      }
      if (!is.null(self$`your_ads`)) {
        AdsTotalsObject[["your_ads"]] <-
          self$`your_ads`
      }
      if (!is.null(self$`your_share`)) {
        AdsTotalsObject[["your_share"]] <-
          self$`your_share`
      }
      if (!is.null(self$`avg_position`)) {
        AdsTotalsObject[["avg_position"]] <-
          self$`avg_position`
      }
      if (!is.null(self$`executions_with_ads`)) {
        AdsTotalsObject[["executions_with_ads"]] <-
          self$`executions_with_ads`
      }
      return(AdsTotalsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdsTotals
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdsTotals
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ads`)) {
        self$`ads` <- this_object$`ads`
      }
      if (!is.null(this_object$`advertisers`)) {
        self$`advertisers` <- this_object$`advertisers`
      }
      if (!is.null(this_object$`your_ads`)) {
        self$`your_ads` <- this_object$`your_ads`
      }
      if (!is.null(this_object$`your_share`)) {
        self$`your_share` <- this_object$`your_share`
      }
      if (!is.null(this_object$`avg_position`)) {
        self$`avg_position` <- this_object$`avg_position`
      }
      if (!is.null(this_object$`executions_with_ads`)) {
        self$`executions_with_ads` <- this_object$`executions_with_ads`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdsTotals in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdsTotals
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdsTotals
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ads` <- this_object$`ads`
      self$`advertisers` <- this_object$`advertisers`
      self$`your_ads` <- this_object$`your_ads`
      self$`your_share` <- this_object$`your_share`
      self$`avg_position` <- this_object$`avg_position`
      self$`executions_with_ads` <- this_object$`executions_with_ads`
      self
    },

    #' @description
    #' Validate JSON input with respect to AdsTotals and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ads`
      if (!is.null(input_json$`ads`)) {
        if (!(is.numeric(input_json$`ads`) && length(input_json$`ads`) == 1)) {
          stop(paste("Error! Invalid data for `ads`. Must be an integer:", input_json$`ads`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AdsTotals: the required field `ads` is missing."))
      }
      # check the required field `advertisers`
      if (!is.null(input_json$`advertisers`)) {
        if (!(is.numeric(input_json$`advertisers`) && length(input_json$`advertisers`) == 1)) {
          stop(paste("Error! Invalid data for `advertisers`. Must be an integer:", input_json$`advertisers`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AdsTotals: the required field `advertisers` is missing."))
      }
      # check the required field `your_ads`
      if (!is.null(input_json$`your_ads`)) {
        if (!(is.numeric(input_json$`your_ads`) && length(input_json$`your_ads`) == 1)) {
          stop(paste("Error! Invalid data for `your_ads`. Must be an integer:", input_json$`your_ads`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AdsTotals: the required field `your_ads` is missing."))
      }
      # check the required field `your_share`
      if (!is.null(input_json$`your_share`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AdsTotals: the required field `your_share` is missing."))
      }
      # check the required field `avg_position`
      if (!is.null(input_json$`avg_position`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AdsTotals: the required field `avg_position` is missing."))
      }
      # check the required field `executions_with_ads`
      if (!is.null(input_json$`executions_with_ads`)) {
        if (!(is.numeric(input_json$`executions_with_ads`) && length(input_json$`executions_with_ads`) == 1)) {
          stop(paste("Error! Invalid data for `executions_with_ads`. Must be an integer:", input_json$`executions_with_ads`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AdsTotals: the required field `executions_with_ads` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdsTotals
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ads` is null
      if (is.null(self$`ads`)) {
        return(FALSE)
      }

      # check if the required `advertisers` is null
      if (is.null(self$`advertisers`)) {
        return(FALSE)
      }

      # check if the required `your_ads` is null
      if (is.null(self$`your_ads`)) {
        return(FALSE)
      }

      # check if the required `your_share` is null
      if (is.null(self$`your_share`)) {
        return(FALSE)
      }

      # check if the required `executions_with_ads` is null
      if (is.null(self$`executions_with_ads`)) {
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
      # check if the required `ads` is null
      if (is.null(self$`ads`)) {
        invalid_fields["ads"] <- "Non-nullable required field `ads` cannot be null."
      }

      # check if the required `advertisers` is null
      if (is.null(self$`advertisers`)) {
        invalid_fields["advertisers"] <- "Non-nullable required field `advertisers` cannot be null."
      }

      # check if the required `your_ads` is null
      if (is.null(self$`your_ads`)) {
        invalid_fields["your_ads"] <- "Non-nullable required field `your_ads` cannot be null."
      }

      # check if the required `your_share` is null
      if (is.null(self$`your_share`)) {
        invalid_fields["your_share"] <- "Non-nullable required field `your_share` cannot be null."
      }

      # check if the required `executions_with_ads` is null
      if (is.null(self$`executions_with_ads`)) {
        invalid_fields["executions_with_ads"] <- "Non-nullable required field `executions_with_ads` cannot be null."
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
# AdsTotals$unlock()
#
## Below is an example to define the print function
# AdsTotals$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdsTotals$lock()

