#' Create a new TeamInvitation
#'
#' @description
#' TeamInvitation Class
#'
#' @docType class
#' @title TeamInvitation
#' @description TeamInvitation Class
#' @format An \code{R6Class} generator object
#' @field id Kept by the member once they accept, when they move to GET /team_members. integer
#' @field email  character
#' @field permission_role  character
#' @field account_role  \link{TeamAccountRole}
#' @field permissions What the person can do, feature key to the verbs granted (read, create, update, delete), resolved from their role. Null for the account owner, who can do everything. named list(list(character))
#' @field account_admin  character
#' @field billing_access  character
#' @field all_projects  character
#' @field project_ids  list(integer)
#' @field invited_at When the invitation email was last sent. character [optional]
#' @field expires_at When the invitation link stops working. character [optional]
#' @field created_at  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TeamInvitation <- R6::R6Class(
  "TeamInvitation",
  public = list(
    `id` = NULL,
    `email` = NULL,
    `permission_role` = NULL,
    `account_role` = NULL,
    `permissions` = NULL,
    `account_admin` = NULL,
    `billing_access` = NULL,
    `all_projects` = NULL,
    `project_ids` = NULL,
    `invited_at` = NULL,
    `expires_at` = NULL,
    `created_at` = NULL,

    #' @description
    #' Initialize a new TeamInvitation class.
    #'
    #' @param id Kept by the member once they accept, when they move to GET /team_members.
    #' @param email email
    #' @param permission_role permission_role
    #' @param account_role account_role
    #' @param permissions What the person can do, feature key to the verbs granted (read, create, update, delete), resolved from their role. Null for the account owner, who can do everything.
    #' @param account_admin account_admin
    #' @param billing_access billing_access
    #' @param all_projects all_projects
    #' @param project_ids project_ids
    #' @param invited_at When the invitation email was last sent.
    #' @param expires_at When the invitation link stops working.
    #' @param created_at created_at
    #' @param ... Other optional arguments.
    initialize = function(`id`, `email`, `permission_role`, `account_role`, `permissions`, `account_admin`, `billing_access`, `all_projects`, `project_ids`, `invited_at` = NULL, `expires_at` = NULL, `created_at` = NULL, ...) {
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
      if (!missing(`permission_role`)) {
        if (!(`permission_role` %in% c("full_access", "view_only", "custom", "account_role"))) {
          stop(paste("Error! \"", `permission_role`, "\" cannot be assigned to `permission_role`. Must be \"full_access\", \"view_only\", \"custom\", \"account_role\".", sep = ""))
        }
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
      if (!is.null(`invited_at`)) {
        if (!is.character(`invited_at`)) {
          stop(paste("Error! Invalid data for `invited_at`. Must be a string:", `invited_at`))
        }
        self$`invited_at` <- `invited_at`
      }
      if (!is.null(`expires_at`)) {
        if (!is.character(`expires_at`)) {
          stop(paste("Error! Invalid data for `expires_at`. Must be a string:", `expires_at`))
        }
        self$`expires_at` <- `expires_at`
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
    #' @return TeamInvitation as a base R list.
    #' @examples
    #' # convert array of TeamInvitation (x) to a data frame
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
    #' Convert TeamInvitation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TeamInvitationObject <- list()
      if (!is.null(self$`id`)) {
        TeamInvitationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`email`)) {
        TeamInvitationObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`permission_role`)) {
        TeamInvitationObject[["permission_role"]] <-
          self$`permission_role`
      }
      if (!is.null(self$`account_role`)) {
        TeamInvitationObject[["account_role"]] <-
          self$extractSimpleType(self$`account_role`)
      }
      if (!is.null(self$`permissions`)) {
        TeamInvitationObject[["permissions"]] <-
          self$extractSimpleType(self$`permissions`)
      }
      if (!is.null(self$`account_admin`)) {
        TeamInvitationObject[["account_admin"]] <-
          self$`account_admin`
      }
      if (!is.null(self$`billing_access`)) {
        TeamInvitationObject[["billing_access"]] <-
          self$`billing_access`
      }
      if (!is.null(self$`all_projects`)) {
        TeamInvitationObject[["all_projects"]] <-
          self$`all_projects`
      }
      if (!is.null(self$`project_ids`)) {
        TeamInvitationObject[["project_ids"]] <-
          self$`project_ids`
      }
      if (!is.null(self$`invited_at`)) {
        TeamInvitationObject[["invited_at"]] <-
          self$`invited_at`
      }
      if (!is.null(self$`expires_at`)) {
        TeamInvitationObject[["expires_at"]] <-
          self$`expires_at`
      }
      if (!is.null(self$`created_at`)) {
        TeamInvitationObject[["created_at"]] <-
          self$`created_at`
      }
      return(TeamInvitationObject)
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
    #' Deserialize JSON string into an instance of TeamInvitation
    #'
    #' @param input_json the JSON input
    #' @return the instance of TeamInvitation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`permission_role`)) {
        if (!is.null(this_object$`permission_role`) && !(this_object$`permission_role` %in% c("full_access", "view_only", "custom", "account_role"))) {
          stop(paste("Error! \"", this_object$`permission_role`, "\" cannot be assigned to `permission_role`. Must be \"full_access\", \"view_only\", \"custom\", \"account_role\".", sep = ""))
        }
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
      if (!is.null(this_object$`invited_at`)) {
        self$`invited_at` <- this_object$`invited_at`
      }
      if (!is.null(this_object$`expires_at`)) {
        self$`expires_at` <- this_object$`expires_at`
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
    #' @return TeamInvitation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TeamInvitation
    #'
    #' @param input_json the JSON input
    #' @return the instance of TeamInvitation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`email` <- this_object$`email`
      if (!is.null(this_object$`permission_role`) && !(this_object$`permission_role` %in% c("full_access", "view_only", "custom", "account_role"))) {
        stop(paste("Error! \"", this_object$`permission_role`, "\" cannot be assigned to `permission_role`. Must be \"full_access\", \"view_only\", \"custom\", \"account_role\".", sep = ""))
      }
      self$`permission_role` <- this_object$`permission_role`
      self$`account_role` <- TeamAccountRole$new()$fromJSON(jsonlite::toJSON(this_object$`account_role`, auto_unbox = TRUE, digits = NA))
      self$`permissions` <- ApiClient$new()$deserializeObj(this_object$`permissions`, "map(array[character])", loadNamespace("llmpulse"))
      self$`account_admin` <- this_object$`account_admin`
      self$`billing_access` <- this_object$`billing_access`
      self$`all_projects` <- this_object$`all_projects`
      self$`project_ids` <- ApiClient$new()$deserializeObj(this_object$`project_ids`, "array[integer]", loadNamespace("llmpulse"))
      self$`invited_at` <- this_object$`invited_at`
      self$`expires_at` <- this_object$`expires_at`
      self$`created_at` <- this_object$`created_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to TeamInvitation and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for TeamInvitation: the required field `id` is missing."))
      }
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamInvitation: the required field `email` is missing."))
      }
      # check the required field `permission_role`
      if (!is.null(input_json$`permission_role`)) {
        if (!(is.character(input_json$`permission_role`) && length(input_json$`permission_role`) == 1)) {
          stop(paste("Error! Invalid data for `permission_role`. Must be a string:", input_json$`permission_role`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamInvitation: the required field `permission_role` is missing."))
      }
      # check the required field `account_role`
      if (!is.null(input_json$`account_role`)) {
        stopifnot(R6::is.R6(input_json$`account_role`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamInvitation: the required field `account_role` is missing."))
      }
      # check the required field `permissions`
      if (!is.null(input_json$`permissions`)) {
        stopifnot(is.vector(input_json$`permissions`), length(input_json$`permissions`) != 0)
        tmp <- sapply(input_json$`permissions`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamInvitation: the required field `permissions` is missing."))
      }
      # check the required field `account_admin`
      if (!is.null(input_json$`account_admin`)) {
        if (!(is.logical(input_json$`account_admin`) && length(input_json$`account_admin`) == 1)) {
          stop(paste("Error! Invalid data for `account_admin`. Must be a boolean:", input_json$`account_admin`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamInvitation: the required field `account_admin` is missing."))
      }
      # check the required field `billing_access`
      if (!is.null(input_json$`billing_access`)) {
        if (!(is.logical(input_json$`billing_access`) && length(input_json$`billing_access`) == 1)) {
          stop(paste("Error! Invalid data for `billing_access`. Must be a boolean:", input_json$`billing_access`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamInvitation: the required field `billing_access` is missing."))
      }
      # check the required field `all_projects`
      if (!is.null(input_json$`all_projects`)) {
        if (!(is.logical(input_json$`all_projects`) && length(input_json$`all_projects`) == 1)) {
          stop(paste("Error! Invalid data for `all_projects`. Must be a boolean:", input_json$`all_projects`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamInvitation: the required field `all_projects` is missing."))
      }
      # check the required field `project_ids`
      if (!is.null(input_json$`project_ids`)) {
        stopifnot(is.vector(input_json$`project_ids`), length(input_json$`project_ids`) != 0)
        tmp <- sapply(input_json$`project_ids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TeamInvitation: the required field `project_ids` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TeamInvitation
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

      # check if the required `permission_role` is null
      if (is.null(self$`permission_role`)) {
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

      # check if the required `permission_role` is null
      if (is.null(self$`permission_role`)) {
        invalid_fields["permission_role"] <- "Non-nullable required field `permission_role` cannot be null."
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
# TeamInvitation$unlock()
#
## Below is an example to define the print function
# TeamInvitation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TeamInvitation$lock()

