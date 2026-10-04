# StoreIntegrationsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AcceptCatalogPromptSuggestions**](StoreIntegrationsApi.md#AcceptCatalogPromptSuggestions) | **POST** /catalog_prompt_suggestions/accept | Accept catalog prompt suggestions
[**CreateCatalogPromptSuggestions**](StoreIntegrationsApi.md#CreateCatalogPromptSuggestions) | **POST** /catalog_prompt_suggestions | Suggest buyer prompts from catalog products
[**GetStoreConnection**](StoreIntegrationsApi.md#GetStoreConnection) | **GET** /store_connection | Match a store to a project
[**ListAiOrders**](StoreIntegrationsApi.md#ListAiOrders) | **GET** /ai_orders | Read AI-referred store orders
[**ListCatalogPromptSuggestions**](StoreIntegrationsApi.md#ListCatalogPromptSuggestions) | **GET** /catalog_prompt_suggestions | List catalog prompt suggestions
[**RejectCatalogPromptSuggestions**](StoreIntegrationsApi.md#RejectCatalogPromptSuggestions) | **POST** /catalog_prompt_suggestions/reject | Reject catalog prompt suggestions
[**ReplaceAiOrders**](StoreIntegrationsApi.md#ReplaceAiOrders) | **PUT** /ai_orders | Replace AI-referred store orders for a window


# **AcceptCatalogPromptSuggestions**
> CatalogPromptSuggestionsAcceptResponse AcceptCatalogPromptSuggestions(catalog_prompt_suggestion_ids_request)

Accept catalog prompt suggestions

Starts tracking pending suggestions: each one becomes a prompt, tagged with a collection named after its product. Suggestions that are no longer pending come back in skipped. All accepted suggestions must share one country and language. When the new prompts would exceed the plan, the call returns ERR_LIMIT_REACHED and accepts nothing. Requires a `read_write` scope API key and, for team members, create access to Prompts. Not available to accounts with a white-label portal or an embed (ERR_INTEGRATION_UNAVAILABLE).

### Example
```R
library(llmpulse)

# Accept catalog prompt suggestions
#
# prepare function argument(s)
var_catalog_prompt_suggestion_ids_request <- CatalogPromptSuggestionIdsRequest$new(123, c(123)) # CatalogPromptSuggestionIdsRequest | 

api_instance <- StoreIntegrationsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AcceptCatalogPromptSuggestions(var_catalog_prompt_suggestion_ids_requestdata_file = "result.txt")
result <- api_instance$AcceptCatalogPromptSuggestions(var_catalog_prompt_suggestion_ids_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_prompt_suggestion_ids_request** | [**CatalogPromptSuggestionIdsRequest**](CatalogPromptSuggestionIdsRequest.md)|  | 

### Return type

[**CatalogPromptSuggestionsAcceptResponse**](CatalogPromptSuggestionsAcceptResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Accepted and skipped suggestions |  -  |
| **403** | The account has a white-label portal or an embed, so store integrations are not available (ERR_INTEGRATION_UNAVAILABLE). Writes with a read-only key answer ERR_INSUFFICIENT_SCOPE, and a team member without the permission ERR_INSUFFICIENT_PERMISSION, with the same status |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **CreateCatalogPromptSuggestions**
> CatalogPromptSuggestionsCreateResponse CreateCatalogPromptSuggestions(catalog_prompt_suggestions_create_request)

Suggest buyer prompts from catalog products

Writes buyer prompts for up to 20 catalog products and saves them as pending suggestions in the project's Suggested prompts queue, with the product recorded on each. Generation draws on the hourly prompt-suggestion allowance the app also uses (ERR_QUOTA_EXCEEDED once it is used up); a failed generation returns ERR_GENERATION_FAILED (502) and can be retried. Requires a `read_write` scope API key and, for team members, create access to Prompts. Not available to accounts with a white-label portal or an embed (ERR_INTEGRATION_UNAVAILABLE).

### Example
```R
library(llmpulse)

# Suggest buyer prompts from catalog products
#
# prepare function argument(s)
var_catalog_prompt_suggestions_create_request <- CatalogPromptSuggestionsCreateRequest$new(123, "shopify", c(CatalogProduct$new("external_id_example", "title_example", "handle_example", "product_type_example", "vendor_example", c("tags_example"), c("collections_example"), "url_example")), "country_code_example", "language_code_example") # CatalogPromptSuggestionsCreateRequest | 

api_instance <- StoreIntegrationsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateCatalogPromptSuggestions(var_catalog_prompt_suggestions_create_requestdata_file = "result.txt")
result <- api_instance$CreateCatalogPromptSuggestions(var_catalog_prompt_suggestions_create_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_prompt_suggestions_create_request** | [**CatalogPromptSuggestionsCreateRequest**](CatalogPromptSuggestionsCreateRequest.md)|  | 

### Return type

[**CatalogPromptSuggestionsCreateResponse**](CatalogPromptSuggestionsCreateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | The suggestions saved for these products |  -  |
| **403** | The account has a white-label portal or an embed, so store integrations are not available (ERR_INTEGRATION_UNAVAILABLE). Writes with a read-only key answer ERR_INSUFFICIENT_SCOPE, and a team member without the permission ERR_INSUFFICIENT_PERMISSION, with the same status |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |
| **502** | The AI generation failed; retry the request |  -  |

# **GetStoreConnection**
> StoreConnectionResponse GetStoreConnection(platform, domain)

Match a store to a project

Tells a store app whether the API key's account can use it and which project the store belongs to: the live project whose domain equals the store domain, else one whose domain is a parent or a subdomain of it, else null. candidates lists every live project of the account so the app can offer a picker. Takes no project_id. Not available to accounts with a white-label portal or an embed (ERR_INTEGRATION_UNAVAILABLE).

### Example
```R
library(llmpulse)

# Match a store to a project
#
# prepare function argument(s)
var_platform <- "platform_example" # character | Store platform
var_domain <- "domain_example" # character | Store domain, with or without scheme, e.g. acme-store.com

api_instance <- StoreIntegrationsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetStoreConnection(var_platform, var_domaindata_file = "result.txt")
result <- api_instance$GetStoreConnection(var_platform, var_domain)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platform** | Enum [shopify] | Store platform | 
 **domain** | **character**| Store domain, with or without scheme, e.g. acme-store.com | 

### Return type

[**StoreConnectionResponse**](StoreConnectionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Eligibility, the matching project and the candidates |  -  |
| **403** | The account has a white-label portal or an embed, so store integrations are not available (ERR_INTEGRATION_UNAVAILABLE). Writes with a read-only key answer ERR_INSUFFICIENT_SCOPE, and a team member without the permission ERR_INSUFFICIENT_PERMISSION, with the same status |  -  |
| **422** | Invalid parameters |  -  |

# **ListAiOrders**
> AiOrdersResponse ListAiOrders(project_id, platform = "shopify", from = var.from, to = var.to)

Read AI-referred store orders

Reads back the AI-referred orders a store app pushed for a project: totals, one row per AI assistant and a daily series of the days with orders. Revenue values are decimal strings in currency. Team members need read access to AI Traffic. Not available to accounts with a white-label portal or an embed (ERR_INTEGRATION_UNAVAILABLE).

### Example
```R
library(llmpulse)

# Read AI-referred store orders
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_platform <- "shopify" # character | Store platform (Optional)
var_from <- "from_example" # character | First day (YYYY-MM-DD). Defaults to 89 days before to (Optional)
var_to <- "to_example" # character | Last day (YYYY-MM-DD). Defaults to today; the window is at most 400 days (Optional)

api_instance <- StoreIntegrationsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListAiOrders(var_project_id, platform = var_platform, from = var_from, to = var_todata_file = "result.txt")
result <- api_instance$ListAiOrders(var_project_id, platform = var_platform, from = var_from, to = var_to)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **platform** | Enum [shopify] | Store platform | [optional] [default to &quot;shopify&quot;]
 **from** | **character**| First day (YYYY-MM-DD). Defaults to 89 days before to | [optional] 
 **to** | **character**| Last day (YYYY-MM-DD). Defaults to today; the window is at most 400 days | [optional] 

### Return type

[**AiOrdersResponse**](AiOrdersResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Totals, per-assistant rows and the daily series |  -  |
| **403** | The account has a white-label portal or an embed, so store integrations are not available (ERR_INTEGRATION_UNAVAILABLE). Writes with a read-only key answer ERR_INSUFFICIENT_SCOPE, and a team member without the permission ERR_INSUFFICIENT_PERMISSION, with the same status |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **ListCatalogPromptSuggestions**
> CatalogPromptSuggestionsResponse ListCatalogPromptSuggestions(project_id, status = var.status, product_external_id = var.product_external_id, page = 1, per_page = 50)

List catalog prompt suggestions

Lists the buyer prompts suggested from a store catalog, oldest first, with their status and the product each one came from. Team members need read access to Prompts. Not available to accounts with a white-label portal or an embed (ERR_INTEGRATION_UNAVAILABLE).

### Example
```R
library(llmpulse)

# List catalog prompt suggestions
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_status <- "status_example" # character | Only suggestions in this status (Optional)
var_product_external_id <- "product_external_id_example" # character | Only suggestions for this store product id (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 50 # integer |  (Optional)

api_instance <- StoreIntegrationsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListCatalogPromptSuggestions(var_project_id, status = var_status, product_external_id = var_product_external_id, page = var_page, per_page = var_per_pagedata_file = "result.txt")
result <- api_instance$ListCatalogPromptSuggestions(var_project_id, status = var_status, product_external_id = var_product_external_id, page = var_page, per_page = var_per_page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **status** | Enum [pending, accepted, rejected] | Only suggestions in this status | [optional] 
 **product_external_id** | **character**| Only suggestions for this store product id | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 50]

### Return type

[**CatalogPromptSuggestionsResponse**](CatalogPromptSuggestionsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated suggestions |  -  |
| **403** | The account has a white-label portal or an embed, so store integrations are not available (ERR_INTEGRATION_UNAVAILABLE). Writes with a read-only key answer ERR_INSUFFICIENT_SCOPE, and a team member without the permission ERR_INSUFFICIENT_PERMISSION, with the same status |  -  |
| **404** | Resource not found |  -  |

# **RejectCatalogPromptSuggestions**
> CatalogPromptSuggestionsRejectResponse RejectCatalogPromptSuggestions(catalog_prompt_suggestion_ids_request)

Reject catalog prompt suggestions

Marks pending suggestions as rejected; suggestions that are no longer pending stay as they are. Requires a `read_write` scope API key and, for team members, update access to Prompts. Not available to accounts with a white-label portal or an embed (ERR_INTEGRATION_UNAVAILABLE).

### Example
```R
library(llmpulse)

# Reject catalog prompt suggestions
#
# prepare function argument(s)
var_catalog_prompt_suggestion_ids_request <- CatalogPromptSuggestionIdsRequest$new(123, c(123)) # CatalogPromptSuggestionIdsRequest | 

api_instance <- StoreIntegrationsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RejectCatalogPromptSuggestions(var_catalog_prompt_suggestion_ids_requestdata_file = "result.txt")
result <- api_instance$RejectCatalogPromptSuggestions(var_catalog_prompt_suggestion_ids_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_prompt_suggestion_ids_request** | [**CatalogPromptSuggestionIdsRequest**](CatalogPromptSuggestionIdsRequest.md)|  | 

### Return type

[**CatalogPromptSuggestionsRejectResponse**](CatalogPromptSuggestionsRejectResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | How many suggestions were rejected |  -  |
| **403** | The account has a white-label portal or an embed, so store integrations are not available (ERR_INTEGRATION_UNAVAILABLE). Writes with a read-only key answer ERR_INSUFFICIENT_SCOPE, and a team member without the permission ERR_INSUFFICIENT_PERMISSION, with the same status |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **ReplaceAiOrders**
> AiOrdersUpdateResponse ReplaceAiOrders(ai_orders_update_request)

Replace AI-referred store orders for a window

Replaces the daily AI-referred orders and revenue of the from..to window. Send the raw referring host or utm_source of each order's first visit as referrer: LLM Pulse classifies it and ignores anything that is not an AI assistant. Entries for the same day and assistant are summed. Every stored row of that project and platform inside the window is replaced, so pushing the same window again converges instead of counting twice. Rows are kept per project and platform, not per store, so one store reports per project. Requires a `read_write` scope API key and, for team members, update access to AI Traffic. Not available to accounts with a white-label portal or an embed (ERR_INTEGRATION_UNAVAILABLE).

### Example
```R
library(llmpulse)

# Replace AI-referred store orders for a window
#
# prepare function argument(s)
var_ai_orders_update_request <- AiOrdersUpdateRequest$new(123, "shopify", "currency_example", "from_example", "to_example", c(AiOrdersUpdateRequest_days_inner$new("day_example", "referrer_example", 123, "revenue_example"))) # AiOrdersUpdateRequest | 

api_instance <- StoreIntegrationsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ReplaceAiOrders(var_ai_orders_update_requestdata_file = "result.txt")
result <- api_instance$ReplaceAiOrders(var_ai_orders_update_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ai_orders_update_request** | [**AiOrdersUpdateRequest**](AiOrdersUpdateRequest.md)|  | 

### Return type

[**AiOrdersUpdateResponse**](AiOrdersUpdateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Rows stored and entries ignored |  -  |
| **403** | The account has a white-label portal or an embed, so store integrations are not available (ERR_INTEGRATION_UNAVAILABLE). Writes with a read-only key answer ERR_INSUFFICIENT_SCOPE, and a team member without the permission ERR_INSUFFICIENT_PERMISSION, with the same status |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

