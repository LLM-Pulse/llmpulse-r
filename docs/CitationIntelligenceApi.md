# CitationIntelligenceApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetCitedUrlContent**](CitationIntelligenceApi.md#GetCitedUrlContent) | **GET** /citation_intelligence/urls/{url_sha256}/content | Cited URL cached content
[**GetCitedUrlDetail**](CitationIntelligenceApi.md#GetCitedUrlDetail) | **GET** /citation_intelligence/urls/{url_sha256} | Cited URL detail
[**GetMentionsByCitingDomain**](CitationIntelligenceApi.md#GetMentionsByCitingDomain) | **GET** /citation_intelligence/mentions_by_domain | Mention share by citing domain
[**ListCitationGroups**](CitationIntelligenceApi.md#ListCitationGroups) | **GET** /citation_intelligence/groups | Grouped citation intelligence
[**ListCitedUrlOccurrences**](CitationIntelligenceApi.md#ListCitedUrlOccurrences) | **GET** /citation_intelligence/urls/{url_sha256}/occurrences | Cited URL occurrences


# **GetCitedUrlContent**
> GetCitedUrlContent(project_id, url_sha256)

Cited URL cached content

### Example
```R
library(llmpulse)

# Cited URL cached content
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_url_sha256 <- "url_sha256_example" # character | 64-character hex SHA-256 of the cited URL

api_instance <- CitationIntelligenceApi$new()
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
> GetCitedUrlDetail(project_id, url_sha256)

Cited URL detail

### Example
```R
library(llmpulse)

# Cited URL detail
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_url_sha256 <- "url_sha256_example" # character | 64-character hex SHA-256 of the cited URL

api_instance <- CitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetCitedUrlDetail(var_project_id, var_url_sha256)
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
| **200** | URL-level intelligence |  -  |
| **404** | Resource not found |  -  |

# **GetMentionsByCitingDomain**
> GetMentionsByCitingDomain(project_id, domains, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, from = var.from, to = var.to)

Mention share by citing domain

For the responses where each given source domain is cited, returns the share of those responses that mention the brand vs each competitor (brand + competitors sum to 100% per domain). Pass multiple domains to get the whole matrix in one call.

### Example
```R
library(llmpulse)

# Mention share by citing domain
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_domains <- c("inner_example") # array[character] | Source domains to analyze, e.g. domains[]=gmac.com&domains[]=educaweb.com
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)

api_instance <- CitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetMentionsByCitingDomain(var_project_id, var_domains, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, from = var_from, to = var_to)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **domains** | list( **character** )| Source domains to analyze, e.g. domains[]&#x3D;gmac.com&amp;domains[]&#x3D;educaweb.com | 
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 

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

# **ListCitationGroups**
> ListCitationGroups(project_id, view = "url", page = 1, per_page = 20, order = var.order, direction = var.direction, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, from = var.from, to = var.to, query = var.query, source_type = var.source_type, sentiment = var.sentiment, content_gap = var.content_gap)

Grouped citation intelligence

Grouped citation intelligence by url / domain / host with per-model breakdown, citation rate, and avg citation position. Counts and citation rate include visible citations and background source references. Average position ignores rows with position=0. Owned and competitor source matching honor the project's exact-subdomain setting. Filter vocabulary aligns with `source_type` returned by the API.

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
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_query <- "query_example" # character |  (Optional)
var_source_type <- "source_type_example" # character |  (Optional)
var_sentiment <- "sentiment_example" # character |  (Optional)
var_content_gap <- "content_gap_example" # character |  (Optional)

api_instance <- CitationIntelligenceApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListCitationGroups(var_project_id, view = var_view, page = var_page, per_page = var_per_page, order = var_order, direction = var_direction, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, from = var_from, to = var_to, query = var_query, source_type = var_source_type, sentiment = var_sentiment, content_gap = var_content_gap)
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
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **query** | **character**|  | [optional] 
 **source_type** | Enum [owned, competitor, third_party, social_media, own_domain, ugc, background] |  | [optional] 
 **sentiment** | Enum [negative] |  | [optional] 
 **content_gap** | Enum [mentioned, gap] |  | [optional] 

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

api_instance <- CitationIntelligenceApi$new()
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

