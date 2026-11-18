#' Create a new UrlListDetailResponse
#'
#' @description
#' UrlListDetailResponse Class
#'
#' @docType class
#' @title UrlListDetailResponse
#' @description UrlListDetailResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field url_list  \link{UrlList}
#' @field filters  \link{UrlListFilters}
#' @field summary  \link{UrlListSummary}
#' @field status_counts  \link{UrlListStatusCounts}
#' @field page  integer
#' @field per_page  integer
#' @field total  integer
#' @field entries  list(\link{UrlListEntry})
#' @field request_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UrlListDetailResponse <- R6::R6Class(
  "UrlListDetailResponse",
  public = list(
    `project_id` = NULL,
    `url_list` = NULL,
    `filters` = NULL,
    `summary` = NULL,
    `status_counts` = NULL,
    `page` = NULL,
    `per_page` = NULL,
    `total` = NULL,
    `entries` = NULL,
    `request_id` = NULL,

    #' @description
    #' Initialize a new UrlListDetailResponse class.
    #'
    #' @param project_id project_id
    #' @param url_list url_list
    #' @param filters filters
    #' @param summary summary
    #' @param status_counts status_counts
    #' @param page page
    #' @param per_page per_page
    #' @param total total
    #' @param entries entries
    #' @param request_id request_id
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `url_list`, `filters`, `summary`, `status_counts`, `page`, `per_page`, `total`, `entries`, `request_id`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
      }
      if (!missing(`url_list`)) {
        stopifnot(R6::is.R6(`url_list`))
        self$`url_list` <- `url_list`
      }
      if (!missing(`filters`)) {
        stopifnot(R6::is.R6(`filters`))
        self$`filters` <- `filters`
      }
      if (!missing(`summary`)) {
        stopifnot(R6::is.R6(`summary`))
        self$`summary` <- `summary`
      }
      if (!missing(`status_counts`)) {
        stopifnot(R6::is.R6(`status_counts`))
        self$`status_counts` <- `status_counts`
      }
      if (!missing(`page`)) {
        if (!(is.numeric(`page`) && length(`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", `page`))
        }
        self$`page` <- `page`
      }
      if (!missing(`per_page`)) {
        if (!(is.numeric(`per_page`) && length(`per_page`) == 1)) {
          stop(paste("Error! Invalid data for `per_page`. Must be an integer:", `per_page`))
        }
        self$`per_page` <- `per_page`
      }
      if (!missing(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!missing(`entries`)) {
        stopifnot(is.vector(`entries`), length(`entries`) != 0)
        sapply(`entries`, function(x) stopifnot(R6::is.R6(x)))
        self$`entries` <- `entries`
      }
      if (!missing(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
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
    #' @return UrlListDetailResponse as a base R list.
    #' @examples
    #' # convert array of UrlListDetailResponse (x) to a data frame
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
    #' Convert UrlListDetailResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UrlListDetailResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        UrlListDetailResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`url_list`)) {
        UrlListDetailResponseObject[["url_list"]] <-
          self$extractSimpleType(self$`url_list`)
      }
      if (!is.null(self$`filters`)) {
        UrlListDetailResponseObject[["filters"]] <-
          self$extractSimpleType(self$`filters`)
      }
      if (!is.null(self$`summary`)) {
        UrlListDetailResponseObject[["summary"]] <-
          self$extractSimpleType(self$`summary`)
      }
      if (!is.null(self$`status_counts`)) {
        UrlListDetailResponseObject[["status_counts"]] <-
          self$extractSimpleType(self$`status_counts`)
      }
      if (!is.null(self$`page`)) {
        UrlListDetailResponseObject[["page"]] <-
          self$`page`
      }
      if (!is.null(self$`per_page`)) {
        UrlListDetailResponseObject[["per_page"]] <-
          self$`per_page`
      }
      if (!is.null(self$`total`)) {
        UrlListDetailResponseObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`entries`)) {
        UrlListDetailResponseObject[["entries"]] <-
          self$extractSimpleType(self$`entries`)
      }
      if (!is.null(self$`request_id`)) {
        UrlListDetailResponseObject[["request_id"]] <-
          self$`request_id`
      }
      return(UrlListDetailResponseObject)
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
    #' Deserialize JSON string into an instance of UrlListDetailResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListDetailResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
      }
      if (!is.null(this_object$`url_list`)) {
        `url_list_object` <- UrlList$new()
        `url_list_object`$fromJSON(jsonlite::toJSON(this_object$`url_list`, auto_unbox = TRUE, digits = NA))
        self$`url_list` <- `url_list_object`
      }
      if (!is.null(this_object$`filters`)) {
        `filters_object` <- UrlListFilters$new()
        `filters_object`$fromJSON(jsonlite::toJSON(this_object$`filters`, auto_unbox = TRUE, digits = NA))
        self$`filters` <- `filters_object`
      }
      if (!is.null(this_object$`summary`)) {
        `summary_object` <- UrlListSummary$new()
        `summary_object`$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
        self$`summary` <- `summary_object`
      }
      if (!is.null(this_object$`status_counts`)) {
        `status_counts_object` <- UrlListStatusCounts$new()
        `status_counts_object`$fromJSON(jsonlite::toJSON(this_object$`status_counts`, auto_unbox = TRUE, digits = NA))
        self$`status_counts` <- `status_counts_object`
      }
      if (!is.null(this_object$`page`)) {
        self$`page` <- this_object$`page`
      }
      if (!is.null(this_object$`per_page`)) {
        self$`per_page` <- this_object$`per_page`
      }
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`entries`)) {
        self$`entries` <- ApiClient$new()$deserializeObj(this_object$`entries`, "array[UrlListEntry]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`request_id`)) {
        self$`request_id` <- this_object$`request_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UrlListDetailResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UrlListDetailResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of UrlListDetailResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`url_list` <- UrlList$new()$fromJSON(jsonlite::toJSON(this_object$`url_list`, auto_unbox = TRUE, digits = NA))
      self$`filters` <- UrlListFilters$new()$fromJSON(jsonlite::toJSON(this_object$`filters`, auto_unbox = TRUE, digits = NA))
      self$`summary` <- UrlListSummary$new()$fromJSON(jsonlite::toJSON(this_object$`summary`, auto_unbox = TRUE, digits = NA))
      self$`status_counts` <- UrlListStatusCounts$new()$fromJSON(jsonlite::toJSON(this_object$`status_counts`, auto_unbox = TRUE, digits = NA))
      self$`page` <- this_object$`page`
      self$`per_page` <- this_object$`per_page`
      self$`total` <- this_object$`total`
      self$`entries` <- ApiClient$new()$deserializeObj(this_object$`entries`, "array[UrlListEntry]", loadNamespace("llmpulse"))
      self$`request_id` <- this_object$`request_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to UrlListDetailResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UrlListDetailResponse: the required field `project_id` is missing."))
      }
      # check the required field `url_list`
      if (!is.null(input_json$`url_list`)) {
        stopifnot(R6::is.R6(input_json$`url_list`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListDetailResponse: the required field `url_list` is missing."))
      }
      # check the required field `filters`
      if (!is.null(input_json$`filters`)) {
        stopifnot(R6::is.R6(input_json$`filters`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListDetailResponse: the required field `filters` is missing."))
      }
      # check the required field `summary`
      if (!is.null(input_json$`summary`)) {
        stopifnot(R6::is.R6(input_json$`summary`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListDetailResponse: the required field `summary` is missing."))
      }
      # check the required field `status_counts`
      if (!is.null(input_json$`status_counts`)) {
        stopifnot(R6::is.R6(input_json$`status_counts`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListDetailResponse: the required field `status_counts` is missing."))
      }
      # check the required field `page`
      if (!is.null(input_json$`page`)) {
        if (!(is.numeric(input_json$`page`) && length(input_json$`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", input_json$`page`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListDetailResponse: the required field `page` is missing."))
      }
      # check the required field `per_page`
      if (!is.null(input_json$`per_page`)) {
        if (!(is.numeric(input_json$`per_page`) && length(input_json$`per_page`) == 1)) {
          stop(paste("Error! Invalid data for `per_page`. Must be an integer:", input_json$`per_page`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListDetailResponse: the required field `per_page` is missing."))
      }
      # check the required field `total`
      if (!is.null(input_json$`total`)) {
        if (!(is.numeric(input_json$`total`) && length(input_json$`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", input_json$`total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListDetailResponse: the required field `total` is missing."))
      }
      # check the required field `entries`
      if (!is.null(input_json$`entries`)) {
        stopifnot(is.vector(input_json$`entries`), length(input_json$`entries`) != 0)
        tmp <- sapply(input_json$`entries`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListDetailResponse: the required field `entries` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UrlListDetailResponse: the required field `request_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UrlListDetailResponse
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

      # check if the required `url_list` is null
      if (is.null(self$`url_list`)) {
        return(FALSE)
      }

      # check if the required `filters` is null
      if (is.null(self$`filters`)) {
        return(FALSE)
      }

      # check if the required `summary` is null
      if (is.null(self$`summary`)) {
        return(FALSE)
      }

      # check if the required `status_counts` is null
      if (is.null(self$`status_counts`)) {
        return(FALSE)
      }

      # check if the required `page` is null
      if (is.null(self$`page`)) {
        return(FALSE)
      }

      # check if the required `per_page` is null
      if (is.null(self$`per_page`)) {
        return(FALSE)
      }

      # check if the required `total` is null
      if (is.null(self$`total`)) {
        return(FALSE)
      }

      # check if the required `entries` is null
      if (is.null(self$`entries`)) {
        return(FALSE)
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
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

      # check if the required `url_list` is null
      if (is.null(self$`url_list`)) {
        invalid_fields["url_list"] <- "Non-nullable required field `url_list` cannot be null."
      }

      # check if the required `filters` is null
      if (is.null(self$`filters`)) {
        invalid_fields["filters"] <- "Non-nullable required field `filters` cannot be null."
      }

      # check if the required `summary` is null
      if (is.null(self$`summary`)) {
        invalid_fields["summary"] <- "Non-nullable required field `summary` cannot be null."
      }

      # check if the required `status_counts` is null
      if (is.null(self$`status_counts`)) {
        invalid_fields["status_counts"] <- "Non-nullable required field `status_counts` cannot be null."
      }

      # check if the required `page` is null
      if (is.null(self$`page`)) {
        invalid_fields["page"] <- "Non-nullable required field `page` cannot be null."
      }

      # check if the required `per_page` is null
      if (is.null(self$`per_page`)) {
        invalid_fields["per_page"] <- "Non-nullable required field `per_page` cannot be null."
      }

      # check if the required `total` is null
      if (is.null(self$`total`)) {
        invalid_fields["total"] <- "Non-nullable required field `total` cannot be null."
      }

      # check if the required `entries` is null
      if (is.null(self$`entries`)) {
        invalid_fields["entries"] <- "Non-nullable required field `entries` cannot be null."
      }

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
        invalid_fields["request_id"] <- "Non-nullable required field `request_id` cannot be null."
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
# UrlListDetailResponse$unlock()
#
## Below is an example to define the print function
# UrlListDetailResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UrlListDetailResponse$lock()

