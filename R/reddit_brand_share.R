#' Create a new RedditBrandShare
#'
#' @description
#' RedditBrandShare Class
#'
#' @docType class
#' @title RedditBrandShare
#' @description RedditBrandShare Class
#' @format An \code{R6Class} generator object
#' @field actor_id  integer
#' @field actor_name  character
#' @field is_brand  character
#' @field citations  integer
#' @field share_pct Percentage (0-100) among the tracked brand and competitors with cited mentions numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RedditBrandShare <- R6::R6Class(
  "RedditBrandShare",
  public = list(
    `actor_id` = NULL,
    `actor_name` = NULL,
    `is_brand` = NULL,
    `citations` = NULL,
    `share_pct` = NULL,

    #' @description
    #' Initialize a new RedditBrandShare class.
    #'
    #' @param actor_id actor_id
    #' @param actor_name actor_name
    #' @param is_brand is_brand
    #' @param citations citations
    #' @param share_pct Percentage (0-100) among the tracked brand and competitors with cited mentions
    #' @param ... Other optional arguments.
    initialize = function(`actor_id`, `actor_name`, `is_brand`, `citations`, `share_pct`, ...) {
      if (!missing(`actor_id`)) {
        if (!(is.numeric(`actor_id`) && length(`actor_id`) == 1)) {
          stop(paste("Error! Invalid data for `actor_id`. Must be an integer:", `actor_id`))
        }
        self$`actor_id` <- `actor_id`
      }
      if (!missing(`actor_name`)) {
        if (!(is.character(`actor_name`) && length(`actor_name`) == 1)) {
          stop(paste("Error! Invalid data for `actor_name`. Must be a string:", `actor_name`))
        }
        self$`actor_name` <- `actor_name`
      }
      if (!missing(`is_brand`)) {
        if (!(is.logical(`is_brand`) && length(`is_brand`) == 1)) {
          stop(paste("Error! Invalid data for `is_brand`. Must be a boolean:", `is_brand`))
        }
        self$`is_brand` <- `is_brand`
      }
      if (!missing(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
      }
      if (!missing(`share_pct`)) {
        self$`share_pct` <- `share_pct`
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
    #' @return RedditBrandShare as a base R list.
    #' @examples
    #' # convert array of RedditBrandShare (x) to a data frame
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
    #' Convert RedditBrandShare to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RedditBrandShareObject <- list()
      if (!is.null(self$`actor_id`)) {
        RedditBrandShareObject[["actor_id"]] <-
          self$`actor_id`
      }
      if (!is.null(self$`actor_name`)) {
        RedditBrandShareObject[["actor_name"]] <-
          self$`actor_name`
      }
      if (!is.null(self$`is_brand`)) {
        RedditBrandShareObject[["is_brand"]] <-
          self$`is_brand`
      }
      if (!is.null(self$`citations`)) {
        RedditBrandShareObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`share_pct`)) {
        RedditBrandShareObject[["share_pct"]] <-
          self$`share_pct`
      }
      return(RedditBrandShareObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RedditBrandShare
    #'
    #' @param input_json the JSON input
    #' @return the instance of RedditBrandShare
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`actor_id`)) {
        self$`actor_id` <- this_object$`actor_id`
      }
      if (!is.null(this_object$`actor_name`)) {
        self$`actor_name` <- this_object$`actor_name`
      }
      if (!is.null(this_object$`is_brand`)) {
        self$`is_brand` <- this_object$`is_brand`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      if (!is.null(this_object$`share_pct`)) {
        self$`share_pct` <- this_object$`share_pct`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RedditBrandShare in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RedditBrandShare
    #'
    #' @param input_json the JSON input
    #' @return the instance of RedditBrandShare
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`actor_id` <- this_object$`actor_id`
      self$`actor_name` <- this_object$`actor_name`
      self$`is_brand` <- this_object$`is_brand`
      self$`citations` <- this_object$`citations`
      self$`share_pct` <- this_object$`share_pct`
      self
    },

    #' @description
    #' Validate JSON input with respect to RedditBrandShare and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `actor_id`
      if (!is.null(input_json$`actor_id`)) {
        if (!(is.numeric(input_json$`actor_id`) && length(input_json$`actor_id`) == 1)) {
          stop(paste("Error! Invalid data for `actor_id`. Must be an integer:", input_json$`actor_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RedditBrandShare: the required field `actor_id` is missing."))
      }
      # check the required field `actor_name`
      if (!is.null(input_json$`actor_name`)) {
        if (!(is.character(input_json$`actor_name`) && length(input_json$`actor_name`) == 1)) {
          stop(paste("Error! Invalid data for `actor_name`. Must be a string:", input_json$`actor_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RedditBrandShare: the required field `actor_name` is missing."))
      }
      # check the required field `is_brand`
      if (!is.null(input_json$`is_brand`)) {
        if (!(is.logical(input_json$`is_brand`) && length(input_json$`is_brand`) == 1)) {
          stop(paste("Error! Invalid data for `is_brand`. Must be a boolean:", input_json$`is_brand`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RedditBrandShare: the required field `is_brand` is missing."))
      }
      # check the required field `citations`
      if (!is.null(input_json$`citations`)) {
        if (!(is.numeric(input_json$`citations`) && length(input_json$`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", input_json$`citations`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RedditBrandShare: the required field `citations` is missing."))
      }
      # check the required field `share_pct`
      if (!is.null(input_json$`share_pct`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RedditBrandShare: the required field `share_pct` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RedditBrandShare
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `actor_id` is null
      if (is.null(self$`actor_id`)) {
        return(FALSE)
      }

      # check if the required `is_brand` is null
      if (is.null(self$`is_brand`)) {
        return(FALSE)
      }

      # check if the required `citations` is null
      if (is.null(self$`citations`)) {
        return(FALSE)
      }

      # check if the required `share_pct` is null
      if (is.null(self$`share_pct`)) {
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
      # check if the required `actor_id` is null
      if (is.null(self$`actor_id`)) {
        invalid_fields["actor_id"] <- "Non-nullable required field `actor_id` cannot be null."
      }

      # check if the required `is_brand` is null
      if (is.null(self$`is_brand`)) {
        invalid_fields["is_brand"] <- "Non-nullable required field `is_brand` cannot be null."
      }

      # check if the required `citations` is null
      if (is.null(self$`citations`)) {
        invalid_fields["citations"] <- "Non-nullable required field `citations` cannot be null."
      }

      # check if the required `share_pct` is null
      if (is.null(self$`share_pct`)) {
        invalid_fields["share_pct"] <- "Non-nullable required field `share_pct` cannot be null."
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
# RedditBrandShare$unlock()
#
## Below is an example to define the print function
# RedditBrandShare$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RedditBrandShare$lock()

