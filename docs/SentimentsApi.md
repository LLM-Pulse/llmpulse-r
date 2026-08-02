# SentimentsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ListSentimentRecords**](SentimentsApi.md#ListSentimentRecords) | **GET** /sentiments | List sentiment records


# **ListSentimentRecords**
> ListSentimentRecords(project_id, competitor_id = var.competitor_id, brand_only = var.brand_only, analysis = var.analysis, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, from = var.from, to = var.to, page = 1, per_page = 20)

List sentiment records

### Example
```R
library(llmpulse)

# List sentiment records
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_competitor_id <- 56 # integer |  (Optional)
var_brand_only <- "brand_only_example" # character |  (Optional)
var_analysis <- "analysis_example" # character |  (Optional)
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)

api_instance <- SentimentsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListSentimentRecords(var_project_id, competitor_id = var_competitor_id, brand_only = var_brand_only, analysis = var_analysis, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, from = var_from, to = var_to, page = var_page, per_page = var_per_page)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **competitor_id** | **integer**|  | [optional] 
 **brand_only** | **character**|  | [optional] 
 **analysis** | Enum [very_positive, positive, neutral, negative, very_negative] |  | [optional] 
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
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
| **200** | Paginated sentiments |  -  |
| **422** | Invalid parameters |  -  |

