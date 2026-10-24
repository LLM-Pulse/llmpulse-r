# PromptsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AcceptSuggestedPrompts**](PromptsApi.md#AcceptSuggestedPrompts) | **POST** /suggested_prompts/accept | Accept suggested prompts
[**CreatePromptGeneration**](PromptsApi.md#CreatePromptGeneration) | **POST** /prompt_generations | Generate prompt suggestions
[**CreatePrompts**](PromptsApi.md#CreatePrompts) | **POST** /prompts | Bulk-create prompts
[**DeletePrompt**](PromptsApi.md#DeletePrompt) | **DELETE** /prompts/{id} | Delete a prompt
[**GetPromptGeneration**](PromptsApi.md#GetPromptGeneration) | **GET** /prompt_generations/{id} | Get a prompt generation run
[**ImportPrompts**](PromptsApi.md#ImportPrompts) | **POST** /prompts/import | Import prompts
[**ListPromptExecutions**](PromptsApi.md#ListPromptExecutions) | **GET** /dimensions/prompt_executions | List prompt executions
[**ListPrompts**](PromptsApi.md#ListPrompts) | **GET** /dimensions/prompts | List prompts
[**ListQueryFanOuts**](PromptsApi.md#ListQueryFanOuts) | **GET** /dimensions/query_fan_outs | List query fan-out
[**ListSuggestedPrompts**](PromptsApi.md#ListSuggestedPrompts) | **GET** /suggested_prompts | List suggested prompts
[**RejectSuggestedPrompts**](PromptsApi.md#RejectSuggestedPrompts) | **POST** /suggested_prompts/reject | Reject suggested prompts
[**UpdatePrompt**](PromptsApi.md#UpdatePrompt) | **PATCH** /prompts/{id} | Edit a prompt&#39;s categorization


# **AcceptSuggestedPrompts**
> SuggestedPromptsAcceptResponse AcceptSuggestedPrompts(suggested_prompts_accept_request)

Accept suggested prompts

Starts tracking up to 100 pending suggestions: each becomes a prompt in its own country and language, optionally put in one tag (tag_ids or tag_names; create_missing creates a missing name when the team member may create tags). Suggestions that are no longer pending come back in skipped. When the new prompts would exceed the plan the call returns ERR_LIMIT_REACHED and accepts nothing. Requires a `read_write` scope API key and, for team members, create access to Prompts.

### Example
```R
library(llmpulse)

# Accept suggested prompts
#
# prepare function argument(s)
var_suggested_prompts_accept_request <- SuggestedPromptsAcceptRequest$new(123, c(123), c(123), c("tag_names_example"), "create_missing_example") # SuggestedPromptsAcceptRequest | 

api_instance <- PromptsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AcceptSuggestedPrompts(var_suggested_prompts_accept_requestdata_file = "result.txt")
result <- api_instance$AcceptSuggestedPrompts(var_suggested_prompts_accept_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **suggested_prompts_accept_request** | [**SuggestedPromptsAcceptRequest**](SuggestedPromptsAcceptRequest.md)|  | 

### Return type

[**SuggestedPromptsAcceptResponse**](SuggestedPromptsAcceptResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Accepted and skipped suggestions |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **CreatePromptGeneration**
> PromptGenerationResponse CreatePromptGeneration(prompt_generation_request)

Generate prompt suggestions

Starts a suggestion run with one of the generators behind the app's Add prompts wizards and answers 202 with the run. website writes suggestions from the scraped website (80% non-brand, 20% brand; up to 100 per project, then ERR_LIMIT_REACHED), keyword from a keyword or the project profile (optionally around a competitor), topic from a topic, reddit from Reddit discussions of a topic or brand, paa from Google People Also Ask (up to 5 keywords, counted against the account's 24-hour lookup allowance), reputational from brand reputation questions, translate from the project's prompts of another locale, search_console from the connected property's top queries of the last 28 days (Growth plan or above, ERR_PLAN_REQUIRED). The suggestions land in the Suggested prompts queue; poll GET /prompt_generations/{id}, then accept the ones you want with POST /suggested_prompts/accept. Nothing is tracked until accepted. The request is validated before the run starts, and refused with ERR_LIMIT_REACHED when the plan has no prompt slot left, or ERR_QUOTA_EXCEEDED after 60 runs in an hour (the per-user prompt suggestion allowance, shared with project setup). Requires a `read_write` scope API key and, for team members, create access to Prompts.

### Example
```R
library(llmpulse)

# Generate prompt suggestions
#
# prepare function argument(s)
var_prompt_generation_request <- PromptGenerationRequest$new(123, "website", "query_example", 123, "country_code_example", "language_code_example", 123, "topic", c("keywords_example"), "source_country_code_example", "source_language_code_example", 123, "all_countries_example", "property_example") # PromptGenerationRequest | 

api_instance <- PromptsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreatePromptGeneration(var_prompt_generation_requestdata_file = "result.txt")
result <- api_instance$CreatePromptGeneration(var_prompt_generation_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prompt_generation_request** | [**PromptGenerationRequest**](PromptGenerationRequest.md)|  | 

### Return type

[**PromptGenerationResponse**](PromptGenerationResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | The run, status processing |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **CreatePrompts**
> PromptsCreateResponse CreatePrompts(prompts_create_request)

Bulk-create prompts

Add prompts to a project in bulk (up to 100 per request). Validates the account prompt quota and skips duplicates. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Bulk-create prompts
#
# prepare function argument(s)
var_prompts_create_request <- PromptsCreateRequest$new(123, c("prompts_example"), "country_code_example", "language_code_example") # PromptsCreateRequest | 

api_instance <- PromptsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreatePrompts(var_prompts_create_requestdata_file = "result.txt")
result <- api_instance$CreatePrompts(var_prompts_create_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prompts_create_request** | [**PromptsCreateRequest**](PromptsCreateRequest.md)|  | 

### Return type

[**PromptsCreateResponse**](PromptsCreateResponse.md)

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

# **DeletePrompt**
> DeletePrompt(project_id, id)

Delete a prompt

Deletes a prompt (irreversible). The prompt disappears immediately and frees a prompt slot; its historical data (executions, mentions, citations, sentiment) is purged by a background job. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Delete a prompt
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- 56 # integer | 

api_instance <- PromptsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeletePrompt(var_project_id, var_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **id** | **integer**|  | 

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
| **200** | Deleted |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |

# **GetPromptGeneration**
> PromptGenerationResponse GetPromptGeneration(project_id, id)

Get a prompt generation run

Returns a run started with POST /prompt_generations: processing while the generator works, then completed with the suggestions it saved to the Suggested prompts queue, or failed with an error code and message. Poll every few seconds; most runs finish within a minute. Runs are kept for 24 hours, their suggestions stay in the queue.

### Example
```R
library(llmpulse)

# Get a prompt generation run
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- "id_example" # character | 

api_instance <- PromptsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPromptGeneration(var_project_id, var_iddata_file = "result.txt")
result <- api_instance$GetPromptGeneration(var_project_id, var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **id** | **character**|  | 

### Return type

[**PromptGenerationResponse**](PromptGenerationResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run |  -  |
| **403** | API key belongs to a team member whose permission matrix does not grant this feature |  -  |
| **404** | Resource not found |  -  |

# **ImportPrompts**
> PromptsImportResponse ImportPrompts(prompts_import_request)

Import prompts

The app's CSV import as JSON: up to 500 rows, each with its own prompt, country_code, language_code (codes or names; both default to the project's) and tags, created when missing. Duplicates are skipped and existing prompts still get the row's tags. The prompt limits are checked before anything is written: when the new prompts would exceed the plan the call returns ERR_LIMIT_REACHED and imports nothing. A row is skipped and comes back in row_errors when its country or language is unknown, when it would give a prompt more than 50 tags (rows repeating a prompt add up) or when its tags would take the request past 500 new tags. For a team member without create access to Tags, a row that needs a tag that does not exist yet is skipped and comes back in row_errors. For a team member without update access to Prompts, a row matching a prompt that already existed adds no tags to it, and comes back in row_errors when it would have added one. Responds 201 when it created prompts, 200 otherwise. Requires a `read_write` scope API key and, for team members, create access to Prompts.

### Example
```R
library(llmpulse)

# Import prompts
#
# prepare function argument(s)
var_prompts_import_request <- PromptsImportRequest$new(123, c(PromptsImportRequest_rows_inner$new("prompt_example", "country_code_example", "language_code_example", c("tags_example")))) # PromptsImportRequest | 

api_instance <- PromptsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ImportPrompts(var_prompts_import_requestdata_file = "result.txt")
result <- api_instance$ImportPrompts(var_prompts_import_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prompts_import_request** | [**PromptsImportRequest**](PromptsImportRequest.md)|  | 

### Return type

[**PromptsImportResponse**](PromptsImportResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Nothing new was created (every row was a duplicate) |  -  |
| **201** | Prompts imported |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **ListPromptExecutions**
> PromptExecutionsResponse ListPromptExecutions(project_id, page = 1, per_page = 20, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, from = var.from, to = var.to, mention_filter = var.mention_filter, citation_filter = var.citation_filter, competitors = var.competitors, output = var.output, prompt_type = var.prompt_type, brand_kind = var.brand_kind)

List prompt executions

### Example
```R
library(llmpulse)

# List prompt executions
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_model <- "model_example" # character | Filter by one AI model. It must be a model enabled for the API key's user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_mention_filter <- "mention_filter_example" # character | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with 'competitors' to narrow the competitor side to specific rivals; on a negative cell that reads 'none of these'. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value 'competitors_only' is still accepted as an alias of competitor_not_you. (Optional)
var_citation_filter <- "citation_filter_example" # character | Same two-axis matrix applied to the domains cited in the answer instead of the brands named in it. Independent of mention_filter; pass both to intersect them (e.g. mentions_you + not_cites_you finds answers that talk about you without linking to you). (Optional)
var_competitors <- "competitors_example" # character | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)
var_prompt_type <- "prompt_type_example" # character | One prompt type or a comma-separated list: informational, navigational, commercial, transactional (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)

api_instance <- PromptsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListPromptExecutions(var_project_id, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, from = var_from, to = var_to, mention_filter = var_mention_filter, citation_filter = var_citation_filter, competitors = var_competitors, output = var_output, prompt_type = var_prompt_type, brand_kind = var_brand_kinddata_file = "result.txt")
result <- api_instance$ListPromptExecutions(var_project_id, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, from = var_from, to = var_to, mention_filter = var_mention_filter, citation_filter = var_citation_filter, competitors = var_competitors, output = var_output, prompt_type = var_prompt_type, brand_kind = var_brand_kind)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai] | Filter by one AI model. It must be a model enabled for the API key&#39;s user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **mention_filter** | Enum [mentions_you, not_mentions_you, mentions_competitor, not_mentions_competitor, you_and_competitor, competitor_not_you, you_not_competitor, no_brands] | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with &#39;competitors&#39; to narrow the competitor side to specific rivals; on a negative cell that reads &#39;none of these&#39;. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value &#39;competitors_only&#39; is still accepted as an alias of competitor_not_you. | [optional] 
 **citation_filter** | Enum [cites_you, not_cites_you, cites_competitor, not_cites_competitor, you_and_competitor, competitor_not_you, you_not_competitor, cites_no_brands] | Same two-axis matrix applied to the domains cited in the answer instead of the brands named in it. Independent of mention_filter; pass both to intersect them (e.g. mentions_you + not_cites_you finds answers that talk about you without linking to you). | [optional] 
 **competitors** | **character**| Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **prompt_type** | **character**| One prompt type or a comma-separated list: informational, navigational, commercial, transactional | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 

### Return type

[**PromptExecutionsResponse**](PromptExecutionsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated executions. Every row carries app_url, the link that opens the answer in the app |  -  |

# **ListPrompts**
> PromptsResponse ListPrompts(project_id, page = 1, per_page = 20, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, prompt_type = var.prompt_type, brand_kind = var.brand_kind, from = var.from, to = var.to, output = var.output)

List prompts

### Example
```R
library(llmpulse)

# List prompts
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_model <- "model_example" # character | Keep only the prompts with at least one execution on this AI model, of any outcome and date (the prompts /dimensions/prompt_executions lists for the same model). Prompts have no model of their own, so a prompt with no execution on this model yet (a newly enabled model, or a locale the model does not cover) is left out. An unknown value, or a model the API key's user has not enabled, returns 422 ERR_INVALID_PARAM. from and to still filter prompt creation. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_prompt_type <- "prompt_type_example" # character | One prompt type or a comma-separated list: informational, navigational, commercial, transactional (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- PromptsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListPrompts(var_project_id, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, prompt_type = var_prompt_type, brand_kind = var_brand_kind, from = var_from, to = var_to, output = var_outputdata_file = "result.txt")
result <- api_instance$ListPrompts(var_project_id, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, prompt_type = var_prompt_type, brand_kind = var_brand_kind, from = var_from, to = var_to, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai] | Keep only the prompts with at least one execution on this AI model, of any outcome and date (the prompts /dimensions/prompt_executions lists for the same model). Prompts have no model of their own, so a prompt with no execution on this model yet (a newly enabled model, or a locale the model does not cover) is left out. An unknown value, or a model the API key&#39;s user has not enabled, returns 422 ERR_INVALID_PARAM. from and to still filter prompt creation. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **prompt_type** | **character**| One prompt type or a comma-separated list: informational, navigational, commercial, transactional | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**PromptsResponse**](PromptsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated prompts. Every row carries app_url, the link that opens the prompt in the app |  -  |

# **ListQueryFanOuts**
> ListQueryFanOuts(project_id, page = 1, per_page = 20, view = "query", order = var.order, direction = "desc", query = var.query, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, prompt_type = var.prompt_type, brand_kind = var.brand_kind, range = var.range, from = var.from, to = var.to, output = var.output)

List query fan-out

The sub-queries a model actually issued when answering your tracked prompts. view=query (default) returns one row per distinct sub-query with count and share of all occurrences; view=prompt returns one row per prompt with how many distinct sub-queries it produced. Fan-out is reported mainly by ChatGPT, so an empty result usually means the models in scope do not expose it. The API returns the aggregation only: for a period-over-period delta, call it twice with explicit from/to.

### Example
```R
library(llmpulse)

# List query fan-out
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_view <- "query" # character | Row shape: one per distinct sub-query, or one per prompt (Optional)
var_order <- "order_example" # character | Sort field; the allowed set depends on view (Optional)
var_direction <- "desc" # character |  (Optional)
var_query <- "query_example" # character | Case-insensitive substring filter on the sub-query text (Optional)
var_model <- "model_example" # character | Filter by one AI model. It must be a model enabled for the API key's user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_prompt_type <- "prompt_type_example" # character | One prompt type or a comma-separated list: informational, navigational, commercial, transactional (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- PromptsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListQueryFanOuts(var_project_id, page = var_page, per_page = var_per_page, view = var_view, order = var_order, direction = var_direction, query = var_query, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, prompt_type = var_prompt_type, brand_kind = var_brand_kind, range = var_range, from = var_from, to = var_to, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **view** | Enum [query, prompt] | Row shape: one per distinct sub-query, or one per prompt | [optional] [default to &quot;query&quot;]
 **order** | Enum [count, share, query_text, total_count, variations_count, prompt_text] | Sort field; the allowed set depends on view | [optional] 
 **direction** | Enum [asc, desc] |  | [optional] [default to &quot;desc&quot;]
 **query** | **character**| Case-insensitive substring filter on the sub-query text | [optional] 
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai] | Filter by one AI model. It must be a model enabled for the API key&#39;s user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **prompt_type** | **character**| One prompt type or a comma-separated list: informational, navigational, commercial, transactional | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
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
| **200** | Paginated fan-out rows |  -  |
| **422** | Invalid parameters |  -  |

# **ListSuggestedPrompts**
> SuggestedPromptsResponse ListSuggestedPrompts(project_id, source = var.source, status = "pending", page = 1, per_page = 50)

List suggested prompts

Lists the project's Suggested prompts queue, the same list the app's Suggested Prompts tab shows, oldest first. It holds the suggestions of every generator (website, magic for keyword runs, topic, reddit, paa, reputational, translate, gsc for Search Console, catalog). Pending suggestions by default; status=all also returns accepted (with the prompt they became) and rejected ones. Team members need create access to Prompts, like the app's tab.

### Example
```R
library(llmpulse)

# List suggested prompts
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_source <- "source_example" # character | Only suggestions from this generator (Optional)
var_status <- "pending" # character | Only suggestions in this status (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 50 # integer |  (Optional)

api_instance <- PromptsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListSuggestedPrompts(var_project_id, source = var_source, status = var_status, page = var_page, per_page = var_per_pagedata_file = "result.txt")
result <- api_instance$ListSuggestedPrompts(var_project_id, source = var_source, status = var_status, page = var_page, per_page = var_per_page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **source** | Enum [website, magic, paa, topic, reddit, reputational, gsc, translate, catalog] | Only suggestions from this generator | [optional] 
 **status** | Enum [pending, accepted, rejected, all] | Only suggestions in this status | [optional] [default to &quot;pending&quot;]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 50]

### Return type

[**SuggestedPromptsResponse**](SuggestedPromptsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated suggestions |  -  |
| **403** | API key belongs to a team member whose permission matrix does not grant this feature |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **RejectSuggestedPrompts**
> SuggestedPromptsRejectResponse RejectSuggestedPrompts(suggested_prompt_ids_request)

Reject suggested prompts

Marks up to 100 pending suggestions as rejected, so they leave the pending list; suggestions that are no longer pending stay as they are. Tracks and deletes nothing. Requires a `read_write` scope API key and, for team members, create access to Prompts.

### Example
```R
library(llmpulse)

# Reject suggested prompts
#
# prepare function argument(s)
var_suggested_prompt_ids_request <- SuggestedPromptIdsRequest$new(123, c(123)) # SuggestedPromptIdsRequest | 

api_instance <- PromptsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RejectSuggestedPrompts(var_suggested_prompt_ids_requestdata_file = "result.txt")
result <- api_instance$RejectSuggestedPrompts(var_suggested_prompt_ids_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **suggested_prompt_ids_request** | [**SuggestedPromptIdsRequest**](SuggestedPromptIdsRequest.md)|  | 

### Return type

[**SuggestedPromptsRejectResponse**](SuggestedPromptsRejectResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The suggestions rejected |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **UpdatePrompt**
> PromptCategorizationResponse UpdatePrompt(id, update_prompt_request)

Edit a prompt's categorization

Manual categorization, exactly like editing the intent and brand badges on the prompt page: send `prompt_type`, `brand_kind` or both. The prompt is marked as manually categorized (`categorization_source` becomes `manual`), so automatic categorization no longer changes it; the prompt page can revert it to automatic. Any other field returns ERR_INVALID_PARAM. Not available from a white-label portal (ERR_INTEGRATION_UNAVAILABLE), where the page hides the editor. Requires a `read_write` scope API key and, for team members, update permission on Prompts.

### Example
```R
library(llmpulse)

# Edit a prompt's categorization
#
# prepare function argument(s)
var_id <- 56 # integer | 
var_update_prompt_request <- updatePrompt_request$new(123, "informational", "brand") # UpdatePromptRequest | 

api_instance <- PromptsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdatePrompt(var_id, var_update_prompt_requestdata_file = "result.txt")
result <- api_instance$UpdatePrompt(var_id, var_update_prompt_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 
 **update_prompt_request** | [**UpdatePromptRequest**](UpdatePromptRequest.md)|  | 

### Return type

[**PromptCategorizationResponse**](PromptCategorizationResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The prompt with its new categorization |  -  |
| **403** | Writes with a read-only key answer ERR_INSUFFICIENT_SCOPE, a team member without the permission ERR_INSUFFICIENT_PERMISSION, and a request made on a white-label portal host, where the app does not offer this action, ERR_INTEGRATION_UNAVAILABLE, with the same status |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

