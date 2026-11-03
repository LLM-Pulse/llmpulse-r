# SearchConsoleApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetSearchConsoleAiVisibilityGaps**](SearchConsoleApi.md#GetSearchConsoleAiVisibilityGaps) | **GET** /search_console/ai_visibility_gaps | Search Console queries vs AI tracking (Growth+)
[**GetSearchConsoleBrandSplit**](SearchConsoleApi.md#GetSearchConsoleBrandSplit) | **GET** /search_console/brand_split | Search Console branded vs non-branded split (Growth+)
[**GetSearchConsoleCannibalization**](SearchConsoleApi.md#GetSearchConsoleCannibalization) | **GET** /search_console/cannibalization | Search Console keyword cannibalization (Growth+)
[**GetSearchConsoleDecay**](SearchConsoleApi.md#GetSearchConsoleDecay) | **GET** /search_console/decay | Search Console content decay (Growth+)
[**GetSearchConsoleOpportunities**](SearchConsoleApi.md#GetSearchConsoleOpportunities) | **GET** /search_console/opportunities | Search Console ranking opportunities (Growth+)
[**GetSearchConsolePages**](SearchConsoleApi.md#GetSearchConsolePages) | **GET** /search_console/pages | Top Search Console pages (Growth+)
[**GetSearchConsoleQueries**](SearchConsoleApi.md#GetSearchConsoleQueries) | **GET** /search_console/queries | Top Search Console queries (Growth+)
[**GetSearchConsoleRows**](SearchConsoleApi.md#GetSearchConsoleRows) | **GET** /search_console/rows | Search Console rows by several dimensions (Growth+)
[**GetSearchConsoleSummary**](SearchConsoleApi.md#GetSearchConsoleSummary) | **GET** /search_console/summary | Search Console summary (Growth+)
[**GetSearchConsoleTimeseries**](SearchConsoleApi.md#GetSearchConsoleTimeseries) | **GET** /search_console/timeseries | Search Console time series (Growth+)
[**ListSearchConsoleProperties**](SearchConsoleApi.md#ListSearchConsoleProperties) | **GET** /search_console/properties | List Search Console properties (Growth+)


# **GetSearchConsoleAiVisibilityGaps**
> SearchConsoleAiVisibilityGapsResponse GetSearchConsoleAiVisibilityGaps(project_id, property = var.property, range = var.range, from = var.from, to = var.to, min_impressions = 100, unmatched_only = FALSE, page = 1, per_page = 20, output = var.output, search_type = "web", filters = var.filters, data_state = "final", aggregation_type = "auto")

Search Console queries vs AI tracking (Growth+)

The property's queries with at least min_impressions impressions, most impressions first, each matched against the project's prompts. The match is exact and deliberately conservative: a query matches a prompt with the same text once both are lowercased, accents and similar letters folded the way AI answers are matched for brand mentions, spacing squeezed and leading or trailing punctuation dropped (best crm for agencies matches Best CRM for agencies?, but not What is the best CRM for agencies). When two prompts share a text (other countries or languages), the oldest is the match. A matched query carries its prompt_id, responses (the prompt's AI answers in the same window, over the account's enabled models) and brand_visibility, the percent of those answers that mention the brand (null before any answer), as /metrics/prompt_summary computes it. unmatched_only=true lists only the queries no prompt matches: search demand the AI tracking does not cover yet, the strongest candidates to add as prompts. Rows with a prompt and a low brand_visibility are queries people search for where AI answers rarely mention the brand; how low is low is the caller's choice. matched_count counts the qualifying queries a prompt matches. A team member also needs read access to the Overview, which holds prompt-level Brand Visibility, or gets ERR_INSUFFICIENT_PERMISSION. Reads Google's top 25,000 queries per property (truncated: true when reached) and excludes anonymized queries. Requires a connected Search Console property (Growth+). Live reads only: under stored reads it returns ERR_INVALID_PARAM. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access; reconnect the property in Preferences > Project Settings > Data Connections. They return ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying.

### Example
```R
library(llmpulse)

# Search Console queries vs AI tracking (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_property <- "all" # character | Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. (Optional)
var_range <- 56 # integer | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (Optional)
var_from <- "from_example" # character | Start date (YYYY-MM-DD). Defaults to 30 days ago. (Optional)
var_to <- "to_example" # character | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (Optional)
var_min_impressions <- 100 # integer | Smallest impressions a query needs. (Optional)
var_unmatched_only <- FALSE # character | List only the queries no prompt of the project matches (true or false). (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)
var_search_type <- "web" # character | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (Optional)
var_filters <- "[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}]" # character | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (Optional)
var_data_state <- "final" # character | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (Optional)
var_aggregation_type <- "auto" # character | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSearchConsoleAiVisibilityGaps(var_project_id, property = var_property, range = var_range, from = var_from, to = var_to, min_impressions = var_min_impressions, unmatched_only = var_unmatched_only, page = var_page, per_page = var_per_page, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_typedata_file = "result.txt")
result <- api_instance$GetSearchConsoleAiVisibilityGaps(var_project_id, property = var_property, range = var_range, from = var_from, to = var_to, min_impressions = var_min_impressions, unmatched_only = var_unmatched_only, page = var_page, per_page = var_per_page, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **property** | **character**| Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. | [optional] 
 **range** | **integer**| Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **character**| Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **character**| End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **min_impressions** | **integer**| Smallest impressions a query needs. | [optional] [default to 100]
 **unmatched_only** | **character**| List only the queries no prompt of the project matches (true or false). | [optional] [default to FALSE]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **search_type** | Enum [web, image, video, news, discover, googleNews] | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to &quot;web&quot;]
 **filters** | **character**| Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **data_state** | Enum [final, all] | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to &quot;final&quot;]
 **aggregation_type** | Enum [auto, byPage, byProperty] | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to &quot;auto&quot;]

### Return type

[**SearchConsoleAiVisibilityGapsResponse**](SearchConsoleAiVisibilityGapsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Queries matched against the project&#39;s prompts |  -  |
| **401** | Authentication failed |  -  |
| **403** | Plan below Growth (ERR_PLAN_REQUIRED), or Google revoked the project&#39;s Search Console access (ERR_SEARCH_CONSOLE_ACCESS_REVOKED): reconnect the property |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |
| **503** | Upstream provider unavailable, retry after the number of seconds in the Retry-After header: Google&#39;s own value when it sent one, otherwise 900 after a quota error and 60 after an outage |  * Retry-After - Seconds to wait before retrying <br>  |

# **GetSearchConsoleBrandSplit**
> SearchConsoleBrandSplitResponse GetSearchConsoleBrandSplit(project_id, property = var.property, range = var.range, from = var.from, to = var.to, search_type = "web", filters = var.filters, data_state = "final", aggregation_type = "auto")

Search Console branded vs non-branded split (Growth+)

Splits the property's impressions and clicks into branded queries, which contain one of the project's brand terms as a whole word, case-insensitively (brand_terms: its brand name, matching names, app names and domain, each also matched with its accents folded and with either apostrophe, so Nestlé also matches nestle and L’Oréal matches l'oreal), and non-branded ones, next to the unfiltered totals. Google applies the split itself as a regular-expression query filter, so it covers every query Google counts, not only the 25,000 rows one read lists. Use it to see how much search traffic comes from people who already know the brand and how much from discovery searches, and how each side evolves across date ranges. Google leaves anonymized queries out of any query filter, so unclassified holds the impressions and clicks neither side counts. Returns ERR_INVALID_PARAM when the brand terms are too long for one Google filter (4,096 characters, Google's documented limit), and ERR_SEARCH_CONSOLE_UPSTREAM (503) if Google refuses the filter built from them; our team is alerted in that case. Requires a connected Search Console property (Growth+). Live reads only: under stored reads it returns ERR_INVALID_PARAM. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access; reconnect the property in Preferences > Project Settings > Data Connections. They return ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying.

### Example
```R
library(llmpulse)

# Search Console branded vs non-branded split (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_property <- "all" # character | Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. (Optional)
var_range <- 56 # integer | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (Optional)
var_from <- "from_example" # character | Start date (YYYY-MM-DD). Defaults to 30 days ago. (Optional)
var_to <- "to_example" # character | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (Optional)
var_search_type <- "web" # character | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (Optional)
var_filters <- "[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}]" # character | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (Optional)
var_data_state <- "final" # character | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (Optional)
var_aggregation_type <- "auto" # character | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSearchConsoleBrandSplit(var_project_id, property = var_property, range = var_range, from = var_from, to = var_to, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_typedata_file = "result.txt")
result <- api_instance$GetSearchConsoleBrandSplit(var_project_id, property = var_property, range = var_range, from = var_from, to = var_to, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **property** | **character**| Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. | [optional] 
 **range** | **integer**| Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **character**| Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **character**| End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **search_type** | Enum [web, image, video, news, discover, googleNews] | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to &quot;web&quot;]
 **filters** | **character**| Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **data_state** | Enum [final, all] | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to &quot;final&quot;]
 **aggregation_type** | Enum [auto, byPage, byProperty] | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to &quot;auto&quot;]

### Return type

[**SearchConsoleBrandSplitResponse**](SearchConsoleBrandSplitResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Branded and non-branded totals |  -  |
| **401** | Authentication failed |  -  |
| **403** | Plan below Growth (ERR_PLAN_REQUIRED), or Google revoked the project&#39;s Search Console access (ERR_SEARCH_CONSOLE_ACCESS_REVOKED): reconnect the property |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |
| **503** | Upstream provider unavailable, retry after the number of seconds in the Retry-After header: Google&#39;s own value when it sent one, otherwise 900 after a quota error and 60 after an outage |  * Retry-After - Seconds to wait before retrying <br>  |

# **GetSearchConsoleCannibalization**
> SearchConsoleCannibalizationResponse GetSearchConsoleCannibalization(project_id, property = var.property, range = var.range, from = var.from, to = var.to, min_impressions = 100, min_share = 0.1, page = 1, per_page = 20, output = var.output, search_type = "web", filters = var.filters, data_state = "final", aggregation_type = "auto")

Search Console keyword cannibalization (Growth+)

Queries with at least min_impressions impressions for which two or more pages each take at least min_share (default 0.1) of the query's impressions, most impressions first, each with its competing pages (share, impressions, clicks, ctr, position). Use it to find the keywords several of the site's pages fight over, and decide which pages to merge, redirect or differentiate. Google counts page-by-query impressions per page, so a query's impressions here can exceed its property-wide figure. Reads Google's top 25,000 page-query rows per property (truncated: true when reached). With output=flat or csv, each competing page is its own row, with its URL in page_url. Requires a connected Search Console property (Growth+). Live reads only: under stored reads it returns ERR_INVALID_PARAM. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access; reconnect the property in Preferences > Project Settings > Data Connections. They return ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying.

### Example
```R
library(llmpulse)

# Search Console keyword cannibalization (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_property <- "all" # character | Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. (Optional)
var_range <- 56 # integer | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (Optional)
var_from <- "from_example" # character | Start date (YYYY-MM-DD). Defaults to 30 days ago. (Optional)
var_to <- "to_example" # character | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (Optional)
var_min_impressions <- 100 # integer | Smallest impressions a query needs. (Optional)
var_min_share <- 0.1 # numeric | Smallest fraction (0.01 to 0.5) of the query's impressions a page needs to count as competing. (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)
var_search_type <- "web" # character | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (Optional)
var_filters <- "[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}]" # character | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (Optional)
var_data_state <- "final" # character | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (Optional)
var_aggregation_type <- "auto" # character | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSearchConsoleCannibalization(var_project_id, property = var_property, range = var_range, from = var_from, to = var_to, min_impressions = var_min_impressions, min_share = var_min_share, page = var_page, per_page = var_per_page, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_typedata_file = "result.txt")
result <- api_instance$GetSearchConsoleCannibalization(var_project_id, property = var_property, range = var_range, from = var_from, to = var_to, min_impressions = var_min_impressions, min_share = var_min_share, page = var_page, per_page = var_per_page, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **property** | **character**| Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. | [optional] 
 **range** | **integer**| Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **character**| Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **character**| End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **min_impressions** | **integer**| Smallest impressions a query needs. | [optional] [default to 100]
 **min_share** | **numeric**| Smallest fraction (0.01 to 0.5) of the query&#39;s impressions a page needs to count as competing. | [optional] [default to 0.1]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **search_type** | Enum [web, image, video, news, discover, googleNews] | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to &quot;web&quot;]
 **filters** | **character**| Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **data_state** | Enum [final, all] | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to &quot;final&quot;]
 **aggregation_type** | Enum [auto, byPage, byProperty] | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to &quot;auto&quot;]

### Return type

[**SearchConsoleCannibalizationResponse**](SearchConsoleCannibalizationResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Competing pages per query |  -  |
| **401** | Authentication failed |  -  |
| **403** | Plan below Growth (ERR_PLAN_REQUIRED), or Google revoked the project&#39;s Search Console access (ERR_SEARCH_CONSOLE_ACCESS_REVOKED): reconnect the property |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |
| **503** | Upstream provider unavailable, retry after the number of seconds in the Retry-After header: Google&#39;s own value when it sent one, otherwise 900 after a quota error and 60 after an outage |  * Retry-After - Seconds to wait before retrying <br>  |

# **GetSearchConsoleDecay**
> SearchConsoleDecayResponse GetSearchConsoleDecay(project_id, property = var.property, range = var.range, from = var.from, to = var.to, dimension = "page", min_clicks = 10, page = 1, per_page = 20, output = var.output, search_type = "web", filters = var.filters, data_state = "final", aggregation_type = "auto")

Search Console content decay (Growth+)

Pages (or queries, with dimension=query) that had at least min_clicks clicks in the window just before the requested one (previous_from to previous_to, the same length) and lost clicks since, biggest loss first, with clicks, impressions and average position in both windows. Use it to find the pages losing traffic and to tell lost rankings (a worse position) from lost demand (fewer impressions at a stable position). The requested window ends at compared_through, the last day Google has published when that is before to, so days Google has not filled in yet never read as a loss. Both windows must fit in Google's 487-day retention, or the request returns ERR_INVALID_PARAM. Reads Google's top 25,000 rows per window and property (truncated: true when reached); when the requested window reaches that cap, a page or query missing from it is left out rather than read as a loss. Requires a connected Search Console property (Growth+). Live reads only: under stored reads it returns ERR_INVALID_PARAM. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access; reconnect the property in Preferences > Project Settings > Data Connections. They return ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying.

### Example
```R
library(llmpulse)

# Search Console content decay (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_property <- "all" # character | Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. (Optional)
var_range <- 56 # integer | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (Optional)
var_from <- "from_example" # character | Start date (YYYY-MM-DD). Defaults to 30 days ago. (Optional)
var_to <- "to_example" # character | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (Optional)
var_dimension <- "page" # character | Compare pages or queries. (Optional)
var_min_clicks <- 10 # integer | Smallest clicks in the previous window. (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)
var_search_type <- "web" # character | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (Optional)
var_filters <- "[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}]" # character | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (Optional)
var_data_state <- "final" # character | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (Optional)
var_aggregation_type <- "auto" # character | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSearchConsoleDecay(var_project_id, property = var_property, range = var_range, from = var_from, to = var_to, dimension = var_dimension, min_clicks = var_min_clicks, page = var_page, per_page = var_per_page, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_typedata_file = "result.txt")
result <- api_instance$GetSearchConsoleDecay(var_project_id, property = var_property, range = var_range, from = var_from, to = var_to, dimension = var_dimension, min_clicks = var_min_clicks, page = var_page, per_page = var_per_page, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **property** | **character**| Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. | [optional] 
 **range** | **integer**| Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **character**| Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **character**| End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **dimension** | Enum [page, query] | Compare pages or queries. | [optional] [default to &quot;page&quot;]
 **min_clicks** | **integer**| Smallest clicks in the previous window. | [optional] [default to 10]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **search_type** | Enum [web, image, video, news, discover, googleNews] | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to &quot;web&quot;]
 **filters** | **character**| Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **data_state** | Enum [final, all] | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to &quot;final&quot;]
 **aggregation_type** | Enum [auto, byPage, byProperty] | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to &quot;auto&quot;]

### Return type

[**SearchConsoleDecayResponse**](SearchConsoleDecayResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Pages or queries losing clicks |  -  |
| **401** | Authentication failed |  -  |
| **403** | Plan below Growth (ERR_PLAN_REQUIRED), or Google revoked the project&#39;s Search Console access (ERR_SEARCH_CONSOLE_ACCESS_REVOKED): reconnect the property |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |
| **503** | Upstream provider unavailable, retry after the number of seconds in the Retry-After header: Google&#39;s own value when it sent one, otherwise 900 after a quota error and 60 after an outage |  * Retry-After - Seconds to wait before retrying <br>  |

# **GetSearchConsoleOpportunities**
> SearchConsoleOpportunitiesResponse GetSearchConsoleOpportunities(project_id, property = var.property, range = var.range, from = var.from, to = var.to, min_impressions = 100, min_position = 4, max_position = 20, page = 1, per_page = 20, output = var.output, search_type = "web", filters = var.filters, data_state = "final", aggregation_type = "auto")

Search Console ranking opportunities (Growth+)

Queries whose average position is between min_position and max_position (default 4 to 20) with at least min_impressions impressions, ranked by potential_clicks: the clicks a move into the top 3 would add at top_ctr, the CTR the property's own queries averaging position 3 or better get in the same window. Use it to find the queries where a small ranking gain would add the most traffic. No outside CTR curve is used: with no top-3 query in the window, top_ctr and potential_clicks are null. Reads Google's top 25,000 queries per property (truncated: true when reached) and excludes anonymized queries. Requires a connected Search Console property (Growth+). Live reads only: under stored reads it returns ERR_INVALID_PARAM. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access; reconnect the property in Preferences > Project Settings > Data Connections. They return ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying.

### Example
```R
library(llmpulse)

# Search Console ranking opportunities (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_property <- "all" # character | Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. (Optional)
var_range <- 56 # integer | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (Optional)
var_from <- "from_example" # character | Start date (YYYY-MM-DD). Defaults to 30 days ago. (Optional)
var_to <- "to_example" # character | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (Optional)
var_min_impressions <- 100 # integer | Smallest impressions a query needs. (Optional)
var_min_position <- 4 # numeric | Best average position to include. (Optional)
var_max_position <- 20 # numeric | Worst average position to include; at least min_position. (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)
var_search_type <- "web" # character | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (Optional)
var_filters <- "[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}]" # character | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (Optional)
var_data_state <- "final" # character | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (Optional)
var_aggregation_type <- "auto" # character | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSearchConsoleOpportunities(var_project_id, property = var_property, range = var_range, from = var_from, to = var_to, min_impressions = var_min_impressions, min_position = var_min_position, max_position = var_max_position, page = var_page, per_page = var_per_page, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_typedata_file = "result.txt")
result <- api_instance$GetSearchConsoleOpportunities(var_project_id, property = var_property, range = var_range, from = var_from, to = var_to, min_impressions = var_min_impressions, min_position = var_min_position, max_position = var_max_position, page = var_page, per_page = var_per_page, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **property** | **character**| Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. | [optional] 
 **range** | **integer**| Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **character**| Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **character**| End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **min_impressions** | **integer**| Smallest impressions a query needs. | [optional] [default to 100]
 **min_position** | **numeric**| Best average position to include. | [optional] [default to 4]
 **max_position** | **numeric**| Worst average position to include; at least min_position. | [optional] [default to 20]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **search_type** | Enum [web, image, video, news, discover, googleNews] | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to &quot;web&quot;]
 **filters** | **character**| Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **data_state** | Enum [final, all] | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to &quot;final&quot;]
 **aggregation_type** | Enum [auto, byPage, byProperty] | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to &quot;auto&quot;]

### Return type

[**SearchConsoleOpportunitiesResponse**](SearchConsoleOpportunitiesResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Ranking opportunities |  -  |
| **401** | Authentication failed |  -  |
| **403** | Plan below Growth (ERR_PLAN_REQUIRED), or Google revoked the project&#39;s Search Console access (ERR_SEARCH_CONSOLE_ACCESS_REVOKED): reconnect the property |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |
| **503** | Upstream provider unavailable, retry after the number of seconds in the Retry-After header: Google&#39;s own value when it sent one, otherwise 900 after a quota error and 60 after an outage |  * Retry-After - Seconds to wait before retrying <br>  |

# **GetSearchConsolePages**
> SearchConsoleListResponse GetSearchConsolePages(project_id, range = var.range, from = var.from, to = var.to, sort = "impressions", page = 1, per_page = 20, start_row = 0, output = var.output, search_type = "web", filters = var.filters, data_state = "final", aggregation_type = "auto", property = var.property)

Top Search Console pages (Growth+)

Top Google Search Console landing pages over a date range, ranked by impressions, clicks, ctr or position, paginated. Requires a connected Search Console property (Growth+). X-Search-Console-Backend identifies stored or live reads. Stored reads use synced data without contacting Google. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access; reconnect the property in Preferences > Project Settings > Data Connections. They return ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying. total counts the rows returned by one Google request, up to 25,000; truncated: true means that limit was reached, and start_row reads the next block. Page rows are counted per page rather than per property, so they can differ from the totals. Sorting and pagination apply to the available set. Stored reads cannot answer this endpoint and return ERR_INVALID_PARAM.

### Example
```R
library(llmpulse)

# Top Search Console pages (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (Optional)
var_from <- "from_example" # character | Start date (YYYY-MM-DD). Defaults to 30 days ago. (Optional)
var_to <- "to_example" # character | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (Optional)
var_sort <- "impressions" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_start_row <- 0 # integer | Google ranks rows by clicks and returns at most 25,000 per request. start_row moves that window down the ranking (e.g. 25000 for the next block); sort and pagination apply within the window. (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)
var_search_type <- "web" # character | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (Optional)
var_filters <- "[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}]" # character | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (Optional)
var_data_state <- "final" # character | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (Optional)
var_aggregation_type <- "auto" # character | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (Optional)
var_property <- "all" # character | Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSearchConsolePages(var_project_id, range = var_range, from = var_from, to = var_to, sort = var_sort, page = var_page, per_page = var_per_page, start_row = var_start_row, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type, property = var_propertydata_file = "result.txt")
result <- api_instance$GetSearchConsolePages(var_project_id, range = var_range, from = var_from, to = var_to, sort = var_sort, page = var_page, per_page = var_per_page, start_row = var_start_row, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type, property = var_property)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **character**| Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **character**| End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **sort** | Enum [impressions, clicks, ctr, position] |  | [optional] [default to &quot;impressions&quot;]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **start_row** | **integer**| Google ranks rows by clicks and returns at most 25,000 per request. start_row moves that window down the ranking (e.g. 25000 for the next block); sort and pagination apply within the window. | [optional] [default to 0]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **search_type** | Enum [web, image, video, news, discover, googleNews] | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to &quot;web&quot;]
 **filters** | **character**| Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **data_state** | Enum [final, all] | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to &quot;final&quot;]
 **aggregation_type** | Enum [auto, byPage, byProperty] | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to &quot;auto&quot;]
 **property** | **character**| Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. | [optional] 

### Return type

[**SearchConsoleListResponse**](SearchConsoleListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Top pages |  -  |
| **401** | Authentication failed |  -  |
| **403** | Plan below Growth (ERR_PLAN_REQUIRED), or Google revoked the project&#39;s Search Console access (ERR_SEARCH_CONSOLE_ACCESS_REVOKED): reconnect the property |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |
| **503** | Upstream provider unavailable, retry after the number of seconds in the Retry-After header: Google&#39;s own value when it sent one, otherwise 900 after a quota error and 60 after an outage |  * Retry-After - Seconds to wait before retrying <br>  |

# **GetSearchConsoleQueries**
> SearchConsoleListResponse GetSearchConsoleQueries(project_id, range = var.range, from = var.from, to = var.to, sort = "impressions", page = 1, per_page = 20, start_row = 0, output = var.output, search_type = "web", filters = var.filters, data_state = "final", aggregation_type = "auto", property = var.property)

Top Search Console queries (Growth+)

Top Google Search Console search queries over a date range, ranked by impressions, clicks, ctr or position, paginated. Excludes anonymized queries; for headline totals use /search_console/summary. Requires a connected Search Console property (Growth+). X-Search-Console-Backend identifies stored or live reads. Stored reads use synced data without contacting Google. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access; reconnect the property in Preferences > Project Settings > Data Connections. They return ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying. total counts the rows returned by one Google request, up to 25,000; truncated: true means that limit was reached, so the rows add up to less than the totals, and start_row reads the next block. Sorting and pagination apply to the available set. Stored reads cannot answer this endpoint and return ERR_INVALID_PARAM.

### Example
```R
library(llmpulse)

# Top Search Console queries (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (Optional)
var_from <- "from_example" # character | Start date (YYYY-MM-DD). Defaults to 30 days ago. (Optional)
var_to <- "to_example" # character | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (Optional)
var_sort <- "impressions" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_start_row <- 0 # integer | Google ranks rows by clicks and returns at most 25,000 per request. start_row moves that window down the ranking (e.g. 25000 for the next block); sort and pagination apply within the window. (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)
var_search_type <- "web" # character | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (Optional)
var_filters <- "[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}]" # character | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (Optional)
var_data_state <- "final" # character | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (Optional)
var_aggregation_type <- "auto" # character | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (Optional)
var_property <- "all" # character | Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSearchConsoleQueries(var_project_id, range = var_range, from = var_from, to = var_to, sort = var_sort, page = var_page, per_page = var_per_page, start_row = var_start_row, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type, property = var_propertydata_file = "result.txt")
result <- api_instance$GetSearchConsoleQueries(var_project_id, range = var_range, from = var_from, to = var_to, sort = var_sort, page = var_page, per_page = var_per_page, start_row = var_start_row, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type, property = var_property)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **character**| Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **character**| End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **sort** | Enum [impressions, clicks, ctr, position] |  | [optional] [default to &quot;impressions&quot;]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **start_row** | **integer**| Google ranks rows by clicks and returns at most 25,000 per request. start_row moves that window down the ranking (e.g. 25000 for the next block); sort and pagination apply within the window. | [optional] [default to 0]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **search_type** | Enum [web, image, video, news, discover, googleNews] | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to &quot;web&quot;]
 **filters** | **character**| Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **data_state** | Enum [final, all] | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to &quot;final&quot;]
 **aggregation_type** | Enum [auto, byPage, byProperty] | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to &quot;auto&quot;]
 **property** | **character**| Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. | [optional] 

### Return type

[**SearchConsoleListResponse**](SearchConsoleListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Top queries |  -  |
| **401** | Authentication failed |  -  |
| **403** | Plan below Growth (ERR_PLAN_REQUIRED), or Google revoked the project&#39;s Search Console access (ERR_SEARCH_CONSOLE_ACCESS_REVOKED): reconnect the property |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |
| **503** | Upstream provider unavailable, retry after the number of seconds in the Retry-After header: Google&#39;s own value when it sent one, otherwise 900 after a quota error and 60 after an outage |  * Retry-After - Seconds to wait before retrying <br>  |

# **GetSearchConsoleRows**
> SearchConsoleRowsResponse GetSearchConsoleRows(project_id, dimensions, range = var.range, from = var.from, to = var.to, sort = "impressions", page = 1, per_page = 20, start_row = 0, output = var.output, search_type = "web", filters = var.filters, data_state = "final", aggregation_type = "auto", property = var.property)

Search Console rows by several dimensions (Growth+)

Google Search Console rows grouped by 1 to 3 dimensions (date, country, device, page, query, searchAppearance, property) over a date range, each row carrying its dimension values as fields plus impressions, clicks, ctr (0..1) and position, ranked by impressions, clicks, ctr or position, paginated. Google ranks rows by clicks and returns at most 25,000 per request (truncated: true when reached); start_row moves that window. Query rows exclude anonymized queries, so rows add up to less than the summary totals. Requires a connected Search Console property (Growth+) and live reads: stored reads return ERR_INVALID_PARAM. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access and ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying. A combination Google refuses comes back as ERR_INVALID_PARAM with its reason.

### Example
```R
library(llmpulse)

# Search Console rows by several dimensions (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_dimensions <- "page,query" # character | Comma-separated dimensions to group by, 1 to 3 of date, country, device, page, query, searchAppearance, property. Each becomes a field of every row; country and device values are lowercase. property is the Search Console property the row comes from (see the property parameter).
var_range <- 56 # integer | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (Optional)
var_from <- "from_example" # character | Start date (YYYY-MM-DD). Defaults to 30 days ago. (Optional)
var_to <- "to_example" # character | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (Optional)
var_sort <- "impressions" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_start_row <- 0 # integer | Google ranks rows by clicks and returns at most 25,000 per request. start_row moves that window down the ranking (e.g. 25000 for the next block); sort and pagination apply within the window. (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)
var_search_type <- "web" # character | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (Optional)
var_filters <- "[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}]" # character | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (Optional)
var_data_state <- "final" # character | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (Optional)
var_aggregation_type <- "auto" # character | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (Optional)
var_property <- "all" # character | Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSearchConsoleRows(var_project_id, var_dimensions, range = var_range, from = var_from, to = var_to, sort = var_sort, page = var_page, per_page = var_per_page, start_row = var_start_row, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type, property = var_propertydata_file = "result.txt")
result <- api_instance$GetSearchConsoleRows(var_project_id, var_dimensions, range = var_range, from = var_from, to = var_to, sort = var_sort, page = var_page, per_page = var_per_page, start_row = var_start_row, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type, property = var_property)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **dimensions** | **character**| Comma-separated dimensions to group by, 1 to 3 of date, country, device, page, query, searchAppearance, property. Each becomes a field of every row; country and device values are lowercase. property is the Search Console property the row comes from (see the property parameter). | 
 **range** | **integer**| Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **character**| Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **character**| End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **sort** | Enum [impressions, clicks, ctr, position] |  | [optional] [default to &quot;impressions&quot;]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **start_row** | **integer**| Google ranks rows by clicks and returns at most 25,000 per request. start_row moves that window down the ranking (e.g. 25000 for the next block); sort and pagination apply within the window. | [optional] [default to 0]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **search_type** | Enum [web, image, video, news, discover, googleNews] | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to &quot;web&quot;]
 **filters** | **character**| Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **data_state** | Enum [final, all] | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to &quot;final&quot;]
 **aggregation_type** | Enum [auto, byPage, byProperty] | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to &quot;auto&quot;]
 **property** | **character**| Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. | [optional] 

### Return type

[**SearchConsoleRowsResponse**](SearchConsoleRowsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Search Console rows |  -  |
| **401** | Authentication failed |  -  |
| **403** | Plan below Growth (ERR_PLAN_REQUIRED), or Google revoked the project&#39;s Search Console access (ERR_SEARCH_CONSOLE_ACCESS_REVOKED): reconnect the property |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |
| **503** | Upstream provider unavailable, retry after the number of seconds in the Retry-After header: Google&#39;s own value when it sent one, otherwise 900 after a quota error and 60 after an outage |  * Retry-After - Seconds to wait before retrying <br>  |

# **GetSearchConsoleSummary**
> SearchConsoleSummaryResponse GetSearchConsoleSummary(project_id, range = var.range, from = var.from, to = var.to, dimension = var.dimension, limit = var.limit, search_type = "web", filters = var.filters, data_state = "final", aggregation_type = "auto", property = var.property)

Search Console summary (Growth+)

Google Search Console headline totals (impressions, clicks, ctr as a 0..1 fraction, average position) for the project over a date range. Pass dimension=country, device, page, query or searchAppearance to also receive the breakdown aggregated over the range, capped by limit, or dimension=property for one row per property read (with a property list or property=all). With filters and no dimension, totals are the complete figure Google reports for that filter. Breakdown rows are capped by limit and by Google's 25,000-row maximum; breakdown_truncated: true means rows were left out. Query rows exclude anonymized queries, and page and searchAppearance rows are counted per page rather than per property, so breakdown rows can differ from the totals. Requires the project to have a connected Search Console property and the Growth plan or above; otherwise returns ERR_SEARCH_CONSOLE_NOT_CONNECTED or ERR_PLAN_REQUIRED. X-Search-Console-Backend identifies stored or live reads. Stored reads use synced data without contacting Google. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access; reconnect the property in Preferences > Project Settings > Data Connections. They return ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying.

### Example
```R
library(llmpulse)

# Search Console summary (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (Optional)
var_from <- "from_example" # character | Start date (YYYY-MM-DD). Defaults to 30 days ago. (Optional)
var_to <- "to_example" # character | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (Optional)
var_dimension <- "dimension_example" # character | Optional breakdown aggregated over the range. country and device are lowercased; page and query keep the casing Google returns, because a page URL is case sensitive. property gives one row per property read (see the property parameter). (Optional)
var_limit <- 56 # integer | Maximum breakdown rows, sorted by impressions descending. Default and maximum 1000. Use /search_console/queries or /search_console/pages to page through up to 25,000 rows. (Optional)
var_search_type <- "web" # character | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (Optional)
var_filters <- "[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}]" # character | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (Optional)
var_data_state <- "final" # character | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (Optional)
var_aggregation_type <- "auto" # character | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (Optional)
var_property <- "all" # character | Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSearchConsoleSummary(var_project_id, range = var_range, from = var_from, to = var_to, dimension = var_dimension, limit = var_limit, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type, property = var_propertydata_file = "result.txt")
result <- api_instance$GetSearchConsoleSummary(var_project_id, range = var_range, from = var_from, to = var_to, dimension = var_dimension, limit = var_limit, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type, property = var_property)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **character**| Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **character**| End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **dimension** | Enum [country, device, page, query, searchAppearance, property] | Optional breakdown aggregated over the range. country and device are lowercased; page and query keep the casing Google returns, because a page URL is case sensitive. property gives one row per property read (see the property parameter). | [optional] 
 **limit** | **integer**| Maximum breakdown rows, sorted by impressions descending. Default and maximum 1000. Use /search_console/queries or /search_console/pages to page through up to 25,000 rows. | [optional] 
 **search_type** | Enum [web, image, video, news, discover, googleNews] | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to &quot;web&quot;]
 **filters** | **character**| Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **data_state** | Enum [final, all] | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to &quot;final&quot;]
 **aggregation_type** | Enum [auto, byPage, byProperty] | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to &quot;auto&quot;]
 **property** | **character**| Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. | [optional] 

### Return type

[**SearchConsoleSummaryResponse**](SearchConsoleSummaryResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Search Console summary |  -  |
| **401** | Authentication failed |  -  |
| **403** | Plan below Growth (ERR_PLAN_REQUIRED), or Google revoked the project&#39;s Search Console access (ERR_SEARCH_CONSOLE_ACCESS_REVOKED): reconnect the property |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |
| **503** | Upstream provider unavailable, retry after the number of seconds in the Retry-After header: Google&#39;s own value when it sent one, otherwise 900 after a quota error and 60 after an outage |  * Retry-After - Seconds to wait before retrying <br>  |

# **GetSearchConsoleTimeseries**
> SearchConsoleTimeseriesResponse GetSearchConsoleTimeseries(project_id, range = var.range, from = var.from, to = var.to, granularity = var.granularity, output = var.output, search_type = "web", filters = var.filters, data_state = "final", aggregation_type = "auto", property = var.property)

Search Console time series (Growth+)

Google Search Console series (impressions, clicks, ctr, position) bucketed by day, week or month, property-wide unless filters narrows it. Requires a connected Search Console property (Growth+). X-Search-Console-Backend identifies stored or live reads. Stored reads use synced data without contacting Google. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access; reconnect the property in Preferences > Project Settings > Data Connections. They return ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying.

### Example
```R
library(llmpulse)

# Search Console time series (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (Optional)
var_from <- "from_example" # character | Start date (YYYY-MM-DD). Defaults to 30 days ago. (Optional)
var_to <- "to_example" # character | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (Optional)
var_granularity <- "granularity_example" # character |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)
var_search_type <- "web" # character | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (Optional)
var_filters <- "[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}]" # character | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (Optional)
var_data_state <- "final" # character | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (Optional)
var_aggregation_type <- "auto" # character | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (Optional)
var_property <- "all" # character | Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSearchConsoleTimeseries(var_project_id, range = var_range, from = var_from, to = var_to, granularity = var_granularity, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type, property = var_propertydata_file = "result.txt")
result <- api_instance$GetSearchConsoleTimeseries(var_project_id, range = var_range, from = var_from, to = var_to, granularity = var_granularity, output = var_output, search_type = var_search_type, filters = var_filters, data_state = var_data_state, aggregation_type = var_aggregation_type, property = var_property)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **character**| Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **character**| End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **granularity** | Enum [day, week, month] |  | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **search_type** | Enum [web, image, video, news, discover, googleNews] | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to &quot;web&quot;]
 **filters** | **character**| Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **data_state** | Enum [final, all] | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to &quot;final&quot;]
 **aggregation_type** | Enum [auto, byPage, byProperty] | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to &quot;auto&quot;]
 **property** | **character**| Which Search Console properties to read; /search_console/properties lists them. Omit it for the primary property, or pass one property id (e.g. sc-domain:example.com) to read that one; both answer with property. A comma-separated list of ids, or all, combines several and answers with properties, excluded_properties and property_errors instead: excluded_properties are left out because another selected property already counts them (a URL-prefix property under a domain property), so no click is counted twice; property_errors are properties Google refused, left out of the figures and also named in the X-Search-Console-Property-Errors header. When Google refuses every property, the request fails as a single-property read would. | [optional] 

### Return type

[**SearchConsoleTimeseriesResponse**](SearchConsoleTimeseriesResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Search Console time series |  -  |
| **401** | Authentication failed |  -  |
| **403** | Plan below Growth (ERR_PLAN_REQUIRED), or Google revoked the project&#39;s Search Console access (ERR_SEARCH_CONSOLE_ACCESS_REVOKED): reconnect the property |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |
| **503** | Upstream provider unavailable, retry after the number of seconds in the Retry-After header: Google&#39;s own value when it sent one, otherwise 900 after a quota error and 60 after an outage |  * Retry-After - Seconds to wait before retrying <br>  |

# **ListSearchConsoleProperties**
> SearchConsolePropertiesResponse ListSearchConsoleProperties(project_id, output = var.output)

List Search Console properties (Growth+)

The Google Search Console properties connected to the project, up to max_properties, from one or more Google accounts, primary first. Each id is a value the property parameter of the other /search_console endpoints accepts: omit it for the primary property, pass one id, or a comma-separated list or all to combine several. type is domain (sc-domain:example.com, which counts every subdomain and protocol) or url_prefix. status reconnect_required means Google refused the stored access; reconnect the property in Preferences > Project Settings > Data Connections. An empty data list means the project has no Search Console connection. Requires the Growth plan or above.

### Example
```R
library(llmpulse)

# List Search Console properties (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListSearchConsoleProperties(var_project_id, output = var_outputdata_file = "result.txt")
result <- api_instance$ListSearchConsoleProperties(var_project_id, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**SearchConsolePropertiesResponse**](SearchConsolePropertiesResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Search Console properties |  -  |
| **401** | Authentication failed |  -  |
| **403** | Access forbidden |  -  |
| **404** | Resource not found |  -  |

