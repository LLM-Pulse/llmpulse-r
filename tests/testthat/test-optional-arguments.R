# Copied into the R client by integrations/sdks/scripts/generate.sh; edit it in
# the main LLM Pulse repository, not in llmpulse-r.
#
# Every plain method forwards all of its optional arguments to its
# WithHttpInfo twin, and an omitted one arrives there as an explicit NULL.
# Up to 1.70.0 the twin rejected that NULL ("`metrics` is not nullable"), so a
# plain call such as GetSummary(project_id = 1) failed before sending anything
# (LLM-3769). patches/r-api-template.patch keeps that check for required
# arguments only. Nothing here reaches the network: the stub records the
# request the client built.

StubClient <- R6::R6Class(
  "StubClient",
  inherit = ApiClient,
  public = list(
    requests = list(),
    CallApi = function(url, method, query_params, header_params, form_params,
                       file_params, accepts, content_types, body,
                       is_oauth = FALSE, oauth_scopes = NULL, ...) {
      self$requests[[length(self$requests) + 1]] <- list(
        url = url, method = method, query = query_params, body = body
      )
      ApiResponse$new(content = NULL, response = charToRaw("{}"), status_code = 200L)
    }
  )
)

last_request <- function(client) {
  client$requests[[length(client$requests)]]
}

test_that("a plain method builds its request when optional arguments are omitted", {
  client <- StubClient$new()
  MetricsApi$new(client)$GetSummary(project_id = 1, .parse = FALSE)

  request <- last_request(client)
  expect_equal(request$method, "GET")
  expect_equal(request$url, "https://api.llmpulse.ai/api/v1/metrics/summary")
  expect_equal(request$query, list(project_id = 1, include_project = TRUE))
})

test_that("a plain method passes on the optional arguments it is given", {
  client <- StubClient$new()
  MetricsApi$new(client)$GetSummary(project_id = 1, metrics = "mentions,visibility", granularity = "week", .parse = FALSE)

  request <- last_request(client)
  expect_equal(request$query$metrics, "mentions,visibility")
  expect_equal(request$query$granularity, "week")
})

test_that("an omitted comma-separated list sends no empty parameter", {
  client <- StubClient$new()
  api <- MetricsApi$new(client)

  api$GetTopSources(project_id = 1, .parse = FALSE)
  expect_false(any(c("domains", "collection_ids") %in% names(last_request(client)$query)))

  api$GetTopSources(project_id = 1, domains = c("wikipedia.org", "reddit.com"), .parse = FALSE)
  expect_equal(as.character(last_request(client)$query$domains), "wikipedia.org,reddit.com")
})

test_that("a required argument is still checked", {
  api <- MetricsApi$new(StubClient$new())

  expect_error(api$GetSummary(.parse = FALSE), "Missing required parameter `project_id`")
  expect_error(api$GetSummary(project_id = NULL, .parse = FALSE), "`project_id` is not nullable")
})

# Each required argument gets a placeholder: a stub body for the *_request
# bodies, and otherwise a string of zeros, which passes the id and sha256
# patterns. A required enum rejects the placeholder, but only after every
# argument has passed the nullable checks, so that rejection is accepted.
placeholder <- function(name) {
  if (grepl("_request$", name)) {
    return(list(toJSONString = function(...) "{}"))
  }
  strrep("0", 64)
}

test_that("every plain method builds its request with only its required arguments", {
  ns <- asNamespace("llmpulse")
  api_classes <- Filter(function(name) {
    generator <- get(name, envir = ns)
    inherits(generator, "R6ClassGenerator") && "api_client" %in% names(generator$public_fields)
  }, ls(ns))

  failures <- character()
  checked <- 0
  for (class_name in api_classes) {
    client <- StubClient$new()
    api <- get(class_name, envir = ns)$new(client)
    methods <- names(get(class_name, envir = ns)$public_methods)
    for (method in methods[paste0(methods, "WithHttpInfo") %in% methods]) {
      parameters <- formals(api[[method]])
      required <- setdiff(names(Filter(function(default) identical(default, quote(expr = )), as.list(parameters))), "...")
      arguments <- stats::setNames(lapply(required, placeholder), required)
      if (".parse" %in% names(parameters)) {
        arguments$.parse <- FALSE
      }
      sent <- length(client$requests)
      error <- tryCatch({
        do.call(api[[method]], arguments)
        NULL
      }, error = function(e) conditionMessage(e))
      checked <- checked + 1
      required_enum <- paste0("^Invalid value for (", paste(required, collapse = "|"), ") when calling ",
                              class_name, "\\$", method, "\\. Must be \\[")
      if (is.null(error)) {
        if (length(client$requests) != sent + 1) {
          failures <- c(failures, paste0(class_name, "$", method, ": sent no request"))
        }
      } else if (length(required) == 0 || !grepl(required_enum, error)) {
        failures <- c(failures, paste0(class_name, "$", method, ": ", error))
      }
    }
  }

  expect_gt(checked, 0)
  expect_identical(failures, character())
})
