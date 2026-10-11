#' Create a new CreateTeamInvitationRequest
#'
#' @description
#' CreateTeamInvitationRequest Class
#'
#' @docType class
#' @title CreateTeamInvitationRequest
#' @description CreateTeamInvitationRequest Class
#' @format An \code{R6Class} generator object
#' @field email  character
#' @field project_ids Projects the member can access. Send this or all_projects true. list(integer) [optional]
#' @field all_projects Access to every project, including future ones character [optional]
#' @field permission_role Default full_access. Owner and co-owners only. character [optional]
#' @field account_role_id One of the account's roles, with permission_role account_role integer [optional]
#' @field permissions With permission_role custom: feature key to the verbs granted (read, create, update, delete), for example {\"overview\": [\"read\"], \"prompts\": [\"read\", \"create\"]} named list(list(character)) [optional]
#' @field account_admin Make the member a co-owner. Account owner only. character [optional]
#' @field billing_access Access to Billing and Plans. Account owner only. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateTeamInvitationRequest <- R6::R6Class(
  "CreateTeamInvitationRequest",
  public = list(
    `email` = NULL,
    `project_ids` = NULL,
    `all_projects` = NULL,
    `permission_role` = NULL,
    `account_role_id` = NULL,
    `permissions` = NULL,
    `account_admin` = NULL,
    `billing_access` = NULL,

    #' @description
    #' Initialize a new CreateTeamInvitationRequest class.
    #'
    #' @param email email
    #' @param project_ids Projects the member can access. Send this or all_projects true.
    #' @param all_projects Access to every project, including future ones
    #' @param permission_role Default full_access. Owner and co-owners only.
    #' @param account_role_id One of the account's roles, with permission_role account_role
    #' @param permissions With permission_role custom: feature key to the verbs granted (read, create, update, delete), for example {\"overview\": [\"read\"], \"prompts\": [\"read\", \"create\"]}
    #' @param account_admin Make the member a co-owner. Account owner only.
    #' @param billing_access Access to Billing and Plans. Account owner only.
    #' @param ... Other optional arguments.
    initialize = function(`email`, `project_ids` = NULL, `all_projects` = NULL, `permission_role` = NULL, `account_role_id` = NULL, `permissions` = NULL, `account_admin` = NULL, `billing_access` = NULL, ...) {
      if (!missing(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!is.null(`project_ids`)) {
        stopifnot(is.vector(`project_ids`), length(`project_ids`) != 0)
        sapply(`project_ids`, function(x) stopifnot(is.character(x)))
        self$`project_ids` <- `project_ids`
      }
      if (!is.null(`all_projects`)) {
        if (!(is.logical(`all_projects`) && length(`all_projects`) == 1)) {
          stop(paste("Error! Invalid data for `all_projects`. Must be a boolean:", `all_projects`))
        }
        self$`all_projects` <- `all_projects`
      }
      if (!is.null(`permission_role`)) {
        if (!(`permission_role` %in% c("full_access", "view_only", "custom", "account_role"))) {
          stop(paste("Error! \"", `permission_role`, "\" cannot be assigned to `permission_role`. Must be \"full_access\", \"view_only\", \"custom\", \"account_role\".", sep = ""))
        }
        if (!(is.character(`permission_role`) && length(`permission_role`) == 1)) {
          stop(paste("Error! Invalid data for `permission_role`. Must be a string:", `permission_role`))
        }
        self$`permission_role` <- `permission_role`
      }
      if (!is.null(`account_role_id`)) {
        if (!(is.numeric(`account_role_id`) && length(`account_role_id`) == 1)) {
          stop(paste("Error! Invalid data for `account_role_id`. Must be an integer:", `account_role_id`))
        }
        self$`account_role_id` <- `account_role_id`
      }
      if (!is.null(`permissions`)) {
        stopifnot(is.vector(`permissions`), length(`permissions`) != 0)
        sapply(`permissions`, function(x) stopifnot(R6::is.R6(x)))
        self$`permissions` <- `permissions`
      }
      if (!is.null(`account_admin`)) {
        if (!(is.logical(`account_admin`) && length(`account_admin`) == 1)) {
          stop(paste("Error! Invalid data for `account_admin`. Must be a boolean:", `account_admin`))
        }
        self$`account_admin` <- `account_admin`
      }
      if (!is.null(`billing_access`)) {
        if (!(is.logical(`billing_access`) && length(`billing_access`) == 1)) {
          stop(paste("Error! Invalid data for `billing_access`. Must be a boolean:", `billing_access`))
        }
        self$`billing_access` <- `billing_access`
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
    #' @return CreateTeamInvitationRequest as a base R list.
    #' @examples
    #' # convert array of CreateTeamInvitationRequest (x) to a data frame
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
    #' Convert CreateTeamInvitationRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateTeamInvitationRequestObject <- list()
      if (!is.null(self$`email`)) {
        CreateTeamInvitationRequestObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`project_ids`)) {
        CreateTeamInvitationRequestObject[["project_ids"]] <-
          self$`project_ids`
      }
      if (!is.null(self$`all_projects`)) {
        CreateTeamInvitationRequestObject[["all_projects"]] <-
          self$`all_projects`
      }
      if (!is.null(self$`permission_role`)) {
        CreateTeamInvitationRequestObject[["permission_role"]] <-
          self$`permission_role`
      }
      if (!is.null(self$`account_role_id`)) {
        CreateTeamInvitationRequestObject[["account_role_id"]] <-
          self$`account_role_id`
      }
      if (!is.null(self$`permissions`)) {
        CreateTeamInvitationRequestObject[["permissions"]] <-
          self$extractSimpleType(self$`permissions`)
      }
      if (!is.null(self$`account_admin`)) {
        CreateTeamInvitationRequestObject[["account_admin"]] <-
          self$`account_admin`
      }
      if (!is.null(self$`billing_access`)) {
        CreateTeamInvitationRequestObject[["billing_access"]] <-
          self$`billing_access`
      }
      return(CreateTeamInvitationRequestObject)
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
    #' Deserialize JSON string into an instance of CreateTeamInvitationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateTeamInvitationRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`project_ids`)) {
        self$`project_ids` <- ApiClient$new()$deserializeObj(this_object$`project_ids`, "array[integer]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`all_projects`)) {
        self$`all_projects` <- this_object$`all_projects`
      }
      if (!is.null(this_object$`permission_role`)) {
        if (!is.null(this_object$`permission_role`) && !(this_object$`permission_role` %in% c("full_access", "view_only", "custom", "account_role"))) {
          stop(paste("Error! \"", this_object$`permission_role`, "\" cannot be assigned to `permission_role`. Must be \"full_access\", \"view_only\", \"custom\", \"account_role\".", sep = ""))
        }
        self$`permission_role` <- this_object$`permission_role`
      }
      if (!is.null(this_object$`account_role_id`)) {
        self$`account_role_id` <- this_object$`account_role_id`
      }
      if (!is.null(this_object$`permissions`)) {
        self$`permissions` <- ApiClient$new()$deserializeObj(this_object$`permissions`, "map(array[character])", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`account_admin`)) {
        self$`account_admin` <- this_object$`account_admin`
      }
      if (!is.null(this_object$`billing_access`)) {
        self$`billing_access` <- this_object$`billing_access`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateTeamInvitationRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateTeamInvitationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateTeamInvitationRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`email` <- this_object$`email`
      self$`project_ids` <- ApiClient$new()$deserializeObj(this_object$`project_ids`, "array[integer]", loadNamespace("llmpulse"))
      self$`all_projects` <- this_object$`all_projects`
      if (!is.null(this_object$`permission_role`) && !(this_object$`permission_role` %in% c("full_access", "view_only", "custom", "account_role"))) {
        stop(paste("Error! \"", this_object$`permission_role`, "\" cannot be assigned to `permission_role`. Must be \"full_access\", \"view_only\", \"custom\", \"account_role\".", sep = ""))
      }
      self$`permission_role` <- this_object$`permission_role`
      self$`account_role_id` <- this_object$`account_role_id`
      self$`permissions` <- ApiClient$new()$deserializeObj(this_object$`permissions`, "map(array[character])", loadNamespace("llmpulse"))
      self$`account_admin` <- this_object$`account_admin`
      self$`billing_access` <- this_object$`billing_access`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateTeamInvitationRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateTeamInvitationRequest: the required field `email` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateTeamInvitationRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `email` is null
      if (is.null(self$`email`)) {
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
      # check if the required `email` is null
      if (is.null(self$`email`)) {
        invalid_fields["email"] <- "Non-nullable required field `email` cannot be null."
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
# CreateTeamInvitationRequest$unlock()
#
## Below is an example to define the print function
# CreateTeamInvitationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateTeamInvitationRequest$lock()

