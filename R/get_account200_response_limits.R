#' Create a new GetAccount200ResponseLimits
#'
#' @description
#' GetAccount200ResponseLimits Class
#'
#' @docType class
#' @title GetAccount200ResponseLimits
#' @description GetAccount200ResponseLimits Class
#' @format An \code{R6Class} generator object
#' @field prompts  \link{AccountQuota} [optional]
#' @field projects  \link{AccountQuota} [optional]
#' @field competitors_per_project  \link{AccountCapacity} [optional]
#' @field intelligence_tasks  \link{AccountQuota} [optional]
#' @field team_members  \link{AccountCapacity} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetAccount200ResponseLimits <- R6::R6Class(
  "GetAccount200ResponseLimits",
  public = list(
    `prompts` = NULL,
    `projects` = NULL,
    `competitors_per_project` = NULL,
    `intelligence_tasks` = NULL,
    `team_members` = NULL,

    #' @description
    #' Initialize a new GetAccount200ResponseLimits class.
    #'
    #' @param prompts prompts
    #' @param projects projects
    #' @param competitors_per_project competitors_per_project
    #' @param intelligence_tasks intelligence_tasks
    #' @param team_members team_members
    #' @param ... Other optional arguments.
    initialize = function(`prompts` = NULL, `projects` = NULL, `competitors_per_project` = NULL, `intelligence_tasks` = NULL, `team_members` = NULL, ...) {
      if (!is.null(`prompts`)) {
        stopifnot(R6::is.R6(`prompts`))
        self$`prompts` <- `prompts`
      }
      if (!is.null(`projects`)) {
        stopifnot(R6::is.R6(`projects`))
        self$`projects` <- `projects`
      }
      if (!is.null(`competitors_per_project`)) {
        stopifnot(R6::is.R6(`competitors_per_project`))
        self$`competitors_per_project` <- `competitors_per_project`
      }
      if (!is.null(`intelligence_tasks`)) {
        stopifnot(R6::is.R6(`intelligence_tasks`))
        self$`intelligence_tasks` <- `intelligence_tasks`
      }
      if (!is.null(`team_members`)) {
        stopifnot(R6::is.R6(`team_members`))
        self$`team_members` <- `team_members`
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
    #' @return GetAccount200ResponseLimits as a base R list.
    #' @examples
    #' # convert array of GetAccount200ResponseLimits (x) to a data frame
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
    #' Convert GetAccount200ResponseLimits to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GetAccount200ResponseLimitsObject <- list()
      if (!is.null(self$`prompts`)) {
        GetAccount200ResponseLimitsObject[["prompts"]] <-
          self$extractSimpleType(self$`prompts`)
      }
      if (!is.null(self$`projects`)) {
        GetAccount200ResponseLimitsObject[["projects"]] <-
          self$extractSimpleType(self$`projects`)
      }
      if (!is.null(self$`competitors_per_project`)) {
        GetAccount200ResponseLimitsObject[["competitors_per_project"]] <-
          self$extractSimpleType(self$`competitors_per_project`)
      }
      if (!is.null(self$`intelligence_tasks`)) {
        GetAccount200ResponseLimitsObject[["intelligence_tasks"]] <-
          self$extractSimpleType(self$`intelligence_tasks`)
      }
      if (!is.null(self$`team_members`)) {
        GetAccount200ResponseLimitsObject[["team_members"]] <-
          self$extractSimpleType(self$`team_members`)
      }
      return(GetAccount200ResponseLimitsObject)
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
    #' Deserialize JSON string into an instance of GetAccount200ResponseLimits
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetAccount200ResponseLimits
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`prompts`)) {
        `prompts_object` <- AccountQuota$new()
        `prompts_object`$fromJSON(jsonlite::toJSON(this_object$`prompts`, auto_unbox = TRUE, digits = NA))
        self$`prompts` <- `prompts_object`
      }
      if (!is.null(this_object$`projects`)) {
        `projects_object` <- AccountQuota$new()
        `projects_object`$fromJSON(jsonlite::toJSON(this_object$`projects`, auto_unbox = TRUE, digits = NA))
        self$`projects` <- `projects_object`
      }
      if (!is.null(this_object$`competitors_per_project`)) {
        `competitors_per_project_object` <- AccountCapacity$new()
        `competitors_per_project_object`$fromJSON(jsonlite::toJSON(this_object$`competitors_per_project`, auto_unbox = TRUE, digits = NA))
        self$`competitors_per_project` <- `competitors_per_project_object`
      }
      if (!is.null(this_object$`intelligence_tasks`)) {
        `intelligence_tasks_object` <- AccountQuota$new()
        `intelligence_tasks_object`$fromJSON(jsonlite::toJSON(this_object$`intelligence_tasks`, auto_unbox = TRUE, digits = NA))
        self$`intelligence_tasks` <- `intelligence_tasks_object`
      }
      if (!is.null(this_object$`team_members`)) {
        `team_members_object` <- AccountCapacity$new()
        `team_members_object`$fromJSON(jsonlite::toJSON(this_object$`team_members`, auto_unbox = TRUE, digits = NA))
        self$`team_members` <- `team_members_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GetAccount200ResponseLimits in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GetAccount200ResponseLimits
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetAccount200ResponseLimits
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`prompts` <- AccountQuota$new()$fromJSON(jsonlite::toJSON(this_object$`prompts`, auto_unbox = TRUE, digits = NA))
      self$`projects` <- AccountQuota$new()$fromJSON(jsonlite::toJSON(this_object$`projects`, auto_unbox = TRUE, digits = NA))
      self$`competitors_per_project` <- AccountCapacity$new()$fromJSON(jsonlite::toJSON(this_object$`competitors_per_project`, auto_unbox = TRUE, digits = NA))
      self$`intelligence_tasks` <- AccountQuota$new()$fromJSON(jsonlite::toJSON(this_object$`intelligence_tasks`, auto_unbox = TRUE, digits = NA))
      self$`team_members` <- AccountCapacity$new()$fromJSON(jsonlite::toJSON(this_object$`team_members`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to GetAccount200ResponseLimits and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GetAccount200ResponseLimits
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
# GetAccount200ResponseLimits$unlock()
#
## Below is an example to define the print function
# GetAccount200ResponseLimits$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetAccount200ResponseLimits$lock()

