# AIModelInsightsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAiModelInsightsSummary**](AIModelInsightsApi.md#GetAiModelInsightsSummary) | **GET** /reports/ai_model_insights/summary | AI Model Insights summary
[**GetAiModelPositionDistribution**](AIModelInsightsApi.md#GetAiModelPositionDistribution) | **GET** /reports/ai_model_insights/position_distribution | Position distribution comparison
[**GetAiOverviewResults**](AIModelInsightsApi.md#GetAiOverviewResults) | **GET** /reports/ai_model_insights/ai_overview_results | Google AI Overview result availability


# **GetAiModelInsightsSummary**
> GetAiModelInsightsSummary(project_id, range = var.range, from = var.from, to = var.to, granularity = var.granularity, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt_type = var.prompt_type, brand_kind = var.brand_kind, competitors = var.competitors)

AI Model Insights summary

Per-model mentions, citations, brand net sentiment with raw counts, weighted visibility totals/shares, plus actor matrices. All actor entries use the standard shape `{ type, id, competitor_id, name, domain }` with bare (scheme-less) domains.

### Example
```R
library(llmpulse)

# AI Model Insights summary
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_granularity <- "granularity_example" # character |  (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_prompt_type <- "prompt_type_example" # character | Filter by prompt type (search intent) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_competitors <- "competitors_example" # character | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (Optional)

api_instance <- AIModelInsightsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetAiModelInsightsSummary(var_project_id, range = var_range, from = var_from, to = var_to, granularity = var_granularity, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt_type = var_prompt_type, brand_kind = var_brand_kind, competitors = var_competitors)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **granularity** | Enum [day, week, month] |  | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **prompt_type** | Enum [informational, navigational, commercial, transactional] | Filter by prompt type (search intent) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **competitors** | **character**| Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Summary |  -  |

# **GetAiModelPositionDistribution**
> GetAiModelPositionDistribution(project_id, range = var.range, from = var.from, to = var.to, granularity = var.granularity, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt_type = var.prompt_type, brand_kind = var.brand_kind, model = var.model, brand1 = var.brand1, brand2 = var.brand2)

Position distribution comparison

### Example
```R
library(llmpulse)

# Position distribution comparison
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_granularity <- "granularity_example" # character |  (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_prompt_type <- "prompt_type_example" # character | Filter by prompt type (search intent) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_brand1 <- 56 # integer | Competitor ID for the first comparison brand (omit to compare project brand) (Optional)
var_brand2 <- 56 # integer |  (Optional)

api_instance <- AIModelInsightsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetAiModelPositionDistribution(var_project_id, range = var_range, from = var_from, to = var_to, granularity = var_granularity, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt_type = var_prompt_type, brand_kind = var_brand_kind, model = var_model, brand1 = var_brand1, brand2 = var_brand2)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **granularity** | Enum [day, week, month] |  | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **prompt_type** | Enum [informational, navigational, commercial, transactional] | Filter by prompt type (search intent) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **brand1** | **integer**| Competitor ID for the first comparison brand (omit to compare project brand) | [optional] 
 **brand2** | **integer**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Bucketed position totals + chart-ready series |  -  |

# **GetAiOverviewResults**
> GetAiOverviewResults(project_id, range = var.range, from = var.from, to = var.to, granularity = var.granularity, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt_type = var.prompt_type, brand_kind = var.brand_kind, page = 1, per_page = 20)

Google AI Overview result availability

### Example
```R
library(llmpulse)

# Google AI Overview result availability
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_granularity <- "granularity_example" # character |  (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_prompt_type <- "prompt_type_example" # character | Filter by prompt type (search intent) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)

api_instance <- AIModelInsightsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetAiOverviewResults(var_project_id, range = var_range, from = var_from, to = var_to, granularity = var_granularity, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt_type = var_prompt_type, brand_kind = var_brand_kind, page = var_page, per_page = var_per_page)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **granularity** | Enum [day, week, month] |  | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **prompt_type** | Enum [informational, navigational, commercial, transactional] | Filter by prompt type (search intent) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | AI Overview result-availability data + per-prompt table |  -  |

