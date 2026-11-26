#' Create a new ShoppingTotals
#'
#' @description
#' ShoppingTotals Class
#'
#' @docType class
#' @title ShoppingTotals
#' @description ShoppingTotals Class
#' @format An \code{R6Class} generator object
#' @field products  integer
#' @field your_products  integer
#' @field merchants  integer
#' @field avg_price Average price in avg_price_currency numeric
#' @field avg_price_currency The currency most prices use character
#' @field avg_rating  numeric
#' @field executions_with_shopping  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ShoppingTotals <- R6::R6Class(
  "ShoppingTotals",
  public = list(
    `products` = NULL,
    `your_products` = NULL,
    `merchants` = NULL,
    `avg_price` = NULL,
    `avg_price_currency` = NULL,
    `avg_rating` = NULL,
    `executions_with_shopping` = NULL,

    #' @description
    #' Initialize a new ShoppingTotals class.
    #'
    #' @param products products
    #' @param your_products your_products
    #' @param merchants merchants
    #' @param avg_price Average price in avg_price_currency
    #' @param avg_price_currency The currency most prices use
    #' @param avg_rating avg_rating
    #' @param executions_with_shopping executions_with_shopping
    #' @param ... Other optional arguments.
    initialize = function(`products`, `your_products`, `merchants`, `avg_price`, `avg_price_currency`, `avg_rating`, `executions_with_shopping`, ...) {
      if (!missing(`products`)) {
        if (!(is.numeric(`products`) && length(`products`) == 1)) {
          stop(paste("Error! Invalid data for `products`. Must be an integer:", `products`))
        }
        self$`products` <- `products`
      }
      if (!missing(`your_products`)) {
        if (!(is.numeric(`your_products`) && length(`your_products`) == 1)) {
          stop(paste("Error! Invalid data for `your_products`. Must be an integer:", `your_products`))
        }
        self$`your_products` <- `your_products`
      }
      if (!missing(`merchants`)) {
        if (!(is.numeric(`merchants`) && length(`merchants`) == 1)) {
          stop(paste("Error! Invalid data for `merchants`. Must be an integer:", `merchants`))
        }
        self$`merchants` <- `merchants`
      }
      if (!missing(`avg_price`)) {
        self$`avg_price` <- `avg_price`
      }
      if (!missing(`avg_price_currency`)) {
        if (!(is.character(`avg_price_currency`) && length(`avg_price_currency`) == 1)) {
          stop(paste("Error! Invalid data for `avg_price_currency`. Must be a string:", `avg_price_currency`))
        }
        self$`avg_price_currency` <- `avg_price_currency`
      }
      if (!missing(`avg_rating`)) {
        self$`avg_rating` <- `avg_rating`
      }
      if (!missing(`executions_with_shopping`)) {
        if (!(is.numeric(`executions_with_shopping`) && length(`executions_with_shopping`) == 1)) {
          stop(paste("Error! Invalid data for `executions_with_shopping`. Must be an integer:", `executions_with_shopping`))
        }
        self$`executions_with_shopping` <- `executions_with_shopping`
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
    #' @return ShoppingTotals as a base R list.
    #' @examples
    #' # convert array of ShoppingTotals (x) to a data frame
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
    #' Convert ShoppingTotals to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ShoppingTotalsObject <- list()
      if (!is.null(self$`products`)) {
        ShoppingTotalsObject[["products"]] <-
          self$`products`
      }
      if (!is.null(self$`your_products`)) {
        ShoppingTotalsObject[["your_products"]] <-
          self$`your_products`
      }
      if (!is.null(self$`merchants`)) {
        ShoppingTotalsObject[["merchants"]] <-
          self$`merchants`
      }
      if (!is.null(self$`avg_price`)) {
        ShoppingTotalsObject[["avg_price"]] <-
          self$`avg_price`
      }
      if (!is.null(self$`avg_price_currency`)) {
        ShoppingTotalsObject[["avg_price_currency"]] <-
          self$`avg_price_currency`
      }
      if (!is.null(self$`avg_rating`)) {
        ShoppingTotalsObject[["avg_rating"]] <-
          self$`avg_rating`
      }
      if (!is.null(self$`executions_with_shopping`)) {
        ShoppingTotalsObject[["executions_with_shopping"]] <-
          self$`executions_with_shopping`
      }
      return(ShoppingTotalsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ShoppingTotals
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShoppingTotals
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`products`)) {
        self$`products` <- this_object$`products`
      }
      if (!is.null(this_object$`your_products`)) {
        self$`your_products` <- this_object$`your_products`
      }
      if (!is.null(this_object$`merchants`)) {
        self$`merchants` <- this_object$`merchants`
      }
      if (!is.null(this_object$`avg_price`)) {
        self$`avg_price` <- this_object$`avg_price`
      }
      if (!is.null(this_object$`avg_price_currency`)) {
        self$`avg_price_currency` <- this_object$`avg_price_currency`
      }
      if (!is.null(this_object$`avg_rating`)) {
        self$`avg_rating` <- this_object$`avg_rating`
      }
      if (!is.null(this_object$`executions_with_shopping`)) {
        self$`executions_with_shopping` <- this_object$`executions_with_shopping`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ShoppingTotals in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ShoppingTotals
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShoppingTotals
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`products` <- this_object$`products`
      self$`your_products` <- this_object$`your_products`
      self$`merchants` <- this_object$`merchants`
      self$`avg_price` <- this_object$`avg_price`
      self$`avg_price_currency` <- this_object$`avg_price_currency`
      self$`avg_rating` <- this_object$`avg_rating`
      self$`executions_with_shopping` <- this_object$`executions_with_shopping`
      self
    },

    #' @description
    #' Validate JSON input with respect to ShoppingTotals and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `products`
      if (!is.null(input_json$`products`)) {
        if (!(is.numeric(input_json$`products`) && length(input_json$`products`) == 1)) {
          stop(paste("Error! Invalid data for `products`. Must be an integer:", input_json$`products`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShoppingTotals: the required field `products` is missing."))
      }
      # check the required field `your_products`
      if (!is.null(input_json$`your_products`)) {
        if (!(is.numeric(input_json$`your_products`) && length(input_json$`your_products`) == 1)) {
          stop(paste("Error! Invalid data for `your_products`. Must be an integer:", input_json$`your_products`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShoppingTotals: the required field `your_products` is missing."))
      }
      # check the required field `merchants`
      if (!is.null(input_json$`merchants`)) {
        if (!(is.numeric(input_json$`merchants`) && length(input_json$`merchants`) == 1)) {
          stop(paste("Error! Invalid data for `merchants`. Must be an integer:", input_json$`merchants`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShoppingTotals: the required field `merchants` is missing."))
      }
      # check the required field `avg_price`
      if (!is.null(input_json$`avg_price`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShoppingTotals: the required field `avg_price` is missing."))
      }
      # check the required field `avg_price_currency`
      if (!is.null(input_json$`avg_price_currency`)) {
        if (!(is.character(input_json$`avg_price_currency`) && length(input_json$`avg_price_currency`) == 1)) {
          stop(paste("Error! Invalid data for `avg_price_currency`. Must be a string:", input_json$`avg_price_currency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShoppingTotals: the required field `avg_price_currency` is missing."))
      }
      # check the required field `avg_rating`
      if (!is.null(input_json$`avg_rating`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShoppingTotals: the required field `avg_rating` is missing."))
      }
      # check the required field `executions_with_shopping`
      if (!is.null(input_json$`executions_with_shopping`)) {
        if (!(is.numeric(input_json$`executions_with_shopping`) && length(input_json$`executions_with_shopping`) == 1)) {
          stop(paste("Error! Invalid data for `executions_with_shopping`. Must be an integer:", input_json$`executions_with_shopping`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShoppingTotals: the required field `executions_with_shopping` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ShoppingTotals
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `products` is null
      if (is.null(self$`products`)) {
        return(FALSE)
      }

      # check if the required `your_products` is null
      if (is.null(self$`your_products`)) {
        return(FALSE)
      }

      # check if the required `merchants` is null
      if (is.null(self$`merchants`)) {
        return(FALSE)
      }

      # check if the required `executions_with_shopping` is null
      if (is.null(self$`executions_with_shopping`)) {
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
      # check if the required `products` is null
      if (is.null(self$`products`)) {
        invalid_fields["products"] <- "Non-nullable required field `products` cannot be null."
      }

      # check if the required `your_products` is null
      if (is.null(self$`your_products`)) {
        invalid_fields["your_products"] <- "Non-nullable required field `your_products` cannot be null."
      }

      # check if the required `merchants` is null
      if (is.null(self$`merchants`)) {
        invalid_fields["merchants"] <- "Non-nullable required field `merchants` cannot be null."
      }

      # check if the required `executions_with_shopping` is null
      if (is.null(self$`executions_with_shopping`)) {
        invalid_fields["executions_with_shopping"] <- "Non-nullable required field `executions_with_shopping` cannot be null."
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
# ShoppingTotals$unlock()
#
## Below is an example to define the print function
# ShoppingTotals$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ShoppingTotals$lock()

