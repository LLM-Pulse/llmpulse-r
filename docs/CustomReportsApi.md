# CustomReportsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetCustomReport**](CustomReportsApi.md#GetCustomReport) | **GET** /custom_reports/{id} | Get a custom report with its widget data
[**ListCustomReports**](CustomReportsApi.md#ListCustomReports) | **GET** /custom_reports | List custom reports
[**SendCustomReport**](CustomReportsApi.md#SendCustomReport) | **POST** /custom_reports/{id}/send | Send a custom report now


# **GetCustomReport**
> CustomReportDetailResponse GetCustomReport(project_id, id)

Get a custom report with its widget data

The configuration of one custom report (date range, filters, schedule, layout) and the data of every widget computed for today, the same numbers the report page, its shared link and its PDF show. Each widget carries its `kind` and a `data` object shaped by it: `series` for `timeseries`, `slices` for `donut`, `bars` for `bar`, `values` and `changes` for `kpi_grid`, `rows` for `table`. A widget whose data source is not connected has `available: false` and `data: null`. Nothing is saved or sent. Requires the Scale plan or above.

### Example
```R
library(llmpulse)

# Get a custom report with its widget data
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- 56 # integer | Custom report id, from GET /custom_reports

api_instance <- CustomReportsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCustomReport(var_project_id, var_iddata_file = "result.txt")
result <- api_instance$GetCustomReport(var_project_id, var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **id** | **integer**| Custom report id, from GET /custom_reports | 

### Return type

[**CustomReportDetailResponse**](CustomReportDetailResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Report configuration and widget data |  -  |
| **403** | Endpoint requires a higher plan tier |  -  |
| **404** | Resource not found |  -  |

# **ListCustomReports**
> CustomReportsResponse ListCustomReports(project_id, page = 1, per_page = 20, output = var.output)

List custom reports

The custom reports of the project, newest first, as the Reports > Custom Reports list shows them. Recipient addresses, the shared-link token and the password are never returned. Requires the Scale plan or above.

### Example
```R
library(llmpulse)

# List custom reports
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- CustomReportsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListCustomReports(var_project_id, page = var_page, per_page = var_per_page, output = var_outputdata_file = "result.txt")
result <- api_instance$ListCustomReports(var_project_id, page = var_page, per_page = var_per_page, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**CustomReportsResponse**](CustomReportsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated custom reports |  -  |
| **403** | Endpoint requires a higher plan tier |  -  |

# **SendCustomReport**
> CustomReportSendResponse SendCustomReport(id, send_custom_report_request)

Send a custom report now

Queues the report's PDF for its recipients, like the Send now button on the report page: the report must be published and have at least one recipient (ERR_INVALID_PARAM otherwise), and each report can be sent once every 10 minutes (429 ERR_RATE_LIMITED with Retry-After). Not available from a white-label portal or for a report made inside one (ERR_INTEGRATION_UNAVAILABLE). Requires the Scale plan or above, a `read_write` scope API key and, for team members, update permission on Custom Reports.

### Example
```R
library(llmpulse)

# Send a custom report now
#
# prepare function argument(s)
var_id <- 56 # integer | Custom report id, from GET /custom_reports
var_send_custom_report_request <- sendCustomReport_request$new(123) # SendCustomReportRequest | 

api_instance <- CustomReportsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SendCustomReport(var_id, var_send_custom_report_requestdata_file = "result.txt")
result <- api_instance$SendCustomReport(var_id, var_send_custom_report_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| Custom report id, from GET /custom_reports | 
 **send_custom_report_request** | [**SendCustomReportRequest**](SendCustomReportRequest.md)|  | 

### Return type

[**CustomReportSendResponse**](CustomReportSendResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **202** | The report is queued for its recipients |  -  |
| **403** | Writes with a read-only key answer ERR_INSUFFICIENT_SCOPE, a team member without the permission ERR_INSUFFICIENT_PERMISSION, and a request made on a white-label portal host, where the app does not offer this action, ERR_INTEGRATION_UNAVAILABLE, with the same status |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |
| **429** | The report was sent less than 10 minutes ago; retry after the number of seconds in the Retry-After header |  * Retry-After - Seconds to wait before retrying <br>  |

