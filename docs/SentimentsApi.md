# SentimentsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetSentimentTags**](SentimentsApi.md#GetSentimentTags) | **GET** /reports/sentiment/tags | Sentiment by tag (Growth plan or above)
[**GetSentimentTopics**](SentimentsApi.md#GetSentimentTopics) | **GET** /reports/sentiment/topics | Sentiment by topic (Growth plan or above)
[**ListSentimentCategories**](SentimentsApi.md#ListSentimentCategories) | **GET** /dimensions/sentiments | List sentiment categories (Growth plan or above)
[**ListSentimentRecords**](SentimentsApi.md#ListSentimentRecords) | **GET** /sentiments | List sentiment records (Growth plan or above)


# **GetSentimentTags**
> SentimentTagsResponse GetSentimentTags(project_id, range = var.range, from = var.from, to = var.to, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, brand_kind = var.brand_kind, analysis = var.analysis, topic = var.topic, query = var.query, brand = var.brand, sort = "mentions", sort_dir = "desc", page = 1, per_page = 20, output = var.output)

Sentiment by tag (Growth plan or above)

One row per tag of the project with at least one analyzed mention, with the positive (very positive included), neutral and negative counts, their shares on a 0-100 scale and the net sentiment score. A mention counts once for every tag its prompt carries, as on the Sentiment page. Same filters as GET /reports/sentiment/topics. Requires the Growth plan; lower tiers receive ERR_PLAN_REQUIRED.

### Example
```R
library(llmpulse)

# Sentiment by tag (Growth plan or above)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back, today included (default 28, like the Sentiment page). Ignored when from or to is given. (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_model <- "model_example" # character | Filter by one AI model. It must be a model enabled for the API key's user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_analysis <- "analysis_example" # character | One sentiment level or a comma-separated list: very_positive, positive, neutral, negative, very_negative (Optional)
var_topic <- "topic_example" # character | Only sentiments tagged with this topic (case-insensitive) (Optional)
var_query <- "query_example" # character | Only sentiments whose answer or prompt text contains this text (Optional)
var_brand <- "brand_example" # character | Whose sentiment to count. Empty or omitted for your own brand, all for every brand, or a competitor id (an unknown id returns ERR_INVALID_PARAM). (Optional)
var_sort <- "mentions" # character | Sort column: mentions, name (the topic or tag), positive, negative or neutral (their shares) or net_score. Ties sort by name. (Optional)
var_sort_dir <- "desc" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- SentimentsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSentimentTags(var_project_id, range = var_range, from = var_from, to = var_to, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, brand_kind = var_brand_kind, analysis = var_analysis, topic = var_topic, query = var_query, brand = var_brand, sort = var_sort, sort_dir = var_sort_dir, page = var_page, per_page = var_per_page, output = var_outputdata_file = "result.txt")
result <- api_instance$GetSentimentTags(var_project_id, range = var_range, from = var_from, to = var_to, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, brand_kind = var_brand_kind, analysis = var_analysis, topic = var_topic, query = var_query, brand = var_brand, sort = var_sort, sort_dir = var_sort_dir, page = var_page, per_page = var_per_page, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back, today included (default 28, like the Sentiment page). Ignored when from or to is given. | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai] | Filter by one AI model. It must be a model enabled for the API key&#39;s user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **analysis** | **character**| One sentiment level or a comma-separated list: very_positive, positive, neutral, negative, very_negative | [optional] 
 **topic** | **character**| Only sentiments tagged with this topic (case-insensitive) | [optional] 
 **query** | **character**| Only sentiments whose answer or prompt text contains this text | [optional] 
 **brand** | **character**| Whose sentiment to count. Empty or omitted for your own brand, all for every brand, or a competitor id (an unknown id returns ERR_INVALID_PARAM). | [optional] 
 **sort** | Enum [mentions, name, positive, negative, neutral, net_score] | Sort column: mentions, name (the topic or tag), positive, negative or neutral (their shares) or net_score. Ties sort by name. | [optional] [default to &quot;mentions&quot;]
 **sort_dir** | Enum [desc, asc] |  | [optional] [default to &quot;desc&quot;]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**SentimentTagsResponse**](SentimentTagsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated tag rows |  -  |
| **403** | Endpoint requires the Growth plan or above |  -  |
| **422** | Invalid parameters |  -  |

# **GetSentimentTopics**
> SentimentTopicsResponse GetSentimentTopics(project_id, range = var.range, from = var.from, to = var.to, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, brand_kind = var.brand_kind, analysis = var.analysis, topic = var.topic, query = var.query, brand = var.brand, sort = "mentions", sort_dir = "desc", page = 1, per_page = 20, output = var.output)

Sentiment by topic (Growth plan or above)

One row per topic AI answers associate with the brand (topics are matched case-insensitively), with its analyzed mentions, the positive (very positive included), neutral and negative counts, their shares on a 0-100 scale and the net sentiment score ((positive - negative) / mentions x 100). The same rows and filters as the Topics tab of the Sentiment page: the window defaults to the last 28 days, `brand` empty counts your own brand, `all` every brand and a competitor id that competitor. Requires the Growth plan; lower tiers receive ERR_PLAN_REQUIRED.

### Example
```R
library(llmpulse)

# Sentiment by topic (Growth plan or above)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back, today included (default 28, like the Sentiment page). Ignored when from or to is given. (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_model <- "model_example" # character | Filter by one AI model. It must be a model enabled for the API key's user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_analysis <- "analysis_example" # character | One sentiment level or a comma-separated list: very_positive, positive, neutral, negative, very_negative (Optional)
var_topic <- "topic_example" # character | Only sentiments tagged with this topic (case-insensitive) (Optional)
var_query <- "query_example" # character | Only sentiments whose answer or prompt text contains this text (Optional)
var_brand <- "brand_example" # character | Whose sentiment to count. Empty or omitted for your own brand, all for every brand, or a competitor id (an unknown id returns ERR_INVALID_PARAM). (Optional)
var_sort <- "mentions" # character | Sort column: mentions, name (the topic or tag), positive, negative or neutral (their shares) or net_score. Ties sort by name. (Optional)
var_sort_dir <- "desc" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- SentimentsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSentimentTopics(var_project_id, range = var_range, from = var_from, to = var_to, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, brand_kind = var_brand_kind, analysis = var_analysis, topic = var_topic, query = var_query, brand = var_brand, sort = var_sort, sort_dir = var_sort_dir, page = var_page, per_page = var_per_page, output = var_outputdata_file = "result.txt")
result <- api_instance$GetSentimentTopics(var_project_id, range = var_range, from = var_from, to = var_to, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, brand_kind = var_brand_kind, analysis = var_analysis, topic = var_topic, query = var_query, brand = var_brand, sort = var_sort, sort_dir = var_sort_dir, page = var_page, per_page = var_per_page, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back, today included (default 28, like the Sentiment page). Ignored when from or to is given. | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai] | Filter by one AI model. It must be a model enabled for the API key&#39;s user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **analysis** | **character**| One sentiment level or a comma-separated list: very_positive, positive, neutral, negative, very_negative | [optional] 
 **topic** | **character**| Only sentiments tagged with this topic (case-insensitive) | [optional] 
 **query** | **character**| Only sentiments whose answer or prompt text contains this text | [optional] 
 **brand** | **character**| Whose sentiment to count. Empty or omitted for your own brand, all for every brand, or a competitor id (an unknown id returns ERR_INVALID_PARAM). | [optional] 
 **sort** | Enum [mentions, name, positive, negative, neutral, net_score] | Sort column: mentions, name (the topic or tag), positive, negative or neutral (their shares) or net_score. Ties sort by name. | [optional] [default to &quot;mentions&quot;]
 **sort_dir** | Enum [desc, asc] |  | [optional] [default to &quot;desc&quot;]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**SentimentTopicsResponse**](SentimentTopicsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated topic rows |  -  |
| **403** | Endpoint requires the Growth plan or above |  -  |
| **422** | Invalid parameters |  -  |

# **ListSentimentCategories**
> ListSentimentCategories(project_id, output = var.output)

List sentiment categories (Growth plan or above)

Sentiment metric keys + labels + colors. For records, use /sentiments. Requires the Growth plan; lower tiers receive ERR_PLAN_REQUIRED.

### Example
```R
library(llmpulse)

# List sentiment categories (Growth plan or above)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- SentimentsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListSentimentCategories(var_project_id, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
| **200** | Sentiment buckets |  -  |
| **403** | Endpoint requires the Growth plan or above |  -  |

# **ListSentimentRecords**
> SentimentsResponse ListSentimentRecords(project_id, competitor_id = var.competitor_id, brand_only = var.brand_only, analysis = var.analysis, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, from = var.from, to = var.to, page = 1, per_page = 20)

List sentiment records (Growth plan or above)

Requires the Growth plan; lower tiers receive ERR_PLAN_REQUIRED.

### Example
```R
library(llmpulse)

# List sentiment records (Growth plan or above)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_competitor_id <- 56 # integer |  (Optional)
var_brand_only <- "brand_only_example" # character |  (Optional)
var_analysis <- "analysis_example" # character | One sentiment level or a comma-separated list: very_positive, positive, neutral, negative, very_negative (Optional)
var_model <- "model_example" # character | Filter by one AI model. Here an unknown value, or a model the API key's user has not enabled, is ignored rather than rejected: the request succeeds and returns the records of every enabled model, as if model were omitted. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)

api_instance <- SentimentsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListSentimentRecords(var_project_id, competitor_id = var_competitor_id, brand_only = var_brand_only, analysis = var_analysis, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, from = var_from, to = var_to, page = var_page, per_page = var_per_pagedata_file = "result.txt")
result <- api_instance$ListSentimentRecords(var_project_id, competitor_id = var_competitor_id, brand_only = var_brand_only, analysis = var_analysis, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, from = var_from, to = var_to, page = var_page, per_page = var_per_page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **competitor_id** | **integer**|  | [optional] 
 **brand_only** | **character**|  | [optional] 
 **analysis** | **character**| One sentiment level or a comma-separated list: very_positive, positive, neutral, negative, very_negative | [optional] 
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai] | Filter by one AI model. Here an unknown value, or a model the API key&#39;s user has not enabled, is ignored rather than rejected: the request succeeds and returns the records of every enabled model, as if model were omitted. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]

### Return type

[**SentimentsResponse**](SentimentsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated sentiments |  -  |
| **403** | Endpoint requires the Growth plan or above |  -  |
| **422** | Invalid parameters |  -  |

