# DimensionsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetCompetitorDetails**](DimensionsApi.md#GetCompetitorDetails) | **GET** /dimensions/competitors/{id} | Competitor details
[**GetProjectDetails**](DimensionsApi.md#GetProjectDetails) | **GET** /dimensions/projects/{id} | Project details
[**ListAgentBots**](DimensionsApi.md#ListAgentBots) | **GET** /dimensions/agent_bots | AI bot catalog (Scale+)
[**ListAllCitations**](DimensionsApi.md#ListAllCitations) | **GET** /dimensions/all_citations | List all citations (brand + competitor)
[**ListAllMentions**](DimensionsApi.md#ListAllMentions) | **GET** /dimensions/all_mentions | List all mentions (brand + competitor)
[**ListCitations**](DimensionsApi.md#ListCitations) | **GET** /dimensions/citations | List brand citations
[**ListCollections**](DimensionsApi.md#ListCollections) | **GET** /dimensions/collections | List tags/collections
[**ListCompetitorCitations**](DimensionsApi.md#ListCompetitorCitations) | **GET** /dimensions/competitor_citations | List competitor citations
[**ListCompetitorMentions**](DimensionsApi.md#ListCompetitorMentions) | **GET** /dimensions/competitor_mentions | List competitor mentions
[**ListCompetitors**](DimensionsApi.md#ListCompetitors) | **GET** /dimensions/competitors | List competitors
[**ListLocales**](DimensionsApi.md#ListLocales) | **GET** /dimensions/locales | List locales with data
[**ListMentions**](DimensionsApi.md#ListMentions) | **GET** /dimensions/mentions | List brand mentions
[**ListModels**](DimensionsApi.md#ListModels) | **GET** /dimensions/models | List models with data
[**ListProjects**](DimensionsApi.md#ListProjects) | **GET** /dimensions/projects | List projects
[**ListPromptExecutions**](DimensionsApi.md#ListPromptExecutions) | **GET** /dimensions/prompt_executions | List prompt executions
[**ListPrompts**](DimensionsApi.md#ListPrompts) | **GET** /dimensions/prompts | List prompts
[**ListSentimentCategories**](DimensionsApi.md#ListSentimentCategories) | **GET** /dimensions/sentiments | List sentiment categories
[**ListSources**](DimensionsApi.md#ListSources) | **GET** /dimensions/sources | List source URLs
[**ListTags**](DimensionsApi.md#ListTags) | **GET** /dimensions/tags | List tags (alias for /collections)


# **GetCompetitorDetails**
> CompetitorDetails GetCompetitorDetails(project_id, id)

Competitor details

### Example
```R
library(llmpulse)

# Competitor details
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- 56 # integer | 

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCompetitorDetails(var_project_id, var_iddata_file = "result.txt")
result <- api_instance$GetCompetitorDetails(var_project_id, var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **id** | **integer**|  | 

### Return type

[**CompetitorDetails**](CompetitorDetails.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Competitor details |  -  |

# **GetProjectDetails**
> ProjectDetails GetProjectDetails(id)

Project details

Detailed info for one project: matching_names, industry, business model, primary products, target audience, brand voice, locale, app store IDs, stats (incl. prompts_by_brand_kind counts) and data_coverage (models, countries and languages with data).

### Example
```R
library(llmpulse)

# Project details
#
# prepare function argument(s)
var_id <- 56 # integer | 

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetProjectDetails(var_iddata_file = "result.txt")
result <- api_instance$GetProjectDetails(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 

### Return type

[**ProjectDetails**](ProjectDetails.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Project details |  -  |
| **404** | Resource not found |  -  |

# **ListAgentBots**
> AgentBotsResponse ListAgentBots(project_id, output = var.output)

AI bot catalog (Scale+)

Static catalog of AI bots that Agent Analytics can identify. Useful for rendering filter UIs that mirror our internal classification (slug, display name, company, category, Cloudflare verified-bot mapping, description). Requires the Scale plan; lower tiers receive ERR_PLAN_REQUIRED. The equivalent MCP tool list_agent_bots is available on all plans.

### Example
```R
library(llmpulse)

# AI bot catalog (Scale+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
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

# **ListAllCitations**
> ListAllCitations(project_id, competitors = var.competitors, page = 1, per_page = 20, model = var.model, collection_id = var.collection_id, prompt = var.prompt, from = var.from, to = var.to, output = var.output)

List all citations (brand + competitor)

Unified citations stream with an `actor_type` field on each record. Includes visible citations and background source references; background references use position 0, meaning no visible rank.

### Example
```R
library(llmpulse)

# List all citations (brand + competitor)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_competitors <- "competitors_example" # character | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListAllCitations(var_project_id, competitors = var_competitors, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, prompt = var_prompt, from = var_from, to = var_to, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **competitors** | **character**| Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
| **200** | Paginated citations with actor_type discriminator |  -  |

# **ListAllMentions**
> ListAllMentions(project_id, competitors = var.competitors, page = 1, per_page = 20, model = var.model, collection_id = var.collection_id, prompt = var.prompt, from = var.from, to = var.to, output = var.output)

List all mentions (brand + competitor)

Unified mentions stream. Each record has an `actor_type` field (`project` or `competitor`) so the same payload covers both.

### Example
```R
library(llmpulse)

# List all mentions (brand + competitor)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_competitors <- "competitors_example" # character | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListAllMentions(var_project_id, competitors = var_competitors, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, prompt = var_prompt, from = var_from, to = var_to, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **competitors** | **character**| Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
| **200** | Paginated mentions with actor_type discriminator |  -  |

# **ListCitations**
> ListCitations(project_id, page = 1, per_page = 20, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, from = var.from, to = var.to, output = var.output)

List brand citations

Includes visible citations and background source references. Background references use position 0, meaning no visible rank.

### Example
```R
library(llmpulse)

# List brand citations
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListCitations(var_project_id, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, from = var_from, to = var_to, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
| **200** | Paginated brand citations |  -  |

# **ListCollections**
> ListCollections(project_id, output = var.output)

List tags/collections

### Example
```R
library(llmpulse)

# List tags/collections
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListCollections(var_project_id, output = var_output)
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
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Collections |  -  |

# **ListCompetitorCitations**
> ListCompetitorCitations(project_id, competitors = var.competitors, page = 1, per_page = 20, model = var.model, collection_id = var.collection_id, prompt = var.prompt, from = var.from, to = var.to, output = var.output)

List competitor citations

Includes visible citations and background source references. Background references use position 0, meaning no visible rank.

### Example
```R
library(llmpulse)

# List competitor citations
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_competitors <- "competitors_example" # character | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListCompetitorCitations(var_project_id, competitors = var_competitors, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, prompt = var_prompt, from = var_from, to = var_to, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **competitors** | **character**| Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
| **200** | Paginated competitor citations |  -  |

# **ListCompetitorMentions**
> ListCompetitorMentions(project_id, competitors = var.competitors, page = 1, per_page = 20, model = var.model, collection_id = var.collection_id, prompt = var.prompt, from = var.from, to = var.to, output = var.output)

List competitor mentions

### Example
```R
library(llmpulse)

# List competitor mentions
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_competitors <- "competitors_example" # character | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListCompetitorMentions(var_project_id, competitors = var_competitors, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, prompt = var_prompt, from = var_from, to = var_to, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **competitors** | **character**| Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
| **200** | Paginated competitor mentions |  -  |

# **ListCompetitors**
> ListCompetitors200Response ListCompetitors(project_id, include_project_brand = FALSE, output = var.output)

List competitors

### Example
```R
library(llmpulse)

# List competitors
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_include_project_brand <- FALSE # character | When true, prepends the project brand with actor_type=project and is_own=true (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListCompetitors(var_project_id, include_project_brand = var_include_project_brand, output = var_outputdata_file = "result.txt")
result <- api_instance$ListCompetitors(var_project_id, include_project_brand = var_include_project_brand, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **include_project_brand** | **character**| When true, prepends the project brand with actor_type&#x3D;project and is_own&#x3D;true | [optional] [default to FALSE]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**ListCompetitors200Response**](listCompetitors_200_response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Competitors |  -  |

# **ListLocales**
> ListLocales(project_id)

List locales with data

### Example
```R
library(llmpulse)

# List locales with data
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListLocales(var_project_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 

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
| **200** | Locales |  -  |

# **ListMentions**
> ListMentions(project_id, page = 1, per_page = 20, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, from = var.from, to = var.to, output = var.output)

List brand mentions

### Example
```R
library(llmpulse)

# List brand mentions
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListMentions(var_project_id, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, from = var_from, to = var_to, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
| **200** | Paginated brand mentions |  -  |

# **ListModels**
> ListModels(project_id)

List models with data

### Example
```R
library(llmpulse)

# List models with data
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListModels(var_project_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 

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
| **200** | Models |  -  |

# **ListProjects**
> ListProjects200Response ListProjects(output = var.output)

List projects

All projects accessible with your API key.

### Example
```R
library(llmpulse)

# List projects
#
# prepare function argument(s)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListProjects(output = var_outputdata_file = "result.txt")
result <- api_instance$ListProjects(output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**ListProjects200Response**](listProjects_200_response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Projects |  -  |

# **ListPromptExecutions**
> ListPromptExecutions(project_id, page = 1, per_page = 20, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, from = var.from, to = var.to, mention_filter = var.mention_filter, citation_filter = var.citation_filter, competitors = var.competitors, output = var.output)

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
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_mention_filter <- "mention_filter_example" # character | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with 'competitors' to narrow the competitor side to specific rivals; on a negative cell that reads 'none of these'. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value 'competitors_only' is still accepted as an alias of competitor_not_you. (Optional)
var_citation_filter <- "citation_filter_example" # character | Same two-axis matrix applied to the domains cited in the answer instead of the brands named in it. Independent of mention_filter; pass both to intersect them (e.g. mentions_you + not_cites_you finds answers that talk about you without linking to you). (Optional)
var_competitors <- "competitors_example" # character | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListPromptExecutions(var_project_id, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, from = var_from, to = var_to, mention_filter = var_mention_filter, citation_filter = var_citation_filter, competitors = var_competitors, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **mention_filter** | Enum [mentions_you, not_mentions_you, mentions_competitor, not_mentions_competitor, you_and_competitor, competitor_not_you, you_not_competitor, no_brands] | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with &#39;competitors&#39; to narrow the competitor side to specific rivals; on a negative cell that reads &#39;none of these&#39;. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value &#39;competitors_only&#39; is still accepted as an alias of competitor_not_you. | [optional] 
 **citation_filter** | Enum [cites_you, not_cites_you, cites_competitor, not_cites_competitor, you_and_competitor, competitor_not_you, you_not_competitor, cites_no_brands] | Same two-axis matrix applied to the domains cited in the answer instead of the brands named in it. Independent of mention_filter; pass both to intersect them (e.g. mentions_you + not_cites_you finds answers that talk about you without linking to you). | [optional] 
 **competitors** | **character**| Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
| **200** | Paginated executions |  -  |

# **ListPrompts**
> ListPrompts(project_id, page = 1, per_page = 20, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt_type = var.prompt_type, brand_kind = var.brand_kind, from = var.from, to = var.to, output = var.output)

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
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_prompt_type <- "prompt_type_example" # character | Filter by prompt type (search intent) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListPrompts(var_project_id, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt_type = var_prompt_type, brand_kind = var_brand_kind, from = var_from, to = var_to, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **prompt_type** | Enum [informational, navigational, commercial, transactional] | Filter by prompt type (search intent) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
| **200** | Paginated prompts |  -  |

# **ListSentimentCategories**
> ListSentimentCategories(project_id, output = var.output)

List sentiment categories

Sentiment metric keys + labels + colors. For records, use /sentiments.

### Example
```R
library(llmpulse)

# List sentiment categories
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
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
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Sentiment buckets |  -  |

# **ListSources**
> ListSources(project_id, page = 1, per_page = 20, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, prompt = var.prompt, from = var.from, to = var.to, source_type = var.source_type, mention_filter = var.mention_filter, competitors = var.competitors, output = var.output)

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
var_model <- "model_example" # character | Filter by AI model. Models the API key's user has not enabled are silently dropped. (Optional)
var_collection_id <- 56 # integer |  (Optional)
var_country_code <- "country_code_example" # character | ISO country code (e.g. US, GB, DE) (Optional)
var_language_code <- "language_code_example" # character | ISO language code (e.g. en, es, de) (Optional)
var_prompt <- 56 # integer | Filter by prompt ID (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_source_type <- "source_type_example" # character | Filter by source ownership. Owned and competitor matching honor the project's exact-subdomain setting. (Optional)
var_mention_filter <- "mention_filter_example" # character | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with 'competitors' to narrow the competitor side to specific rivals; on a negative cell that reads 'none of these'. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value 'competitors_only' is still accepted as an alias of competitor_not_you. (Optional)
var_competitors <- "competitors_example" # character | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListSources(var_project_id, page = var_page, per_page = var_per_page, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, prompt = var_prompt, from = var_from, to = var_to, source_type = var_source_type, mention_filter = var_mention_filter, competitors = var_competitors, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, gemini, ai_overview, ai_mode, copilot, claude, grok, deepseek, meta_ai, amazon_rufus] | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collection_id** | **integer**|  | [optional] 
 **country_code** | **character**| ISO country code (e.g. US, GB, DE) | [optional] 
 **language_code** | **character**| ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **integer**| Filter by prompt ID | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **source_type** | Enum [owned, competitor, third_party] | Filter by source ownership. Owned and competitor matching honor the project&#39;s exact-subdomain setting. | [optional] 
 **mention_filter** | Enum [mentions_you, not_mentions_you, mentions_competitor, not_mentions_competitor, you_and_competitor, competitor_not_you, you_not_competitor, no_brands] | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with &#39;competitors&#39; to narrow the competitor side to specific rivals; on a negative cell that reads &#39;none of these&#39;. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value &#39;competitors_only&#39; is still accepted as an alias of competitor_not_you. | [optional] 
 **competitors** | **character**| Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
| **200** | Paginated sources |  -  |

# **ListTags**
> ListTags(project_id, output = var.output)

List tags (alias for /collections)

### Example
```R
library(llmpulse)

# List tags (alias for /collections)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- DimensionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListTags(var_project_id, output = var_output)
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
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tags |  -  |

