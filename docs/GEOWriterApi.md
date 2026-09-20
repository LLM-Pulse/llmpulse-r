# GEOWriterApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateIntelligenceTask**](GEOWriterApi.md#CreateIntelligenceTask) | **POST** /intelligence_tasks | Create a GEO Writer task
[**GetIntelligenceTask**](GEOWriterApi.md#GetIntelligenceTask) | **GET** /intelligence_tasks/{id} | Get a GEO Writer task
[**ListIntelligenceTasks**](GEOWriterApi.md#ListIntelligenceTasks) | **GET** /intelligence_tasks | List GEO Writer tasks
[**RevertIntelligenceTaskContent**](GEOWriterApi.md#RevertIntelligenceTaskContent) | **POST** /intelligence_tasks/{id}/revert | Revert GEO Writer task content
[**UpdateIntelligenceTaskContent**](GEOWriterApi.md#UpdateIntelligenceTaskContent) | **PATCH** /intelligence_tasks/{id} | Edit GEO Writer task content


# **CreateIntelligenceTask**
> IntelligenceTask CreateIntelligenceTask(intelligence_task_create_request)

Create a GEO Writer task

### Example
```R
library(llmpulse)

# Create a GEO Writer task
#
# prepare function argument(s)
var_intelligence_task_create_request <- IntelligenceTaskCreateRequest$new(123, "brief", 123, "custom_topic_example", "user_instructions_example", "output_language_code_example", "existing_content_example", "existing_content_url_example") # IntelligenceTaskCreateRequest | 

api_instance <- GEOWriterApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateIntelligenceTask(var_intelligence_task_create_requestdata_file = "result.txt")
result <- api_instance$CreateIntelligenceTask(var_intelligence_task_create_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **intelligence_task_create_request** | [**IntelligenceTaskCreateRequest**](IntelligenceTaskCreateRequest.md)|  | 

### Return type

[**IntelligenceTask**](IntelligenceTask.md)

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

# **GetIntelligenceTask**
> IntelligenceTask GetIntelligenceTask(project_id, id)

Get a GEO Writer task

### Example
```R
library(llmpulse)

# Get a GEO Writer task
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- "id_example" # character | Numeric task ID or public_id string token

api_instance <- GEOWriterApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetIntelligenceTask(var_project_id, var_iddata_file = "result.txt")
result <- api_instance$GetIntelligenceTask(var_project_id, var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **id** | **character**| Numeric task ID or public_id string token | 

### Return type

[**IntelligenceTask**](IntelligenceTask.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Task with result_data when completed |  -  |

# **ListIntelligenceTasks**
> ListIntelligenceTasks(project_id, task_type = var.task_type, status = var.status, page = 1, per_page = 20)

List GEO Writer tasks

### Example
```R
library(llmpulse)

# List GEO Writer tasks
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_task_type <- "task_type_example" # character |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)

api_instance <- GEOWriterApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListIntelligenceTasks(var_project_id, task_type = var_task_type, status = var_status, page = var_page, per_page = var_per_page)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **task_type** | Enum [brief, create, update, pr_insights, custom] |  | [optional] 
 **status** | **character**|  | [optional] 
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
| **200** | Paginated tasks |  -  |

# **RevertIntelligenceTaskContent**
> IntelligenceTask RevertIntelligenceTaskContent(project_id, id)

Revert GEO Writer task content

Discards every manual edit on the task and restores the output exactly as it was generated. Returns ERR_INVALID_PARAM when the task has no manual edits. Requires a `read_write` scope API key and, for team members, update permission on GEO Writer.

### Example
```R
library(llmpulse)

# Revert GEO Writer task content
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- "id_example" # character | Numeric task ID or public_id string token

api_instance <- GEOWriterApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RevertIntelligenceTaskContent(var_project_id, var_iddata_file = "result.txt")
result <- api_instance$RevertIntelligenceTaskContent(var_project_id, var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **id** | **character**| Numeric task ID or public_id string token | 

### Return type

[**IntelligenceTask**](IntelligenceTask.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Task restored to its generated output |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **UpdateIntelligenceTaskContent**
> IntelligenceTaskUpdateResponse UpdateIntelligenceTaskContent(id, intelligence_task_update_request)

Edit GEO Writer task content

Edits the text of a completed task in place. `edits` maps dotted paths into result_data (for example `title` or `sections.0.content`) to replacement text. Only string fields that already exist can change: a path that does not resolve to text, a blank `title`, a value over 20,000 characters or an empty `edits` object is rejected with ERR_INVALID_PARAM and nothing is written. Values identical to the stored text are ignored, and the response lists the paths that actually changed. The first edit keeps a copy of the generated output so POST /intelligence_tasks/{id}/revert can restore it; regenerating the task replaces the edited content. Requires a `read_write` scope API key and, for team members, update permission on GEO Writer.

### Example
```R
library(llmpulse)

# Edit GEO Writer task content
#
# prepare function argument(s)
var_id <- "id_example" # character | Numeric task ID or public_id string token
var_intelligence_task_update_request <- IntelligenceTaskUpdateRequest$new(123, c(key = "inner_example")) # IntelligenceTaskUpdateRequest | 

api_instance <- GEOWriterApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateIntelligenceTaskContent(var_id, var_intelligence_task_update_requestdata_file = "result.txt")
result <- api_instance$UpdateIntelligenceTaskContent(var_id, var_intelligence_task_update_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| Numeric task ID or public_id string token | 
 **intelligence_task_update_request** | [**IntelligenceTaskUpdateRequest**](IntelligenceTaskUpdateRequest.md)|  | 

### Return type

[**IntelligenceTaskUpdateResponse**](IntelligenceTaskUpdateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Updated task with the paths that changed |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

