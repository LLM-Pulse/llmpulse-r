# AnswersApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAnswer**](AnswersApi.md#GetAnswer) | **GET** /answers/{id} | Get one AI response
[**ListAnswers**](AnswersApi.md#ListAnswers) | **GET** /answers | List AI responses


# **GetAnswer**
> AnswerDetails GetAnswer(project_id, id, include_source_page_details = FALSE)

Get one AI response

Full answer with mentions, citations, sentiments, sources, shopping_products, brand_entities, fan_out_queries. Pass `include_source_page_details=true` to nest page-cache metadata under each source.

### Example
```R
library(llmpulse)

# Get one AI response
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- 56 # integer | 
var_include_source_page_details <- FALSE # character |  (Optional)

api_instance <- AnswersApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAnswer(var_project_id, var_id, include_source_page_details = var_include_source_page_detailsdata_file = "result.txt")
result <- api_instance$GetAnswer(var_project_id, var_id, include_source_page_details = var_include_source_page_details)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **id** | **integer**|  | 
 **include_source_page_details** | **character**|  | [optional] [default to FALSE]

### Return type

[**AnswerDetails**](AnswerDetails.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Answer details |  -  |
| **404** | Resource not found |  -  |

# **ListAnswers**
> ListAnswers(project_id, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, mention_filter = var.mention_filter, citation_filter = var.citation_filter, competitors = var.competitors, from = var.from, to = var.to, page = 1, per_page = 20, query = var.query)

List AI responses

Successful prompt-execution responses with truncated content (max 10,000 chars). Pass `query` for case-insensitive full-text search inside response texts: `total` becomes the exact count of matching responses and each item returns `snippet` + `match_count` instead of `response`/`response_truncated`.

### Example
```R
library(llmpulse)

# List AI responses
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_mention_filter <- "mention_filter_example" # character | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with 'competitors' to narrow the competitor side to specific rivals; on a negative cell that reads 'none of these'. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value 'competitors_only' is still accepted as an alias of competitor_not_you. (Optional)
var_citation_filter <- "citation_filter_example" # character | Same two-axis matrix applied to the domains cited in the answer instead of the brands named in it. Independent of mention_filter; pass both to intersect them (e.g. mentions_you + not_cites_you finds answers that talk about you without linking to you). (Optional)
var_competitors <- "competitors_example" # character | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_query <- "query_example" # character | Case-insensitive full-text search inside AI response texts. Switches items to snippet + match_count mode. (Optional)

api_instance <- AnswersApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListAnswers(var_project_id, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, mention_filter = var_mention_filter, citation_filter = var_citation_filter, competitors = var_competitors, from = var_from, to = var_to, page = var_page, per_page = var_per_page, query = var_query)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **mention_filter** | Enum [mentions_you, not_mentions_you, mentions_competitor, not_mentions_competitor, you_and_competitor, competitor_not_you, you_not_competitor, no_brands] | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with &#39;competitors&#39; to narrow the competitor side to specific rivals; on a negative cell that reads &#39;none of these&#39;. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value &#39;competitors_only&#39; is still accepted as an alias of competitor_not_you. | [optional] 
 **citation_filter** | Enum [cites_you, not_cites_you, cites_competitor, not_cites_competitor, you_and_competitor, competitor_not_you, you_not_competitor, cites_no_brands] | Same two-axis matrix applied to the domains cited in the answer instead of the brands named in it. Independent of mention_filter; pass both to intersect them (e.g. mentions_you + not_cites_you finds answers that talk about you without linking to you). | [optional] 
 **competitors** | **character**| Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **query** | **character**| Case-insensitive full-text search inside AI response texts. Switches items to snippet + match_count mode. | [optional] 

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
| **200** | Paginated answers |  -  |
| **422** | Invalid parameters |  -  |

