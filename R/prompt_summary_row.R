#' Create a new PromptSummaryRow
#'
#' @description
#' PromptSummaryRow Class
#'
#' @docType class
#' @title PromptSummaryRow
#' @description PromptSummaryRow Class
#' @format An \code{R6Class} generator object
#' @field prompt_id  integer [optional]
#' @field prompt_text  character [optional]
#' @field model Only present when breakdown=model character [optional]
#' @field responses  integer [optional]
#' @field mentions  integer [optional]
#' @field citations  integer [optional]
#' @field visibility  numeric [optional]
#' @field mention_rate  numeric [optional]
#' @field citation_rate  numeric [optional]
#' @field avg_mention_position  numeric [optional]
#' @field avg_position  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PromptSummaryRow <- R6::R6Class(
  "PromptSummaryRow",
  public = list(
    `prompt_id` = NULL,
    `prompt_text` = NULL,
    `model` = NULL,
    `responses` = NULL,
    `mentions` = NULL,
    `citations` = NULL,
    `visibility` = NULL,
    `mention_rate` = NULL,
    `citation_rate` = NULL,
    `avg_mention_position` = NULL,
    `avg_position` = NULL,

    #' @description
    #' Initialize a new PromptSummaryRow class.
    #'
    #' @param prompt_id prompt_id
    #' @param prompt_text prompt_text
    #' @param model Only present when breakdown=model
    #' @param responses responses
    #' @param mentions mentions
    #' @param citations citations
    #' @param visibility visibility
    #' @param mention_rate mention_rate
    #' @param citation_rate citation_rate
    #' @param avg_mention_position avg_mention_position
    #' @param avg_position avg_position
    #' @param ... Other optional arguments.
    initialize = function(`prompt_id` = NULL, `prompt_text` = NULL, `model` = NULL, `responses` = NULL, `mentions` = NULL, `citations` = NULL, `visibility` = NULL, `mention_rate` = NULL, `citation_rate` = NULL, `avg_mention_position` = NULL, `avg_position` = NULL, ...) {
      if (!is.null(`prompt_id`)) {
        if (!(is.numeric(`prompt_id`) && length(`prompt_id`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_id`. Must be an integer:", `prompt_id`))
        }
        self$`prompt_id` <- `prompt_id`
      }
      if (!is.null(`prompt_text`)) {
        if (!(is.character(`prompt_text`) && length(`prompt_text`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_text`. Must be a string:", `prompt_text`))
        }
        self$`prompt_text` <- `prompt_text`
      }
      if (!is.null(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!is.null(`responses`)) {
        if (!(is.numeric(`responses`) && length(`responses`) == 1)) {
          stop(paste("Error! Invalid data for `responses`. Must be an integer:", `responses`))
        }
        self$`responses` <- `responses`
      }
      if (!is.null(`mentions`)) {
        if (!(is.numeric(`mentions`) && length(`mentions`) == 1)) {
          stop(paste("Error! Invalid data for `mentions`. Must be an integer:", `mentions`))
        }
        self$`mentions` <- `mentions`
      }
      if (!is.null(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
      }
      if (!is.null(`visibility`)) {
        self$`visibility` <- `visibility`
      }
      if (!is.null(`mention_rate`)) {
        self$`mention_rate` <- `mention_rate`
      }
      if (!is.null(`citation_rate`)) {
        self$`citation_rate` <- `citation_rate`
      }
      if (!is.null(`avg_mention_position`)) {
        self$`avg_mention_position` <- `avg_mention_position`
      }
      if (!is.null(`avg_position`)) {
        self$`avg_position` <- `avg_position`
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
    #' @return PromptSummaryRow as a base R list.
    #' @examples
    #' # convert array of PromptSummaryRow (x) to a data frame
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
    #' Convert PromptSummaryRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PromptSummaryRowObject <- list()
      if (!is.null(self$`prompt_id`)) {
        PromptSummaryRowObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`prompt_text`)) {
        PromptSummaryRowObject[["prompt_text"]] <-
          self$`prompt_text`
      }
      if (!is.null(self$`model`)) {
        PromptSummaryRowObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`responses`)) {
        PromptSummaryRowObject[["responses"]] <-
          self$`responses`
      }
      if (!is.null(self$`mentions`)) {
        PromptSummaryRowObject[["mentions"]] <-
          self$`mentions`
      }
      if (!is.null(self$`citations`)) {
        PromptSummaryRowObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`visibility`)) {
        PromptSummaryRowObject[["visibility"]] <-
          self$`visibility`
      }
      if (!is.null(self$`mention_rate`)) {
        PromptSummaryRowObject[["mention_rate"]] <-
          self$`mention_rate`
      }
      if (!is.null(self$`citation_rate`)) {
        PromptSummaryRowObject[["citation_rate"]] <-
          self$`citation_rate`
      }
      if (!is.null(self$`avg_mention_position`)) {
        PromptSummaryRowObject[["avg_mention_position"]] <-
          self$`avg_mention_position`
      }
      if (!is.null(self$`avg_position`)) {
        PromptSummaryRowObject[["avg_position"]] <-
          self$`avg_position`
      }
      return(PromptSummaryRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptSummaryRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptSummaryRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`prompt_id`)) {
        self$`prompt_id` <- this_object$`prompt_id`
      }
      if (!is.null(this_object$`prompt_text`)) {
        self$`prompt_text` <- this_object$`prompt_text`
      }
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`responses`)) {
        self$`responses` <- this_object$`responses`
      }
      if (!is.null(this_object$`mentions`)) {
        self$`mentions` <- this_object$`mentions`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      if (!is.null(this_object$`visibility`)) {
        self$`visibility` <- this_object$`visibility`
      }
      if (!is.null(this_object$`mention_rate`)) {
        self$`mention_rate` <- this_object$`mention_rate`
      }
      if (!is.null(this_object$`citation_rate`)) {
        self$`citation_rate` <- this_object$`citation_rate`
      }
      if (!is.null(this_object$`avg_mention_position`)) {
        self$`avg_mention_position` <- this_object$`avg_mention_position`
      }
      if (!is.null(this_object$`avg_position`)) {
        self$`avg_position` <- this_object$`avg_position`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PromptSummaryRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PromptSummaryRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of PromptSummaryRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`prompt_id` <- this_object$`prompt_id`
      self$`prompt_text` <- this_object$`prompt_text`
      self$`model` <- this_object$`model`
      self$`responses` <- this_object$`responses`
      self$`mentions` <- this_object$`mentions`
      self$`citations` <- this_object$`citations`
      self$`visibility` <- this_object$`visibility`
      self$`mention_rate` <- this_object$`mention_rate`
      self$`citation_rate` <- this_object$`citation_rate`
      self$`avg_mention_position` <- this_object$`avg_mention_position`
      self$`avg_position` <- this_object$`avg_position`
      self
    },

    #' @description
    #' Validate JSON input with respect to PromptSummaryRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PromptSummaryRow
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
# PromptSummaryRow$unlock()
#
## Below is an example to define the print function
# PromptSummaryRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PromptSummaryRow$lock()

