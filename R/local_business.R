#' Create a new LocalBusiness
#'
#' @description
#' LocalBusiness Class
#'
#' @docType class
#' @title LocalBusiness
#' @description LocalBusiness Class
#' @format An \code{R6Class} generator object
#' @field business_key Stable grouping key: the lowercased name and address character [optional]
#' @field title  character [optional]
#' @field address  character [optional]
#' @field domain  character [optional]
#' @field url  character [optional]
#' @field phone  character [optional]
#' @field avg_rating  numeric [optional]
#' @field reviews  integer [optional]
#' @field avg_position Average rank of the business in the answer's list (1 = first) numeric [optional]
#' @field prompts  integer [optional]
#' @field appearances  integer [optional]
#' @field is_client  character [optional]
#' @field competitor_id  integer [optional]
#' @field competitor_name  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LocalBusiness <- R6::R6Class(
  "LocalBusiness",
  public = list(
    `business_key` = NULL,
    `title` = NULL,
    `address` = NULL,
    `domain` = NULL,
    `url` = NULL,
    `phone` = NULL,
    `avg_rating` = NULL,
    `reviews` = NULL,
    `avg_position` = NULL,
    `prompts` = NULL,
    `appearances` = NULL,
    `is_client` = NULL,
    `competitor_id` = NULL,
    `competitor_name` = NULL,

    #' @description
    #' Initialize a new LocalBusiness class.
    #'
    #' @param business_key Stable grouping key: the lowercased name and address
    #' @param title title
    #' @param address address
    #' @param domain domain
    #' @param url url
    #' @param phone phone
    #' @param avg_rating avg_rating
    #' @param reviews reviews
    #' @param avg_position Average rank of the business in the answer's list (1 = first)
    #' @param prompts prompts
    #' @param appearances appearances
    #' @param is_client is_client
    #' @param competitor_id competitor_id
    #' @param competitor_name competitor_name
    #' @param ... Other optional arguments.
    initialize = function(`business_key` = NULL, `title` = NULL, `address` = NULL, `domain` = NULL, `url` = NULL, `phone` = NULL, `avg_rating` = NULL, `reviews` = NULL, `avg_position` = NULL, `prompts` = NULL, `appearances` = NULL, `is_client` = NULL, `competitor_id` = NULL, `competitor_name` = NULL, ...) {
      if (!is.null(`business_key`)) {
        if (!(is.character(`business_key`) && length(`business_key`) == 1)) {
          stop(paste("Error! Invalid data for `business_key`. Must be a string:", `business_key`))
        }
        self$`business_key` <- `business_key`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`address`)) {
        if (!(is.character(`address`) && length(`address`) == 1)) {
          stop(paste("Error! Invalid data for `address`. Must be a string:", `address`))
        }
        self$`address` <- `address`
      }
      if (!is.null(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`phone`)) {
        if (!(is.character(`phone`) && length(`phone`) == 1)) {
          stop(paste("Error! Invalid data for `phone`. Must be a string:", `phone`))
        }
        self$`phone` <- `phone`
      }
      if (!is.null(`avg_rating`)) {
        self$`avg_rating` <- `avg_rating`
      }
      if (!is.null(`reviews`)) {
        if (!(is.numeric(`reviews`) && length(`reviews`) == 1)) {
          stop(paste("Error! Invalid data for `reviews`. Must be an integer:", `reviews`))
        }
        self$`reviews` <- `reviews`
      }
      if (!is.null(`avg_position`)) {
        self$`avg_position` <- `avg_position`
      }
      if (!is.null(`prompts`)) {
        if (!(is.numeric(`prompts`) && length(`prompts`) == 1)) {
          stop(paste("Error! Invalid data for `prompts`. Must be an integer:", `prompts`))
        }
        self$`prompts` <- `prompts`
      }
      if (!is.null(`appearances`)) {
        if (!(is.numeric(`appearances`) && length(`appearances`) == 1)) {
          stop(paste("Error! Invalid data for `appearances`. Must be an integer:", `appearances`))
        }
        self$`appearances` <- `appearances`
      }
      if (!is.null(`is_client`)) {
        if (!(is.logical(`is_client`) && length(`is_client`) == 1)) {
          stop(paste("Error! Invalid data for `is_client`. Must be a boolean:", `is_client`))
        }
        self$`is_client` <- `is_client`
      }
      if (!is.null(`competitor_id`)) {
        if (!(is.numeric(`competitor_id`) && length(`competitor_id`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_id`. Must be an integer:", `competitor_id`))
        }
        self$`competitor_id` <- `competitor_id`
      }
      if (!is.null(`competitor_name`)) {
        if (!(is.character(`competitor_name`) && length(`competitor_name`) == 1)) {
          stop(paste("Error! Invalid data for `competitor_name`. Must be a string:", `competitor_name`))
        }
        self$`competitor_name` <- `competitor_name`
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
    #' @return LocalBusiness as a base R list.
    #' @examples
    #' # convert array of LocalBusiness (x) to a data frame
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
    #' Convert LocalBusiness to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LocalBusinessObject <- list()
      if (!is.null(self$`business_key`)) {
        LocalBusinessObject[["business_key"]] <-
          self$`business_key`
      }
      if (!is.null(self$`title`)) {
        LocalBusinessObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`address`)) {
        LocalBusinessObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`domain`)) {
        LocalBusinessObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`url`)) {
        LocalBusinessObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`phone`)) {
        LocalBusinessObject[["phone"]] <-
          self$`phone`
      }
      if (!is.null(self$`avg_rating`)) {
        LocalBusinessObject[["avg_rating"]] <-
          self$`avg_rating`
      }
      if (!is.null(self$`reviews`)) {
        LocalBusinessObject[["reviews"]] <-
          self$`reviews`
      }
      if (!is.null(self$`avg_position`)) {
        LocalBusinessObject[["avg_position"]] <-
          self$`avg_position`
      }
      if (!is.null(self$`prompts`)) {
        LocalBusinessObject[["prompts"]] <-
          self$`prompts`
      }
      if (!is.null(self$`appearances`)) {
        LocalBusinessObject[["appearances"]] <-
          self$`appearances`
      }
      if (!is.null(self$`is_client`)) {
        LocalBusinessObject[["is_client"]] <-
          self$`is_client`
      }
      if (!is.null(self$`competitor_id`)) {
        LocalBusinessObject[["competitor_id"]] <-
          self$`competitor_id`
      }
      if (!is.null(self$`competitor_name`)) {
        LocalBusinessObject[["competitor_name"]] <-
          self$`competitor_name`
      }
      return(LocalBusinessObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LocalBusiness
    #'
    #' @param input_json the JSON input
    #' @return the instance of LocalBusiness
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`business_key`)) {
        self$`business_key` <- this_object$`business_key`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`address`)) {
        self$`address` <- this_object$`address`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`phone`)) {
        self$`phone` <- this_object$`phone`
      }
      if (!is.null(this_object$`avg_rating`)) {
        self$`avg_rating` <- this_object$`avg_rating`
      }
      if (!is.null(this_object$`reviews`)) {
        self$`reviews` <- this_object$`reviews`
      }
      if (!is.null(this_object$`avg_position`)) {
        self$`avg_position` <- this_object$`avg_position`
      }
      if (!is.null(this_object$`prompts`)) {
        self$`prompts` <- this_object$`prompts`
      }
      if (!is.null(this_object$`appearances`)) {
        self$`appearances` <- this_object$`appearances`
      }
      if (!is.null(this_object$`is_client`)) {
        self$`is_client` <- this_object$`is_client`
      }
      if (!is.null(this_object$`competitor_id`)) {
        self$`competitor_id` <- this_object$`competitor_id`
      }
      if (!is.null(this_object$`competitor_name`)) {
        self$`competitor_name` <- this_object$`competitor_name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LocalBusiness in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LocalBusiness
    #'
    #' @param input_json the JSON input
    #' @return the instance of LocalBusiness
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`business_key` <- this_object$`business_key`
      self$`title` <- this_object$`title`
      self$`address` <- this_object$`address`
      self$`domain` <- this_object$`domain`
      self$`url` <- this_object$`url`
      self$`phone` <- this_object$`phone`
      self$`avg_rating` <- this_object$`avg_rating`
      self$`reviews` <- this_object$`reviews`
      self$`avg_position` <- this_object$`avg_position`
      self$`prompts` <- this_object$`prompts`
      self$`appearances` <- this_object$`appearances`
      self$`is_client` <- this_object$`is_client`
      self$`competitor_id` <- this_object$`competitor_id`
      self$`competitor_name` <- this_object$`competitor_name`
      self
    },

    #' @description
    #' Validate JSON input with respect to LocalBusiness and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LocalBusiness
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
# LocalBusiness$unlock()
#
## Below is an example to define the print function
# LocalBusiness$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LocalBusiness$lock()

