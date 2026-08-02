# MetricsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAgentTraffic**](MetricsApi.md#GetAgentTraffic) | **GET** /metrics/agent_traffic | AI bot crawler traffic (Scale+, Beta)
[**GetAiTraffic**](MetricsApi.md#GetAiTraffic) | **GET** /metrics/ai_traffic | AI referral traffic (Scale+)
[**GetPromptSummary**](MetricsApi.md#GetPromptSummary) | **GET** /metrics/prompt_summary | Per-prompt metrics summary
[**GetShareOfVoice**](MetricsApi.md#GetShareOfVoice) | **GET** /metrics/sov | Share of Voice
[**GetSummary**](MetricsApi.md#GetSummary) | **GET** /metrics/summary | Aggregated metrics summary
[**GetTimeseries**](MetricsApi.md#GetTimeseries) | **GET** /metrics/timeseries | Time-series metrics
[**GetTopSources**](MetricsApi.md#GetTopSources) | **GET** /metrics/top_sources | Top cited sources


# **GetAgentTraffic**
> AgentTrafficResponse GetAgentTraffic(project_id, range = var.range, from = var.from, to = var.to, bot = var.bot, company = var.company, group_by = "bot", granularity = var.granularity)

AI bot crawler traffic (Scale+, Beta)

Aggregated AI bot traffic hitting the project's origin server (GPTBot, PerplexityBot, ClaudeBot, OAI-SearchBot, Google-Extended, etc.). Sourced from Cloudflare or CSV uploads. Requires the Scale plan; lower tiers receive ERR_PLAN_REQUIRED.

### Example
```R
library(llmpulse)

# AI bot crawler traffic (Scale+, Beta)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_bot <- "bot_example" # character | Filter by bot slug (e.g. gptbot, claudebot, perplexitybot) (Optional)
var_company <- "company_example" # character | Filter by company (e.g. openai, anthropic, google) (Optional)
var_group_by <- "bot" # character |  (Optional)
var_granularity <- "granularity_example" # character |  (Optional)

api_instance <- MetricsApi$new()
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
 **to** | **character**|  | [optional] 
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

AI referral traffic (Scale+)

AI referral traffic for a project: human visits arriving from AI assistants (ChatGPT, Perplexity, Gemini, Claude, etc.), measured from the connected web analytics provider (Google Analytics 4, Adobe Analytics, PostHog, Plausible or Piano). Returns per-source users, sessions and conversions with totals and a conversion rate. Requires a connected provider and the Scale plan; otherwise returns ERR_AI_TRAFFIC_NOT_CONNECTED or ERR_PLAN_REQUIRED.

### Example
```R
library(llmpulse)

# AI referral traffic (Scale+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_source <- "source_example" # character | Filter by a single AI source slug (e.g. chatgpt, perplexity, gemini, claude) (Optional)
var_granularity <- "granularity_example" # character |  (Optional)

api_instance <- MetricsApi$new()
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
 **to** | **character**|  | [optional] 
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

# **GetPromptSummary**
> PromptSummaryResponse GetPromptSummary(project_id, range = var.range, from = var.from, to = var.to, breakdown = var.breakdown, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, prompt_type = var.prompt_type, brand_kind = var.brand_kind, sort = "responses", sort_dir = "desc", page = 1, per_page = 20, output = var.output)

Per-prompt metrics summary

Paginated per-prompt aggregated metrics. Returns responses, mentions, citations, mention_rate, citation_rate, avg_mention_position and avg_position per prompt. Citations and citation rate include visible citations and background source references; avg_position uses visible citations only. Pass `breakdown=model` to split each prompt by model.

### Example
```R
library(llmpulse)

# Per-prompt metrics summary
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_breakdown <- "breakdown_example" # character | Add per-(prompt, model) rows to the output (Optional)
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_prompt_type <- "prompt_type_example" # character | Filter by prompt type (search intent) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_sort <- "responses" # character |  (Optional)
var_sort_dir <- "desc" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- MetricsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPromptSummary(var_project_id, range = var_range, from = var_from, to = var_to, breakdown = var_breakdown, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, prompt_type = var_prompt_type, brand_kind = var_brand_kind, sort = var_sort, sort_dir = var_sort_dir, page = var_page, per_page = var_per_page, output = var_outputdata_file = "result.txt")
result <- api_instance$GetPromptSummary(var_project_id, range = var_range, from = var_from, to = var_to, breakdown = var_breakdown, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, prompt_type = var_prompt_type, brand_kind = var_brand_kind, sort = var_sort, sort_dir = var_sort_dir, page = var_page, per_page = var_per_page, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **breakdown** | Enum [model] | Add per-(prompt, model) rows to the output | [optional] 
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **prompt_type** | Enum [informational, navigational, commercial, transactional] | Filter by prompt type (search intent) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **sort** | Enum [responses, mentions, citations, mention_rate, visibility, citation_rate, avg_mention_position, avg_position] |  | [optional] [default to &quot;responses&quot;]
 **sort_dir** | Enum [asc, desc] |  | [optional] [default to &quot;desc&quot;]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**PromptSummaryResponse**](PromptSummaryResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Per-prompt metrics |  -  |
| **401** | Authentication failed |  -  |

# **GetShareOfVoice**
> SovResponse GetShareOfVoice(project_id, range = var.range, from = var.from, to = var.to, granularity = var.granularity, competitors = var.competitors, model = var.model, collection_id = var.collection_id, prompt = var.prompt, prompt_type = var.prompt_type, brand_kind = var.brand_kind, output = var.output, view = "over_time")

Share of Voice

Share of Voice breakdown comparing your project to competitors. Returns over_time, current snapshot, and a Top-4 + Others breakdown.

### Example
```R
library(llmpulse)

# Share of Voice
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_granularity <- "granularity_example" # character |  (Optional)
var_competitors <- "competitors_example" # character | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (Optional)
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_prompt_type <- "prompt_type_example" # character | Filter by prompt type (search intent) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)
var_view <- "over_time" # character | Which Share of Voice projection to flatten. Only valid together with 'output'. 'over_time' (default) is one row per date and actor, 'current' the ranked snapshot, 'breakdown' the Top 4 plus Others. (Optional)

api_instance <- MetricsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetShareOfVoice(var_project_id, range = var_range, from = var_from, to = var_to, granularity = var_granularity, competitors = var_competitors, model = var_model, collection_id = var_collection_id, prompt = var_prompt, prompt_type = var_prompt_type, brand_kind = var_brand_kind, output = var_output, view = var_viewdata_file = "result.txt")
result <- api_instance$GetShareOfVoice(var_project_id, range = var_range, from = var_from, to = var_to, granularity = var_granularity, competitors = var_competitors, model = var_model, collection_id = var_collection_id, prompt = var_prompt, prompt_type = var_prompt_type, brand_kind = var_brand_kind, output = var_output, view = var_view)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **granularity** | Enum [day, week, month] |  | [optional] 
 **competitors** | **character**| Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **prompt_type** | Enum [informational, navigational, commercial, transactional] | Filter by prompt type (search intent) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **view** | Enum [over_time, current, breakdown] | Which Share of Voice projection to flatten. Only valid together with &#39;output&#39;. &#39;over_time&#39; (default) is one row per date and actor, &#39;current&#39; the ranked snapshot, &#39;breakdown&#39; the Top 4 plus Others. | [optional] [default to &quot;over_time&quot;]

### Return type

[**SovResponse**](SovResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Share of voice data |  -  |

# **GetSummary**
> SummaryResponse GetSummary(project_id, metrics = var.metrics, granularity = var.granularity, range = var.range, from = var.from, to = var.to, competitors = var.competitors, model = var.model, collection_id = var.collection_id, prompt = var.prompt, prompt_type = var.prompt_type, brand_kind = var.brand_kind, output = var.output)

Aggregated metrics summary

Same as /metrics/timeseries but adds a `summary` block with total/min/max/last per metric per actor, plus a `position_distribution` block (Position 1, Position 2, Position 3+). Citations and citation rate include visible citations and background source references. Background references use position 0 and are excluded from avg_position and position distributions. `total` is a SUM for count metrics (mentions, citations, responses) and an AVERAGE across periods for rate/percentage and average metrics (visibility/mention_rate, citation_rate, ai_visibility_score, sentiment shares, avg_position, avg_mention_position, net_sentiment); rates are never summed. Each summary row carries an `aggregation` field (`sum` or `average`).

### Example
```R
library(llmpulse)

# Aggregated metrics summary
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_metrics <- "metrics_example" # character | Comma-separated list of metrics: mentions, citations, responses, mention_rate, visibility (alias for mention_rate), weighted_visibility, ai_visibility_score (alias for weighted_visibility), citation_rate, avg_position, avg_mention_position, net_sentiment, sentiment_very_positive, sentiment_positive, sentiment_neutral, sentiment_negative, sentiment_very_negative. Citations and citation_rate include visible citations and background source references; avg_position uses visible citations only. (Optional)
var_granularity <- "granularity_example" # character |  (Optional)
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_competitors <- "competitors_example" # character | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (Optional)
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_prompt_type <- "prompt_type_example" # character | Filter by prompt type (search intent) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- MetricsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSummary(var_project_id, metrics = var_metrics, granularity = var_granularity, range = var_range, from = var_from, to = var_to, competitors = var_competitors, model = var_model, collection_id = var_collection_id, prompt = var_prompt, prompt_type = var_prompt_type, brand_kind = var_brand_kind, output = var_outputdata_file = "result.txt")
result <- api_instance$GetSummary(var_project_id, metrics = var_metrics, granularity = var_granularity, range = var_range, from = var_from, to = var_to, competitors = var_competitors, model = var_model, collection_id = var_collection_id, prompt = var_prompt, prompt_type = var_prompt_type, brand_kind = var_brand_kind, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **metrics** | **character**| Comma-separated list of metrics: mentions, citations, responses, mention_rate, visibility (alias for mention_rate), weighted_visibility, ai_visibility_score (alias for weighted_visibility), citation_rate, avg_position, avg_mention_position, net_sentiment, sentiment_very_positive, sentiment_positive, sentiment_neutral, sentiment_negative, sentiment_very_negative. Citations and citation_rate include visible citations and background source references; avg_position uses visible citations only. | [optional] 
 **granularity** | Enum [day, week, month] |  | [optional] 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **competitors** | **character**| Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **prompt_type** | Enum [informational, navigational, commercial, transactional] | Filter by prompt type (search intent) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**SummaryResponse**](SummaryResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Summary metrics |  -  |
| **401** | Authentication failed |  -  |
| **404** | Resource not found |  -  |

# **GetTimeseries**
> TimeseriesResponse GetTimeseries(project_id, metrics = var.metrics, granularity = var.granularity, range = var.range, from = var.from, to = var.to, competitors = var.competitors, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, prompt_type = var.prompt_type, brand_kind = var.brand_kind, include_project = TRUE, output = var.output)

Time-series metrics

Returns time-series data for one or more metrics, broken down by actor (project + competitors). Supports day/week/month granularity, with sticky carry-forward semantics for week/month aggregates.

### Example
```R
library(llmpulse)

# Time-series metrics
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_metrics <- "metrics_example" # character | Comma-separated list of metrics: mentions, citations, responses, mention_rate, visibility (alias for mention_rate), weighted_visibility, ai_visibility_score (alias for weighted_visibility), citation_rate, avg_position, avg_mention_position, net_sentiment, sentiment_very_positive, sentiment_positive, sentiment_neutral, sentiment_negative, sentiment_very_negative. Citations and citation_rate include visible citations and background source references; avg_position uses visible citations only. (Optional)
var_granularity <- "granularity_example" # character |  (Optional)
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_competitors <- "competitors_example" # character | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (Optional)
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_prompt_type <- "prompt_type_example" # character | Filter by prompt type (search intent) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_include_project <- TRUE # character |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- MetricsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetTimeseries(var_project_id, metrics = var_metrics, granularity = var_granularity, range = var_range, from = var_from, to = var_to, competitors = var_competitors, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, prompt_type = var_prompt_type, brand_kind = var_brand_kind, include_project = var_include_project, output = var_outputdata_file = "result.txt")
result <- api_instance$GetTimeseries(var_project_id, metrics = var_metrics, granularity = var_granularity, range = var_range, from = var_from, to = var_to, competitors = var_competitors, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, prompt_type = var_prompt_type, brand_kind = var_brand_kind, include_project = var_include_project, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **metrics** | **character**| Comma-separated list of metrics: mentions, citations, responses, mention_rate, visibility (alias for mention_rate), weighted_visibility, ai_visibility_score (alias for weighted_visibility), citation_rate, avg_position, avg_mention_position, net_sentiment, sentiment_very_positive, sentiment_positive, sentiment_neutral, sentiment_negative, sentiment_very_negative. Citations and citation_rate include visible citations and background source references; avg_position uses visible citations only. | [optional] 
 **granularity** | Enum [day, week, month] |  | [optional] 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **competitors** | **character**| Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **prompt_type** | Enum [informational, navigational, commercial, transactional] | Filter by prompt type (search intent) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **include_project** | **character**|  | [optional] [default to TRUE]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**TimeseriesResponse**](TimeseriesResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Time-series data |  -  |
| **401** | Authentication failed |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **GetTopSources**
> TopSourcesResponse GetTopSources(project_id, range = var.range, from = var.from, to = var.to, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, prompt_type = var.prompt_type, brand_kind = var.brand_kind, sort = "total_responses", query = var.query, page = 1, per_page = 20, output = var.output)

Top cited sources

Registrable domains most frequently cited in AI responses for the project, including visible citations and background source references. This endpoint remains a domain rollup when exact-subdomain matching is enabled. Results can be sorted by total responses, average mention rate, or average visibility.

### Example
```R
library(llmpulse)

# Top cited sources
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_prompt_type <- "prompt_type_example" # character | Filter by prompt type (search intent) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_sort <- "total_responses" # character |  (Optional)
var_query <- "query_example" # character | Filter domains by case-insensitive partial match (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- MetricsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetTopSources(var_project_id, range = var_range, from = var_from, to = var_to, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, prompt_type = var_prompt_type, brand_kind = var_brand_kind, sort = var_sort, query = var_query, page = var_page, per_page = var_per_page, output = var_outputdata_file = "result.txt")
result <- api_instance$GetTopSources(var_project_id, range = var_range, from = var_from, to = var_to, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, prompt_type = var_prompt_type, brand_kind = var_brand_kind, sort = var_sort, query = var_query, page = var_page, per_page = var_per_page, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **prompt_type** | Enum [informational, navigational, commercial, transactional] | Filter by prompt type (search intent) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **sort** | Enum [total_responses, avg_mention_rate, avg_visibility] |  | [optional] [default to &quot;total_responses&quot;]
 **query** | **character**| Filter domains by case-insensitive partial match | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**TopSourcesResponse**](TopSourcesResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Top sources |  -  |

