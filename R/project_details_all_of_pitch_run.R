#' Create a new ProjectDetailsAllOfPitchRun
#'
#' @description
#' The one run of a pitch project; null for a tracked project. Its answers are dated between launched_at and settled_at, so read its metrics with from set to the launched_at date (the default ranges leave out a pitch older than a few weeks)
#'
#' @docType class
#' @title ProjectDetailsAllOfPitchRun
#' @description ProjectDetailsAllOfPitchRun Class
#' @format An \code{R6Class} generator object
#' @field status starting before the run begins, running while answers arrive, ready once every AI model has answered or stopped trying character [optional]
#' @field launched_at  character [optional]
#' @field settled_at  character [optional]
#' @field models The AI models the run asks, fixed when it starts list(character) [optional]
#' @field answers_expected  integer [optional]
#' @field answers_received  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProjectDetailsAllOfPitchRun <- R6::R6Class(
  "ProjectDetailsAllOfPitchRun",
  public = list(
    `status` = NULL,
    `launched_at` = NULL,
    `settled_at` = NULL,
    `models` = NULL,
    `answers_expected` = NULL,
    `answers_received` = NULL,

    #' @description
    #' Initialize a new ProjectDetailsAllOfPitchRun class.
    #'
    #' @param status starting before the run begins, running while answers arrive, ready once every AI model has answered or stopped trying
    #' @param launched_at launched_at
    #' @param settled_at settled_at
    #' @param models The AI models the run asks, fixed when it starts
    #' @param answers_expected answers_expected
    #' @param answers_received answers_received
    #' @param ... Other optional arguments.
    initialize = function(`status` = NULL, `launched_at` = NULL, `settled_at` = NULL, `models` = NULL, `answers_expected` = NULL, `answers_received` = NULL, ...) {
      if (!is.null(`status`)) {
        if (!(`status` %in% c("starting", "running", "ready"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"starting\", \"running\", \"ready\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`launched_at`)) {
        if (!is.character(`launched_at`)) {
          stop(paste("Error! Invalid data for `launched_at`. Must be a string:", `launched_at`))
        }
        self$`launched_at` <- `launched_at`
      }
      if (!is.null(`settled_at`)) {
        if (!is.character(`settled_at`)) {
          stop(paste("Error! Invalid data for `settled_at`. Must be a string:", `settled_at`))
        }
        self$`settled_at` <- `settled_at`
      }
      if (!is.null(`models`)) {
        stopifnot(is.vector(`models`), length(`models`) != 0)
        sapply(`models`, function(x) stopifnot(is.character(x)))
        self$`models` <- `models`
      }
      if (!is.null(`answers_expected`)) {
        if (!(is.numeric(`answers_expected`) && length(`answers_expected`) == 1)) {
          stop(paste("Error! Invalid data for `answers_expected`. Must be an integer:", `answers_expected`))
        }
        self$`answers_expected` <- `answers_expected`
      }
      if (!is.null(`answers_received`)) {
        if (!(is.numeric(`answers_received`) && length(`answers_received`) == 1)) {
          stop(paste("Error! Invalid data for `answers_received`. Must be an integer:", `answers_received`))
        }
        self$`answers_received` <- `answers_received`
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
    #' @return ProjectDetailsAllOfPitchRun as a base R list.
    #' @examples
    #' # convert array of ProjectDetailsAllOfPitchRun (x) to a data frame
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
    #' Convert ProjectDetailsAllOfPitchRun to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProjectDetailsAllOfPitchRunObject <- list()
      if (!is.null(self$`status`)) {
        ProjectDetailsAllOfPitchRunObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`launched_at`)) {
        ProjectDetailsAllOfPitchRunObject[["launched_at"]] <-
          self$`launched_at`
      }
      if (!is.null(self$`settled_at`)) {
        ProjectDetailsAllOfPitchRunObject[["settled_at"]] <-
          self$`settled_at`
      }
      if (!is.null(self$`models`)) {
        ProjectDetailsAllOfPitchRunObject[["models"]] <-
          self$`models`
      }
      if (!is.null(self$`answers_expected`)) {
        ProjectDetailsAllOfPitchRunObject[["answers_expected"]] <-
          self$`answers_expected`
      }
      if (!is.null(self$`answers_received`)) {
        ProjectDetailsAllOfPitchRunObject[["answers_received"]] <-
          self$`answers_received`
      }
      return(ProjectDetailsAllOfPitchRunObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetailsAllOfPitchRun
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetailsAllOfPitchRun
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("starting", "running", "ready"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"starting\", \"running\", \"ready\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`launched_at`)) {
        self$`launched_at` <- this_object$`launched_at`
      }
      if (!is.null(this_object$`settled_at`)) {
        self$`settled_at` <- this_object$`settled_at`
      }
      if (!is.null(this_object$`models`)) {
        self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`answers_expected`)) {
        self$`answers_expected` <- this_object$`answers_expected`
      }
      if (!is.null(this_object$`answers_received`)) {
        self$`answers_received` <- this_object$`answers_received`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProjectDetailsAllOfPitchRun in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProjectDetailsAllOfPitchRun
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProjectDetailsAllOfPitchRun
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("starting", "running", "ready"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"starting\", \"running\", \"ready\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`launched_at` <- this_object$`launched_at`
      self$`settled_at` <- this_object$`settled_at`
      self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[character]", loadNamespace("llmpulse"))
      self$`answers_expected` <- this_object$`answers_expected`
      self$`answers_received` <- this_object$`answers_received`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProjectDetailsAllOfPitchRun and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProjectDetailsAllOfPitchRun
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
# ProjectDetailsAllOfPitchRun$unlock()
#
## Below is an example to define the print function
# ProjectDetailsAllOfPitchRun$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProjectDetailsAllOfPitchRun$lock()

