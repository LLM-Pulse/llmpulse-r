#' Create a new OwnedMediaSummaryActivityPeriod
#'
#' @description
#' OwnedMediaSummaryActivityPeriod Class
#'
#' @docType class
#' @title OwnedMediaSummaryActivityPeriod
#' @description OwnedMediaSummaryActivityPeriod Class
#' @format An \code{R6Class} generator object
#' @field date Start date of the actual reporting period character
#' @field citations  integer
#' @field yours Citations on owned profiles and content, null for provider=overview integer
#' @field other Citations not counted as yours, null for provider=overview integer
#' @field positive Citations whose AI answer sentiment is positive integer [optional]
#' @field neutral Citations whose AI answer sentiment is neutral or mixed integer [optional]
#' @field negative Citations whose AI answer sentiment is negative integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OwnedMediaSummaryActivityPeriod <- R6::R6Class(
  "OwnedMediaSummaryActivityPeriod",
  public = list(
    `date` = NULL,
    `citations` = NULL,
    `yours` = NULL,
    `other` = NULL,
    `positive` = NULL,
    `neutral` = NULL,
    `negative` = NULL,

    #' @description
    #' Initialize a new OwnedMediaSummaryActivityPeriod class.
    #'
    #' @param date Start date of the actual reporting period
    #' @param citations citations
    #' @param yours Citations on owned profiles and content, null for provider=overview
    #' @param other Citations not counted as yours, null for provider=overview
    #' @param positive Citations whose AI answer sentiment is positive
    #' @param neutral Citations whose AI answer sentiment is neutral or mixed
    #' @param negative Citations whose AI answer sentiment is negative
    #' @param ... Other optional arguments.
    initialize = function(`date`, `citations`, `yours`, `other`, `positive` = NULL, `neutral` = NULL, `negative` = NULL, ...) {
      if (!missing(`date`)) {
        if (!(is.character(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
      }
      if (!missing(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
      }
      if (!missing(`yours`)) {
        if (!(is.numeric(`yours`) && length(`yours`) == 1)) {
          stop(paste("Error! Invalid data for `yours`. Must be an integer:", `yours`))
        }
        self$`yours` <- `yours`
      }
      if (!missing(`other`)) {
        if (!(is.numeric(`other`) && length(`other`) == 1)) {
          stop(paste("Error! Invalid data for `other`. Must be an integer:", `other`))
        }
        self$`other` <- `other`
      }
      if (!is.null(`positive`)) {
        if (!(is.numeric(`positive`) && length(`positive`) == 1)) {
          stop(paste("Error! Invalid data for `positive`. Must be an integer:", `positive`))
        }
        self$`positive` <- `positive`
      }
      if (!is.null(`neutral`)) {
        if (!(is.numeric(`neutral`) && length(`neutral`) == 1)) {
          stop(paste("Error! Invalid data for `neutral`. Must be an integer:", `neutral`))
        }
        self$`neutral` <- `neutral`
      }
      if (!is.null(`negative`)) {
        if (!(is.numeric(`negative`) && length(`negative`) == 1)) {
          stop(paste("Error! Invalid data for `negative`. Must be an integer:", `negative`))
        }
        self$`negative` <- `negative`
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
    #' @return OwnedMediaSummaryActivityPeriod as a base R list.
    #' @examples
    #' # convert array of OwnedMediaSummaryActivityPeriod (x) to a data frame
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
    #' Convert OwnedMediaSummaryActivityPeriod to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OwnedMediaSummaryActivityPeriodObject <- list()
      if (!is.null(self$`date`)) {
        OwnedMediaSummaryActivityPeriodObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`citations`)) {
        OwnedMediaSummaryActivityPeriodObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`yours`)) {
        OwnedMediaSummaryActivityPeriodObject[["yours"]] <-
          self$`yours`
      }
      if (!is.null(self$`other`)) {
        OwnedMediaSummaryActivityPeriodObject[["other"]] <-
          self$`other`
      }
      if (!is.null(self$`positive`)) {
        OwnedMediaSummaryActivityPeriodObject[["positive"]] <-
          self$`positive`
      }
      if (!is.null(self$`neutral`)) {
        OwnedMediaSummaryActivityPeriodObject[["neutral"]] <-
          self$`neutral`
      }
      if (!is.null(self$`negative`)) {
        OwnedMediaSummaryActivityPeriodObject[["negative"]] <-
          self$`negative`
      }
      return(OwnedMediaSummaryActivityPeriodObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaSummaryActivityPeriod
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaSummaryActivityPeriod
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      if (!is.null(this_object$`yours`)) {
        self$`yours` <- this_object$`yours`
      }
      if (!is.null(this_object$`other`)) {
        self$`other` <- this_object$`other`
      }
      if (!is.null(this_object$`positive`)) {
        self$`positive` <- this_object$`positive`
      }
      if (!is.null(this_object$`neutral`)) {
        self$`neutral` <- this_object$`neutral`
      }
      if (!is.null(this_object$`negative`)) {
        self$`negative` <- this_object$`negative`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OwnedMediaSummaryActivityPeriod in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OwnedMediaSummaryActivityPeriod
    #'
    #' @param input_json the JSON input
    #' @return the instance of OwnedMediaSummaryActivityPeriod
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`date` <- this_object$`date`
      self$`citations` <- this_object$`citations`
      self$`yours` <- this_object$`yours`
      self$`other` <- this_object$`other`
      self$`positive` <- this_object$`positive`
      self$`neutral` <- this_object$`neutral`
      self$`negative` <- this_object$`negative`
      self
    },

    #' @description
    #' Validate JSON input with respect to OwnedMediaSummaryActivityPeriod and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `date`
      if (!is.null(input_json$`date`)) {
        if (!(is.character(input_json$`date`) && length(input_json$`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", input_json$`date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OwnedMediaSummaryActivityPeriod: the required field `date` is missing."))
      }
      # check the required field `citations`
      if (!is.null(input_json$`citations`)) {
        if (!(is.numeric(input_json$`citations`) && length(input_json$`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", input_json$`citations`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OwnedMediaSummaryActivityPeriod: the required field `citations` is missing."))
      }
      # check the required field `yours`
      if (!is.null(input_json$`yours`)) {
        if (!(is.numeric(input_json$`yours`) && length(input_json$`yours`) == 1)) {
          stop(paste("Error! Invalid data for `yours`. Must be an integer:", input_json$`yours`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OwnedMediaSummaryActivityPeriod: the required field `yours` is missing."))
      }
      # check the required field `other`
      if (!is.null(input_json$`other`)) {
        if (!(is.numeric(input_json$`other`) && length(input_json$`other`) == 1)) {
          stop(paste("Error! Invalid data for `other`. Must be an integer:", input_json$`other`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OwnedMediaSummaryActivityPeriod: the required field `other` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OwnedMediaSummaryActivityPeriod
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `date` is null
      if (is.null(self$`date`)) {
        return(FALSE)
      }

      # check if the required `citations` is null
      if (is.null(self$`citations`)) {
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
      # check if the required `date` is null
      if (is.null(self$`date`)) {
        invalid_fields["date"] <- "Non-nullable required field `date` cannot be null."
      }

      # check if the required `citations` is null
      if (is.null(self$`citations`)) {
        invalid_fields["citations"] <- "Non-nullable required field `citations` cannot be null."
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
# OwnedMediaSummaryActivityPeriod$unlock()
#
## Below is an example to define the print function
# OwnedMediaSummaryActivityPeriod$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OwnedMediaSummaryActivityPeriod$lock()

