# CollectionsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateCollection**](CollectionsApi.md#CreateCollection) | **POST** /collections | Create a tag
[**DeleteCollection**](CollectionsApi.md#DeleteCollection) | **DELETE** /collections/{id} | Delete a tag
[**UpdateCollection**](CollectionsApi.md#UpdateCollection) | **PATCH** /collections/{id} | Update a tag


# **CreateCollection**
> CreateCollection(create_collection_request)

Create a tag

Creates a tag (Collection) in a project. Optional `prompt_ids` attaches existing prompts in the same call. Tag name must be unique per project (case-insensitive). Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Create a tag
#
# prepare function argument(s)
var_create_collection_request <- createCollection_request$new(123, "name_example", "description_example", c(123)) # CreateCollectionRequest | 

api_instance <- CollectionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$CreateCollection(var_create_collection_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_collection_request** | [**CreateCollectionRequest**](CreateCollectionRequest.md)|  | 

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
| **201** | Created |  -  |
| **403** | API key lacks write permission |  -  |
| **422** | Invalid parameters |  -  |

# **DeleteCollection**
> DeleteCollection(project_id, id)

Delete a tag

Deletes a tag/collection. The prompts inside it are NOT deleted; only the grouping disappears. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Delete a tag
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- 56 # integer | 

api_instance <- CollectionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteCollection(var_project_id, var_id)
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

# **UpdateCollection**
> UpdateCollection(id, update_collection_request)

Update a tag

Renames a tag/collection or changes its description. Prompt membership is managed via POST /prompts/assign_tags, not here. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Update a tag
#
# prepare function argument(s)
var_id <- 56 # integer | 
var_update_collection_request <- updateCollection_request$new(123, "name_example", "description_example") # UpdateCollectionRequest | 

api_instance <- CollectionsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$UpdateCollection(var_id, var_update_collection_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 
 **update_collection_request** | [**UpdateCollectionRequest**](UpdateCollectionRequest.md)|  | 

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
| **200** | Updated |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

