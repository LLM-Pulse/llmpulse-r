# TechnicalGEOReportsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateTechnicalGeoReports**](TechnicalGEOReportsApi.md#CreateTechnicalGeoReports) | **POST** /technical_geo_reports | Run technical GEO analysis
[**GetTechnicalGeoReport**](TechnicalGEOReportsApi.md#GetTechnicalGeoReport) | **GET** /technical_geo_reports/{id} | Get a technical GEO report
[**ListTechnicalGeoReports**](TechnicalGEOReportsApi.md#ListTechnicalGeoReports) | **GET** /technical_geo_reports | List technical GEO reports


# **CreateTechnicalGeoReports**
> CreateTechnicalGeoReports(create_technical_geo_reports_request)

Run technical GEO analysis

Launches the full technical GEO analysis bundle (crawlability, schema, content readiness, discoverability, site structure, robots.txt, agent readiness, llms.txt, AI visibility) for a URL + country. Each report runs in a background job. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Run technical GEO analysis
#
# prepare function argument(s)
var_create_technical_geo_reports_request <- createTechnicalGeoReports_request$new(123, "url_example", "country_code_example", "output_language_code_example") # CreateTechnicalGeoReportsRequest | 

api_instance <- TechnicalGEOReportsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$CreateTechnicalGeoReports(var_create_technical_geo_reports_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_technical_geo_reports_request** | [**CreateTechnicalGeoReportsRequest**](CreateTechnicalGeoReportsRequest.md)|  | 

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
| **201** | Created. app_urls maps each created report type to the link that opens that report in the app |  -  |
| **403** | API key lacks write permission |  -  |
| **422** | Invalid parameters |  -  |

# **GetTechnicalGeoReport**
> GetTechnicalGeoReport(project_id, report_type, id)

Get a technical GEO report

Returns the current status and the full result_data once the report is completed. While it is running, result_data is null and poll_after_seconds tells clients when to check again. Summaries carry output_language_code (the ISO 639-1 code an llms_txt report was requested in; null for an llms_txt report left on the website's own language in the app, and for every other report type); a completed llms_txt result_data also returns manually_edited_at, original_llms_txt_content and original_llms_full_txt_content (the generated files, set once the customer edited the files in the app) and metadata.output_language_code.

### Example
```R
library(llmpulse)

# Get a technical GEO report
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_report_type <- "report_type_example" # character | 
var_id <- 56 # integer | Report id returned by POST /technical_geo_reports or GET /technical_geo_reports

api_instance <- TechnicalGEOReportsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetTechnicalGeoReport(var_project_id, var_report_type, var_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **report_type** | Enum [crawlability, schema, content_readiness, discoverability, site_structure, robots_txt, agent_readiness, llms_txt, ai_visibility] |  | 
 **id** | **integer**| Report id returned by POST /technical_geo_reports or GET /technical_geo_reports | 

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
| **200** | Report status and completed result data, plus app_url, the link that opens the report in the app |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **ListTechnicalGeoReports**
> ListTechnicalGeoReports(project_id, report_type, status = var.status, batch_id = var.batch_id, page = 1, per_page = 20)

List technical GEO reports

Lists reports of one technical GEO type for a project, newest first. Use agent_readiness for the AI/Agent Readiness report.

### Example
```R
library(llmpulse)

# List technical GEO reports
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_report_type <- "report_type_example" # character | 
var_status <- "status_example" # character | Optional status filter; valid values depend on report_type (Optional)
var_batch_id <- 56 # integer | Optional batch id returned when the report bundle was created (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)

api_instance <- TechnicalGEOReportsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListTechnicalGeoReports(var_project_id, var_report_type, status = var_status, batch_id = var_batch_id, page = var_page, per_page = var_per_page)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **report_type** | Enum [crawlability, schema, content_readiness, discoverability, site_structure, robots_txt, agent_readiness, llms_txt, ai_visibility] |  | 
 **status** | **character**| Optional status filter; valid values depend on report_type | [optional] 
 **batch_id** | **integer**| Optional batch id returned when the report bundle was created | [optional] 
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
| **200** | Paginated technical GEO report summaries. Every summary carries app_url, the link that opens the report in the app |  -  |
| **422** | Invalid parameters |  -  |

