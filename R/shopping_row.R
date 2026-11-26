#' Create a new ShoppingRow
#'
#' @description
#' One row of /dimensions/shopping. Fields depend on view: products (product_key, title, domain, url, merchants, currency, currency_count, min_price, max_price, avg_rating, rating_votes, appearances, is_client, best_rank, models, last_seen_at) and merchants (merchant, appearances, products, currency, min_price, max_price, avg_price, avg_rating).
#'
#' @docType class
#' @title ShoppingRow
#' @description ShoppingRow Class
#' @format An \code{R6Class} generator object
#' @field product_key Stable grouping key of the product: its external id, else title: and the lowercased title (view=products) character [optional]
#' @field title  character [optional]
#' @field domain  character [optional]
#' @field url  character [optional]
#' @field merchants The merchants the product card names (view=products) character [optional]
#' @field merchant The merchant (view=merchants) character [optional]
#' @field products Distinct products the merchant sold (view=merchants) integer [optional]
#' @field currency Currency code the prices are in; null when no price names one character
#' @field currency_count Currencies the product was priced in; above 1 the row reports its highest-priced listing (view=products) integer [optional]
#' @field min_price  numeric
#' @field max_price  numeric
#' @field avg_price Average price in currency (view=merchants) numeric [optional]
#' @field avg_rating  numeric
#' @field rating_votes Most rating votes any listing of the product showed (view=products) integer [optional]
#' @field appearances  integer
#' @field is_client Whether the product is identified as your brand's own (view=products) character [optional]
#' @field best_rank Best rank the product got in a card list (view=products) integer [optional]
#' @field models Models that showed the product (view=products) list(character) [optional]
#' @field last_seen_at The latest answer that showed the product (view=products) character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ShoppingRow <- R6::R6Class(
  "ShoppingRow",
  public = list(
    `product_key` = NULL,
    `title` = NULL,
    `domain` = NULL,
    `url` = NULL,
    `merchants` = NULL,
    `merchant` = NULL,
    `products` = NULL,
    `currency` = NULL,
    `currency_count` = NULL,
    `min_price` = NULL,
    `max_price` = NULL,
    `avg_price` = NULL,
    `avg_rating` = NULL,
    `rating_votes` = NULL,
    `appearances` = NULL,
    `is_client` = NULL,
    `best_rank` = NULL,
    `models` = NULL,
    `last_seen_at` = NULL,

    #' @description
    #' Initialize a new ShoppingRow class.
    #'
    #' @param currency Currency code the prices are in; null when no price names one
    #' @param min_price min_price
    #' @param max_price max_price
    #' @param avg_rating avg_rating
    #' @param appearances appearances
    #' @param product_key Stable grouping key of the product: its external id, else title: and the lowercased title (view=products)
    #' @param title title
    #' @param domain domain
    #' @param url url
    #' @param merchants The merchants the product card names (view=products)
    #' @param merchant The merchant (view=merchants)
    #' @param products Distinct products the merchant sold (view=merchants)
    #' @param currency_count Currencies the product was priced in; above 1 the row reports its highest-priced listing (view=products)
    #' @param avg_price Average price in currency (view=merchants)
    #' @param rating_votes Most rating votes any listing of the product showed (view=products)
    #' @param is_client Whether the product is identified as your brand's own (view=products)
    #' @param best_rank Best rank the product got in a card list (view=products)
    #' @param models Models that showed the product (view=products)
    #' @param last_seen_at The latest answer that showed the product (view=products)
    #' @param ... Other optional arguments.
    initialize = function(`currency`, `min_price`, `max_price`, `avg_rating`, `appearances`, `product_key` = NULL, `title` = NULL, `domain` = NULL, `url` = NULL, `merchants` = NULL, `merchant` = NULL, `products` = NULL, `currency_count` = NULL, `avg_price` = NULL, `rating_votes` = NULL, `is_client` = NULL, `best_rank` = NULL, `models` = NULL, `last_seen_at` = NULL, ...) {
      if (!missing(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!missing(`min_price`)) {
        self$`min_price` <- `min_price`
      }
      if (!missing(`max_price`)) {
        self$`max_price` <- `max_price`
      }
      if (!missing(`avg_rating`)) {
        self$`avg_rating` <- `avg_rating`
      }
      if (!missing(`appearances`)) {
        if (!(is.numeric(`appearances`) && length(`appearances`) == 1)) {
          stop(paste("Error! Invalid data for `appearances`. Must be an integer:", `appearances`))
        }
        self$`appearances` <- `appearances`
      }
      if (!is.null(`product_key`)) {
        if (!(is.character(`product_key`) && length(`product_key`) == 1)) {
          stop(paste("Error! Invalid data for `product_key`. Must be a string:", `product_key`))
        }
        self$`product_key` <- `product_key`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
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
      if (!is.null(`merchants`)) {
        if (!(is.character(`merchants`) && length(`merchants`) == 1)) {
          stop(paste("Error! Invalid data for `merchants`. Must be a string:", `merchants`))
        }
        self$`merchants` <- `merchants`
      }
      if (!is.null(`merchant`)) {
        if (!(is.character(`merchant`) && length(`merchant`) == 1)) {
          stop(paste("Error! Invalid data for `merchant`. Must be a string:", `merchant`))
        }
        self$`merchant` <- `merchant`
      }
      if (!is.null(`products`)) {
        if (!(is.numeric(`products`) && length(`products`) == 1)) {
          stop(paste("Error! Invalid data for `products`. Must be an integer:", `products`))
        }
        self$`products` <- `products`
      }
      if (!is.null(`currency_count`)) {
        if (!(is.numeric(`currency_count`) && length(`currency_count`) == 1)) {
          stop(paste("Error! Invalid data for `currency_count`. Must be an integer:", `currency_count`))
        }
        self$`currency_count` <- `currency_count`
      }
      if (!is.null(`avg_price`)) {
        self$`avg_price` <- `avg_price`
      }
      if (!is.null(`rating_votes`)) {
        if (!(is.numeric(`rating_votes`) && length(`rating_votes`) == 1)) {
          stop(paste("Error! Invalid data for `rating_votes`. Must be an integer:", `rating_votes`))
        }
        self$`rating_votes` <- `rating_votes`
      }
      if (!is.null(`is_client`)) {
        if (!(is.logical(`is_client`) && length(`is_client`) == 1)) {
          stop(paste("Error! Invalid data for `is_client`. Must be a boolean:", `is_client`))
        }
        self$`is_client` <- `is_client`
      }
      if (!is.null(`best_rank`)) {
        if (!(is.numeric(`best_rank`) && length(`best_rank`) == 1)) {
          stop(paste("Error! Invalid data for `best_rank`. Must be an integer:", `best_rank`))
        }
        self$`best_rank` <- `best_rank`
      }
      if (!is.null(`models`)) {
        stopifnot(is.vector(`models`), length(`models`) != 0)
        sapply(`models`, function(x) stopifnot(is.character(x)))
        self$`models` <- `models`
      }
      if (!is.null(`last_seen_at`)) {
        if (!is.character(`last_seen_at`)) {
          stop(paste("Error! Invalid data for `last_seen_at`. Must be a string:", `last_seen_at`))
        }
        self$`last_seen_at` <- `last_seen_at`
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
    #' @return ShoppingRow as a base R list.
    #' @examples
    #' # convert array of ShoppingRow (x) to a data frame
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
    #' Convert ShoppingRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ShoppingRowObject <- list()
      if (!is.null(self$`product_key`)) {
        ShoppingRowObject[["product_key"]] <-
          self$`product_key`
      }
      if (!is.null(self$`title`)) {
        ShoppingRowObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`domain`)) {
        ShoppingRowObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`url`)) {
        ShoppingRowObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`merchants`)) {
        ShoppingRowObject[["merchants"]] <-
          self$`merchants`
      }
      if (!is.null(self$`merchant`)) {
        ShoppingRowObject[["merchant"]] <-
          self$`merchant`
      }
      if (!is.null(self$`products`)) {
        ShoppingRowObject[["products"]] <-
          self$`products`
      }
      if (!is.null(self$`currency`)) {
        ShoppingRowObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`currency_count`)) {
        ShoppingRowObject[["currency_count"]] <-
          self$`currency_count`
      }
      if (!is.null(self$`min_price`)) {
        ShoppingRowObject[["min_price"]] <-
          self$`min_price`
      }
      if (!is.null(self$`max_price`)) {
        ShoppingRowObject[["max_price"]] <-
          self$`max_price`
      }
      if (!is.null(self$`avg_price`)) {
        ShoppingRowObject[["avg_price"]] <-
          self$`avg_price`
      }
      if (!is.null(self$`avg_rating`)) {
        ShoppingRowObject[["avg_rating"]] <-
          self$`avg_rating`
      }
      if (!is.null(self$`rating_votes`)) {
        ShoppingRowObject[["rating_votes"]] <-
          self$`rating_votes`
      }
      if (!is.null(self$`appearances`)) {
        ShoppingRowObject[["appearances"]] <-
          self$`appearances`
      }
      if (!is.null(self$`is_client`)) {
        ShoppingRowObject[["is_client"]] <-
          self$`is_client`
      }
      if (!is.null(self$`best_rank`)) {
        ShoppingRowObject[["best_rank"]] <-
          self$`best_rank`
      }
      if (!is.null(self$`models`)) {
        ShoppingRowObject[["models"]] <-
          self$`models`
      }
      if (!is.null(self$`last_seen_at`)) {
        ShoppingRowObject[["last_seen_at"]] <-
          self$`last_seen_at`
      }
      return(ShoppingRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ShoppingRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShoppingRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`product_key`)) {
        self$`product_key` <- this_object$`product_key`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`merchants`)) {
        self$`merchants` <- this_object$`merchants`
      }
      if (!is.null(this_object$`merchant`)) {
        self$`merchant` <- this_object$`merchant`
      }
      if (!is.null(this_object$`products`)) {
        self$`products` <- this_object$`products`
      }
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`currency_count`)) {
        self$`currency_count` <- this_object$`currency_count`
      }
      if (!is.null(this_object$`min_price`)) {
        self$`min_price` <- this_object$`min_price`
      }
      if (!is.null(this_object$`max_price`)) {
        self$`max_price` <- this_object$`max_price`
      }
      if (!is.null(this_object$`avg_price`)) {
        self$`avg_price` <- this_object$`avg_price`
      }
      if (!is.null(this_object$`avg_rating`)) {
        self$`avg_rating` <- this_object$`avg_rating`
      }
      if (!is.null(this_object$`rating_votes`)) {
        self$`rating_votes` <- this_object$`rating_votes`
      }
      if (!is.null(this_object$`appearances`)) {
        self$`appearances` <- this_object$`appearances`
      }
      if (!is.null(this_object$`is_client`)) {
        self$`is_client` <- this_object$`is_client`
      }
      if (!is.null(this_object$`best_rank`)) {
        self$`best_rank` <- this_object$`best_rank`
      }
      if (!is.null(this_object$`models`)) {
        self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`last_seen_at`)) {
        self$`last_seen_at` <- this_object$`last_seen_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ShoppingRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ShoppingRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShoppingRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`product_key` <- this_object$`product_key`
      self$`title` <- this_object$`title`
      self$`domain` <- this_object$`domain`
      self$`url` <- this_object$`url`
      self$`merchants` <- this_object$`merchants`
      self$`merchant` <- this_object$`merchant`
      self$`products` <- this_object$`products`
      self$`currency` <- this_object$`currency`
      self$`currency_count` <- this_object$`currency_count`
      self$`min_price` <- this_object$`min_price`
      self$`max_price` <- this_object$`max_price`
      self$`avg_price` <- this_object$`avg_price`
      self$`avg_rating` <- this_object$`avg_rating`
      self$`rating_votes` <- this_object$`rating_votes`
      self$`appearances` <- this_object$`appearances`
      self$`is_client` <- this_object$`is_client`
      self$`best_rank` <- this_object$`best_rank`
      self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[character]", loadNamespace("llmpulse"))
      self$`last_seen_at` <- this_object$`last_seen_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to ShoppingRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `currency`
      if (!is.null(input_json$`currency`)) {
        if (!(is.character(input_json$`currency`) && length(input_json$`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", input_json$`currency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShoppingRow: the required field `currency` is missing."))
      }
      # check the required field `min_price`
      if (!is.null(input_json$`min_price`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShoppingRow: the required field `min_price` is missing."))
      }
      # check the required field `max_price`
      if (!is.null(input_json$`max_price`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShoppingRow: the required field `max_price` is missing."))
      }
      # check the required field `avg_rating`
      if (!is.null(input_json$`avg_rating`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShoppingRow: the required field `avg_rating` is missing."))
      }
      # check the required field `appearances`
      if (!is.null(input_json$`appearances`)) {
        if (!(is.numeric(input_json$`appearances`) && length(input_json$`appearances`) == 1)) {
          stop(paste("Error! Invalid data for `appearances`. Must be an integer:", input_json$`appearances`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShoppingRow: the required field `appearances` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ShoppingRow
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `appearances` is null
      if (is.null(self$`appearances`)) {
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
      # check if the required `appearances` is null
      if (is.null(self$`appearances`)) {
        invalid_fields["appearances"] <- "Non-nullable required field `appearances` cannot be null."
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
# ShoppingRow$unlock()
#
## Below is an example to define the print function
# ShoppingRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ShoppingRow$lock()

