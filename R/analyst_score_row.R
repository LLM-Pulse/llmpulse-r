#' Create a new AnalystScoreRow
#'
#' @description
#' One analyst model's score of one brand (a subject in a custom study) on one attribute of one dimension
#'
#' @docType class
#' @title AnalystScoreRow
#' @description AnalystScoreRow Class
#' @format An \code{R6Class} generator object
#' @field brand Brand name; the subject name in a custom study character
#' @field is_project Whether it is the project's own brand; in a custom study, the focus subject character
#' @field model  character
#' @field report_date  character
#' @field dimension Dimension key, as the dimension filter takes it character
#' @field dimension_name  character
#' @field attribute Attribute key within the dimension character
#' @field attribute_name  character
#' @field score The 0-100 score as the analyst model wrote it, normally a number, or null when it gave none. Deliberately untyped, as the model's output is stored without coercion object
#' @field reasoning Why the model gave this score; null when it gave no reasoning character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnalystScoreRow <- R6::R6Class(
  "AnalystScoreRow",
  public = list(
    `brand` = NULL,
    `is_project` = NULL,
    `model` = NULL,
    `report_date` = NULL,
    `dimension` = NULL,
    `dimension_name` = NULL,
    `attribute` = NULL,
    `attribute_name` = NULL,
    `score` = NULL,
    `reasoning` = NULL,

    #' @description
    #' Initialize a new AnalystScoreRow class.
    #'
    #' @param brand Brand name; the subject name in a custom study
    #' @param is_project Whether it is the project's own brand; in a custom study, the focus subject
    #' @param model model
    #' @param report_date report_date
    #' @param dimension Dimension key, as the dimension filter takes it
    #' @param dimension_name dimension_name
    #' @param attribute Attribute key within the dimension
    #' @param attribute_name attribute_name
    #' @param score The 0-100 score as the analyst model wrote it, normally a number, or null when it gave none. Deliberately untyped, as the model's output is stored without coercion
    #' @param reasoning Why the model gave this score; null when it gave no reasoning
    #' @param ... Other optional arguments.
    initialize = function(`brand`, `is_project`, `model`, `report_date`, `dimension`, `dimension_name`, `attribute`, `attribute_name`, `score`, `reasoning`, ...) {
      if (!missing(`brand`)) {
        if (!(is.character(`brand`) && length(`brand`) == 1)) {
          stop(paste("Error! Invalid data for `brand`. Must be a string:", `brand`))
        }
        self$`brand` <- `brand`
      }
      if (!missing(`is_project`)) {
        if (!(is.logical(`is_project`) && length(`is_project`) == 1)) {
          stop(paste("Error! Invalid data for `is_project`. Must be a boolean:", `is_project`))
        }
        self$`is_project` <- `is_project`
      }
      if (!missing(`model`)) {
        if (!(`model` %in% c("chatgpt", "perplexity", "gemini", "deepseek", "grok", "claude"))) {
          stop(paste("Error! \"", `model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"gemini\", \"deepseek\", \"grok\", \"claude\".", sep = ""))
        }
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!missing(`report_date`)) {
        if (!(is.character(`report_date`) && length(`report_date`) == 1)) {
          stop(paste("Error! Invalid data for `report_date`. Must be a string:", `report_date`))
        }
        self$`report_date` <- `report_date`
      }
      if (!missing(`dimension`)) {
        if (!(is.character(`dimension`) && length(`dimension`) == 1)) {
          stop(paste("Error! Invalid data for `dimension`. Must be a string:", `dimension`))
        }
        self$`dimension` <- `dimension`
      }
      if (!missing(`dimension_name`)) {
        if (!(is.character(`dimension_name`) && length(`dimension_name`) == 1)) {
          stop(paste("Error! Invalid data for `dimension_name`. Must be a string:", `dimension_name`))
        }
        self$`dimension_name` <- `dimension_name`
      }
      if (!missing(`attribute`)) {
        if (!(is.character(`attribute`) && length(`attribute`) == 1)) {
          stop(paste("Error! Invalid data for `attribute`. Must be a string:", `attribute`))
        }
        self$`attribute` <- `attribute`
      }
      if (!missing(`attribute_name`)) {
        if (!(is.character(`attribute_name`) && length(`attribute_name`) == 1)) {
          stop(paste("Error! Invalid data for `attribute_name`. Must be a string:", `attribute_name`))
        }
        self$`attribute_name` <- `attribute_name`
      }
      if (!missing(`score`)) {
        self$`score` <- `score`
      }
      if (!missing(`reasoning`)) {
        if (!(is.character(`reasoning`) && length(`reasoning`) == 1)) {
          stop(paste("Error! Invalid data for `reasoning`. Must be a string:", `reasoning`))
        }
        self$`reasoning` <- `reasoning`
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
    #' @return AnalystScoreRow as a base R list.
    #' @examples
    #' # convert array of AnalystScoreRow (x) to a data frame
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
    #' Convert AnalystScoreRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnalystScoreRowObject <- list()
      if (!is.null(self$`brand`)) {
        AnalystScoreRowObject[["brand"]] <-
          self$`brand`
      }
      if (!is.null(self$`is_project`)) {
        AnalystScoreRowObject[["is_project"]] <-
          self$`is_project`
      }
      if (!is.null(self$`model`)) {
        AnalystScoreRowObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`report_date`)) {
        AnalystScoreRowObject[["report_date"]] <-
          self$`report_date`
      }
      if (!is.null(self$`dimension`)) {
        AnalystScoreRowObject[["dimension"]] <-
          self$`dimension`
      }
      if (!is.null(self$`dimension_name`)) {
        AnalystScoreRowObject[["dimension_name"]] <-
          self$`dimension_name`
      }
      if (!is.null(self$`attribute`)) {
        AnalystScoreRowObject[["attribute"]] <-
          self$`attribute`
      }
      if (!is.null(self$`attribute_name`)) {
        AnalystScoreRowObject[["attribute_name"]] <-
          self$`attribute_name`
      }
      if (!is.null(self$`score`)) {
        AnalystScoreRowObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`reasoning`)) {
        AnalystScoreRowObject[["reasoning"]] <-
          self$`reasoning`
      }
      return(AnalystScoreRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AnalystScoreRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnalystScoreRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`brand`)) {
        self$`brand` <- this_object$`brand`
      }
      if (!is.null(this_object$`is_project`)) {
        self$`is_project` <- this_object$`is_project`
      }
      if (!is.null(this_object$`model`)) {
        if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("chatgpt", "perplexity", "gemini", "deepseek", "grok", "claude"))) {
          stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"gemini\", \"deepseek\", \"grok\", \"claude\".", sep = ""))
        }
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`report_date`)) {
        self$`report_date` <- this_object$`report_date`
      }
      if (!is.null(this_object$`dimension`)) {
        self$`dimension` <- this_object$`dimension`
      }
      if (!is.null(this_object$`dimension_name`)) {
        self$`dimension_name` <- this_object$`dimension_name`
      }
      if (!is.null(this_object$`attribute`)) {
        self$`attribute` <- this_object$`attribute`
      }
      if (!is.null(this_object$`attribute_name`)) {
        self$`attribute_name` <- this_object$`attribute_name`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`reasoning`)) {
        self$`reasoning` <- this_object$`reasoning`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnalystScoreRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnalystScoreRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnalystScoreRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`brand` <- this_object$`brand`
      self$`is_project` <- this_object$`is_project`
      if (!is.null(this_object$`model`) && !(this_object$`model` %in% c("chatgpt", "perplexity", "gemini", "deepseek", "grok", "claude"))) {
        stop(paste("Error! \"", this_object$`model`, "\" cannot be assigned to `model`. Must be \"chatgpt\", \"perplexity\", \"gemini\", \"deepseek\", \"grok\", \"claude\".", sep = ""))
      }
      self$`model` <- this_object$`model`
      self$`report_date` <- this_object$`report_date`
      self$`dimension` <- this_object$`dimension`
      self$`dimension_name` <- this_object$`dimension_name`
      self$`attribute` <- this_object$`attribute`
      self$`attribute_name` <- this_object$`attribute_name`
      self$`score` <- this_object$`score`
      self$`reasoning` <- this_object$`reasoning`
      self
    },

    #' @description
    #' Validate JSON input with respect to AnalystScoreRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `brand`
      if (!is.null(input_json$`brand`)) {
        if (!(is.character(input_json$`brand`) && length(input_json$`brand`) == 1)) {
          stop(paste("Error! Invalid data for `brand`. Must be a string:", input_json$`brand`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnalystScoreRow: the required field `brand` is missing."))
      }
      # check the required field `is_project`
      if (!is.null(input_json$`is_project`)) {
        if (!(is.logical(input_json$`is_project`) && length(input_json$`is_project`) == 1)) {
          stop(paste("Error! Invalid data for `is_project`. Must be a boolean:", input_json$`is_project`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnalystScoreRow: the required field `is_project` is missing."))
      }
      # check the required field `model`
      if (!is.null(input_json$`model`)) {
        if (!(is.character(input_json$`model`) && length(input_json$`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", input_json$`model`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnalystScoreRow: the required field `model` is missing."))
      }
      # check the required field `report_date`
      if (!is.null(input_json$`report_date`)) {
        if (!(is.character(input_json$`report_date`) && length(input_json$`report_date`) == 1)) {
          stop(paste("Error! Invalid data for `report_date`. Must be a string:", input_json$`report_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnalystScoreRow: the required field `report_date` is missing."))
      }
      # check the required field `dimension`
      if (!is.null(input_json$`dimension`)) {
        if (!(is.character(input_json$`dimension`) && length(input_json$`dimension`) == 1)) {
          stop(paste("Error! Invalid data for `dimension`. Must be a string:", input_json$`dimension`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnalystScoreRow: the required field `dimension` is missing."))
      }
      # check the required field `dimension_name`
      if (!is.null(input_json$`dimension_name`)) {
        if (!(is.character(input_json$`dimension_name`) && length(input_json$`dimension_name`) == 1)) {
          stop(paste("Error! Invalid data for `dimension_name`. Must be a string:", input_json$`dimension_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnalystScoreRow: the required field `dimension_name` is missing."))
      }
      # check the required field `attribute`
      if (!is.null(input_json$`attribute`)) {
        if (!(is.character(input_json$`attribute`) && length(input_json$`attribute`) == 1)) {
          stop(paste("Error! Invalid data for `attribute`. Must be a string:", input_json$`attribute`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnalystScoreRow: the required field `attribute` is missing."))
      }
      # check the required field `attribute_name`
      if (!is.null(input_json$`attribute_name`)) {
        if (!(is.character(input_json$`attribute_name`) && length(input_json$`attribute_name`) == 1)) {
          stop(paste("Error! Invalid data for `attribute_name`. Must be a string:", input_json$`attribute_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnalystScoreRow: the required field `attribute_name` is missing."))
      }
      # check the required field `score`
      if (!is.null(input_json$`score`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnalystScoreRow: the required field `score` is missing."))
      }
      # check the required field `reasoning`
      if (!is.null(input_json$`reasoning`)) {
        if (!(is.character(input_json$`reasoning`) && length(input_json$`reasoning`) == 1)) {
          stop(paste("Error! Invalid data for `reasoning`. Must be a string:", input_json$`reasoning`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnalystScoreRow: the required field `reasoning` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnalystScoreRow
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `brand` is null
      if (is.null(self$`brand`)) {
        return(FALSE)
      }

      # check if the required `is_project` is null
      if (is.null(self$`is_project`)) {
        return(FALSE)
      }

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        return(FALSE)
      }

      # check if the required `report_date` is null
      if (is.null(self$`report_date`)) {
        return(FALSE)
      }

      # check if the required `dimension` is null
      if (is.null(self$`dimension`)) {
        return(FALSE)
      }

      # check if the required `dimension_name` is null
      if (is.null(self$`dimension_name`)) {
        return(FALSE)
      }

      # check if the required `attribute` is null
      if (is.null(self$`attribute`)) {
        return(FALSE)
      }

      # check if the required `attribute_name` is null
      if (is.null(self$`attribute_name`)) {
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
      # check if the required `brand` is null
      if (is.null(self$`brand`)) {
        invalid_fields["brand"] <- "Non-nullable required field `brand` cannot be null."
      }

      # check if the required `is_project` is null
      if (is.null(self$`is_project`)) {
        invalid_fields["is_project"] <- "Non-nullable required field `is_project` cannot be null."
      }

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        invalid_fields["model"] <- "Non-nullable required field `model` cannot be null."
      }

      # check if the required `report_date` is null
      if (is.null(self$`report_date`)) {
        invalid_fields["report_date"] <- "Non-nullable required field `report_date` cannot be null."
      }

      # check if the required `dimension` is null
      if (is.null(self$`dimension`)) {
        invalid_fields["dimension"] <- "Non-nullable required field `dimension` cannot be null."
      }

      # check if the required `dimension_name` is null
      if (is.null(self$`dimension_name`)) {
        invalid_fields["dimension_name"] <- "Non-nullable required field `dimension_name` cannot be null."
      }

      # check if the required `attribute` is null
      if (is.null(self$`attribute`)) {
        invalid_fields["attribute"] <- "Non-nullable required field `attribute` cannot be null."
      }

      # check if the required `attribute_name` is null
      if (is.null(self$`attribute_name`)) {
        invalid_fields["attribute_name"] <- "Non-nullable required field `attribute_name` cannot be null."
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
# AnalystScoreRow$unlock()
#
## Below is an example to define the print function
# AnalystScoreRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnalystScoreRow$lock()

