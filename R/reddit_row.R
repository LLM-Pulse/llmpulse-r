#' Create a new RedditRow
#'
#' @description
#' One row of /dimensions/reddit. Fields depend on view: subreddits (subreddit, citations, unique_authors, positive, negative, neutral, positive_pct, negative_pct, yours, url), authors (author, citations, subreddits, extra_subreddits, leaning, positive, negative, neutral, brands, yours, url), threads (url, title, subreddit, author, subreddit_yours, author_yours, yours, citations, latest_cited_at, upvotes, comments, avg_position, sentiment, archived, posted_at) and breakdowns (breakdown, key, count, pct).
#'
#' @docType class
#' @title RedditRow
#' @description RedditRow Class
#' @format An \code{R6Class} generator object
#' @field subreddit Subreddit name without the r/ prefix; null on a thread whose subreddit is unknown character [optional]
#' @field author Reddit username; null on a thread whose author is unknown character [optional]
#' @field url The subreddit, author profile or thread URL character [optional]
#' @field title Thread title, read from the post or its URL (view=threads) character [optional]
#' @field citations Reddit citations of the row in the window integer [optional]
#' @field unique_authors Distinct authors cited in the subreddit (view=subreddits) integer [optional]
#' @field positive Citations in answers with a positive or very positive sentiment integer [optional]
#' @field negative Citations in answers with a negative or very negative sentiment integer [optional]
#' @field neutral Citations in answers with a neutral sentiment integer [optional]
#' @field positive_pct positive over the rated citations, 0-100; null when none is rated (view=subreddits) numeric [optional]
#' @field negative_pct negative over the rated citations, 0-100; null when none is rated (view=subreddits) numeric [optional]
#' @field yours Whether the account claims the subreddit or author as its own (on threads, either of them) character [optional]
#' @field subreddits The first subreddits the author was cited in (view=authors) list(character) [optional]
#' @field extra_subreddits Further subreddits the author was cited in, beyond those listed (view=authors) integer [optional]
#' @field leaning positive, negative or neutral, whichever sentiment has more of the author's citations (view=authors) character [optional]
#' @field brands Brands the content of the author's cited posts names, your own first (view=authors) list(\link{RedditAuthorBrand}) [optional]
#' @field subreddit_yours Whether the account claims the thread's subreddit (view=threads) character [optional]
#' @field author_yours Whether the account claims the thread's author (view=threads) character [optional]
#' @field latest_cited_at The thread's most recent citation (view=threads) character [optional]
#' @field upvotes Upvotes as the scraped post reports them, a number or a numeric string, or null when unknown (view=threads) object [optional]
#' @field comments Comment count as the scraped post reports it, a number or a numeric string, or null when unknown (view=threads) object [optional]
#' @field avg_position Average rank of the thread's citations, 1 = first; null when no citation has a visible rank (view=threads) numeric [optional]
#' @field sentiment The most frequent sentiment of the answers that cite the thread; null when none is rated (view=threads) character [optional]
#' @field archived Whether the thread is archived as the scraped post reports it, usually a boolean, or null when unknown (view=threads) object [optional]
#' @field posted_at When the thread was posted; null when unknown (view=threads) character [optional]
#' @field breakdown sentiment, model or country (view=breakdowns) character [optional]
#' @field key The slice, a sentiment label, a model or an uppercase country code (view=breakdowns) character [optional]
#' @field count Reddit citations in the slice (view=breakdowns) integer [optional]
#' @field pct Share of the slice within its breakdown, 0-100 (view=breakdowns) numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RedditRow <- R6::R6Class(
  "RedditRow",
  public = list(
    `subreddit` = NULL,
    `author` = NULL,
    `url` = NULL,
    `title` = NULL,
    `citations` = NULL,
    `unique_authors` = NULL,
    `positive` = NULL,
    `negative` = NULL,
    `neutral` = NULL,
    `positive_pct` = NULL,
    `negative_pct` = NULL,
    `yours` = NULL,
    `subreddits` = NULL,
    `extra_subreddits` = NULL,
    `leaning` = NULL,
    `brands` = NULL,
    `subreddit_yours` = NULL,
    `author_yours` = NULL,
    `latest_cited_at` = NULL,
    `upvotes` = NULL,
    `comments` = NULL,
    `avg_position` = NULL,
    `sentiment` = NULL,
    `archived` = NULL,
    `posted_at` = NULL,
    `breakdown` = NULL,
    `key` = NULL,
    `count` = NULL,
    `pct` = NULL,

    #' @description
    #' Initialize a new RedditRow class.
    #'
    #' @param subreddit Subreddit name without the r/ prefix; null on a thread whose subreddit is unknown
    #' @param author Reddit username; null on a thread whose author is unknown
    #' @param url The subreddit, author profile or thread URL
    #' @param title Thread title, read from the post or its URL (view=threads)
    #' @param citations Reddit citations of the row in the window
    #' @param unique_authors Distinct authors cited in the subreddit (view=subreddits)
    #' @param positive Citations in answers with a positive or very positive sentiment
    #' @param negative Citations in answers with a negative or very negative sentiment
    #' @param neutral Citations in answers with a neutral sentiment
    #' @param positive_pct positive over the rated citations, 0-100; null when none is rated (view=subreddits)
    #' @param negative_pct negative over the rated citations, 0-100; null when none is rated (view=subreddits)
    #' @param yours Whether the account claims the subreddit or author as its own (on threads, either of them)
    #' @param subreddits The first subreddits the author was cited in (view=authors)
    #' @param extra_subreddits Further subreddits the author was cited in, beyond those listed (view=authors)
    #' @param leaning positive, negative or neutral, whichever sentiment has more of the author's citations (view=authors)
    #' @param brands Brands the content of the author's cited posts names, your own first (view=authors)
    #' @param subreddit_yours Whether the account claims the thread's subreddit (view=threads)
    #' @param author_yours Whether the account claims the thread's author (view=threads)
    #' @param latest_cited_at The thread's most recent citation (view=threads)
    #' @param upvotes Upvotes as the scraped post reports them, a number or a numeric string, or null when unknown (view=threads)
    #' @param comments Comment count as the scraped post reports it, a number or a numeric string, or null when unknown (view=threads)
    #' @param avg_position Average rank of the thread's citations, 1 = first; null when no citation has a visible rank (view=threads)
    #' @param sentiment The most frequent sentiment of the answers that cite the thread; null when none is rated (view=threads)
    #' @param archived Whether the thread is archived as the scraped post reports it, usually a boolean, or null when unknown (view=threads)
    #' @param posted_at When the thread was posted; null when unknown (view=threads)
    #' @param breakdown sentiment, model or country (view=breakdowns)
    #' @param key The slice, a sentiment label, a model or an uppercase country code (view=breakdowns)
    #' @param count Reddit citations in the slice (view=breakdowns)
    #' @param pct Share of the slice within its breakdown, 0-100 (view=breakdowns)
    #' @param ... Other optional arguments.
    initialize = function(`subreddit` = NULL, `author` = NULL, `url` = NULL, `title` = NULL, `citations` = NULL, `unique_authors` = NULL, `positive` = NULL, `negative` = NULL, `neutral` = NULL, `positive_pct` = NULL, `negative_pct` = NULL, `yours` = NULL, `subreddits` = NULL, `extra_subreddits` = NULL, `leaning` = NULL, `brands` = NULL, `subreddit_yours` = NULL, `author_yours` = NULL, `latest_cited_at` = NULL, `upvotes` = NULL, `comments` = NULL, `avg_position` = NULL, `sentiment` = NULL, `archived` = NULL, `posted_at` = NULL, `breakdown` = NULL, `key` = NULL, `count` = NULL, `pct` = NULL, ...) {
      if (!is.null(`subreddit`)) {
        if (!(is.character(`subreddit`) && length(`subreddit`) == 1)) {
          stop(paste("Error! Invalid data for `subreddit`. Must be a string:", `subreddit`))
        }
        self$`subreddit` <- `subreddit`
      }
      if (!is.null(`author`)) {
        if (!(is.character(`author`) && length(`author`) == 1)) {
          stop(paste("Error! Invalid data for `author`. Must be a string:", `author`))
        }
        self$`author` <- `author`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`citations`)) {
        if (!(is.numeric(`citations`) && length(`citations`) == 1)) {
          stop(paste("Error! Invalid data for `citations`. Must be an integer:", `citations`))
        }
        self$`citations` <- `citations`
      }
      if (!is.null(`unique_authors`)) {
        if (!(is.numeric(`unique_authors`) && length(`unique_authors`) == 1)) {
          stop(paste("Error! Invalid data for `unique_authors`. Must be an integer:", `unique_authors`))
        }
        self$`unique_authors` <- `unique_authors`
      }
      if (!is.null(`positive`)) {
        if (!(is.numeric(`positive`) && length(`positive`) == 1)) {
          stop(paste("Error! Invalid data for `positive`. Must be an integer:", `positive`))
        }
        self$`positive` <- `positive`
      }
      if (!is.null(`negative`)) {
        if (!(is.numeric(`negative`) && length(`negative`) == 1)) {
          stop(paste("Error! Invalid data for `negative`. Must be an integer:", `negative`))
        }
        self$`negative` <- `negative`
      }
      if (!is.null(`neutral`)) {
        if (!(is.numeric(`neutral`) && length(`neutral`) == 1)) {
          stop(paste("Error! Invalid data for `neutral`. Must be an integer:", `neutral`))
        }
        self$`neutral` <- `neutral`
      }
      if (!is.null(`positive_pct`)) {
        self$`positive_pct` <- `positive_pct`
      }
      if (!is.null(`negative_pct`)) {
        self$`negative_pct` <- `negative_pct`
      }
      if (!is.null(`yours`)) {
        if (!(is.logical(`yours`) && length(`yours`) == 1)) {
          stop(paste("Error! Invalid data for `yours`. Must be a boolean:", `yours`))
        }
        self$`yours` <- `yours`
      }
      if (!is.null(`subreddits`)) {
        stopifnot(is.vector(`subreddits`), length(`subreddits`) != 0)
        sapply(`subreddits`, function(x) stopifnot(is.character(x)))
        self$`subreddits` <- `subreddits`
      }
      if (!is.null(`extra_subreddits`)) {
        if (!(is.numeric(`extra_subreddits`) && length(`extra_subreddits`) == 1)) {
          stop(paste("Error! Invalid data for `extra_subreddits`. Must be an integer:", `extra_subreddits`))
        }
        self$`extra_subreddits` <- `extra_subreddits`
      }
      if (!is.null(`leaning`)) {
        if (!(is.character(`leaning`) && length(`leaning`) == 1)) {
          stop(paste("Error! Invalid data for `leaning`. Must be a string:", `leaning`))
        }
        self$`leaning` <- `leaning`
      }
      if (!is.null(`brands`)) {
        stopifnot(is.vector(`brands`), length(`brands`) != 0)
        sapply(`brands`, function(x) stopifnot(R6::is.R6(x)))
        self$`brands` <- `brands`
      }
      if (!is.null(`subreddit_yours`)) {
        if (!(is.logical(`subreddit_yours`) && length(`subreddit_yours`) == 1)) {
          stop(paste("Error! Invalid data for `subreddit_yours`. Must be a boolean:", `subreddit_yours`))
        }
        self$`subreddit_yours` <- `subreddit_yours`
      }
      if (!is.null(`author_yours`)) {
        if (!(is.logical(`author_yours`) && length(`author_yours`) == 1)) {
          stop(paste("Error! Invalid data for `author_yours`. Must be a boolean:", `author_yours`))
        }
        self$`author_yours` <- `author_yours`
      }
      if (!is.null(`latest_cited_at`)) {
        if (!is.character(`latest_cited_at`)) {
          stop(paste("Error! Invalid data for `latest_cited_at`. Must be a string:", `latest_cited_at`))
        }
        self$`latest_cited_at` <- `latest_cited_at`
      }
      if (!is.null(`upvotes`)) {
        self$`upvotes` <- `upvotes`
      }
      if (!is.null(`comments`)) {
        self$`comments` <- `comments`
      }
      if (!is.null(`avg_position`)) {
        self$`avg_position` <- `avg_position`
      }
      if (!is.null(`sentiment`)) {
        if (!(is.character(`sentiment`) && length(`sentiment`) == 1)) {
          stop(paste("Error! Invalid data for `sentiment`. Must be a string:", `sentiment`))
        }
        self$`sentiment` <- `sentiment`
      }
      if (!is.null(`archived`)) {
        self$`archived` <- `archived`
      }
      if (!is.null(`posted_at`)) {
        if (!is.character(`posted_at`)) {
          stop(paste("Error! Invalid data for `posted_at`. Must be a string:", `posted_at`))
        }
        self$`posted_at` <- `posted_at`
      }
      if (!is.null(`breakdown`)) {
        if (!(is.character(`breakdown`) && length(`breakdown`) == 1)) {
          stop(paste("Error! Invalid data for `breakdown`. Must be a string:", `breakdown`))
        }
        self$`breakdown` <- `breakdown`
      }
      if (!is.null(`key`)) {
        if (!(is.character(`key`) && length(`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", `key`))
        }
        self$`key` <- `key`
      }
      if (!is.null(`count`)) {
        if (!(is.numeric(`count`) && length(`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", `count`))
        }
        self$`count` <- `count`
      }
      if (!is.null(`pct`)) {
        self$`pct` <- `pct`
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
    #' @return RedditRow as a base R list.
    #' @examples
    #' # convert array of RedditRow (x) to a data frame
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
    #' Convert RedditRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RedditRowObject <- list()
      if (!is.null(self$`subreddit`)) {
        RedditRowObject[["subreddit"]] <-
          self$`subreddit`
      }
      if (!is.null(self$`author`)) {
        RedditRowObject[["author"]] <-
          self$`author`
      }
      if (!is.null(self$`url`)) {
        RedditRowObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`title`)) {
        RedditRowObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`citations`)) {
        RedditRowObject[["citations"]] <-
          self$`citations`
      }
      if (!is.null(self$`unique_authors`)) {
        RedditRowObject[["unique_authors"]] <-
          self$`unique_authors`
      }
      if (!is.null(self$`positive`)) {
        RedditRowObject[["positive"]] <-
          self$`positive`
      }
      if (!is.null(self$`negative`)) {
        RedditRowObject[["negative"]] <-
          self$`negative`
      }
      if (!is.null(self$`neutral`)) {
        RedditRowObject[["neutral"]] <-
          self$`neutral`
      }
      if (!is.null(self$`positive_pct`)) {
        RedditRowObject[["positive_pct"]] <-
          self$`positive_pct`
      }
      if (!is.null(self$`negative_pct`)) {
        RedditRowObject[["negative_pct"]] <-
          self$`negative_pct`
      }
      if (!is.null(self$`yours`)) {
        RedditRowObject[["yours"]] <-
          self$`yours`
      }
      if (!is.null(self$`subreddits`)) {
        RedditRowObject[["subreddits"]] <-
          self$`subreddits`
      }
      if (!is.null(self$`extra_subreddits`)) {
        RedditRowObject[["extra_subreddits"]] <-
          self$`extra_subreddits`
      }
      if (!is.null(self$`leaning`)) {
        RedditRowObject[["leaning"]] <-
          self$`leaning`
      }
      if (!is.null(self$`brands`)) {
        RedditRowObject[["brands"]] <-
          self$extractSimpleType(self$`brands`)
      }
      if (!is.null(self$`subreddit_yours`)) {
        RedditRowObject[["subreddit_yours"]] <-
          self$`subreddit_yours`
      }
      if (!is.null(self$`author_yours`)) {
        RedditRowObject[["author_yours"]] <-
          self$`author_yours`
      }
      if (!is.null(self$`latest_cited_at`)) {
        RedditRowObject[["latest_cited_at"]] <-
          self$`latest_cited_at`
      }
      if (!is.null(self$`upvotes`)) {
        RedditRowObject[["upvotes"]] <-
          self$`upvotes`
      }
      if (!is.null(self$`comments`)) {
        RedditRowObject[["comments"]] <-
          self$`comments`
      }
      if (!is.null(self$`avg_position`)) {
        RedditRowObject[["avg_position"]] <-
          self$`avg_position`
      }
      if (!is.null(self$`sentiment`)) {
        RedditRowObject[["sentiment"]] <-
          self$`sentiment`
      }
      if (!is.null(self$`archived`)) {
        RedditRowObject[["archived"]] <-
          self$`archived`
      }
      if (!is.null(self$`posted_at`)) {
        RedditRowObject[["posted_at"]] <-
          self$`posted_at`
      }
      if (!is.null(self$`breakdown`)) {
        RedditRowObject[["breakdown"]] <-
          self$`breakdown`
      }
      if (!is.null(self$`key`)) {
        RedditRowObject[["key"]] <-
          self$`key`
      }
      if (!is.null(self$`count`)) {
        RedditRowObject[["count"]] <-
          self$`count`
      }
      if (!is.null(self$`pct`)) {
        RedditRowObject[["pct"]] <-
          self$`pct`
      }
      return(RedditRowObject)
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
    #' Deserialize JSON string into an instance of RedditRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of RedditRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`subreddit`)) {
        self$`subreddit` <- this_object$`subreddit`
      }
      if (!is.null(this_object$`author`)) {
        self$`author` <- this_object$`author`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- this_object$`citations`
      }
      if (!is.null(this_object$`unique_authors`)) {
        self$`unique_authors` <- this_object$`unique_authors`
      }
      if (!is.null(this_object$`positive`)) {
        self$`positive` <- this_object$`positive`
      }
      if (!is.null(this_object$`negative`)) {
        self$`negative` <- this_object$`negative`
      }
      if (!is.null(this_object$`neutral`)) {
        self$`neutral` <- this_object$`neutral`
      }
      if (!is.null(this_object$`positive_pct`)) {
        self$`positive_pct` <- this_object$`positive_pct`
      }
      if (!is.null(this_object$`negative_pct`)) {
        self$`negative_pct` <- this_object$`negative_pct`
      }
      if (!is.null(this_object$`yours`)) {
        self$`yours` <- this_object$`yours`
      }
      if (!is.null(this_object$`subreddits`)) {
        self$`subreddits` <- ApiClient$new()$deserializeObj(this_object$`subreddits`, "array[character]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`extra_subreddits`)) {
        self$`extra_subreddits` <- this_object$`extra_subreddits`
      }
      if (!is.null(this_object$`leaning`)) {
        self$`leaning` <- this_object$`leaning`
      }
      if (!is.null(this_object$`brands`)) {
        self$`brands` <- ApiClient$new()$deserializeObj(this_object$`brands`, "array[RedditAuthorBrand]", loadNamespace("llmpulse"))
      }
      if (!is.null(this_object$`subreddit_yours`)) {
        self$`subreddit_yours` <- this_object$`subreddit_yours`
      }
      if (!is.null(this_object$`author_yours`)) {
        self$`author_yours` <- this_object$`author_yours`
      }
      if (!is.null(this_object$`latest_cited_at`)) {
        self$`latest_cited_at` <- this_object$`latest_cited_at`
      }
      if (!is.null(this_object$`upvotes`)) {
        self$`upvotes` <- this_object$`upvotes`
      }
      if (!is.null(this_object$`comments`)) {
        self$`comments` <- this_object$`comments`
      }
      if (!is.null(this_object$`avg_position`)) {
        self$`avg_position` <- this_object$`avg_position`
      }
      if (!is.null(this_object$`sentiment`)) {
        self$`sentiment` <- this_object$`sentiment`
      }
      if (!is.null(this_object$`archived`)) {
        self$`archived` <- this_object$`archived`
      }
      if (!is.null(this_object$`posted_at`)) {
        self$`posted_at` <- this_object$`posted_at`
      }
      if (!is.null(this_object$`breakdown`)) {
        self$`breakdown` <- this_object$`breakdown`
      }
      if (!is.null(this_object$`key`)) {
        self$`key` <- this_object$`key`
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      if (!is.null(this_object$`pct`)) {
        self$`pct` <- this_object$`pct`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RedditRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RedditRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of RedditRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`subreddit` <- this_object$`subreddit`
      self$`author` <- this_object$`author`
      self$`url` <- this_object$`url`
      self$`title` <- this_object$`title`
      self$`citations` <- this_object$`citations`
      self$`unique_authors` <- this_object$`unique_authors`
      self$`positive` <- this_object$`positive`
      self$`negative` <- this_object$`negative`
      self$`neutral` <- this_object$`neutral`
      self$`positive_pct` <- this_object$`positive_pct`
      self$`negative_pct` <- this_object$`negative_pct`
      self$`yours` <- this_object$`yours`
      self$`subreddits` <- ApiClient$new()$deserializeObj(this_object$`subreddits`, "array[character]", loadNamespace("llmpulse"))
      self$`extra_subreddits` <- this_object$`extra_subreddits`
      self$`leaning` <- this_object$`leaning`
      self$`brands` <- ApiClient$new()$deserializeObj(this_object$`brands`, "array[RedditAuthorBrand]", loadNamespace("llmpulse"))
      self$`subreddit_yours` <- this_object$`subreddit_yours`
      self$`author_yours` <- this_object$`author_yours`
      self$`latest_cited_at` <- this_object$`latest_cited_at`
      self$`upvotes` <- this_object$`upvotes`
      self$`comments` <- this_object$`comments`
      self$`avg_position` <- this_object$`avg_position`
      self$`sentiment` <- this_object$`sentiment`
      self$`archived` <- this_object$`archived`
      self$`posted_at` <- this_object$`posted_at`
      self$`breakdown` <- this_object$`breakdown`
      self$`key` <- this_object$`key`
      self$`count` <- this_object$`count`
      self$`pct` <- this_object$`pct`
      self
    },

    #' @description
    #' Validate JSON input with respect to RedditRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RedditRow
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
# RedditRow$unlock()
#
## Below is an example to define the print function
# RedditRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RedditRow$lock()

