#' Create a new SentimentTagsResponse
#'
#' @description
#' SentimentTagsResponse Class
#'
#' @docType class
#' @title SentimentTagsResponse
#' @description SentimentTagsResponse Class
#' @format An \code{R6Class} generator object
#' @field project_id  integer
#' @field page  integer
#' @field per_page  integer
#' @field total Rows matching the filters across every page integer
#' @field request_id  character
#' @field from  character
#' @field to  character
#' @field brand  \link{SentimentBreakdownBrand}
#' @field sort  character
#' @field sort_dir  character
#' @field data  list(\link{SentimentTagRow})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SentimentTagsResponse <- R6::R6Class(
  "SentimentTagsResponse",
  public = list(
    `project_id` = NULL,
    `page` = NULL,
    `per_page` = NULL,
    `total` = NULL,
    `request_id` = NULL,
    `from` = NULL,
    `to` = NULL,
    `brand` = NULL,
    `sort` = NULL,
    `sort_dir` = NULL,
    `data` = NULL,

    #' @description
    #' Initialize a new SentimentTagsResponse class.
    #'
    #' @param project_id project_id
    #' @param page page
    #' @param per_page per_page
    #' @param total Rows matching the filters across every page
    #' @param request_id request_id
    #' @param from from
    #' @param to to
    #' @param brand brand
    #' @param sort sort
    #' @param sort_dir sort_dir
    #' @param data data
    #' @param ... Other optional arguments.
    initialize = function(`project_id`, `page`, `per_page`, `total`, `request_id`, `from`, `to`, `brand`, `sort`, `sort_dir`, `data`, ...) {
      if (!missing(`project_id`)) {
        if (!(is.numeric(`project_id`) && length(`project_id`) == 1)) {
          stop(paste("Error! Invalid data for `project_id`. Must be an integer:", `project_id`))
        }
        self$`project_id` <- `project_id`
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
      if (!missing(`request_id`)) {
        if (!(is.character(`request_id`) && length(`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", `request_id`))
        }
        self$`request_id` <- `request_id`
      }
      if (!missing(`from`)) {
        if (!(is.character(`from`) && length(`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", `from`))
        }
        self$`from` <- `from`
      }
      if (!missing(`to`)) {
        if (!(is.character(`to`) && length(`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", `to`))
        }
        self$`to` <- `to`
      }
      if (!missing(`brand`)) {
        stopifnot(R6::is.R6(`brand`))
        self$`brand` <- `brand`
      }
      if (!missing(`sort`)) {
        if (!(is.character(`sort`) && length(`sort`) == 1)) {
          stop(paste("Error! Invalid data for `sort`. Must be a string:", `sort`))
        }
        self$`sort` <- `sort`
      }
      if (!missing(`sort_dir`)) {
        if (!(is.character(`sort_dir`) && length(`sort_dir`) == 1)) {
          stop(paste("Error! Invalid data for `sort_dir`. Must be a string:", `sort_dir`))
        }
        self$`sort_dir` <- `sort_dir`
      }
      if (!missing(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
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
    #' @return SentimentTagsResponse as a base R list.
    #' @examples
    #' # convert array of SentimentTagsResponse (x) to a data frame
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
    #' Convert SentimentTagsResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SentimentTagsResponseObject <- list()
      if (!is.null(self$`project_id`)) {
        SentimentTagsResponseObject[["project_id"]] <-
          self$`project_id`
      }
      if (!is.null(self$`page`)) {
        SentimentTagsResponseObject[["page"]] <-
          self$`page`
      }
      if (!is.null(self$`per_page`)) {
        SentimentTagsResponseObject[["per_page"]] <-
          self$`per_page`
      }
      if (!is.null(self$`total`)) {
        SentimentTagsResponseObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`request_id`)) {
        SentimentTagsResponseObject[["request_id"]] <-
          self$`request_id`
      }
      if (!is.null(self$`from`)) {
        SentimentTagsResponseObject[["from"]] <-
          self$`from`
      }
      if (!is.null(self$`to`)) {
        SentimentTagsResponseObject[["to"]] <-
          self$`to`
      }
      if (!is.null(self$`brand`)) {
        SentimentTagsResponseObject[["brand"]] <-
          self$extractSimpleType(self$`brand`)
      }
      if (!is.null(self$`sort`)) {
        SentimentTagsResponseObject[["sort"]] <-
          self$`sort`
      }
      if (!is.null(self$`sort_dir`)) {
        SentimentTagsResponseObject[["sort_dir"]] <-
          self$`sort_dir`
      }
      if (!is.null(self$`data`)) {
        SentimentTagsResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      return(SentimentTagsResponseObject)
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
    #' Deserialize JSON string into an instance of SentimentTagsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentTagsResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`project_id`)) {
        self$`project_id` <- this_object$`project_id`
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
      if (!is.null(this_object$`request_id`)) {
        self$`request_id` <- this_object$`request_id`
      }
      if (!is.null(this_object$`from`)) {
        self$`from` <- this_object$`from`
      }
      if (!is.null(this_object$`to`)) {
        self$`to` <- this_object$`to`
      }
      if (!is.null(this_object$`brand`)) {
        `brand_object` <- SentimentBreakdownBrand$new()
        `brand_object`$fromJSON(jsonlite::toJSON(this_object$`brand`, auto_unbox = TRUE, digits = NA))
        self$`brand` <- `brand_object`
      }
      if (!is.null(this_object$`sort`)) {
        self$`sort` <- this_object$`sort`
      }
      if (!is.null(this_object$`sort_dir`)) {
        self$`sort_dir` <- this_object$`sort_dir`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[SentimentTagRow]", loadNamespace("llmpulse"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SentimentTagsResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SentimentTagsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SentimentTagsResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`project_id` <- this_object$`project_id`
      self$`page` <- this_object$`page`
      self$`per_page` <- this_object$`per_page`
      self$`total` <- this_object$`total`
      self$`request_id` <- this_object$`request_id`
      self$`from` <- this_object$`from`
      self$`to` <- this_object$`to`
      self$`brand` <- SentimentBreakdownBrand$new()$fromJSON(jsonlite::toJSON(this_object$`brand`, auto_unbox = TRUE, digits = NA))
      self$`sort` <- this_object$`sort`
      self$`sort_dir` <- this_object$`sort_dir`
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[SentimentTagRow]", loadNamespace("llmpulse"))
      self
    },

    #' @description
    #' Validate JSON input with respect to SentimentTagsResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagsResponse: the required field `project_id` is missing."))
      }
      # check the required field `page`
      if (!is.null(input_json$`page`)) {
        if (!(is.numeric(input_json$`page`) && length(input_json$`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", input_json$`page`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagsResponse: the required field `page` is missing."))
      }
      # check the required field `per_page`
      if (!is.null(input_json$`per_page`)) {
        if (!(is.numeric(input_json$`per_page`) && length(input_json$`per_page`) == 1)) {
          stop(paste("Error! Invalid data for `per_page`. Must be an integer:", input_json$`per_page`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagsResponse: the required field `per_page` is missing."))
      }
      # check the required field `total`
      if (!is.null(input_json$`total`)) {
        if (!(is.numeric(input_json$`total`) && length(input_json$`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", input_json$`total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagsResponse: the required field `total` is missing."))
      }
      # check the required field `request_id`
      if (!is.null(input_json$`request_id`)) {
        if (!(is.character(input_json$`request_id`) && length(input_json$`request_id`) == 1)) {
          stop(paste("Error! Invalid data for `request_id`. Must be a string:", input_json$`request_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagsResponse: the required field `request_id` is missing."))
      }
      # check the required field `from`
      if (!is.null(input_json$`from`)) {
        if (!(is.character(input_json$`from`) && length(input_json$`from`) == 1)) {
          stop(paste("Error! Invalid data for `from`. Must be a string:", input_json$`from`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagsResponse: the required field `from` is missing."))
      }
      # check the required field `to`
      if (!is.null(input_json$`to`)) {
        if (!(is.character(input_json$`to`) && length(input_json$`to`) == 1)) {
          stop(paste("Error! Invalid data for `to`. Must be a string:", input_json$`to`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagsResponse: the required field `to` is missing."))
      }
      # check the required field `brand`
      if (!is.null(input_json$`brand`)) {
        stopifnot(R6::is.R6(input_json$`brand`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagsResponse: the required field `brand` is missing."))
      }
      # check the required field `sort`
      if (!is.null(input_json$`sort`)) {
        if (!(is.character(input_json$`sort`) && length(input_json$`sort`) == 1)) {
          stop(paste("Error! Invalid data for `sort`. Must be a string:", input_json$`sort`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagsResponse: the required field `sort` is missing."))
      }
      # check the required field `sort_dir`
      if (!is.null(input_json$`sort_dir`)) {
        if (!(is.character(input_json$`sort_dir`) && length(input_json$`sort_dir`) == 1)) {
          stop(paste("Error! Invalid data for `sort_dir`. Must be a string:", input_json$`sort_dir`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagsResponse: the required field `sort_dir` is missing."))
      }
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(is.vector(input_json$`data`), length(input_json$`data`) != 0)
        tmp <- sapply(input_json$`data`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SentimentTagsResponse: the required field `data` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SentimentTagsResponse
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

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
        return(FALSE)
      }

      # check if the required `from` is null
      if (is.null(self$`from`)) {
        return(FALSE)
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        return(FALSE)
      }

      # check if the required `brand` is null
      if (is.null(self$`brand`)) {
        return(FALSE)
      }

      # check if the required `sort` is null
      if (is.null(self$`sort`)) {
        return(FALSE)
      }

      # check if the required `sort_dir` is null
      if (is.null(self$`sort_dir`)) {
        return(FALSE)
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
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

      # check if the required `request_id` is null
      if (is.null(self$`request_id`)) {
        invalid_fields["request_id"] <- "Non-nullable required field `request_id` cannot be null."
      }

      # check if the required `from` is null
      if (is.null(self$`from`)) {
        invalid_fields["from"] <- "Non-nullable required field `from` cannot be null."
      }

      # check if the required `to` is null
      if (is.null(self$`to`)) {
        invalid_fields["to"] <- "Non-nullable required field `to` cannot be null."
      }

      # check if the required `brand` is null
      if (is.null(self$`brand`)) {
        invalid_fields["brand"] <- "Non-nullable required field `brand` cannot be null."
      }

      # check if the required `sort` is null
      if (is.null(self$`sort`)) {
        invalid_fields["sort"] <- "Non-nullable required field `sort` cannot be null."
      }

      # check if the required `sort_dir` is null
      if (is.null(self$`sort_dir`)) {
        invalid_fields["sort_dir"] <- "Non-nullable required field `sort_dir` cannot be null."
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
        invalid_fields["data"] <- "Non-nullable required field `data` cannot be null."
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
# SentimentTagsResponse$unlock()
#
## Below is an example to define the print function
# SentimentTagsResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SentimentTagsResponse$lock()

