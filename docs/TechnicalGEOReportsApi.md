# TechnicalGEOReportsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateTechnicalGeoReports**](TechnicalGEOReportsApi.md#CreateTechnicalGeoReports) | **POST** /technical_geo_reports | Run technical GEO analysis
[**GetTechnicalGeoReport**](TechnicalGEOReportsApi.md#GetTechnicalGeoReport) | **GET** /technical_geo_reports/{id} | Get a technical GEO report
[**ListTechnicalGeoReports**](TechnicalGEOReportsApi.md#ListTechnicalGeoReports) | **GET** /technical_geo_reports | List technical GEO reports
[**RevertTechnicalGeoReportContent**](TechnicalGEOReportsApi.md#RevertTechnicalGeoReportContent) | **POST** /technical_geo_reports/{id}/revert_content | Revert llms.txt report content
[**UpdateTechnicalGeoReportContent**](TechnicalGEOReportsApi.md#UpdateTechnicalGeoReportContent) | **PATCH** /technical_geo_reports/{id}/content | Edit llms.txt report content


# **CreateTechnicalGeoReports**
> CreateTechnicalGeoReports(create_technical_geo_reports_request)

Run technical GEO analysis

Launches the full nine-report technical GEO analysis bundle for a URL + country. The bundle starts only when at least nine daily units remain. Each successfully created report uses one unit; a report that is not created uses none. Daily allocations vary by account. Each report runs in a background job. Requires a `read_write` scope API key.

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

Returns the current status and the full result_data once the report is completed. While it is running, result_data is null and poll_after_seconds tells clients when to check again. Summaries carry output_language_code (the ISO 639-1 code an llms_txt report was requested in; null for an llms_txt report written in the website's own language, requested as auto or chosen in the app, and for every other report type); a completed llms_txt result_data also returns content_version (send it back to PATCH /technical_geo_reports/{id}/content), manually_edited_at, original_llms_txt_content and original_llms_full_txt_content (the generated files, kept from the first manual edit in the app, the API or MCP) and metadata.output_language_code.

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

# **RevertTechnicalGeoReportContent**
> LlmsTxtTechnicalGeoReport RevertTechnicalGeoReportContent(id, technical_geo_report_content_revert_request)

Revert llms.txt report content

Discards every manual edit on the llms_txt report and restores the llms.txt and llms-full.txt files exactly as they were generated. Returns ERR_INVALID_PARAM when the report has no manual edits or report_type is not llms_txt. Requires a `read_write` scope API key and, for team members, create permission on GEO Optimization.

### Example
```R
library(llmpulse)

# Revert llms.txt report content
#
# prepare function argument(s)
var_id <- 56 # integer | Report id returned by POST /technical_geo_reports or GET /technical_geo_reports
var_technical_geo_report_content_revert_request <- TechnicalGeoReportContentRevertRequest$new(123, "llms_txt") # TechnicalGeoReportContentRevertRequest | 

api_instance <- TechnicalGEOReportsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RevertTechnicalGeoReportContent(var_id, var_technical_geo_report_content_revert_requestdata_file = "result.txt")
result <- api_instance$RevertTechnicalGeoReportContent(var_id, var_technical_geo_report_content_revert_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| Report id returned by POST /technical_geo_reports or GET /technical_geo_reports | 
 **technical_geo_report_content_revert_request** | [**TechnicalGeoReportContentRevertRequest**](TechnicalGeoReportContentRevertRequest.md)|  | 

### Return type

[**LlmsTxtTechnicalGeoReport**](LlmsTxtTechnicalGeoReport.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The report with its generated files restored |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **UpdateTechnicalGeoReportContent**
> TechnicalGeoReportContentUpdateResponse UpdateTechnicalGeoReportContent(id, technical_geo_report_content_update_request)

Edit llms.txt report content

Replaces the llms.txt and llms-full.txt files of a completed llms_txt report in place, without generating them again. `edits` maps llms_txt and/or llms_full_txt to the full replacement text. `content_version` must equal result_data.content_version of the report as last read; when the report changed since, the edit is refused as stale and the message names the current version. A missing or stale content_version, a blank file, a file over 200,000 characters, a value that is not text, an unknown file key, an empty `edits` object, a report that has not completed or a report_type other than llms_txt is rejected with ERR_INVALID_PARAM and nothing is written. Files are stored with Unix line endings and one trailing newline. A file identical to the stored one is ignored, and the response lists the files that actually changed. The first edit keeps the generated files in original_llms_txt_content and original_llms_full_txt_content so POST /technical_geo_reports/{id}/revert_content can restore them; running the report again creates a new report without these edits. Requires a `read_write` scope API key and, for team members, create permission on GEO Optimization.

### Example
```R
library(llmpulse)

# Edit llms.txt report content
#
# prepare function argument(s)
var_id <- 56 # integer | Report id returned by POST /technical_geo_reports or GET /technical_geo_reports
var_technical_geo_report_content_update_request <- TechnicalGeoReportContentUpdateRequest$new(123, "llms_txt", "content_version_example", TechnicalGeoReportContentUpdateRequest_edits$new("llms_txt_example", "llms_full_txt_example")) # TechnicalGeoReportContentUpdateRequest | 

api_instance <- TechnicalGEOReportsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateTechnicalGeoReportContent(var_id, var_technical_geo_report_content_update_requestdata_file = "result.txt")
result <- api_instance$UpdateTechnicalGeoReportContent(var_id, var_technical_geo_report_content_update_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| Report id returned by POST /technical_geo_reports or GET /technical_geo_reports | 
 **technical_geo_report_content_update_request** | [**TechnicalGeoReportContentUpdateRequest**](TechnicalGeoReportContentUpdateRequest.md)|  | 

### Return type

[**TechnicalGeoReportContentUpdateResponse**](TechnicalGeoReportContentUpdateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The report with its current files, plus the files that changed |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

