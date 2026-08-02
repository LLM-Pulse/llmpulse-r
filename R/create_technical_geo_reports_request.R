#' Create a new CreateTechnicalGeoReportsRequest
#'
#' @description
#' CreateTechnicalGeoReportsRequest Class
#'
#' @docType class
#' @title CreateTechnicalGeoReportsRequest
#' @description CreateTechnicalGeoReportsRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field url  character
#' @field country_code Defaults to the project country character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateTechnicalGeoReportsRequest <- R6::R6Class(
  "CreateTechnicalGeoReportsRequest",
  public = list(
    `project_id` = NULL,
    `url` = NULL,
    `country_code` = NULL,

    #' @description
    #' Initialize a new CreateTechnicalGeoReportsRequest class.
    #'
    #' @param project_id project_id
    #' @param url url
    #' @param country_code Defaults to the project country
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `url`, `country_code` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`country_code`)) {
        if (!(is.character(`country_code`) && length(`country_code`) == 1)) {
          stop(paste("Error! Invalid data for `country_code`. Must be a string:", `country_code`))
        }
        self$`country_code` <- `country_code`
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
    #' @return CreateTechnicalGeoReportsRequest as a base R list.
    #' @examples
    #' # convert array of CreateTechnicalGeoReportsRequest (x) to a data frame
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
    #' Convert CreateTechnicalGeoReportsRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateTechnicalGeoReportsRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        CreateTechnicalGeoReportsRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`url`)) {
        CreateTechnicalGeoReportsRequestObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`country_code`)) {
        CreateTechnicalGeoReportsRequestObject[["country_code"]] <-
          self$`country_code`
      }
      return(CreateTechnicalGeoReportsRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateTechnicalGeoReportsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateTechnicalGeoReportsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`country_code`)) {
        self$`country_code` <- this_object$`country_code`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateTechnicalGeoReportsRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateTechnicalGeoReportsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateTechnicalGeoReportsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`url` <- this_object$`url`
      self$`country_code` <- this_object$`country_code`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateTechnicalGeoReportsRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `project_id`
      if (!is.null(input_json$`project_id`)) {
        if (!(is.numeric(input_json$`project_id`) && length(input_json$`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", input_json$`project_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateTechnicalGeoReportsRequest: the required field `project_id` is missing."))
      }
      # check the required field `url`
      if (!is.null(input_json$`url`)) {
        if (!(is.character(input_json$`url`) && length(input_json$`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", input_json$`url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateTechnicalGeoReportsRequest: the required field `url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateTechnicalGeoReportsRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        return(FALSE)
      }

      # check if the required `url` is null
      if (is.null(self$`url`)) {
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
      # check if the required `project_id` is null
      if (is.null(self$`project_id`)) {
        invalid_fields["project_id"] <- "Non-nullable required field `project_id` cannot be null."
      }

      # check if the required `url` is null
      if (is.null(self$`url`)) {
        invalid_fields["url"] <- "Non-nullable required field `url` cannot be null."
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
# CreateTechnicalGeoReportsRequest$unlock()
#
## Below is an example to define the print function
# CreateTechnicalGeoReportsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateTechnicalGeoReportsRequest$lock()

