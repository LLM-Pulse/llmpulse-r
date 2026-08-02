# AnnotationsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateAnnotation**](AnnotationsApi.md#CreateAnnotation) | **POST** /annotations | Create a timeline annotation
[**DeleteAnnotation**](AnnotationsApi.md#DeleteAnnotation) | **DELETE** /annotations/{id} | Delete a timeline annotation
[**ListAnnotations**](AnnotationsApi.md#ListAnnotations) | **GET** /annotations | List timeline annotations
[**UpdateAnnotation**](AnnotationsApi.md#UpdateAnnotation) | **PATCH** /annotations/{id} | Update a timeline annotation


# **CreateAnnotation**
> CreateAnnotation(create_annotation_request)

Create a timeline annotation

Marks a date in the project timeseries with a title + description. Requires the **Growth** plan or above. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Create a timeline annotation
#
# prepare function argument(s)
var_create_annotation_request <- createAnnotation_request$new(123, "title_example", "annotation_date_example", "description_example", "color_example", 123) # CreateAnnotationRequest | 

api_instance <- AnnotationsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$CreateAnnotation(var_create_annotation_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_annotation_request** | [**CreateAnnotationRequest**](CreateAnnotationRequest.md)|  | 

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
| **403** | Insufficient scope or plan required |  -  |
| **422** | Invalid parameters |  -  |

# **DeleteAnnotation**
> DeleteAnnotation(project_id, id)

Delete a timeline annotation

Deletes an annotation. Same ownership rule as PATCH. Requires the **Growth** plan or above and a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Delete a timeline annotation
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- 56 # integer | 

api_instance <- AnnotationsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$DeleteAnnotation(var_project_id, var_id)
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
| **403** | API key belongs to a team member whose permission matrix does not grant this feature |  -  |
| **404** | Resource not found |  -  |

# **ListAnnotations**
> ListAnnotations(project_id, from = var.from, to = var.to, annotation_category_id = var.annotation_category_id, page = 1, per_page = 20)

List timeline annotations

Lists the project timeline annotations (user-created + system), newest first. The category field tells them apart; editable says whether the requesting user may modify the row. Requires the **Growth** plan or above.

### Example
```R
library(llmpulse)

# List timeline annotations
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_annotation_category_id <- 56 # integer |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)

api_instance <- AnnotationsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListAnnotations(var_project_id, from = var_from, to = var_to, annotation_category_id = var_annotation_category_id, page = var_page, per_page = var_per_page)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **annotation_category_id** | **integer**|  | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]

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
| **200** | Paginated annotations |  -  |
| **403** | Endpoint requires a higher plan tier |  -  |

# **UpdateAnnotation**
> UpdateAnnotation(id, update_annotation_request)

Update a timeline annotation

Updates title, description, annotation_date, color and/or annotation_category_id. Only user-created annotations belonging to the requesting user can be updated (system annotations never). Requires the **Growth** plan or above and a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Update a timeline annotation
#
# prepare function argument(s)
var_id <- 56 # integer | 
var_update_annotation_request <- updateAnnotation_request$new(123, "title_example", "description_example", "annotation_date_example", "color_example", 123) # UpdateAnnotationRequest | 

api_instance <- AnnotationsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$UpdateAnnotation(var_id, var_update_annotation_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 
 **update_annotation_request** | [**UpdateAnnotationRequest**](UpdateAnnotationRequest.md)|  | 

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
| **403** | API key belongs to a team member whose permission matrix does not grant this feature |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

