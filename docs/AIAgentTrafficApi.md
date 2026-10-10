# AIAgentTrafficApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAgentTraffic**](AIAgentTrafficApi.md#GetAgentTraffic) | **GET** /metrics/agent_traffic | AI bot crawler traffic (Scale plan or above, Beta)
[**GetAiTraffic**](AIAgentTrafficApi.md#GetAiTraffic) | **GET** /metrics/ai_traffic | AI referral traffic (Scale plan or above)
[**GetWebAnalyticsSchema**](AIAgentTrafficApi.md#GetWebAnalyticsSchema) | **GET** /web_analytics/schema | Web analytics query format (Growth+)
[**ListAgentBots**](AIAgentTrafficApi.md#ListAgentBots) | **GET** /dimensions/agent_bots | AI bot catalog (Scale plan or above)
[**QueryWebAnalytics**](AIAgentTrafficApi.md#QueryWebAnalytics) | **POST** /web_analytics/query | Live web analytics query (Growth+)


# **GetAgentTraffic**
> AgentTrafficResponse GetAgentTraffic(project_id, range = var.range, from = var.from, to = var.to, bot = var.bot, company = var.company, group_by = "bot", granularity = var.granularity)

AI bot crawler traffic (Scale plan or above, Beta)

Aggregated AI bot traffic hitting the project's origin server (GPTBot, PerplexityBot, ClaudeBot, OAI-SearchBot, Google-Extended, etc.). Sourced from Cloudflare or CSV uploads. Requires the Scale plan; lower tiers receive ERR_PLAN_REQUIRED.

### Example
```R
library(llmpulse)

# AI bot crawler traffic (Scale plan or above, Beta)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_bot <- "bot_example" # character | Filter by bot slug (e.g. gptbot, claudebot, perplexitybot) (Optional)
var_company <- "company_example" # character | Filter by company (e.g. openai, anthropic, google) (Optional)
var_group_by <- "bot" # character |  (Optional)
var_granularity <- "granularity_example" # character |  (Optional)

api_instance <- AIAgentTrafficApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAgentTraffic(var_project_id, range = var_range, from = var_from, to = var_to, bot = var_bot, company = var_company, group_by = var_group_by, granularity = var_granularitydata_file = "result.txt")
result <- api_instance$GetAgentTraffic(var_project_id, range = var_range, from = var_from, to = var_to, bot = var_bot, company = var_company, group_by = var_group_by, granularity = var_granularity)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **bot** | **character**| Filter by bot slug (e.g. gptbot, claudebot, perplexitybot) | [optional] 
 **company** | **character**| Filter by company (e.g. openai, anthropic, google) | [optional] 
 **group_by** | Enum [bot, company] |  | [optional] [default to &quot;bot&quot;]
 **granularity** | Enum [day, week, month] |  | [optional] 

### Return type

[**AgentTrafficResponse**](AgentTrafficResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Agent traffic data |  -  |
| **403** | Endpoint requires a higher plan tier |  -  |

# **GetAiTraffic**
> GetAiTraffic(project_id, range = var.range, from = var.from, to = var.to, source = var.source, granularity = var.granularity)

AI referral traffic (Scale plan or above)

AI referral traffic for a project: human visits arriving from AI assistants (ChatGPT, Perplexity, Gemini, Claude, etc.), measured from the connected web analytics provider (Google Analytics 4, Adobe Analytics, PostHog, Plausible, Matomo or Piano). Returns per-source users, sessions and conversions with totals and a conversion rate. Requires a connected provider and the Scale plan; otherwise returns ERR_AI_TRAFFIC_NOT_CONNECTED or ERR_PLAN_REQUIRED.

### Example
```R
library(llmpulse)

# AI referral traffic (Scale plan or above)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_source <- "source_example" # character | Filter by a single AI source slug (e.g. chatgpt, perplexity, gemini, claude) (Optional)
var_granularity <- "granularity_example" # character |  (Optional)

api_instance <- AIAgentTrafficApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetAiTraffic(var_project_id, range = var_range, from = var_from, to = var_to, source = var_source, granularity = var_granularity)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **source** | **character**| Filter by a single AI source slug (e.g. chatgpt, perplexity, gemini, claude) | [optional] 
 **granularity** | Enum [day, week, month] |  | [optional] 

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
| **200** | AI referral traffic data |  -  |
| **403** | Endpoint requires a higher plan tier |  -  |
| **404** | Resource not found |  -  |

# **GetWebAnalyticsSchema**
> WebAnalyticsSchemaResponse GetWebAnalyticsSchema(project_id)

Web analytics query format (Growth+)

How to query the web analytics provider connected to the project, live: the provider, the property every query runs on, the native query format it accepts, the allowed top-level fields, the rules the bridge enforces (the connected property is always used, only reads run, row limits), a worked example and, where the provider offers it, its live field list. Cached for an hour. Supported providers: Google Analytics 4, Adobe Analytics or Customer Journey Analytics, Matomo, PostHog, Plausible and Piano, connected on the AI Traffic page. Requires the Growth plan or above; otherwise ERR_PLAN_REQUIRED. Without a connected provider returns ERR_WEB_ANALYTICS_NOT_CONNECTED (404); a provider that refuses the stored credentials returns ERR_WEB_ANALYTICS_ACCESS_REVOKED (403); an unavailable provider, an exhausted provider quota, more than 20 uncached queries a minute or too many running at once for the project returns ERR_WEB_ANALYTICS_UPSTREAM (503): wait for the number of seconds in Retry-After before retrying.

### Example
```R
library(llmpulse)

# Web analytics query format (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID

api_instance <- AIAgentTrafficApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetWebAnalyticsSchema(var_project_iddata_file = "result.txt")
result <- api_instance$GetWebAnalyticsSchema(var_project_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 

### Return type

[**WebAnalyticsSchemaResponse**](WebAnalyticsSchemaResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Query format for the connected provider |  -  |
| **403** | Access forbidden |  -  |
| **404** | Resource not found |  -  |
| **503** | Upstream provider unavailable, retry after the number of seconds in the Retry-After header |  * Retry-After - Seconds to wait before retrying: Google&#39;s own value when it sent one, otherwise 900 after a quota error and 60 after an outage <br>  |

# **ListAgentBots**
> AgentBotsResponse ListAgentBots(project_id, output = var.output)

AI bot catalog (Scale plan or above)

Static catalog of AI bots that Agent Analytics can identify. Useful for rendering filter UIs that mirror our internal classification (slug, display name, company, category, Cloudflare verified-bot mapping, description). Requires the Scale plan; lower tiers receive ERR_PLAN_REQUIRED. The equivalent MCP tool list_agent_bots is available on the Scale plan or above.

### Example
```R
library(llmpulse)

# AI bot catalog (Scale plan or above)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- AIAgentTrafficApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListAgentBots(var_project_id, output = var_outputdata_file = "result.txt")
result <- api_instance$ListAgentBots(var_project_id, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**AgentBotsResponse**](AgentBotsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Bot catalog |  -  |
| **403** | Endpoint requires a higher plan tier |  -  |

# **QueryWebAnalytics**
> WebAnalyticsQueryResponse QueryWebAnalytics(query_web_analytics_request)

Live web analytics query (Growth+)

Runs a read-only query, written in the connected provider's native format, against the project's property and returns columns and rows: a GA4 Data API runReport body, an Adobe Analytics or Customer Journey Analytics report request, Matomo Reporting API parameters (get methods only), PostHog HogQL, a Plausible Stats API v2 query or a Piano getData body. The connected property, site, report suite or project is always used and any property field in the query is ignored. Rows default to 100 and are capped at 5,000. Identical queries are answered from a 10-minute cache (cached: true). A query the provider rejects returns ERR_WEB_ANALYTICS_INVALID_QUERY (422) with the provider's own validation message. Each uncached query spends the customer's provider API quota. A read: no writable key is needed. Supported providers: Google Analytics 4, Adobe Analytics or Customer Journey Analytics, Matomo, PostHog, Plausible and Piano, connected on the AI Traffic page. Requires the Growth plan or above; otherwise ERR_PLAN_REQUIRED. Without a connected provider returns ERR_WEB_ANALYTICS_NOT_CONNECTED (404); a provider that refuses the stored credentials returns ERR_WEB_ANALYTICS_ACCESS_REVOKED (403); an unavailable provider, an exhausted provider quota, more than 20 uncached queries a minute or too many running at once for the project returns ERR_WEB_ANALYTICS_UPSTREAM (503): wait for the number of seconds in Retry-After before retrying.

### Example
```R
library(llmpulse)

# Live web analytics query (Growth+)
#
# prepare function argument(s)
var_query_web_analytics_request <- queryWebAnalytics_request$new(123, 123) # QueryWebAnalyticsRequest | 

api_instance <- AIAgentTrafficApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$QueryWebAnalytics(var_query_web_analytics_requestdata_file = "result.txt")
result <- api_instance$QueryWebAnalytics(var_query_web_analytics_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query_web_analytics_request** | [**QueryWebAnalyticsRequest**](QueryWebAnalyticsRequest.md)|  | 

### Return type

[**WebAnalyticsQueryResponse**](WebAnalyticsQueryResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Query result as columns and rows |  -  |
| **403** | Access forbidden |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |
| **503** | Upstream provider unavailable, retry after the number of seconds in the Retry-After header |  * Retry-After - Seconds to wait before retrying: Google&#39;s own value when it sent one, otherwise 900 after a quota error and 60 after an outage <br>  |

