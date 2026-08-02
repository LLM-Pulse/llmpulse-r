# HealthApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Ping**](HealthApi.md#Ping) | **GET** /ping | Health check


# **Ping**
> Ping200Response Ping(project_id = var.project_id)

Health check

Validates the API key and optionally pings a project. Returns the authenticated user_id, project (if project_id is supplied), and a request_id.

### Example
```R
library(llmpulse)

# Health check
#
# prepare function argument(s)
var_project_id <- 56 # integer | Optional project to verify access for (Optional)

api_instance <- HealthApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Ping(project_id = var_project_iddata_file = "result.txt")
result <- api_instance$Ping(project_id = var_project_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Optional project to verify access for | [optional] 

### Return type

[**Ping200Response**](ping_200_response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | API is healthy |  -  |
| **401** | Authentication failed |  -  |

