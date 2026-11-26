#' Create a new QueryFanOutRow
#'
#' @description
#' A view=query row carries query_text, count and share; a view=prompt row carries prompt_id, prompt_text, variations_count and total_count
#'
#' @docType class
#' @title QueryFanOutRow
#' @description QueryFanOutRow Class
#' @format An \code{R6Class} generator object
#' @field query_text The sub-query a model issued (view=query) character [optional]
#' @field count Times it was issued (view=query) integer [optional]
#' @field share Share of all sub-query occurrences, on a 0-100 scale (view=query) numeric [optional]
#' @field prompt_id view=prompt integer [optional]
#' @field prompt_text view=prompt character [optional]
#' @field variations_count Distinct sub-queries issued for the prompt (view=prompt) integer [optional]
#' @field total_count Sub-queries issued for the prompt, repeats included (view=prompt) integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QueryFanOutRow <- R6::R6Class(
  "QueryFanOutRow",
  public = list(
    `query_text` = NULL,
    `count` = NULL,
    `share` = NULL,
    `prompt_id` = NULL,
    `prompt_text` = NULL,
    `variations_count` = NULL,
    `total_count` = NULL,

    #' @description
    #' Initialize a new QueryFanOutRow class.
    #'
    #' @param query_text The sub-query a model issued (view=query)
    #' @param count Times it was issued (view=query)
    #' @param share Share of all sub-query occurrences, on a 0-100 scale (view=query)
    #' @param prompt_id view=prompt
    #' @param prompt_text view=prompt
    #' @param variations_count Distinct sub-queries issued for the prompt (view=prompt)
    #' @param total_count Sub-queries issued for the prompt, repeats included (view=prompt)
    #' @param ... Other optional arguments.
    initialize = function(`query_text` = NULL, `count` = NULL, `share` = NULL, `prompt_id` = NULL, `prompt_text` = NULL, `variations_count` = NULL, `total_count` = NULL, ...) {
      if (!is.null(`query_text`)) {
        if (!(is.character(`query_text`) && length(`query_text`) == 1)) {
          stop(paste("Error! Invalid data for `query_text`. Must be a string:", `query_text`))
        }
        self$`query_text` <- `query_text`
      }
      if (!is.null(`count`)) {
        if (!(is.numeric(`count`) && length(`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", `count`))
        }
        self$`count` <- `count`
      }
      if (!is.null(`share`)) {
        self$`share` <- `share`
      }
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
      if (!is.null(`variations_count`)) {
        if (!(is.numeric(`variations_count`) && length(`variations_count`) == 1)) {
          stop(paste("Error! Invalid data for `variations_count`. Must be an integer:", `variations_count`))
        }
        self$`variations_count` <- `variations_count`
      }
      if (!is.null(`total_count`)) {
        if (!(is.numeric(`total_count`) && length(`total_count`) == 1)) {
          stop(paste("Error! Invalid data for `total_count`. Must be an integer:", `total_count`))
        }
        self$`total_count` <- `total_count`
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
    #' @return QueryFanOutRow as a base R list.
    #' @examples
    #' # convert array of QueryFanOutRow (x) to a data frame
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
    #' Convert QueryFanOutRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QueryFanOutRowObject <- list()
      if (!is.null(self$`query_text`)) {
        QueryFanOutRowObject[["query_text"]] <-
          self$`query_text`
      }
      if (!is.null(self$`count`)) {
        QueryFanOutRowObject[["count"]] <-
          self$`count`
      }
      if (!is.null(self$`share`)) {
        QueryFanOutRowObject[["share"]] <-
          self$`share`
      }
      if (!is.null(self$`prompt_id`)) {
        QueryFanOutRowObject[["prompt_id"]] <-
          self$`prompt_id`
      }
      if (!is.null(self$`prompt_text`)) {
        QueryFanOutRowObject[["prompt_text"]] <-
          self$`prompt_text`
      }
      if (!is.null(self$`variations_count`)) {
        QueryFanOutRowObject[["variations_count"]] <-
          self$`variations_count`
      }
      if (!is.null(self$`total_count`)) {
        QueryFanOutRowObject[["total_count"]] <-
          self$`total_count`
      }
      return(QueryFanOutRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QueryFanOutRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of QueryFanOutRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`query_text`)) {
        self$`query_text` <- this_object$`query_text`
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      if (!is.null(this_object$`share`)) {
        self$`share` <- this_object$`share`
      }
      if (!is.null(this_object$`prompt_id`)) {
        self$`prompt_id` <- this_object$`prompt_id`
      }
      if (!is.null(this_object$`prompt_text`)) {
        self$`prompt_text` <- this_object$`prompt_text`
      }
      if (!is.null(this_object$`variations_count`)) {
        self$`variations_count` <- this_object$`variations_count`
      }
      if (!is.null(this_object$`total_count`)) {
        self$`total_count` <- this_object$`total_count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QueryFanOutRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QueryFanOutRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of QueryFanOutRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`query_text` <- this_object$`query_text`
      self$`count` <- this_object$`count`
      self$`share` <- this_object$`share`
      self$`prompt_id` <- this_object$`prompt_id`
      self$`prompt_text` <- this_object$`prompt_text`
      self$`variations_count` <- this_object$`variations_count`
      self$`total_count` <- this_object$`total_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to QueryFanOutRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QueryFanOutRow
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
# QueryFanOutRow$unlock()
#
## Below is an example to define the print function
# QueryFanOutRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QueryFanOutRow$lock()

