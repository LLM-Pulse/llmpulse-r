#' Create a new CompetitorCreateResponse
#'
#' @description
#' CompetitorCreateResponse Class
#'
#' @docType class
#' @title CompetitorCreateResponse
#' @description CompetitorCreateResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field competitor  \link{CompetitorCreateResponseCompetitor}
#' @field competitors_remaining Competitors the plan still allows in this project; null when unlimited integer
#' @field total_competitors  integer
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompetitorCreateResponse <- R6::R6Class(
  "CompetitorCreateResponse",
  public = list(
    `project_id` = NULL,
    `competitor` = NULL,
    `competitors_remaining` = NULL,
    `total_competitors` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new CompetitorCreateResponse class.
    #'
    #' @param project_id project_id
    #' @param competitor competitor
    #' @param competitors_remaining Competitors the plan still allows in this project; null when unlimited
    #' @param total_competitors total_competitors
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `competitor`, `competitors_remaining`, `total_competitors`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`competitor`)) {
        stopifnot(R6::is.R6(`competitor`))
        self$`competitor` <- `competitor`
      }
      if (!missing(`competitors_remaining`)) {
        if (!(is.numeric(`competitors_remaining`) && length(`competitors_remaining`) == 1)) {
          stop(paste("Error! Invalid data for `competitors_remaining`. Must be an integer:", `competitors_remaining`))
        }
        self$`competitors_remaining` <- `competitors_remaining`
      }
      if (!missing(`total_competitors`)) {
        if (!(is.numeric(`total_competitors`) && length(`total_competitors`) == 1)) {
          stop(paste("Error! Invalid data for `total_competitors`. Must be an integer:", `total_competitors`))
        }
        self$`total_competitors` <- `total_competitors`
      }
      if (!missing(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
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
    #' @return CompetitorCreateResponse as a base R list.
    #' @examples
    #' # convert array of CompetitorCreateResponse (x) to a data frame
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
    #' Convert CompetitorCreateResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CompetitorCreateResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        CompetitorCreateResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`competitor`)) {
        CompetitorCreateResponseObject[["competitor"]] <-
          self$extractSimpleType(self$`competitor`)
      }
      if (!is.null(self$`competitors_remaining`)) {
        CompetitorCreateResponseObject[["competitors_remaining"]] <-
          self$`competitors_remaining`
      }
      if (!is.null(self$`total_competitors`)) {
        CompetitorCreateResponseObject[["total_competitors"]] <-
          self$`total_competitors`
      }
      if (!is.null(self$`request_id`)) {
        CompetitorCreateResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(CompetitorCreateResponseObject)
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
    #' Deserialize JSON string into an instance of CompetitorCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompetitorCreateResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`competitor`)) {
        `competitor_object` <- CompetitorCreateResponseCompetitor$new()
        `competitor_object`$fromJSON(jsonlite::toJSON(this_object$`competitor`, auto_unbox = TRUE, digits = NA))
        self$`competitor` <- `competitor_object`
      }
      if (!is.null(this_object$`competitors_remaining`)) {
        self$`competitors_remaining` <- this_object$`competitors_remaining`
      }
      if (!is.null(this_object$`total_competitors`)) {
        self$`total_competitors` <- this_object$`total_competitors`
      }
      if (!is.null(this_object$`request_id`)) {
        self$`request_id` <- this_object$`request_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CompetitorCreateResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CompetitorCreateResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompetitorCreateResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`competitor` <- CompetitorCreateResponseCompetitor$new()$fromJSON(jsonlite::toJSON(this_object$`competitor`, auto_unbox = TRUE, digits = NA))
      self$`competitors_remaining` <- this_object$`competitors_remaining`
      self$`total_competitors` <- this_object$`total_competitors`
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to CompetitorCreateResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CompetitorCreateResponse: the required field `project_id` is missing."))
      }
      # check the required field `competitor`
      if (!is.null(input_json$`competitor`)) {
        stopifnot(R6::is.R6(input_json$`competitor`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorCreateResponse: the required field `competitor` is missing."))
      }
      # check the required field `competitors_remaining`
      if (!is.null(input_json$`competitors_remaining`)) {
        if (!(is.numeric(input_json$`competitors_remaining`) && length(input_json$`competitors_remaining`) == 1)) {
          stop(paste("Error! Invalid data for `competitors_remaining`. Must be an integer:", input_json$`competitors_remaining`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorCreateResponse: the required field `competitors_remaining` is missing."))
      }
      # check the required field `total_competitors`
      if (!is.null(input_json$`total_competitors`)) {
        if (!(is.numeric(input_json$`total_competitors`) && length(input_json$`total_competitors`) == 1)) {
          stop(paste("Error! Invalid data for `total_competitors`. Must be an integer:", input_json$`total_competitors`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorCreateResponse: the required field `total_competitors` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorCreateResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CompetitorCreateResponse
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

      # check if the required `competitor` is null
      if (is.null(self$`competitor`)) {
        return(FALSE)
      }

      # check if the required `total_competitors` is null
      if (is.null(self$`total_competitors`)) {
        return(FALSE)
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
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

      # check if the required `competitor` is null
      if (is.null(self$`competitor`)) {
        invalid_fields["competitor"] <- "Non-nullable required field `competitor` cannot be null."
      }

      # check if the required `total_competitors` is null
      if (is.null(self$`total_competitors`)) {
        invalid_fields["total_competitors"] <- "Non-nullable required field `total_competitors` cannot be null."
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
        invalid_fields["request_id"] <- "Non-nullable required field `request_id` cannot be null."
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
# CompetitorCreateResponse$unlock()
#
## Below is an example to define the print function
# CompetitorCreateResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompetitorCreateResponse$lock()

