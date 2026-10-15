#' Create a new UpdatePromptRequest
#'
#' @description
#' UpdatePromptRequest Class
#'
#' @docType class
#' @title UpdatePromptRequest
#' @description UpdatePromptRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field prompt_type Search intent character [optional]
#' @field brand_kind Brand focus: brand (your own brand or products), brand_other (competing brands), non_brand (generic) character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UpdatePromptRequest <- R6::R6Class(
  "UpdatePromptRequest",
  public = list(
    `project_id` = NULL,
    `prompt_type` = NULL,
    `brand_kind` = NULL,

    #' @description
    #' Initialize a new UpdatePromptRequest class.
    #'
    #' @param project_id project_id
    #' @param prompt_type Search intent
    #' @param brand_kind Brand focus: brand (your own brand or products), brand_other (competing brands), non_brand (generic)
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `prompt_type` = NULL, `brand_kind` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!is.null(`prompt_type`)) {
        if (!(`prompt_type` %in% c("informational", "navigational", "commercial", "transactional"))) {
          stop(paste("Error! \"", `prompt_type`, "\" cannot be assigned to `prompt_type`. Must be \"informational\", \"navigational\", \"commercial\", \"transactional\".", sep = ""))
        }
        if (!(is.character(`prompt_type`) && length(`prompt_type`) == 1)) {
          stop(paste("Error! Invalid data for `prompt_type`. Must be a string:", `prompt_type`))
        }
        self$`prompt_type` <- `prompt_type`
      }
      if (!is.null(`brand_kind`)) {
        if (!(`brand_kind` %in% c("brand", "brand_other", "non_brand"))) {
          stop(paste("Error! \"", `brand_kind`, "\" cannot be assigned to `brand_kind`. Must be \"brand\", \"brand_other\", \"non_brand\".", sep = ""))
        }
        if (!(is.character(`brand_kind`) && length(`brand_kind`) == 1)) {
          stop(paste("Error! Invalid data for `brand_kind`. Must be a string:", `brand_kind`))
        }
        self$`brand_kind` <- `brand_kind`
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
    #' @return UpdatePromptRequest as a base R list.
    #' @examples
    #' # convert array of UpdatePromptRequest (x) to a data frame
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
    #' Convert UpdatePromptRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UpdatePromptRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        UpdatePromptRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`prompt_type`)) {
        UpdatePromptRequestObject[["prompt_type"]] <-
          self$`prompt_type`
      }
      if (!is.null(self$`brand_kind`)) {
        UpdatePromptRequestObject[["brand_kind"]] <-
          self$`brand_kind`
      }
      return(UpdatePromptRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdatePromptRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdatePromptRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`prompt_type`)) {
        if (!is.null(this_object$`prompt_type`) && !(this_object$`prompt_type` %in% c("informational", "navigational", "commercial", "transactional"))) {
          stop(paste("Error! \"", this_object$`prompt_type`, "\" cannot be assigned to `prompt_type`. Must be \"informational\", \"navigational\", \"commercial\", \"transactional\".", sep = ""))
        }
        self$`prompt_type` <- this_object$`prompt_type`
      }
      if (!is.null(this_object$`brand_kind`)) {
        if (!is.null(this_object$`brand_kind`) && !(this_object$`brand_kind` %in% c("brand", "brand_other", "non_brand"))) {
          stop(paste("Error! \"", this_object$`brand_kind`, "\" cannot be assigned to `brand_kind`. Must be \"brand\", \"brand_other\", \"non_brand\".", sep = ""))
        }
        self$`brand_kind` <- this_object$`brand_kind`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UpdatePromptRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UpdatePromptRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UpdatePromptRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      if (!is.null(this_object$`prompt_type`) && !(this_object$`prompt_type` %in% c("informational", "navigational", "commercial", "transactional"))) {
        stop(paste("Error! \"", this_object$`prompt_type`, "\" cannot be assigned to `prompt_type`. Must be \"informational\", \"navigational\", \"commercial\", \"transactional\".", sep = ""))
      }
      self$`prompt_type` <- this_object$`prompt_type`
      if (!is.null(this_object$`brand_kind`) && !(this_object$`brand_kind` %in% c("brand", "brand_other", "non_brand"))) {
        stop(paste("Error! \"", this_object$`brand_kind`, "\" cannot be assigned to `brand_kind`. Must be \"brand\", \"brand_other\", \"non_brand\".", sep = ""))
      }
      self$`brand_kind` <- this_object$`brand_kind`
      self
    },

    #' @description
    #' Validate JSON input with respect to UpdatePromptRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UpdatePromptRequest: the required field `project_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UpdatePromptRequest
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
# UpdatePromptRequest$unlock()
#
## Below is an example to define the print function
# UpdatePromptRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UpdatePromptRequest$lock()

