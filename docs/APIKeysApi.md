# APIKeysApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateApiKey**](APIKeysApi.md#CreateApiKey) | **POST** /api_keys | Create an API key limited to projects
[**ListApiKeys**](APIKeysApi.md#ListApiKeys) | **GET** /api_keys | List API keys
[**RevokeApiKey**](APIKeysApi.md#RevokeApiKey) | **DELETE** /api_keys/{id} | Revoke an API key


# **CreateApiKey**
> CreateApiKey201Response CreateApiKey(create_api_key_request)

Create an API key limited to projects

Creates an API key limited to the projects in project_ids, owned by the same user as the calling key, and returns its secret token once: store it, since it cannot be read again. The key sees only those projects (any other project answers ERR_PROJECT_NOT_FOUND) and cannot act on the whole account, and the set of projects never changes. This endpoint never creates an account-wide key; create one in the app under API Keys. scope is read (default) or read_write. Every project must be one the caller can access: a project of another account, a deleted one or an unknown id answers ERR_PROJECT_NOT_FOUND and nothing is created. A user can hold up to 500 active keys; past that the request answers ERR_LIMIT_REACHED until a key is revoked. Requires an account-wide `read_write` scope API key on the Scale plan or above: a key limited to some projects answers ERR_KEY_PROJECT_SCOPED. A team member needs permission to create API keys and can only choose projects they can access.

### Example
```R
library(llmpulse)

# Create an API key limited to projects
#
# prepare function argument(s)
var_create_api_key_request <- createApiKey_request$new("name_example", c(123), "read") # CreateApiKeyRequest | 

api_instance <- APIKeysApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateApiKey(var_create_api_key_requestdata_file = "result.txt")
result <- api_instance$CreateApiKey(var_create_api_key_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_api_key_request** | [**CreateApiKeyRequest**](CreateApiKeyRequest.md)|  | 

### Return type

[**CreateApiKey201Response**](createApiKey_201_response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created. The key as GET /api_keys lists it, plus its secret token, returned only this once. |  -  |
| **401** | Authentication failed |  -  |
| **403** | A key limited to some projects answers ERR_KEY_PROJECT_SCOPED and a read-only key ERR_INSUFFICIENT_SCOPE: managing keys needs an account-wide read and write key. A team member without the API Keys permission answers ERR_INSUFFICIENT_PERMISSION, and creating a key below the Scale plan ERR_PLAN_REQUIRED, with the same status |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **ListApiKeys**
> ListApiKeys200Response ListApiKeys(page = var.page, per_page = var.per_page)

List API keys

Lists the API keys of the user the calling key belongs to, newest first, revoked ones included: name, the visible prefix of the token, scope (read or read_write), the projects a key is limited to (project_scoped, project_ids; an empty list on an account-wide key), when it was created and last used, and when it was revoked. The secret token is only ever returned once, by POST /api_keys. Requires an account-wide `read_write` scope API key: a key limited to some projects answers ERR_KEY_PROJECT_SCOPED. Still answers after the account moves below the Scale plan, so old keys can be found and revoked. A team member needs the API Keys permission and sees only their own keys.

### Example
```R
library(llmpulse)

# List API keys
#
# prepare function argument(s)
var_page <- 56 # integer |  (Optional)
var_per_page <- 56 # integer | Default 20, max 100 (Optional)

api_instance <- APIKeysApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListApiKeys(page = var_page, per_page = var_per_pagedata_file = "result.txt")
result <- api_instance$ListApiKeys(page = var_page, per_page = var_per_page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**|  | [optional] 
 **per_page** | **integer**| Default 20, max 100 | [optional] 

### Return type

[**ListApiKeys200Response**](listApiKeys_200_response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **401** | Authentication failed |  -  |
| **403** | A key limited to some projects answers ERR_KEY_PROJECT_SCOPED and a read-only key ERR_INSUFFICIENT_SCOPE: managing keys needs an account-wide read and write key. A team member without the API Keys permission answers ERR_INSUFFICIENT_PERMISSION, and creating a key below the Scale plan ERR_PLAN_REQUIRED, with the same status |  -  |

# **RevokeApiKey**
> RevokeApiKey200Response RevokeApiKey(id)

Revoke an API key

Revokes an API key of the user the calling key belongs to: it stops working immediately and cannot be restored. Revoking a key that is already revoked answers the same way and keeps its original revocation time. A key of another user answers ERR_NOT_FOUND. The calling key can revoke itself. Requires an account-wide `read_write` scope API key: a key limited to some projects answers ERR_KEY_PROJECT_SCOPED. Still answers after the account moves below the Scale plan. A team member needs permission to delete API keys.

### Example
```R
library(llmpulse)

# Revoke an API key
#
# prepare function argument(s)
var_id <- 56 # integer | The key id from GET /api_keys

api_instance <- APIKeysApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RevokeApiKey(var_iddata_file = "result.txt")
result <- api_instance$RevokeApiKey(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| The key id from GET /api_keys | 

### Return type

[**RevokeApiKey200Response**](revokeApiKey_200_response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **401** | Authentication failed |  -  |
| **403** | A key limited to some projects answers ERR_KEY_PROJECT_SCOPED and a read-only key ERR_INSUFFICIENT_SCOPE: managing keys needs an account-wide read and write key. A team member without the API Keys permission answers ERR_INSUFFICIENT_PERMISSION, and creating a key below the Scale plan ERR_PLAN_REQUIRED, with the same status |  -  |
| **404** | Resource not found |  -  |

