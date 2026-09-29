#' Create a new LlmsTxtTechnicalGeoReportResultData
#'
#' @description
#' The files and generation details once the report has completed; null before that
#'
#' @docType class
#' @title LlmsTxtTechnicalGeoReportResultData
#' @description LlmsTxtTechnicalGeoReportResultData Class
#' @format An \code{R6Class} generator object
#' @field llms_txt_content Current llms.txt, manual edits included character [optional]
#' @field llms_full_txt_content Current llms-full.txt, manual edits included character [optional]
#' @field manually_edited_at When the files were last edited by hand in the app, the API or MCP; null while they are as generated character [optional]
#' @field content_version Send it back as content_version when editing the files. It changes on every save character [optional]
#' @field original_llms_txt_content The generated llms.txt, kept from the first manual edit; null while the files are as generated character [optional]
#' @field original_llms_full_txt_content The generated llms-full.txt, kept from the first manual edit; null while the files are as generated character [optional]
#' @field crawl_data  object [optional]
#' @field metadata Generation details, including output_language_code, the language the files were written in object [optional]
#' @field pages_crawled  integer [optional]
#' @field generation_time_ms  integer [optional]
#' @field openai_tokens_used  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LlmsTxtTechnicalGeoReportResultData <- R6::R6Class(
  "LlmsTxtTechnicalGeoReportResultData",
  public = list(
    `llms_txt_content` = NULL,
    `llms_full_txt_content` = NULL,
    `manually_edited_at` = NULL,
    `content_version` = NULL,
    `original_llms_txt_content` = NULL,
    `original_llms_full_txt_content` = NULL,
    `crawl_data` = NULL,
    `metadata` = NULL,
    `pages_crawled` = NULL,
    `generation_time_ms` = NULL,
    `openai_tokens_used` = NULL,

    #' @description
    #' Initialize a new LlmsTxtTechnicalGeoReportResultData class.
    #'
    #' @param llms_txt_content Current llms.txt, manual edits included
    #' @param llms_full_txt_content Current llms-full.txt, manual edits included
    #' @param manually_edited_at When the files were last edited by hand in the app, the API or MCP; null while they are as generated
    #' @param content_version Send it back as content_version when editing the files. It changes on every save
    #' @param original_llms_txt_content The generated llms.txt, kept from the first manual edit; null while the files are as generated
    #' @param original_llms_full_txt_content The generated llms-full.txt, kept from the first manual edit; null while the files are as generated
    #' @param crawl_data crawl_data
    #' @param metadata Generation details, including output_language_code, the language the files were written in
    #' @param pages_crawled pages_crawled
    #' @param generation_time_ms generation_time_ms
    #' @param openai_tokens_used openai_tokens_used
    #' @param ... Other optional arguments.
    initialize = function(`llms_txt_content` = NULL, `llms_full_txt_content` = NULL, `manually_edited_at` = NULL, `content_version` = NULL, `original_llms_txt_content` = NULL, `original_llms_full_txt_content` = NULL, `crawl_data` = NULL, `metadata` = NULL, `pages_crawled` = NULL, `generation_time_ms` = NULL, `openai_tokens_used` = NULL, ...) {
      if (!is.null(`llms_txt_content`)) {
        if (!(is.character(`llms_txt_content`) && length(`llms_txt_content`) == 1)) {
          stop(paste("Error! Invalid data for `llms_txt_content`. Must be a string:", `llms_txt_content`))
        }
        self$`llms_txt_content` <- `llms_txt_content`
      }
      if (!is.null(`llms_full_txt_content`)) {
        if (!(is.character(`llms_full_txt_content`) && length(`llms_full_txt_content`) == 1)) {
          stop(paste("Error! Invalid data for `llms_full_txt_content`. Must be a string:", `llms_full_txt_content`))
        }
        self$`llms_full_txt_content` <- `llms_full_txt_content`
      }
      if (!is.null(`manually_edited_at`)) {
        if (!is.character(`manually_edited_at`)) {
          stop(paste("Error! Invalid data for `manually_edited_at`. Must be a string:", `manually_edited_at`))
        }
        self$`manually_edited_at` <- `manually_edited_at`
      }
      if (!is.null(`content_version`)) {
        if (!(is.character(`content_version`) && length(`content_version`) == 1)) {
          stop(paste("Error! Invalid data for `content_version`. Must be a string:", `content_version`))
        }
        self$`content_version` <- `content_version`
      }
      if (!is.null(`original_llms_txt_content`)) {
        if (!(is.character(`original_llms_txt_content`) && length(`original_llms_txt_content`) == 1)) {
          stop(paste("Error! Invalid data for `original_llms_txt_content`. Must be a string:", `original_llms_txt_content`))
        }
        self$`original_llms_txt_content` <- `original_llms_txt_content`
      }
      if (!is.null(`original_llms_full_txt_content`)) {
        if (!(is.character(`original_llms_full_txt_content`) && length(`original_llms_full_txt_content`) == 1)) {
          stop(paste("Error! Invalid data for `original_llms_full_txt_content`. Must be a string:", `original_llms_full_txt_content`))
        }
        self$`original_llms_full_txt_content` <- `original_llms_full_txt_content`
      }
      if (!is.null(`crawl_data`)) {
        self$`crawl_data` <- `crawl_data`
      }
      if (!is.null(`metadata`)) {
        self$`metadata` <- `metadata`
      }
      if (!is.null(`pages_crawled`)) {
        if (!(is.numeric(`pages_crawled`) && length(`pages_crawled`) == 1)) {
          stop(paste("Error! Invalid data for `pages_crawled`. Must be an integer:", `pages_crawled`))
        }
        self$`pages_crawled` <- `pages_crawled`
      }
      if (!is.null(`generation_time_ms`)) {
        if (!(is.numeric(`generation_time_ms`) && length(`generation_time_ms`) == 1)) {
          stop(paste("Error! Invalid data for `generation_time_ms`. Must be an integer:", `generation_time_ms`))
        }
        self$`generation_time_ms` <- `generation_time_ms`
      }
      if (!is.null(`openai_tokens_used`)) {
        if (!(is.numeric(`openai_tokens_used`) && length(`openai_tokens_used`) == 1)) {
          stop(paste("Error! Invalid data for `openai_tokens_used`. Must be an integer:", `openai_tokens_used`))
        }
        self$`openai_tokens_used` <- `openai_tokens_used`
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
    #' @return LlmsTxtTechnicalGeoReportResultData as a base R list.
    #' @examples
    #' # convert array of LlmsTxtTechnicalGeoReportResultData (x) to a data frame
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
    #' Convert LlmsTxtTechnicalGeoReportResultData to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LlmsTxtTechnicalGeoReportResultDataObject <- list()
      if (!is.null(self$`llms_txt_content`)) {
        LlmsTxtTechnicalGeoReportResultDataObject[["llms_txt_content"]] <-
          self$`llms_txt_content`
      }
      if (!is.null(self$`llms_full_txt_content`)) {
        LlmsTxtTechnicalGeoReportResultDataObject[["llms_full_txt_content"]] <-
          self$`llms_full_txt_content`
      }
      if (!is.null(self$`manually_edited_at`)) {
        LlmsTxtTechnicalGeoReportResultDataObject[["manually_edited_at"]] <-
          self$`manually_edited_at`
      }
      if (!is.null(self$`content_version`)) {
        LlmsTxtTechnicalGeoReportResultDataObject[["content_version"]] <-
          self$`content_version`
      }
      if (!is.null(self$`original_llms_txt_content`)) {
        LlmsTxtTechnicalGeoReportResultDataObject[["original_llms_txt_content"]] <-
          self$`original_llms_txt_content`
      }
      if (!is.null(self$`original_llms_full_txt_content`)) {
        LlmsTxtTechnicalGeoReportResultDataObject[["original_llms_full_txt_content"]] <-
          self$`original_llms_full_txt_content`
      }
      if (!is.null(self$`crawl_data`)) {
        LlmsTxtTechnicalGeoReportResultDataObject[["crawl_data"]] <-
          self$`crawl_data`
      }
      if (!is.null(self$`metadata`)) {
        LlmsTxtTechnicalGeoReportResultDataObject[["metadata"]] <-
          self$`metadata`
      }
      if (!is.null(self$`pages_crawled`)) {
        LlmsTxtTechnicalGeoReportResultDataObject[["pages_crawled"]] <-
          self$`pages_crawled`
      }
      if (!is.null(self$`generation_time_ms`)) {
        LlmsTxtTechnicalGeoReportResultDataObject[["generation_time_ms"]] <-
          self$`generation_time_ms`
      }
      if (!is.null(self$`openai_tokens_used`)) {
        LlmsTxtTechnicalGeoReportResultDataObject[["openai_tokens_used"]] <-
          self$`openai_tokens_used`
      }
      return(LlmsTxtTechnicalGeoReportResultDataObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LlmsTxtTechnicalGeoReportResultData
    #'
    #' @param input_json the JSON input
    #' @return the instance of LlmsTxtTechnicalGeoReportResultData
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`llms_txt_content`)) {
        self$`llms_txt_content` <- this_object$`llms_txt_content`
      }
      if (!is.null(this_object$`llms_full_txt_content`)) {
        self$`llms_full_txt_content` <- this_object$`llms_full_txt_content`
      }
      if (!is.null(this_object$`manually_edited_at`)) {
        self$`manually_edited_at` <- this_object$`manually_edited_at`
      }
      if (!is.null(this_object$`content_version`)) {
        self$`content_version` <- this_object$`content_version`
      }
      if (!is.null(this_object$`original_llms_txt_content`)) {
        self$`original_llms_txt_content` <- this_object$`original_llms_txt_content`
      }
      if (!is.null(this_object$`original_llms_full_txt_content`)) {
        self$`original_llms_full_txt_content` <- this_object$`original_llms_full_txt_content`
      }
      if (!is.null(this_object$`crawl_data`)) {
        self$`crawl_data` <- this_object$`crawl_data`
      }
      if (!is.null(this_object$`metadata`)) {
        self$`metadata` <- this_object$`metadata`
      }
      if (!is.null(this_object$`pages_crawled`)) {
        self$`pages_crawled` <- this_object$`pages_crawled`
      }
      if (!is.null(this_object$`generation_time_ms`)) {
        self$`generation_time_ms` <- this_object$`generation_time_ms`
      }
      if (!is.null(this_object$`openai_tokens_used`)) {
        self$`openai_tokens_used` <- this_object$`openai_tokens_used`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LlmsTxtTechnicalGeoReportResultData in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LlmsTxtTechnicalGeoReportResultData
    #'
    #' @param input_json the JSON input
    #' @return the instance of LlmsTxtTechnicalGeoReportResultData
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`llms_txt_content` <- this_object$`llms_txt_content`
      self$`llms_full_txt_content` <- this_object$`llms_full_txt_content`
      self$`manually_edited_at` <- this_object$`manually_edited_at`
      self$`content_version` <- this_object$`content_version`
      self$`original_llms_txt_content` <- this_object$`original_llms_txt_content`
      self$`original_llms_full_txt_content` <- this_object$`original_llms_full_txt_content`
      self$`crawl_data` <- this_object$`crawl_data`
      self$`metadata` <- this_object$`metadata`
      self$`pages_crawled` <- this_object$`pages_crawled`
      self$`generation_time_ms` <- this_object$`generation_time_ms`
      self$`openai_tokens_used` <- this_object$`openai_tokens_used`
      self
    },

    #' @description
    #' Validate JSON input with respect to LlmsTxtTechnicalGeoReportResultData and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LlmsTxtTechnicalGeoReportResultData
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
# LlmsTxtTechnicalGeoReportResultData$unlock()
#
## Below is an example to define the print function
# LlmsTxtTechnicalGeoReportResultData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LlmsTxtTechnicalGeoReportResultData$lock()

