#' Create a new TeamMember
#'
#' @description
#' TeamMember Class
#'
#' @docType class
#' @title TeamMember
#' @description TeamMember Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field email  character
#' @field name  character [optional]
#' @field role The account owner is listed first; everyone else who joined is a member. character
#' @field status A blocked member cannot sign in or use the API until unblocked in the app. character
#' @field permission_role Access level of a member: full_access, view_only, custom or account_role. Null for the owner. character
#' @field account_role  \link{TeamAccountRole}
#' @field permissions What the person can do, feature key to the verbs granted (read, create, update, delete), resolved from their role. Null for the account owner, who can do everything. named list(list(character))
#' @field account_admin A co-owner, who can manage the team. character
#' @field billing_access Can open Billing and Plans (always true for the owner). character
#' @field all_projects Has access to every project of the account, including future ones. character
#' @field project_ids The projects a member is limited to; empty when all_projects is true. list(integer)
#' @field last_sign_in_at  character [optional]
#' @field joined_at When the member accepted the invitation; null for the owner and for members added without one. character [optional]
#' @field created_at  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TeamMember <- R6::R6Class(
  "TeamMember",
  public = list(
    `id` = NULL,
    `email` = NULL,
    `name` = NULL,
    `role` = NULL,
    `status` = NULL,
    `permission_role` = NULL,
    `account_role` = NULL,
    `permissions` = NULL,
    `account_admin` = NULL,
    `billing_access` = NULL,
    `all_projects` = NULL,
    `project_ids` = NULL,
    `last_sign_in_at` = NULL,
    `joined_at` = NULL,
    `created_at` = NULL,

    #' @description
    #' Initialize a new TeamMember class.
    #'
    #' @param id id
    #' @param email email
    #' @param role The account owner is listed first; everyone else who joined is a member.
    #' @param status A blocked member cannot sign in or use the API until unblocked in the app.
    #' @param permission_role Access level of a member: full_access, view_only, custom or account_role. Null for the owner.
    #' @param account_role account_role
    #' @param permissions What the person can do, feature key to the verbs granted (read, create, update, delete), resolved from their role. Null for the account owner, who can do everything.
    #' @param account_admin A co-owner, who can manage the team.
    #' @param billing_access Can open Billing and Plans (always true for the owner).
    #' @param all_projects Has access to every project of the account, including future ones.
    #' @param project_ids The projects a member is limited to; empty when all_projects is true.
    #' @param name name
    #' @param last_sign_in_at last_sign_in_at
    #' @param joined_at When the member accepted the invitation; null for the owner and for members added without one.
    #' @param created_at created_at
    #' @param ... Other optional arguments.
    initialize = function(`id`, `email`, `role`, `status`, `permission_role`, `account_role`, `permissions`, `account_admin`, `billing_access`, `all_projects`, `project_ids`, `name` = NULL, `last_sign_in_at` = NULL, `joined_at` = NULL, `created_at` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!missing(`role`)) {
        if (!(`role` %in% c("owner", "member"))) {
          stop(paste("Error! \"", `role`, "\" cannot be assigned to `role`. Must be \"owner\", \"member\".", sep = ""))
        }
        if (!(is.character(`role`) && length(`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", `role`))
        }
        self$`role` <- `role`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c("active", "blocked"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"active\", \"blocked\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`permission_role`)) {
        if (!(is.character(`permission_role`) && length(`permission_role`) == 1)) {
          stop(paste("Error! Invalid data for `permission_role`. Must be a string:", `permission_role`))
        }
        self$`permission_role` <- `permission_role`
      }
      if (!missing(`account_role`)) {
        stopifnot(R6::is.R6(`account_role`))
        self$`account_role` <- `account_role`
      }
      if (!missing(`permissions`)) {
        stopifnot(is.vector(`permissions`), length(`permissions`) != 0)
        sapply(`permissions`, function(x) stopifnot(R6::is.R6(x)))
        self$`permissions` <- `permissions`
      }
      if (!missing(`account_admin`)) {
        if (!(is.logical(`account_admin`) && length(`account_admin`) == 1)) {
          stop(paste("Error! Invalid data for `account_admin`. Must be a boolean:", `account_admin`))
        }
        self$`account_admin` <- `account_admin`
      }
      if (!missing(`billing_access`)) {
        if (!(is.logical(`billing_access`) && length(`billing_access`) == 1)) {
          stop(paste("Error! Invalid data for `billing_access`. Must be a boolean:", `billing_access`))
        }
        self$`billing_access` <- `billing_access`
      }
      if (!missing(`all_projects`)) {
        if (!(is.logical(`all_projects`) && length(`all_projects`) == 1)) {
          stop(paste("Error! Invalid data for `all_projects`. Must be a boolean:", `all_projects`))
        }
        self$`all_projects` <- `all_projects`
      }
      if (!missing(`project_ids`)) {
        stopifnot(is.vector(`project_ids`), length(`project_ids`) != 0)
        sapply(`project_ids`, function(x) stopifnot(is.character(x)))
        self$`project_ids` <- `project_ids`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`last_sign_in_at`)) {
        if (!is.character(`last_sign_in_at`)) {
          stop(paste("Error! Invalid data for `last_sign_in_at`. Must be a string:", `last_sign_in_at`))
        }
        self$`last_sign_in_at` <- `last_sign_in_at`
      }
      if (!is.null(`joined_at`)) {
        if (!is.character(`joined_at`)) {
          stop(paste("Error! Invalid data for `joined_at`. Must be a string:", `joined_at`))
        }
        self$`joined_at` <- `joined_at`
      }
      if (!is.null(`created_at`)) {
        if (!is.character(`created_at`)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
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
    #' @return TeamMember as a base R list.
    #' @examples
    #' # convert array of TeamMember (x) to a data frame
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
    #' Convert TeamMember to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TeamMemberObject <- list()
      if (!is.null(self$`id`)) {
        TeamMemberObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`email`)) {
        TeamMemberObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`name`)) {
        TeamMemberObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`role`)) {
        TeamMemberObject[["role"]] <-
          self$`role`
      }
      if (!is.null(self$`status`)) {
        TeamMemberObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`permission_role`)) {
        TeamMemberObject[["permission_role"]] <-
          self$`permission_role`
      }
      if (!is.null(self$`account_role`)) {
        TeamMemberObject[["account_role"]] <-
          self$extractSimpleType(self$`account_role`)
      }
      if (!is.null(self$`permissions`)) {
        TeamMemberObject[["permissions"]] <-
          self$extractSimpleType(self$`permissions`)
      }
      if (!is.null(self$`account_admin`)) {
        TeamMemberObject[["account_admin"]] <-
          self$`account_admin`
      }
      if (!is.null(self$`billing_access`)) {
        TeamMemberObject[["billing_access"]] <-
          self$`billing_access`
      }
      if (!is.null(self$`all_projects`)) {
        TeamMemberObject[["all_projects"]] <-
          self$`all_projects`
      }
      if (!is.null(self$`project_ids`)) {
        TeamMemberObject[["project_ids"]] <-
          self$`project_ids`
      }
      if (!is.null(self$`last_sign_in_at`)) {
        TeamMemberObject[["last_sign_in_at"]] <-
          self$`last_sign_in_at`
      }
      if (!is.null(self$`joined_at`)) {
        TeamMemberObject[["joined_at"]] <-
          self$`joined_at`
      }
      if (!is.null(self$`created_at`)) {
        TeamMemberObject[["created_at"]] <-
          self$`created_at`
      }
      return(TeamMemberObject)
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
    #' Deserialize JSON string into an instance of TeamMember
    #'
    #' @param input_json the JSON input
    #' @return the instance of TeamMember
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`role`)) {
        if (!is.null(this_object$`role`) && !(this_object$`role` %in% c("owner", "member"))) {
          stop(paste("Error! \"", this_object$`role`, "\" cannot be assigned to `role`. Must be \"owner\", \"member\".", sep = ""))
        }
        self$`role` <- this_object$`role`
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("active", "blocked"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"active\", \"blocked\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`permission_role`)) {
        self$`permission_role` <- this_object$`permission_role`
      }
      if (!is.null(this_object$`account_role`)) {
        `account_role_object` <- TeamAccountRole$new()
        `account_role_object`$fromJSON(jsonlite::toJSON(this_object$`account_role`, auto_unbox = TRUE, digits = NA))
        self$`account_role` <- `account_role_object`
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
      if (!is.null(this_object$`all_projects`)) {
        self$`all_projects` <- this_object$`all_projects`
      }
      if (!is.null(this_object$`project_ids`)) {
        self$`project_ids` <- ApiClient$new()$deserializeObj(this_object$`project_ids`, "array[integer]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`last_sign_in_at`)) {
        self$`last_sign_in_at` <- this_object$`last_sign_in_at`
      }
      if (!is.null(this_object$`joined_at`)) {
        self$`joined_at` <- this_object$`joined_at`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TeamMember in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TeamMember
    #'
    #' @param input_json the JSON input
    #' @return the instance of TeamMember
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`email` <- this_object$`email`
      self$`name` <- this_object$`name`
      if (!is.null(this_object$`role`) && !(this_object$`role` %in% c("owner", "member"))) {
        stop(paste("Error! \"", this_object$`role`, "\" cannot be assigned to `role`. Must be \"owner\", \"member\".", sep = ""))
      }
      self$`role` <- this_object$`role`
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("active", "blocked"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"active\", \"blocked\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`permission_role` <- this_object$`permission_role`
      self$`account_role` <- TeamAccountRole$new()$fromJSON(jsonlite::toJSON(this_object$`account_role`, auto_unbox = TRUE, digits = NA))
      self$`permissions` <- ApiClient$new()$deserializeObj(this_object$`permissions`, "map(array[character])", loadNamespace("llmpulse"))
      self$`account_admin` <- this_object$`account_admin`
      self$`billing_access` <- this_object$`billing_access`
      self$`all_projects` <- this_object$`all_projects`
      self$`project_ids` <- ApiClient$new()$deserializeObj(this_object$`project_ids`, "array[integer]", loadNamespace("llmpulse"))
      self$`last_sign_in_at` <- this_object$`last_sign_in_at`
      self$`joined_at` <- this_object$`joined_at`
      self$`created_at` <- this_object$`created_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to TeamMember and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for TeamMember: the required field `id` is missing."))
      }
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamMember: the required field `email` is missing."))
      }
      # check the required field `role`
      if (!is.null(input_json$`role`)) {
        if (!(is.character(input_json$`role`) && length(input_json$`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", input_json$`role`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamMember: the required field `role` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamMember: the required field `status` is missing."))
      }
      # check the required field `permission_role`
      if (!is.null(input_json$`permission_role`)) {
        if (!(is.character(input_json$`permission_role`) && length(input_json$`permission_role`) == 1)) {
          stop(paste("Error! Invalid data for `permission_role`. Must be a string:", input_json$`permission_role`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamMember: the required field `permission_role` is missing."))
      }
      # check the required field `account_role`
      if (!is.null(input_json$`account_role`)) {
        stopifnot(R6::is.R6(input_json$`account_role`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamMember: the required field `account_role` is missing."))
      }
      # check the required field `permissions`
      if (!is.null(input_json$`permissions`)) {
        stopifnot(is.vector(input_json$`permissions`), length(input_json$`permissions`) != 0)
        tmp <- sapply(input_json$`permissions`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamMember: the required field `permissions` is missing."))
      }
      # check the required field `account_admin`
      if (!is.null(input_json$`account_admin`)) {
        if (!(is.logical(input_json$`account_admin`) && length(input_json$`account_admin`) == 1)) {
          stop(paste("Error! Invalid data for `account_admin`. Must be a boolean:", input_json$`account_admin`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamMember: the required field `account_admin` is missing."))
      }
      # check the required field `billing_access`
      if (!is.null(input_json$`billing_access`)) {
        if (!(is.logical(input_json$`billing_access`) && length(input_json$`billing_access`) == 1)) {
          stop(paste("Error! Invalid data for `billing_access`. Must be a boolean:", input_json$`billing_access`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamMember: the required field `billing_access` is missing."))
      }
      # check the required field `all_projects`
      if (!is.null(input_json$`all_projects`)) {
        if (!(is.logical(input_json$`all_projects`) && length(input_json$`all_projects`) == 1)) {
          stop(paste("Error! Invalid data for `all_projects`. Must be a boolean:", input_json$`all_projects`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamMember: the required field `all_projects` is missing."))
      }
      # check the required field `project_ids`
      if (!is.null(input_json$`project_ids`)) {
        stopifnot(is.vector(input_json$`project_ids`), length(input_json$`project_ids`) != 0)
        tmp <- sapply(input_json$`project_ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamMember: the required field `project_ids` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TeamMember
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

      # check if the required `email` is null
      if (is.null(self$`email`)) {
        return(FALSE)
      }

      # check if the required `role` is null
      if (is.null(self$`role`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `account_admin` is null
      if (is.null(self$`account_admin`)) {
        return(FALSE)
      }

      # check if the required `billing_access` is null
      if (is.null(self$`billing_access`)) {
        return(FALSE)
      }

      # check if the required `all_projects` is null
      if (is.null(self$`all_projects`)) {
        return(FALSE)
      }

      # check if the required `project_ids` is null
      if (is.null(self$`project_ids`)) {
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

      # check if the required `email` is null
      if (is.null(self$`email`)) {
        invalid_fields["email"] <- "Non-nullable required field `email` cannot be null."
      }

      # check if the required `role` is null
      if (is.null(self$`role`)) {
        invalid_fields["role"] <- "Non-nullable required field `role` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `account_admin` is null
      if (is.null(self$`account_admin`)) {
        invalid_fields["account_admin"] <- "Non-nullable required field `account_admin` cannot be null."
      }

      # check if the required `billing_access` is null
      if (is.null(self$`billing_access`)) {
        invalid_fields["billing_access"] <- "Non-nullable required field `billing_access` cannot be null."
      }

      # check if the required `all_projects` is null
      if (is.null(self$`all_projects`)) {
        invalid_fields["all_projects"] <- "Non-nullable required field `all_projects` cannot be null."
      }

      # check if the required `project_ids` is null
      if (is.null(self$`project_ids`)) {
        invalid_fields["project_ids"] <- "Non-nullable required field `project_ids` cannot be null."
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
# TeamMember$unlock()
#
## Below is an example to define the print function
# TeamMember$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TeamMember$lock()

