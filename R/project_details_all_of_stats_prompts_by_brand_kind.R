#' Create a new ProjectDetailsAllOfStatsPromptsByBrandKind
#'
#' @description
#' Prompt counts per brand focus
#'
#' @docType class
#' @title ProjectDetailsAllOfStatsPromptsByBrandKind
#' @description ProjectDetailsAllOfStatsPromptsByBrandKind Class
#' @format An \code{R6Class} generator object
#' @field brand  integer [optional]
#' @field brand_other  integer [optional]
#' @field non_brand  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDetailsAllOfStatsPromptsByBrandKind <- R6::R6Class(
  "ProjectDetailsAllOfStatsPromptsByBrandKind",
  public = list(
    `brand` = NULL,
    `brand_other` = NULL,
    `non_brand` = NULL,

    #' @description
    #' Initialize a new ProjectDetailsAllOfStatsPromptsByBrandKind class.
    #'
    #' @param brand brand
    #' @param brand_other brand_other
    #' @param non_brand non_brand
    #' @param ... Other optional arguments.
    initialize = function(`brand` = NULL, `brand_other` = NULL, `non_brand` = NULL, ...) {
      if (!is.null(`brand`)) {
        if (!(is.numeric(`brand`) && length(`brand`) == 1)) {
          stop(paste("Error! Invalid data for `brand`. Must be an integer:", `brand`))
        }
        self$`brand` <- `brand`
      }
      if (!is.null(`brand_other`)) {
        if (!(is.numeric(`brand_other`) && length(`brand_other`) == 1)) {
          stop(paste("Error! Invalid data for `brand_other`. Must be an integer:", `brand_other`))
        }
        self$`brand_other` <- `brand_other`
      }
      if (!is.null(`non_brand`)) {
        if (!(is.numeric(`non_brand`) && length(`non_brand`) == 1)) {
          stop(paste("Error! Invalid data for `non_brand`. Must be an integer:", `non_brand`))
        }
        self$`non_brand` <- `non_brand`
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
    #' @return ProjectDetailsAllOfStatsPromptsByBrandKind as a base R list.
    #' @examples
    #' # convert array of ProjectDetailsAllOfStatsPromptsByBrandKind (x) to a data frame
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
    #' Convert ProjectDetailsAllOfStatsPromptsByBrandKind to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectDetailsAllOfStatsPromptsByBrandKindObject <- list()
      if (!is.null(self$`brand`)) {
        ProjectDetailsAllOfStatsPromptsByBrandKindObject[["brand"]] <-
          self$`brand`
      }
      if (!is.null(self$`brand_other`)) {
        ProjectDetailsAllOfStatsPromptsByBrandKindObject[["brand_other"]] <-
          self$`brand_other`
      }
      if (!is.null(self$`non_brand`)) {
        ProjectDetailsAllOfStatsPromptsByBrandKindObject[["non_brand"]] <-
          self$`non_brand`
      }
      return(ProjectDetailsAllOfStatsPromptsByBrandKindObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetailsAllOfStatsPromptsByBrandKind
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetailsAllOfStatsPromptsByBrandKind
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`brand`)) {
        self$`brand` <- this_object$`brand`
      }
      if (!is.null(this_object$`brand_other`)) {
        self$`brand_other` <- this_object$`brand_other`
      }
      if (!is.null(this_object$`non_brand`)) {
        self$`non_brand` <- this_object$`non_brand`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectDetailsAllOfStatsPromptsByBrandKind in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetailsAllOfStatsPromptsByBrandKind
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetailsAllOfStatsPromptsByBrandKind
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`brand` <- this_object$`brand`
      self$`brand_other` <- this_object$`brand_other`
      self$`non_brand` <- this_object$`non_brand`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectDetailsAllOfStatsPromptsByBrandKind and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectDetailsAllOfStatsPromptsByBrandKind
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
# ProjectDetailsAllOfStatsPromptsByBrandKind$unlock()
#
## Below is an example to define the print function
# ProjectDetailsAllOfStatsPromptsByBrandKind$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectDetailsAllOfStatsPromptsByBrandKind$lock()

