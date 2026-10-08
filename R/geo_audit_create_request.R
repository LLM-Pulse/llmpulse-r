#' Create a new GeoAuditCreateRequest
#'
#' @description
#' GeoAuditCreateRequest Class
#'
#' @docType class
#' @title GeoAuditCreateRequest
#' @description GeoAuditCreateRequest Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field target The domain (site-wide types) or page URL to audit character
#' @field audit_types One or more audit types; each becomes its own audit and starts its first run list(character)
#' @field cadence once (default), weekly or monthly. Weekly and monthly need a type whose checks are tracked and count against the plan limit of recurring audits character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeoAuditCreateRequest <- R6::R6Class(
  "GeoAuditCreateRequest",
  public = list(
    `project_id` = NULL,
    `target` = NULL,
    `audit_types` = NULL,
    `cadence` = NULL,

    #' @description
    #' Initialize a new GeoAuditCreateRequest class.
    #'
    #' @param project_id project_id
    #' @param target The domain (site-wide types) or page URL to audit
    #' @param audit_types One or more audit types; each becomes its own audit and starts its first run
    #' @param cadence once (default), weekly or monthly. Weekly and monthly need a type whose checks are tracked and count against the plan limit of recurring audits
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `target`, `audit_types`, `cadence` = NULL, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`target`)) {
        if (!(is.character(`target`) && length(`target`) == 1)) {
          stop(paste("Error! Invalid data for `target`. Must be a string:", `target`))
        }
        self$`target` <- `target`
      }
      if (!missing(`audit_types`)) {
        stopifnot(is.vector(`audit_types`), length(`audit_types`) != 0)
        sapply(`audit_types`, function(x) stopifnot(is.character(x)))
        self$`audit_types` <- `audit_types`
      }
      if (!is.null(`cadence`)) {
        if (!(`cadence` %in% c("once", "weekly", "monthly"))) {
          stop(paste("Error! \"", `cadence`, "\" cannot be assigned to `cadence`. Must be \"once\", \"weekly\", \"monthly\".", sep = ""))
        }
        if (!(is.character(`cadence`) && length(`cadence`) == 1)) {
          stop(paste("Error! Invalid data for `cadence`. Must be a string:", `cadence`))
        }
        self$`cadence` <- `cadence`
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
    #' @return GeoAuditCreateRequest as a base R list.
    #' @examples
    #' # convert array of GeoAuditCreateRequest (x) to a data frame
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
    #' Convert GeoAuditCreateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeoAuditCreateRequestObject <- list()
      if (!is.null(self$`project_id`)) {
        GeoAuditCreateRequestObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`target`)) {
        GeoAuditCreateRequestObject[["target"]] <-
          self$`target`
      }
      if (!is.null(self$`audit_types`)) {
        GeoAuditCreateRequestObject[["audit_types"]] <-
          self$`audit_types`
      }
      if (!is.null(self$`cadence`)) {
        GeoAuditCreateRequestObject[["cadence"]] <-
          self$`cadence`
      }
      return(GeoAuditCreateRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditCreateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`target`)) {
        self$`target` <- this_object$`target`
      }
      if (!is.null(this_object$`audit_types`)) {
        self$`audit_types` <- ApiClient$new()$deserializeObj(this_object$`audit_types`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`cadence`)) {
        if (!is.null(this_object$`cadence`) && !(this_object$`cadence` %in% c("once", "weekly", "monthly"))) {
          stop(paste("Error! \"", this_object$`cadence`, "\" cannot be assigned to `cadence`. Must be \"once\", \"weekly\", \"monthly\".", sep = ""))
        }
        self$`cadence` <- this_object$`cadence`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeoAuditCreateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeoAuditCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeoAuditCreateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`target` <- this_object$`target`
      self$`audit_types` <- ApiClient$new()$deserializeObj(this_object$`audit_types`, "array[character]", loadNamespace("llmpulse"))
      if (!is.null(this_object$`cadence`) && !(this_object$`cadence` %in% c("once", "weekly", "monthly"))) {
        stop(paste("Error! \"", this_object$`cadence`, "\" cannot be assigned to `cadence`. Must be \"once\", \"weekly\", \"monthly\".", sep = ""))
      }
      self$`cadence` <- this_object$`cadence`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeoAuditCreateRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GeoAuditCreateRequest: the required field `project_id` is missing."))
      }
      # check the required field `target`
      if (!is.null(input_json$`target`)) {
        if (!(is.character(input_json$`target`) && length(input_json$`target`) == 1)) {
          stop(paste("Error! Invalid data for `target`. Must be a string:", input_json$`target`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeoAuditCreateRequest: the required field `target` is missing."))
      }
      # check the required field `audit_types`
      if (!is.null(input_json$`audit_types`)) {
        stopifnot(is.vector(input_json$`audit_types`), length(input_json$`audit_types`) != 0)
        tmp <- sapply(input_json$`audit_types`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeoAuditCreateRequest: the required field `audit_types` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeoAuditCreateRequest
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

      # check if the required `target` is null
      if (is.null(self$`target`)) {
        return(FALSE)
      }

      # check if the required `audit_types` is null
      if (is.null(self$`audit_types`)) {
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

      # check if the required `target` is null
      if (is.null(self$`target`)) {
        invalid_fields["target"] <- "Non-nullable required field `target` cannot be null."
      }

      # check if the required `audit_types` is null
      if (is.null(self$`audit_types`)) {
        invalid_fields["audit_types"] <- "Non-nullable required field `audit_types` cannot be null."
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
# GeoAuditCreateRequest$unlock()
#
## Below is an example to define the print function
# GeoAuditCreateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeoAuditCreateRequest$lock()

