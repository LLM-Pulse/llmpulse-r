# ReputationStudiesApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateReputationReport**](ReputationStudiesApi.md#CreateReputationReport) | **POST** /reputation/reports | Start a reputation report
[**GetReputationReport**](ReputationStudiesApi.md#GetReputationReport) | **GET** /reputation/reports/{id} | Get reputation report scores
[**GetStudy**](ReputationStudiesApi.md#GetStudy) | **GET** /studies/{id} | Get a custom AI study
[**GetStudyReport**](ReputationStudiesApi.md#GetStudyReport) | **GET** /studies/{id}/reports/{report_id} | Get custom study report scores
[**ListReputationReports**](ReputationStudiesApi.md#ListReputationReports) | **GET** /reputation/reports | List reputation reports
[**ListStudies**](ReputationStudiesApi.md#ListStudies) | **GET** /studies | List custom AI studies


# **CreateReputationReport**
> ReputationReportCreateResponse CreateReputationReport(create_reputation_report_request)

Start a reputation report

Starts this month's Brand Reputation report, like the Generate button on the Reputation page: 201 with the new report (status pending). When the month already holds a report that did not fail, whether it is still running or finished, nothing new starts and the answer is 200 with created false and that report. With recalculate true it uses the month's one manual recalculation instead (the Recalculate This Month button): a fresh run across every analyst model, 201 when it starts, 200 with created false while a report is still running, and ERR_LIMIT_REACHED once the month holds two reports. Generation runs in the background: poll GET /reputation/reports until status is completed, then read the scores with GET /reputation/reports/{id}. ERR_RATE_LIMITED (429, with Retry-After) means another request is starting a report for the same project; retry after a few seconds. recalculate must be true or false and unknown fields are refused (ERR_INVALID_PARAM). Requires reputation monitoring on the account, a `read_write` scope API key and, for team members, create permission on Reputation.

### Example
```R
library(llmpulse)

# Start a reputation report
#
# prepare function argument(s)
var_create_reputation_report_request <- createReputationReport_request$new(123, "recalculate_example") # CreateReputationReportRequest | 

api_instance <- ReputationStudiesApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateReputationReport(var_create_reputation_report_requestdata_file = "result.txt")
result <- api_instance$CreateReputationReport(var_create_reputation_report_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_reputation_report_request** | [**CreateReputationReportRequest**](CreateReputationReportRequest.md)|  | 

### Return type

[**ReputationReportCreateResponse**](ReputationReportCreateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Nothing new started; the report that already holds this month |  -  |
| **201** | The new report, status pending |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |
| **429** | Another request is starting a report for this project; retry after a few seconds |  -  |

# **GetReputationReport**
> GetReputationReport(id, project_id, page = 1, per_page = 20, model = var.model, brand = var.brand, dimension = var.dimension, output = var.output)

Get reputation report scores

One reputation report's scores as flat rows: one row per analyst model, brand, dimension and attribute, with its 0-100 score and the reasoning the model gave. Scores come from several analyst models independently, so compare models rather than averaging them blindly.

### Example
```R
library(llmpulse)

# Get reputation report scores
#
# prepare function argument(s)
var_id <- "id_example" # character | The report id from GET /reputation/reports
var_project_id <- 56 # integer | Project ID
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_model <- "model_example" # character | Restrict to one analyst model (Optional)
var_brand <- "brand_example" # character | Restrict to one brand name, or a comma-separated list (Optional)
var_dimension <- "dimension_example" # character | Restrict to one reputation dimension key (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- ReputationStudiesApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetReputationReport(var_id, var_project_id, page = var_page, per_page = var_per_page, model = var_model, brand = var_brand, dimension = var_dimension, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| The report id from GET /reputation/reports | 
 **project_id** | **integer**| Project ID | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, gemini, deepseek, grok, claude] | Restrict to one analyst model | [optional] 
 **brand** | **character**| Restrict to one brand name, or a comma-separated list | [optional] 
 **dimension** | **character**| Restrict to one reputation dimension key | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
| **200** | Paginated score rows plus the report summary |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **GetStudy**
> GetStudy(id)

Get a custom AI study

One study with its brief, the subjects it compares, the dimensions it scores them on, and its report history. Use the ids in `reports` with GET /studies/{id}/reports/{report_id}.

### Example
```R
library(llmpulse)

# Get a custom AI study
#
# prepare function argument(s)
var_id <- 56 # integer | 

api_instance <- ReputationStudiesApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetStudy(var_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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
| **200** | The study |  -  |
| **404** | Resource not found |  -  |

# **GetStudyReport**
> GetStudyReport(id, report_id, page = 1, per_page = 20, model = var.model, subject = var.subject, dimension = var.dimension, output = var.output)

Get custom study report scores

One custom-study report's scores as flat rows: one row per analyst model, subject, dimension and attribute, with its 0-100 score and the reasoning the model gave.

### Example
```R
library(llmpulse)

# Get custom study report scores
#
# prepare function argument(s)
var_id <- 56 # integer | 
var_report_id <- "report_id_example" # character | The report id from GET /studies/{id}
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_model <- "model_example" # character | Restrict to one analyst model (Optional)
var_subject <- "subject_example" # character | Restrict to one subject name, or a comma-separated list (Optional)
var_dimension <- "dimension_example" # character | Restrict to one dimension key (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- ReputationStudiesApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetStudyReport(var_id, var_report_id, page = var_page, per_page = var_per_page, model = var_model, subject = var_subject, dimension = var_dimension, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 
 **report_id** | **character**| The report id from GET /studies/{id} | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **model** | Enum [chatgpt, perplexity, gemini, deepseek, grok, claude] | Restrict to one analyst model | [optional] 
 **subject** | **character**| Restrict to one subject name, or a comma-separated list | [optional] 
 **dimension** | **character**| Restrict to one dimension key | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
| **200** | Paginated score rows plus the report summary |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **ListReputationReports**
> ListReputationReports(project_id, page = 1, per_page = 20, output = var.output)

List reputation reports

The monthly multi-model analyst reports scoring the tracked brand and its competitors, newest first. Pending and failed reports are included on purpose: whether this month ran at all is often the question. Each row carries the report id, its status, and which analyst models produced data. Requires reputation monitoring to be enabled on the account.

### Example
```R
library(llmpulse)

# List reputation reports
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- ReputationStudiesApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListReputationReports(var_project_id, page = var_page, per_page = var_per_page, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
| **200** | Paginated report summaries |  -  |

# **ListStudies**
> ListStudies(project_id = var.project_id, status = var.status, page = 1, per_page = 20, output = var.output)

List custom AI studies

The custom AI studies defined on the account: analyst reports over any set of subjects (brands, sectors, topics) and any set of dimensions. Studies belong to the ACCOUNT, not to a project, so project_id is an optional filter here and account-level studies are returned whichever project you filter by. A team member whose project access is restricted sees only the studies of the projects they can reach. Requires reputation monitoring to be enabled on the account.

### Example
```R
library(llmpulse)

# List custom AI studies
#
# prepare function argument(s)
var_project_id <- 56 # integer | Restrict to studies attached to this project (plus account-level ones) (Optional)
var_status <- "status_example" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- ReputationStudiesApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListStudies(project_id = var_project_id, status = var_status, page = var_page, per_page = var_per_page, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Restrict to studies attached to this project (plus account-level ones) | [optional] 
 **status** | Enum [active, archived] |  | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
| **200** | Paginated study summaries |  -  |

