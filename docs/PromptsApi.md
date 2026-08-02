# PromptsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AssignPromptTags**](PromptsApi.md#AssignPromptTags) | **POST** /prompts/assign_tags | Bulk-attach tags to prompts
[**CreatePrompts**](PromptsApi.md#CreatePrompts) | **POST** /prompts | Bulk-create prompts
[**DeletePrompt**](PromptsApi.md#DeletePrompt) | **DELETE** /prompts/{id} | Delete a prompt


# **AssignPromptTags**
> AssignPromptTags(assign_prompt_tags_request)

Bulk-attach tags to prompts

Idempotent bulk assignment of tags (Collections) to existing prompts. Tags can be resolved by id or by name (case-insensitive). Use `create_missing: true` to auto-create unknown tag names. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Bulk-attach tags to prompts
#
# prepare function argument(s)
var_assign_prompt_tags_request <- assignPromptTags_request$new(123, c(123), c(123), c("tag_names_example"), "create_missing_example") # AssignPromptTagsRequest | 

api_instance <- PromptsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$AssignPromptTags(var_assign_prompt_tags_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assign_prompt_tags_request** | [**AssignPromptTagsRequest**](AssignPromptTagsRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Tags attached |  -  |
| **403** | API key lacks write permission |  -  |
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

