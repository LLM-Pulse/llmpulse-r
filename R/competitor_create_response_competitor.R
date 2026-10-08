#' Create a new CompetitorCreateResponseCompetitor
#'
#' @description
#' CompetitorCreateResponseCompetitor Class
#'
#' @docType class
#' @title CompetitorCreateResponseCompetitor
#' @description CompetitorCreateResponseCompetitor Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field brand_name  character
#' @field domain  character
#' @field citation_match_mode  \link{CitationMatchMode}
#' @field citation_match_path Set only when citation_match_mode is path_prefix character
#' @field color  character
#' @field matching_names  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompetitorCreateResponseCompetitor <- R6::R6Class(
  "CompetitorCreateResponseCompetitor",
  public = list(
    `id` = NULL,
    `brand_name` = NULL,
    `domain` = NULL,
    `citation_match_mode` = NULL,
    `citation_match_path` = NULL,
    `color` = NULL,
    `matching_names` = NULL,

    #' @description
    #' Initialize a new CompetitorCreateResponseCompetitor class.
    #'
    #' @param id id
    #' @param brand_name brand_name
    #' @param domain domain
    #' @param citation_match_mode citation_match_mode
    #' @param citation_match_path Set only when citation_match_mode is path_prefix
    #' @param color color
    #' @param matching_names matching_names
    #' @param ... Other optional arguments.
    initialize = function(`id`, `brand_name`, `domain`, `citation_match_mode`, `citation_match_path`, `color`, `matching_names`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`brand_name`)) {
        if (!(is.character(`brand_name`) && length(`brand_name`) == 1)) {
          stop(paste("Error! Invalid data for `brand_name`. Must be a string:", `brand_name`))
        }
        self$`brand_name` <- `brand_name`
      }
      if (!missing(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!missing(`citation_match_mode`)) {
        if (!(`citation_match_mode` %in% c())) {
          stop(paste("Error! \"", `citation_match_mode`, "\" cannot be assigned to `citation_match_mode`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`citation_match_mode`))
        self$`citation_match_mode` <- `citation_match_mode`
      }
      if (!missing(`citation_match_path`)) {
        if (!(is.character(`citation_match_path`) && length(`citation_match_path`) == 1)) {
          stop(paste("Error! Invalid data for `citation_match_path`. Must be a string:", `citation_match_path`))
        }
        self$`citation_match_path` <- `citation_match_path`
      }
      if (!missing(`color`)) {
        if (!(is.character(`color`) && length(`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", `color`))
        }
        self$`color` <- `color`
      }
      if (!missing(`matching_names`)) {
        stopifnot(is.vector(`matching_names`), length(`matching_names`) != 0)
        sapply(`matching_names`, function(x) stopifnot(is.character(x)))
        self$`matching_names` <- `matching_names`
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
    #' @return CompetitorCreateResponseCompetitor as a base R list.
    #' @examples
    #' # convert array of CompetitorCreateResponseCompetitor (x) to a data frame
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
    #' Convert CompetitorCreateResponseCompetitor to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CompetitorCreateResponseCompetitorObject <- list()
      if (!is.null(self$`id`)) {
        CompetitorCreateResponseCompetitorObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`brand_name`)) {
        CompetitorCreateResponseCompetitorObject[["brand_name"]] <-
          self$`brand_name`
      }
      if (!is.null(self$`domain`)) {
        CompetitorCreateResponseCompetitorObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`citation_match_mode`)) {
        CompetitorCreateResponseCompetitorObject[["citation_match_mode"]] <-
          self$extractSimpleType(self$`citation_match_mode`)
      }
      if (!is.null(self$`citation_match_path`)) {
        CompetitorCreateResponseCompetitorObject[["citation_match_path"]] <-
          self$`citation_match_path`
      }
      if (!is.null(self$`color`)) {
        CompetitorCreateResponseCompetitorObject[["color"]] <-
          self$`color`
      }
      if (!is.null(self$`matching_names`)) {
        CompetitorCreateResponseCompetitorObject[["matching_names"]] <-
          self$`matching_names`
      }
      return(CompetitorCreateResponseCompetitorObject)
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
    #' Deserialize JSON string into an instance of CompetitorCreateResponseCompetitor
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompetitorCreateResponseCompetitor
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`brand_name`)) {
        self$`brand_name` <- this_object$`brand_name`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`citation_match_mode`)) {
        `citation_match_mode_object` <- CitationMatchMode$new()
        `citation_match_mode_object`$fromJSON(jsonlite::toJSON(this_object$`citation_match_mode`, auto_unbox = TRUE, digits = NA))
        self$`citation_match_mode` <- `citation_match_mode_object`
      }
      if (!is.null(this_object$`citation_match_path`)) {
        self$`citation_match_path` <- this_object$`citation_match_path`
      }
      if (!is.null(this_object$`color`)) {
        self$`color` <- this_object$`color`
      }
      if (!is.null(this_object$`matching_names`)) {
        self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CompetitorCreateResponseCompetitor in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CompetitorCreateResponseCompetitor
    #'
    #' @param input_json the JSON input
    #' @return the instance of CompetitorCreateResponseCompetitor
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`brand_name` <- this_object$`brand_name`
      self$`domain` <- this_object$`domain`
      self$`citation_match_mode` <- CitationMatchMode$new()$fromJSON(jsonlite::toJSON(this_object$`citation_match_mode`, auto_unbox = TRUE, digits = NA))
      self$`citation_match_path` <- this_object$`citation_match_path`
      self$`color` <- this_object$`color`
      self$`matching_names` <- ApiClient$new()$deserializeObj(this_object$`matching_names`, "array[character]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CompetitorCreateResponseCompetitor and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorCreateResponseCompetitor: the required field `id` is missing."))
      }
      # check the required field `brand_name`
      if (!is.null(input_json$`brand_name`)) {
        if (!(is.character(input_json$`brand_name`) && length(input_json$`brand_name`) == 1)) {
          stop(paste("Error! Invalid data for `brand_name`. Must be a string:", input_json$`brand_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorCreateResponseCompetitor: the required field `brand_name` is missing."))
      }
      # check the required field `domain`
      if (!is.null(input_json$`domain`)) {
        if (!(is.character(input_json$`domain`) && length(input_json$`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", input_json$`domain`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorCreateResponseCompetitor: the required field `domain` is missing."))
      }
      # check the required field `citation_match_mode`
      if (!is.null(input_json$`citation_match_mode`)) {
        stopifnot(R6::is.R6(input_json$`citation_match_mode`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorCreateResponseCompetitor: the required field `citation_match_mode` is missing."))
      }
      # check the required field `citation_match_path`
      if (!is.null(input_json$`citation_match_path`)) {
        if (!(is.character(input_json$`citation_match_path`) && length(input_json$`citation_match_path`) == 1)) {
          stop(paste("Error! Invalid data for `citation_match_path`. Must be a string:", input_json$`citation_match_path`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorCreateResponseCompetitor: the required field `citation_match_path` is missing."))
      }
      # check the required field `color`
      if (!is.null(input_json$`color`)) {
        if (!(is.character(input_json$`color`) && length(input_json$`color`) == 1)) {
          stop(paste("Error! Invalid data for `color`. Must be a string:", input_json$`color`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorCreateResponseCompetitor: the required field `color` is missing."))
      }
      # check the required field `matching_names`
      if (!is.null(input_json$`matching_names`)) {
        stopifnot(is.vector(input_json$`matching_names`), length(input_json$`matching_names`) != 0)
        tmp <- sapply(input_json$`matching_names`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CompetitorCreateResponseCompetitor: the required field `matching_names` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CompetitorCreateResponseCompetitor
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `brand_name` is null
      if (is.null(self$`brand_name`)) {
        return(FALSE)
      }

      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        return(FALSE)
      }

      # check if the required `citation_match_mode` is null
      if (is.null(self$`citation_match_mode`)) {
        return(FALSE)
      }

      # check if the required `matching_names` is null
      if (is.null(self$`matching_names`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `brand_name` is null
      if (is.null(self$`brand_name`)) {
        invalid_fields["brand_name"] <- "Non-nullable required field `brand_name` cannot be null."
      }

      # check if the required `domain` is null
      if (is.null(self$`domain`)) {
        invalid_fields["domain"] <- "Non-nullable required field `domain` cannot be null."
      }

      # check if the required `citation_match_mode` is null
      if (is.null(self$`citation_match_mode`)) {
        invalid_fields["citation_match_mode"] <- "Non-nullable required field `citation_match_mode` cannot be null."
      }

      # check if the required `matching_names` is null
      if (is.null(self$`matching_names`)) {
        invalid_fields["matching_names"] <- "Non-nullable required field `matching_names` cannot be null."
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
# CompetitorCreateResponseCompetitor$unlock()
#
## Below is an example to define the print function
# CompetitorCreateResponseCompetitor$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CompetitorCreateResponseCompetitor$lock()

