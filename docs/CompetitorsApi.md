# CompetitorsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateCompetitor**](CompetitorsApi.md#CreateCompetitor) | **POST** /competitors | Add a competitor
[**DeleteCompetitor**](CompetitorsApi.md#DeleteCompetitor) | **DELETE** /competitors/{id} | Delete a competitor
[**GetCompetitorDetails**](CompetitorsApi.md#GetCompetitorDetails) | **GET** /dimensions/competitors/{id} | Competitor details
[**ListCompetitors**](CompetitorsApi.md#ListCompetitors) | **GET** /dimensions/competitors | List competitors
[**UpdateCompetitor**](CompetitorsApi.md#UpdateCompetitor) | **PATCH** /competitors/{id} | Update a competitor


# **CreateCompetitor**
> CreateCompetitor(create_competitor_request)

Add a competitor

Adds a competitor with its own citation URL matching rule. Honours the per-plan max competitors cap. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Add a competitor
#
# prepare function argument(s)
var_create_competitor_request <- createCompetitor_request$new(123, "brand_name_example", "domain_example", c("matching_names_example"), "domain", "citation_match_path_example") # CreateCompetitorRequest | 

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

api_instance <- CompetitorsApi$new()
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

api_instance <- CompetitorsApi$new()
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

# **UpdateCompetitor**
> UpdateCompetitor(id, update_competitor_request)

Update a competitor

Updates brand_name, the competitor website domain or host, matching_names (full replacement list; the brand name is always included automatically), color and/or the citation URL matching rule. Website domain/host and citation-rule changes share one seven-day cooldown per competitor; other fields remain editable during the cooldown. Name, website or citation-rule changes re-run historical matching in the background: the competitor shows processing=true for a few minutes and further edits are rejected meanwhile. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Update a competitor
#
# prepare function argument(s)
var_id <- 56 # integer | 
var_update_competitor_request <- updateCompetitor_request$new(123, "brand_name_example", "domain_example", c("matching_names_example"), "color_example", "domain", "citation_match_path_example") # UpdateCompetitorRequest | 

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

