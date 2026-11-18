# SourcesCitationIntelligenceApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddUrlListEntries**](SourcesCitationIntelligenceApi.md#AddUrlListEntries) | **POST** /url_lists/{id}/entries | Add entries to a URL list
[**CreateUrlList**](SourcesCitationIntelligenceApi.md#CreateUrlList) | **POST** /url_lists | Create a URL list
[**DeleteUrlList**](SourcesCitationIntelligenceApi.md#DeleteUrlList) | **DELETE** /url_lists/{id} | Delete a URL list
[**GetCitedUrlContent**](SourcesCitationIntelligenceApi.md#GetCitedUrlContent) | **GET** /citation_intelligence/urls/{url_sha256}/content | Cited URL cached content
[**GetCitedUrlDetail**](SourcesCitationIntelligenceApi.md#GetCitedUrlDetail) | **GET** /citation_intelligence/urls/{url_sha256} | Cited URL detail
[**GetMentionsByCitingDomain**](SourcesCitationIntelligenceApi.md#GetMentionsByCitingDomain) | **GET** /citation_intelligence/mentions_by_domain | Mention share by citing domain
[**GetUrlList**](SourcesCitationIntelligenceApi.md#GetUrlList) | **GET** /url_lists/{id} | Get a URL list report
[**ListCitationGroups**](SourcesCitationIntelligenceApi.md#ListCitationGroups) | **GET** /citation_intelligence/groups | Grouped citation intelligence
[**ListCitedUrlOccurrences**](SourcesCitationIntelligenceApi.md#ListCitedUrlOccurrences) | **GET** /citation_intelligence/urls/{url_sha256}/occurrences | Cited URL occurrences
[**ListSources**](SourcesCitationIntelligenceApi.md#ListSources) | **GET** /dimensions/sources | List source URLs
[**ListUrlLists**](SourcesCitationIntelligenceApi.md#ListUrlLists) | **GET** /url_lists | List URL lists
[**RemoveUrlListEntries**](SourcesCitationIntelligenceApi.md#RemoveUrlListEntries) | **POST** /url_lists/{id}/entries/remove | Remove entries from a URL list
[**UpdateUrlList**](SourcesCitationIntelligenceApi.md#UpdateUrlList) | **PATCH** /url_lists/{id} | Update a URL list


# **AddUrlListEntries**
> UrlListEntriesAddResponse AddUrlListEntries(id, url_list_entries_add_request)

Add entries to a URL list

Adds entries, as POST /url_lists reads them. A rule the list already holds keeps its place and takes only the added_on, cost and channel this request sends for it. Values that do not parse come back in invalid_entries. Requires a `read_write` scope API key and the Growth plan.

### Example
```R
library(llmpulse)

# Add entries to a URL list
#
# prepare function argument(s)
var_id <- 56 # integer | 
var_url_list_entries_add_request <- UrlListEntriesAddRequest$new(123, c(UrlListEntryInput$new("value_example", "url", "added_on_example", 123, "channel_example")), "url") # UrlListEntriesAddRequest | 

api_instance <- SourcesCitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AddUrlListEntries(var_id, var_url_list_entries_add_requestdata_file = "result.txt")
result <- api_instance$AddUrlListEntries(var_id, var_url_list_entries_add_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 
 **url_list_entries_add_request** | [**UrlListEntriesAddRequest**](UrlListEntriesAddRequest.md)|  | 

### Return type

[**UrlListEntriesAddResponse**](UrlListEntriesAddResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Entries written |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **CreateUrlList**
> UrlListCreateResponse CreateUrlList(url_list_create_request)

Create a URL list

Creates a URL list. Each entry is a string or an object with value, match_type, added_on (YYYY-MM-DD, default today), cost (in the list currency) and channel. Without a match_type, \"acme.com/blog/*\" is a prefix, a value with a path or query an exact URL and a bare host a domain. A list holds at most 1000 entries and a project at most 100 lists; the name is unique per project, case-insensitive. Refusals answer ERR_INVALID_PARAM with a reason token in error.meta.reason. Requires a `read_write` scope API key and the Growth plan.

### Example
```R
library(llmpulse)

# Create a URL list
#
# prepare function argument(s)
var_url_list_create_request <- UrlListCreateRequest$new(123, "name_example", "description_example", "USD", c(UrlListEntryInput$new("value_example", "url", "added_on_example", 123, "channel_example")), "url") # UrlListCreateRequest | 

api_instance <- SourcesCitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateUrlList(var_url_list_create_requestdata_file = "result.txt")
result <- api_instance$CreateUrlList(var_url_list_create_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url_list_create_request** | [**UrlListCreateRequest**](UrlListCreateRequest.md)|  | 

### Return type

[**UrlListCreateResponse**](UrlListCreateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |
| **403** | API key lacks write permission |  -  |
| **422** | Invalid parameters |  -  |

# **DeleteUrlList**
> UrlListDeleteResponse DeleteUrlList(project_id, id)

Delete a URL list

Deletes a URL list and its entries. Citation data is not affected. Requires a `read_write` scope API key and the Growth plan.

### Example
```R
library(llmpulse)

# Delete a URL list
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- 56 # integer | 

api_instance <- SourcesCitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DeleteUrlList(var_project_id, var_iddata_file = "result.txt")
result <- api_instance$DeleteUrlList(var_project_id, var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **id** | **integer**|  | 

### Return type

[**UrlListDeleteResponse**](UrlListDeleteResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Deleted |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |

# **GetCitedUrlContent**
> GetCitedUrlContent(project_id, url_sha256)

Cited URL cached content

Unavailable page content keeps the cited URL and citation metrics. Page metadata/content and unknown brand_mentioned/competitor_mentioned return null. content_gap_status is content_unavailable (or missing_page_cache) without usable content, and mentions_not_processed when the page has usable content but its mention analysis has not completed for this project. Mention fields (brand_mentioned, competitor_mentioned, brand_position, brands, mentions, content_gap_status) describe the analysis for the requesting project: a page not yet analyzed for it returns null (never false) brand_mentioned, competitor_mentioned and brand_position, empty brands and mentions arrays and page_cache.mentions_processed false. page_cache.mentions_processed is true exactly when brand_mentioned is not null. An analyzed page keeps its last result until a newer analysis replaces it. status_code shows a saved successful response or observed 404/410; other crawl failures and error_message are hidden. last_crawled_at dates the saved copy. Domain/host crawled_urls_count counts usable copies; brand_mentioned_urls_count and competitor_mentioned_urls_count count only URLs analyzed for the project and are null when none is.

### Example
```R
library(llmpulse)

# Cited URL cached content
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_url_sha256 <- "url_sha256_example" # character | 64-character hex SHA-256 of the cited URL

api_instance <- SourcesCitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetCitedUrlContent(var_project_id, var_url_sha256)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **url_sha256** | **character**| 64-character hex SHA-256 of the cited URL | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Sanitized cached content + mention evidence |  -  |
| **404** | Resource not found |  -  |

# **GetCitedUrlDetail**
> GetCitedUrlDetail(project_id, url_sha256, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, brand_kind = var.brand_kind, from = var.from, to = var.to, source_type = var.source_type, sentiment = var.sentiment, content_gap = var.content_gap, include_series = FALSE)

Cited URL detail

Unavailable page content keeps the cited URL and citation metrics. Page metadata/content and unknown brand_mentioned/competitor_mentioned return null. content_gap_status is content_unavailable (or missing_page_cache) without usable content, and mentions_not_processed when the page has usable content but its mention analysis has not completed for this project. Mention fields (brand_mentioned, competitor_mentioned, brand_position, brands, mentions, content_gap_status) describe the analysis for the requesting project: a page not yet analyzed for it returns null (never false) brand_mentioned, competitor_mentioned and brand_position, empty brands and mentions arrays and page_cache.mentions_processed false. page_cache.mentions_processed is true exactly when brand_mentioned is not null. An analyzed page keeps its last result until a newer analysis replaces it. status_code shows a saved successful response or observed 404/410; other crawl failures and error_message are hidden. last_crawled_at dates the saved copy. Domain/host crawled_urls_count counts usable copies; brand_mentioned_urls_count and competitor_mentioned_urls_count count only URLs analyzed for the project and are null when none is. The filters narrow stats and citation_series alike. citation_series (with include_series=true) holds the answers citing the URL under the same filters: granularity (day, week or month, from the account tracking cadence, with weeks when a daily account spans more than 60 days, starting on Monday), total (equal to total_responses), by_model (answers per AI model, largest first, which can include enabled models outside the seven the model filter accepts) and data, one { date, value } point per period that holds a filtered answer, so a zero means answers ran and none cited it. Periods date each answer by the day it was created in Europe/Madrid time, the date from and to filter.

### Example
```R
library(llmpulse)

# Cited URL detail
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_url_sha256 <- "url_sha256_example" # character | 64-character hex SHA-256 of the cited URL
var_model <- "model_example" # character | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai, baidu_ai, naver_ai_tab, qwen, doubao and bing_ai_mode are accepted: any other value, including another model enabled for the API key's user, returns 422 ERR_INVALID_PARAM (invalid model). One of those eleven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID. An id that is not a plain positive number, or that names no prompt of the project, returns 422 ERR_INVALID_PARAM. (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_source_type <- "source_type_example" # character |  (Optional)
var_sentiment <- "sentiment_example" # character |  (Optional)
var_content_gap <- "content_gap_example" # character | mentioned: the cited page mentions your brand. gap: it mentions a competitor but not your brand. Only pages with usable content whose mention analysis has completed for this project match. (Optional)
var_include_series <- FALSE # character | Adds citation_series. Without it the response is unchanged. (Optional)

api_instance <- SourcesCitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetCitedUrlDetail(var_project_id, var_url_sha256, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, brand_kind = var_brand_kind, from = var_from, to = var_to, source_type = var_source_type, sentiment = var_sentiment, content_gap = var_content_gap, include_series = var_include_series)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **url_sha256** | **character**| 64-character hex SHA-256 of the cited URL | 
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai, naver_ai_tab, qwen, doubao, bing_ai_mode] | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai, baidu_ai, naver_ai_tab, qwen, doubao and bing_ai_mode are accepted: any other value, including another model enabled for the API key&#39;s user, returns 422 ERR_INVALID_PARAM (invalid model). One of those eleven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID. An id that is not a plain positive number, or that names no prompt of the project, returns 422 ERR_INVALID_PARAM. | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **source_type** | Enum [owned, competitor, third_party, social_media, own_domain, ugc, background] |  | [optional] 
 **sentiment** | Enum [negative] |  | [optional] 
 **content_gap** | Enum [mentioned, gap] | mentioned: the cited page mentions your brand. gap: it mentions a competitor but not your brand. Only pages with usable content whose mention analysis has completed for this project match. | [optional] 
 **include_series** | **character**| Adds citation_series. Without it the response is unchanged. | [optional] [default to FALSE]

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | URL-level intelligence |  -  |
| **404** | Resource not found |  -  |

# **GetMentionsByCitingDomain**
> GetMentionsByCitingDomain(project_id, domains, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, brand_kind = var.brand_kind, from = var.from, to = var.to)

Mention share by citing domain

For the responses where each given source domain is cited, returns the share of those responses that mention the brand vs each competitor (brand + competitors sum to 100% per domain). Pass multiple domains to get the whole matrix in one call.

### Example
```R
library(llmpulse)

# Mention share by citing domain
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_domains <- c("inner_example") # array[character] | Source domains to analyze: one domain or a comma-separated list, e.g. domains=gmac.com,educaweb.com. The bracket form domains[]=gmac.com&domains[]=educaweb.com is also accepted.
var_model <- "model_example" # character | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai, baidu_ai, naver_ai_tab, qwen, doubao and bing_ai_mode are accepted: any other value, including another model enabled for the API key's user, returns 422 ERR_INVALID_PARAM (invalid model). One of those eleven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID. An id that is not a plain positive number, or that names no prompt of the project, returns 422 ERR_INVALID_PARAM. (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)

api_instance <- SourcesCitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetMentionsByCitingDomain(var_project_id, var_domains, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, brand_kind = var_brand_kind, from = var_from, to = var_to)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **domains** | list( **character** )| Source domains to analyze: one domain or a comma-separated list, e.g. domains&#x3D;gmac.com,educaweb.com. The bracket form domains[]&#x3D;gmac.com&amp;domains[]&#x3D;educaweb.com is also accepted. | 
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai, naver_ai_tab, qwen, doubao, bing_ai_mode] | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai, baidu_ai, naver_ai_tab, qwen, doubao and bing_ai_mode are accepted: any other value, including another model enabled for the API key&#39;s user, returns 422 ERR_INVALID_PARAM (invalid model). One of those eleven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID. An id that is not a plain positive number, or that names no prompt of the project, returns 422 ERR_INVALID_PARAM. | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Mention share per citing domain |  -  |
| **422** | Invalid parameters |  -  |

# **GetUrlList**
> UrlListDetailResponse GetUrlList(id, project_id, status = var.status, order = "citations", direction = "desc", page = 1, per_page = 20, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, brand_kind = var.brand_kind, from = var.from, to = var.to, range = var.range)

Get a URL list report

The list, its summary (entries_count, cited_entries, citations, answers in the window, citation_rate, avg_citation_position, median_days_to_first_citation, total_cost, cost_per_cited_entry) and a page of its entries. An entry's status is cited (an answer cited it in the window), lost (cited before the window, not in it) or not_cited. first_cited_at reads the filtered answers up to the window's end. days_to_first_citation is null before the first citation or when the page was cited before it was added. brand_mentioned is set for exact URLs once their page was read, else null. Without from/to or range the window is all time. Requires the Growth plan.

### Example
```R
library(llmpulse)

# Get a URL list report
#
# prepare function argument(s)
var_id <- 56 # integer | 
var_project_id <- 56 # integer | Project ID
var_status <- "status_example" # character | Only entries with this status. (Optional)
var_order <- "citations" # character |  (Optional)
var_direction <- "desc" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_model <- "model_example" # character | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai, baidu_ai, naver_ai_tab, qwen, doubao and bing_ai_mode are accepted: any other value, including another model enabled for the API key's user, returns 422 ERR_INVALID_PARAM (invalid model). One of those eleven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID. An id that is not a plain positive number, or that names no prompt of the project, returns 422 ERR_INVALID_PARAM. (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_range <- 56 # integer | Number of days to look back (alternative to from/to, which win when both are given). A value that is not a plain positive number returns 422 ERR_INVALID_PARAM, even beside from/to. (Optional)

api_instance <- SourcesCitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetUrlList(var_id, var_project_id, status = var_status, order = var_order, direction = var_direction, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, brand_kind = var_brand_kind, from = var_from, to = var_to, range = var_rangedata_file = "result.txt")
result <- api_instance$GetUrlList(var_id, var_project_id, status = var_status, order = var_order, direction = var_direction, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, brand_kind = var_brand_kind, from = var_from, to = var_to, range = var_range)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 
 **project_id** | **integer**| Project ID | 
 **status** | Enum [cited, lost, not_cited] | Only entries with this status. | [optional] 
 **order** | Enum [value, status, added_on, first_cited_at, days_to_cite, citations, avg_position, cost, channel] |  | [optional] [default to &quot;citations&quot;]
 **direction** | Enum [asc, desc] |  | [optional] [default to &quot;desc&quot;]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai, naver_ai_tab, qwen, doubao, bing_ai_mode] | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai, baidu_ai, naver_ai_tab, qwen, doubao and bing_ai_mode are accepted: any other value, including another model enabled for the API key&#39;s user, returns 422 ERR_INVALID_PARAM (invalid model). One of those eleven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID. An id that is not a plain positive number, or that names no prompt of the project, returns 422 ERR_INVALID_PARAM. | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **range** | **integer**| Number of days to look back (alternative to from/to, which win when both are given). A value that is not a plain positive number returns 422 ERR_INVALID_PARAM, even beside from/to. | [optional] 

### Return type

[**UrlListDetailResponse**](UrlListDetailResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | URL list report |  -  |
| **403** | Endpoint requires the Growth plan or above |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **ListCitationGroups**
> ListCitationGroups(project_id, view = "url", page = 1, per_page = 20, order = var.order, direction = var.direction, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, brand_kind = var.brand_kind, from = var.from, to = var.to, key = var.key, include_series = FALSE, query = var.query, source_type = var.source_type, sentiment = var.sentiment, content_gap = var.content_gap)

Grouped citation intelligence

Grouped citation intelligence by url / domain / host with per-model breakdown, citation rate, and avg citation position. Counts and citation rate include visible citations and background source references. Average position ignores rows with position=0. Owned and competitor source matching honor the project's exact-subdomain setting. Filter vocabulary aligns with `source_type` returned by the API. Unavailable page content keeps the cited URL and citation metrics. Page metadata/content and unknown brand_mentioned/competitor_mentioned return null. content_gap_status is content_unavailable (or missing_page_cache) without usable content, and mentions_not_processed when the page has usable content but its mention analysis has not completed for this project. Mention fields (brand_mentioned, competitor_mentioned, brand_position, brands, mentions, content_gap_status) describe the analysis for the requesting project: a page not yet analyzed for it returns null (never false) brand_mentioned, competitor_mentioned and brand_position, empty brands and mentions arrays and page_cache.mentions_processed false. page_cache.mentions_processed is true exactly when brand_mentioned is not null. An analyzed page keeps its last result until a newer analysis replaces it. status_code shows a saved successful response or observed 404/410; other crawl failures and error_message are hidden. last_crawled_at dates the saved copy. Domain/host crawled_urls_count counts usable copies; brand_mentioned_urls_count and competitor_mentioned_urls_count count only URLs analyzed for the project and are null when none is. Pass key to read one group; brand_kind filters by the brand focus of the prompts, like the source page. citation_series (with include_series=true) holds the answers citing the URL, domain or host under the same filters: granularity (day, week or month, from the account tracking cadence, with weeks when a daily account spans more than 60 days, starting on Monday), total (equal to total_responses), by_model (answers per AI model, largest first, which can include enabled models outside the seven the model filter accepts) and data, one { date, value } point per period that holds a filtered answer, so a zero means answers ran and none cited it. Periods date each answer by the day it was created in Europe/Madrid time, the date from and to filter.

### Example
```R
library(llmpulse)

# Grouped citation intelligence
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_view <- "url" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_order <- "order_example" # character |  (Optional)
var_direction <- "direction_example" # character |  (Optional)
var_model <- "model_example" # character | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai, baidu_ai, naver_ai_tab, qwen, doubao and bing_ai_mode are accepted: any other value, including another model enabled for the API key's user, returns 422 ERR_INVALID_PARAM (invalid model). One of those eleven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID. An id that is not a plain positive number, or that names no prompt of the project, returns 422 ERR_INVALID_PARAM. (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_key <- "key_example" # character | Return only this group of the chosen view: a domain (view=domain), a host (view=host) or a cited URL exactly as listed (view=url). Domains and hosts match case-insensitively, without www. A view=url key is one raw URL, so its variants (a tracking parameter, a trailing slash) stay separate rows; GET /citation_intelligence/urls/{url_sha256} merges them, as the app does. No match returns an empty list (total 0), not an error. (Optional)
var_include_series <- FALSE # character | Requires key, else 422 ERR_INVALID_PARAM. Adds citation_series to the group's row. (Optional)
var_query <- "query_example" # character |  (Optional)
var_source_type <- "source_type_example" # character |  (Optional)
var_sentiment <- "sentiment_example" # character |  (Optional)
var_content_gap <- "content_gap_example" # character | mentioned: the cited page mentions your brand. gap: it mentions a competitor but not your brand. Only pages with usable content whose mention analysis has completed for this project match. (Optional)

api_instance <- SourcesCitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListCitationGroups(var_project_id, view = var_view, page = var_page, per_page = var_per_page, order = var_order, direction = var_direction, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, brand_kind = var_brand_kind, from = var_from, to = var_to, key = var_key, include_series = var_include_series, query = var_query, source_type = var_source_type, sentiment = var_sentiment, content_gap = var_content_gap)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **view** | Enum [url, domain, host] |  | [optional] [default to &quot;url&quot;]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **order** | Enum [group_key, total_responses, total_citations, citation_rate, avg_citation_position, first_seen_at, last_seen_at] |  | [optional] 
 **direction** | Enum [asc, desc] |  | [optional] 
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai, naver_ai_tab, qwen, doubao, bing_ai_mode] | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai, baidu_ai, naver_ai_tab, qwen, doubao and bing_ai_mode are accepted: any other value, including another model enabled for the API key&#39;s user, returns 422 ERR_INVALID_PARAM (invalid model). One of those eleven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID. An id that is not a plain positive number, or that names no prompt of the project, returns 422 ERR_INVALID_PARAM. | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **key** | **character**| Return only this group of the chosen view: a domain (view&#x3D;domain), a host (view&#x3D;host) or a cited URL exactly as listed (view&#x3D;url). Domains and hosts match case-insensitively, without www. A view&#x3D;url key is one raw URL, so its variants (a tracking parameter, a trailing slash) stay separate rows; GET /citation_intelligence/urls/{url_sha256} merges them, as the app does. No match returns an empty list (total 0), not an error. | [optional] 
 **include_series** | **character**| Requires key, else 422 ERR_INVALID_PARAM. Adds citation_series to the group&#39;s row. | [optional] [default to FALSE]
 **query** | **character**|  | [optional] 
 **source_type** | Enum [owned, competitor, third_party, social_media, own_domain, ugc, background] |  | [optional] 
 **sentiment** | Enum [negative] |  | [optional] 
 **content_gap** | Enum [mentioned, gap] | mentioned: the cited page mentions your brand. gap: it mentions a competitor but not your brand. Only pages with usable content whose mention analysis has completed for this project match. | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Grouped citation intelligence |  -  |
| **422** | Invalid parameters |  -  |

# **ListCitedUrlOccurrences**
> ListCitedUrlOccurrences(project_id, url_sha256, page = 1, per_page = 20)

Cited URL occurrences

### Example
```R
library(llmpulse)

# Cited URL occurrences
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_url_sha256 <- "url_sha256_example" # character | 64-character hex SHA-256 of the cited URL
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)

api_instance <- SourcesCitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListCitedUrlOccurrences(var_project_id, var_url_sha256, page = var_page, per_page = var_per_page)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **url_sha256** | **character**| 64-character hex SHA-256 of the cited URL | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated occurrences |  -  |
| **404** | Resource not found |  -  |

# **ListSources**
> ListSources(project_id, page = 1, per_page = 20, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, from = var.from, to = var.to, source_type = var.source_type, mention_filter = var.mention_filter, competitors = var.competitors, output = var.output, prompt_type = var.prompt_type, brand_kind = var.brand_kind, range = var.range)

List source URLs

### Example
```R
library(llmpulse)

# List source URLs
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_model <- "model_example" # character | Filter by one AI model. It must be a model enabled for the API key's user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID. An id that is not a plain positive number, or that names no prompt of the project, returns 422 ERR_INVALID_PARAM. (Optional)
var_from <- "from_example" # character | Start of the window. Sent alone, the window runs from it to the end of today. A from later than to, or a window longer than 1,500 days, returns 422 ERR_INVALID_PARAM. (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. Sent without from, the window covers the 30 days that end on it. (Optional)
var_source_type <- "source_type_example" # character | Filter by source ownership. Owned and competitor matching honor the project's exact-subdomain setting. Any other value, including a differently cased one, returns ERR_INVALID_PARAM. (Optional)
var_mention_filter <- "mention_filter_example" # character | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space; on answers, finished answers only). Combine with 'competitors' to narrow the competitor side to specific rivals; on a negative cell that reads 'none of these'. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value 'competitors_only' is still accepted as an alias of competitor_not_you. (Optional)
var_competitors <- "competitors_example" # character | Comma-separated competitor IDs (a malformed or unknown ID returns ERR_INVALID_PARAM) (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)
var_prompt_type <- "prompt_type_example" # character | One prompt type or a comma-separated list: informational, navigational, commercial, transactional (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_range <- 56 # integer | Number of days to look back (alternative to from/to, which win when both are given). A value that is not a plain positive number returns 422 ERR_INVALID_PARAM, even beside from/to. (Optional)

api_instance <- SourcesCitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListSources(var_project_id, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, from = var_from, to = var_to, source_type = var_source_type, mention_filter = var_mention_filter, competitors = var_competitors, output = var_output, prompt_type = var_prompt_type, brand_kind = var_brand_kind, range = var_range)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai, naver_ai_tab, qwen, doubao, bing_ai_mode] | Filter by one AI model. It must be a model enabled for the API key&#39;s user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID. An id that is not a plain positive number, or that names no prompt of the project, returns 422 ERR_INVALID_PARAM. | [optional] 
 **from** | **character**| Start of the window. Sent alone, the window runs from it to the end of today. A from later than to, or a window longer than 1,500 days, returns 422 ERR_INVALID_PARAM. | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. Sent without from, the window covers the 30 days that end on it. | [optional] 
 **source_type** | Enum [owned, competitor, third_party] | Filter by source ownership. Owned and competitor matching honor the project&#39;s exact-subdomain setting. Any other value, including a differently cased one, returns ERR_INVALID_PARAM. | [optional] 
 **mention_filter** | Enum [mentions_you, not_mentions_you, mentions_competitor, not_mentions_competitor, you_and_competitor, competitor_not_you, you_not_competitor, no_brands] | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space; on answers, finished answers only). Combine with &#39;competitors&#39; to narrow the competitor side to specific rivals; on a negative cell that reads &#39;none of these&#39;. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value &#39;competitors_only&#39; is still accepted as an alias of competitor_not_you. | [optional] 
 **competitors** | **character**| Comma-separated competitor IDs (a malformed or unknown ID returns ERR_INVALID_PARAM) | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **prompt_type** | **character**| One prompt type or a comma-separated list: informational, navigational, commercial, transactional | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **range** | **integer**| Number of days to look back (alternative to from/to, which win when both are given). A value that is not a plain positive number returns 422 ERR_INVALID_PARAM, even beside from/to. | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated sources |  -  |
| **422** | Invalid parameters |  -  |

# **ListUrlLists**
> UrlListsResponse ListUrlLists(project_id, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, brand_kind = var.brand_kind, from = var.from, to = var.to, range = var.range)

List URL lists

A URL list is a named set of rules, each an exact URL (matched over http and https, with or without www), a URL prefix (every page under host/path) or a domain (the site and its subdomains). Its numbers count the AI answers to the prompts tracked in the project: cited_entries is the entries an answer cited in the window and citations the answers citing any entry, each once. Without from/to or range the window is all time. Requires the Growth plan; lower tiers receive ERR_PLAN_REQUIRED.

### Example
```R
library(llmpulse)

# List URL lists
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_model <- "model_example" # character | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai, baidu_ai, naver_ai_tab, qwen, doubao and bing_ai_mode are accepted: any other value, including another model enabled for the API key's user, returns 422 ERR_INVALID_PARAM (invalid model). One of those eleven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID. An id that is not a plain positive number, or that names no prompt of the project, returns 422 ERR_INVALID_PARAM. (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_range <- 56 # integer | Number of days to look back (alternative to from/to, which win when both are given). A value that is not a plain positive number returns 422 ERR_INVALID_PARAM, even beside from/to. (Optional)

api_instance <- SourcesCitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListUrlLists(var_project_id, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, brand_kind = var_brand_kind, from = var_from, to = var_to, range = var_rangedata_file = "result.txt")
result <- api_instance$ListUrlLists(var_project_id, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, brand_kind = var_brand_kind, from = var_from, to = var_to, range = var_range)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai, naver_ai_tab, qwen, doubao, bing_ai_mode] | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai, baidu_ai, naver_ai_tab, qwen, doubao and bing_ai_mode are accepted: any other value, including another model enabled for the API key&#39;s user, returns 422 ERR_INVALID_PARAM (invalid model). One of those eleven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID. An id that is not a plain positive number, or that names no prompt of the project, returns 422 ERR_INVALID_PARAM. | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **range** | **integer**| Number of days to look back (alternative to from/to, which win when both are given). A value that is not a plain positive number returns 422 ERR_INVALID_PARAM, even beside from/to. | [optional] 

### Return type

[**UrlListsResponse**](UrlListsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | URL lists |  -  |
| **403** | Endpoint requires the Growth plan or above |  -  |
| **422** | Invalid parameters |  -  |

# **RemoveUrlListEntries**
> UrlListEntriesRemoveResponse RemoveUrlListEntries(id, url_list_entries_remove_request)

Remove entries from a URL list

Removes entries by id (from GET /url_lists/{id}) or by value as written (\"https://acme.com/a\", \"acme.com/blog/*\", \"acme.com\"). Sending neither answers ERR_INVALID_PARAM. Requires a `read_write` scope API key and the Growth plan.

### Example
```R
library(llmpulse)

# Remove entries from a URL list
#
# prepare function argument(s)
var_id <- 56 # integer | 
var_url_list_entries_remove_request <- UrlListEntriesRemoveRequest$new(123, c(123), c("values_example")) # UrlListEntriesRemoveRequest | 

api_instance <- SourcesCitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RemoveUrlListEntries(var_id, var_url_list_entries_remove_requestdata_file = "result.txt")
result <- api_instance$RemoveUrlListEntries(var_id, var_url_list_entries_remove_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 
 **url_list_entries_remove_request** | [**UrlListEntriesRemoveRequest**](UrlListEntriesRemoveRequest.md)|  | 

### Return type

[**UrlListEntriesRemoveResponse**](UrlListEntriesRemoveResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Entries removed |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **UpdateUrlList**
> UrlListUpdateResponse UpdateUrlList(id, url_list_update_request)

Update a URL list

Changes the name, description or currency of a URL list. Entries are added with POST /url_lists/{id}/entries and removed with POST /url_lists/{id}/entries/remove. Requires a `read_write` scope API key and the Growth plan.

### Example
```R
library(llmpulse)

# Update a URL list
#
# prepare function argument(s)
var_id <- 56 # integer | 
var_url_list_update_request <- UrlListUpdateRequest$new(123, "name_example", "description_example", "USD") # UrlListUpdateRequest | 

api_instance <- SourcesCitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateUrlList(var_id, var_url_list_update_requestdata_file = "result.txt")
result <- api_instance$UpdateUrlList(var_id, var_url_list_update_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 
 **url_list_update_request** | [**UrlListUpdateRequest**](UrlListUpdateRequest.md)|  | 

### Return type

[**UrlListUpdateResponse**](UrlListUpdateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

