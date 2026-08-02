# RecommendationsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetRecommendation**](RecommendationsApi.md#GetRecommendation) | **GET** /recommendations/{id} | Get recommendation run with items
[**LaunchRecommendations**](RecommendationsApi.md#LaunchRecommendations) | **POST** /recommendations | Launch a recommendations generation
[**ListRecommendations**](RecommendationsApi.md#ListRecommendations) | **GET** /recommendations | List recommendation runs


# **GetRecommendation**
> GetRecommendation(project_id, id, item_status = var.item_status, resolve_source_refs = TRUE)

Get recommendation run with items

### Example
```R
library(llmpulse)

# Get recommendation run with items
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- 56 # integer | 
var_item_status <- "item_status_example" # character |  (Optional)
var_resolve_source_refs <- TRUE # character |  (Optional)

api_instance <- RecommendationsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetRecommendation(var_project_id, var_id, item_status = var_item_status, resolve_source_refs = var_resolve_source_refs)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **id** | **integer**|  | 
 **item_status** | Enum [active, completed, archived] |  | [optional] 
 **resolve_source_refs** | **character**|  | [optional] [default to TRUE]

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
| **200** | Recommendation detail with items |  -  |
| **404** | Resource not found |  -  |

# **LaunchRecommendations**
> LaunchRecommendations(launch_recommendations_request)

Launch a recommendations generation

Launches a full-scope recommendations generation (async job, 1-3 minutes; poll GET /recommendations/{id} until status is completed). Consumes the project weekly recommendation-item budget: returns ERR_LIMIT_REACHED when it is exhausted or when a generation of the same type is already pending/processing. sentiment_reputation requires the Scale plan or above. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Launch a recommendations generation
#
# prepare function argument(s)
var_launch_recommendations_request <- launchRecommendations_request$new(123, "ai_visibility") # LaunchRecommendationsRequest | 

api_instance <- RecommendationsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$LaunchRecommendations(var_launch_recommendations_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **launch_recommendations_request** | [**LaunchRecommendationsRequest**](LaunchRecommendationsRequest.md)|  | 

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
| **201** | Generation launched (status pending) |  -  |
| **403** | API key lacks write permission |  -  |
| **422** | Invalid parameters |  -  |

# **ListRecommendations**
> ListRecommendations(project_id, recommendation_type = var.recommendation_type, status = var.status, page = 1, per_page = 20)

List recommendation runs

### Example
```R
library(llmpulse)

# List recommendation runs
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_recommendation_type <- "recommendation_type_example" # character |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)

api_instance <- RecommendationsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListRecommendations(var_project_id, recommendation_type = var_recommendation_type, status = var_status, page = var_page, per_page = var_per_page)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **recommendation_type** | Enum [ai_visibility, social_community, brand_building, sentiment_reputation] |  | [optional] 
 **status** | Enum [pending, processing, completed, failed] |  | [optional] 
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
| **200** | Paginated recommendations |  -  |

