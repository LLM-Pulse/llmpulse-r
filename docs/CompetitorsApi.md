# CompetitorsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateCompetitor**](CompetitorsApi.md#CreateCompetitor) | **POST** /competitors | Add a competitor
[**DeleteCompetitor**](CompetitorsApi.md#DeleteCompetitor) | **DELETE** /competitors/{id} | Delete a competitor
[**UpdateCompetitor**](CompetitorsApi.md#UpdateCompetitor) | **PATCH** /competitors/{id} | Update a competitor


# **CreateCompetitor**
> CreateCompetitor(create_competitor_request)

Add a competitor

Adds a competitor (brand name + domain) to a project. Honours the per-plan max competitors cap. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Add a competitor
#
# prepare function argument(s)
var_create_competitor_request <- createCompetitor_request$new(123, "brand_name_example", "domain_example", c("matching_names_example")) # CreateCompetitorRequest | 

api_instance <- CompetitorsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$CreateCompetitor(var_create_competitor_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_competitor_request** | [**CreateCompetitorRequest**](CreateCompetitorRequest.md)|  | 

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

# **DeleteCompetitor**
> DeleteCompetitor(project_id, id)

Delete a competitor

Deletes a competitor (irreversible). It disappears immediately and frees a competitor slot; its tracked data is purged by a background job. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Delete a competitor
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- 56 # integer | 

api_instance <- CompetitorsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteCompetitor(var_project_id, var_id)
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

# **UpdateCompetitor**
> UpdateCompetitor(id, update_competitor_request)

Update a competitor

Updates brand_name, matching_names (full replacement list; the brand name is always included automatically) and/or color. The domain is immutable after creation. Name changes re-run mention/citation matching in the background: the competitor shows processing=true for a few minutes and further edits are rejected meanwhile. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Update a competitor
#
# prepare function argument(s)
var_id <- 56 # integer | 
var_update_competitor_request <- updateCompetitor_request$new(123, "brand_name_example", c("matching_names_example"), "color_example") # UpdateCompetitorRequest | 

api_instance <- CompetitorsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$UpdateCompetitor(var_id, var_update_competitor_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 
 **update_competitor_request** | [**UpdateCompetitorRequest**](UpdateCompetitorRequest.md)|  | 

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

