# GEOAuditsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CompareGeoAuditRuns**](GEOAuditsApi.md#CompareGeoAuditRuns) | **GET** /geo_audits/{id}/comparison | Compare two GEO audit runs
[**CreateGeoAudits**](GEOAuditsApi.md#CreateGeoAudits) | **POST** /geo_audits | Create GEO audits
[**DeleteGeoAudit**](GEOAuditsApi.md#DeleteGeoAudit) | **DELETE** /geo_audits/{id} | Delete (archive) a GEO audit
[**GetGeoAudit**](GEOAuditsApi.md#GetGeoAudit) | **GET** /geo_audits/{id} | Get a GEO audit
[**GetGeoAuditRun**](GEOAuditsApi.md#GetGeoAuditRun) | **GET** /geo_audits/{geo_audit_id}/runs/{sequence} | Get a GEO audit run
[**ListGeoAlerts**](GEOAuditsApi.md#ListGeoAlerts) | **GET** /geo_alerts | List GEO audit alerts
[**ListGeoAuditFindings**](GEOAuditsApi.md#ListGeoAuditFindings) | **GET** /geo_audits/{geo_audit_id}/runs/{sequence}/findings | List the findings of a GEO audit run
[**ListGeoAuditIssues**](GEOAuditsApi.md#ListGeoAuditIssues) | **GET** /geo_audits/{geo_audit_id}/issues | List the issues of a GEO audit
[**ListGeoAuditRuns**](GEOAuditsApi.md#ListGeoAuditRuns) | **GET** /geo_audits/{geo_audit_id}/runs | List the runs of a GEO audit
[**ListGeoAudits**](GEOAuditsApi.md#ListGeoAudits) | **GET** /geo_audits | List GEO audits
[**RunGeoAudit**](GEOAuditsApi.md#RunGeoAudit) | **POST** /geo_audits/{geo_audit_id}/runs | Run a GEO audit now
[**UpdateGeoAudit**](GEOAuditsApi.md#UpdateGeoAudit) | **PATCH** /geo_audits/{id} | Update a GEO audit
[**UpdateGeoAuditIssue**](GEOAuditsApi.md#UpdateGeoAuditIssue) | **PATCH** /geo_audits/{geo_audit_id}/issues/{id} | Accept or reopen a GEO audit issue


# **CompareGeoAuditRuns**
> GeoAuditComparison CompareGeoAuditRuns(project_id, id, from_run = var.from_run, to_run = var.to_run)

Compare two GEO audit runs

### Example
```R
library(llmpulse)

# Compare two GEO audit runs
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- "id_example" # character | Audit id
var_from_run <- 56 # integer | Run number to compare from (default the run before to_run) (Optional)
var_to_run <- 56 # integer | Run number to compare to (default the latest completed run) (Optional)

api_instance <- GEOAuditsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CompareGeoAuditRuns(var_project_id, var_id, from_run = var_from_run, to_run = var_to_rundata_file = "result.txt")
result <- api_instance$CompareGeoAuditRuns(var_project_id, var_id, from_run = var_from_run, to_run = var_to_run)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **id** | **character**| Audit id | 
 **from_run** | **integer**| Run number to compare from (default the run before to_run) | [optional] 
 **to_run** | **integer**| Run number to compare to (default the latest completed run) | [optional] 

### Return type

[**GeoAuditComparison**](GeoAuditComparison.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The comparison |  -  |
| **404** | Resource not found |  -  |

# **CreateGeoAudits**
> GeoAuditCreateResponse CreateGeoAudits(geo_audit_create_request)

Create GEO audits

Creates one audit per entry of audit_types and starts the first run of each (it counts against the manual run limits: 6 per audit per hour, 200 per account per day). cadence weekly or monthly is accepted only for types whose checks are tracked run to run, and counts against the plan limit of active recurring audits (ERR_LIMIT_REACHED). Creating an audit that was archived restores it with its history. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Create GEO audits
#
# prepare function argument(s)
var_geo_audit_create_request <- GeoAuditCreateRequest$new(123, "target_example", c("agent_readiness"), "once") # GeoAuditCreateRequest | 

api_instance <- GEOAuditsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateGeoAudits(var_geo_audit_create_requestdata_file = "result.txt")
result <- api_instance$CreateGeoAudits(var_geo_audit_create_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **geo_audit_create_request** | [**GeoAuditCreateRequest**](GeoAuditCreateRequest.md)|  | 

### Return type

[**GeoAuditCreateResponse**](GeoAuditCreateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | The created audits |  -  |
| **403** | API key lacks write permission |  -  |
| **422** | Invalid parameters |  -  |

# **DeleteGeoAudit**
> GeoAuditArchived DeleteGeoAudit(project_id, id)

Delete (archive) a GEO audit

Archives the audit. Requires a `read_write` scope API key and, for team members, delete permission on GEO Optimization.

### Example
```R
library(llmpulse)

# Delete (archive) a GEO audit
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- "id_example" # character | Audit id

api_instance <- GEOAuditsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DeleteGeoAudit(var_project_id, var_iddata_file = "result.txt")
result <- api_instance$DeleteGeoAudit(var_project_id, var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **id** | **character**| Audit id | 

### Return type

[**GeoAuditArchived**](GeoAuditArchived.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Archived |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |

# **GetGeoAudit**
> GeoAuditResponse GetGeoAudit(project_id, id)

Get a GEO audit

### Example
```R
library(llmpulse)

# Get a GEO audit
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_id <- "id_example" # character | Audit id

api_instance <- GEOAuditsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetGeoAudit(var_project_id, var_iddata_file = "result.txt")
result <- api_instance$GetGeoAudit(var_project_id, var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **id** | **character**| Audit id | 

### Return type

[**GeoAuditResponse**](GeoAuditResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The audit |  -  |
| **404** | Resource not found |  -  |

# **GetGeoAuditRun**
> GeoAuditRunDetail GetGeoAuditRun(project_id, geo_audit_id, sequence)

Get a GEO audit run

### Example
```R
library(llmpulse)

# Get a GEO audit run
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_geo_audit_id <- "geo_audit_id_example" # character | Audit id
var_sequence <- 56 # integer | Run number within the audit

api_instance <- GEOAuditsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetGeoAuditRun(var_project_id, var_geo_audit_id, var_sequencedata_file = "result.txt")
result <- api_instance$GetGeoAuditRun(var_project_id, var_geo_audit_id, var_sequence)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **geo_audit_id** | **character**| Audit id | 
 **sequence** | **integer**| Run number within the audit | 

### Return type

[**GeoAuditRunDetail**](GeoAuditRunDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run with its result |  -  |
| **404** | Resource not found |  -  |

# **ListGeoAlerts**
> GeoAlertList ListGeoAlerts(project_id, audit_id = var.audit_id, page = 1, per_page = 20)

List GEO audit alerts

### Example
```R
library(llmpulse)

# List GEO audit alerts
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_audit_id <- "audit_id_example" # character | Only alerts of this audit (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)

api_instance <- GEOAuditsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListGeoAlerts(var_project_id, audit_id = var_audit_id, page = var_page, per_page = var_per_pagedata_file = "result.txt")
result <- api_instance$ListGeoAlerts(var_project_id, audit_id = var_audit_id, page = var_page, per_page = var_per_page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **audit_id** | **character**| Only alerts of this audit | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]

### Return type

[**GeoAlertList**](GeoAlertList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated alerts |  -  |

# **ListGeoAuditFindings**
> GeoAuditFindingList ListGeoAuditFindings(project_id, geo_audit_id, sequence, page = 1, per_page = 20, output = var.output)

List the findings of a GEO audit run

### Example
```R
library(llmpulse)

# List the findings of a GEO audit run
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_geo_audit_id <- "geo_audit_id_example" # character | Audit id
var_sequence <- 56 # integer | Run number within the audit
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- GEOAuditsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListGeoAuditFindings(var_project_id, var_geo_audit_id, var_sequence, page = var_page, per_page = var_per_page, output = var_outputdata_file = "result.txt")
result <- api_instance$ListGeoAuditFindings(var_project_id, var_geo_audit_id, var_sequence, page = var_page, per_page = var_per_page, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **geo_audit_id** | **character**| Audit id | 
 **sequence** | **integer**| Run number within the audit | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**GeoAuditFindingList**](GeoAuditFindingList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated findings |  -  |
| **404** | Resource not found |  -  |

# **ListGeoAuditIssues**
> GeoAuditIssueList ListGeoAuditIssues(project_id, geo_audit_id, state = var.state, page = 1, per_page = 20)

List the issues of a GEO audit

### Example
```R
library(llmpulse)

# List the issues of a GEO audit
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_geo_audit_id <- "geo_audit_id_example" # character | Audit id
var_state <- "state_example" # character | open means open and not accepted; default all (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)

api_instance <- GEOAuditsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListGeoAuditIssues(var_project_id, var_geo_audit_id, state = var_state, page = var_page, per_page = var_per_pagedata_file = "result.txt")
result <- api_instance$ListGeoAuditIssues(var_project_id, var_geo_audit_id, state = var_state, page = var_page, per_page = var_per_page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **geo_audit_id** | **character**| Audit id | 
 **state** | Enum [open, accepted, fixed, gone] | open means open and not accepted; default all | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]

### Return type

[**GeoAuditIssueList**](GeoAuditIssueList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated issues |  -  |
| **404** | Resource not found |  -  |

# **ListGeoAuditRuns**
> GeoAuditRunList ListGeoAuditRuns(project_id, geo_audit_id, page = 1, per_page = 20, output = var.output)

List the runs of a GEO audit

### Example
```R
library(llmpulse)

# List the runs of a GEO audit
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_geo_audit_id <- "geo_audit_id_example" # character | Audit id
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- GEOAuditsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListGeoAuditRuns(var_project_id, var_geo_audit_id, page = var_page, per_page = var_per_page, output = var_outputdata_file = "result.txt")
result <- api_instance$ListGeoAuditRuns(var_project_id, var_geo_audit_id, page = var_page, per_page = var_per_page, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **geo_audit_id** | **character**| Audit id | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**GeoAuditRunList**](GeoAuditRunList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated runs |  -  |
| **404** | Resource not found |  -  |

# **ListGeoAudits**
> GeoAuditList ListGeoAudits(project_id, audit_type = var.audit_type, status = var.status, cadence = var.cadence, page = 1, per_page = 20)

List GEO audits

Lists the project's audits, most recently updated first. Archived audits are left out unless status=archived.

### Example
```R
library(llmpulse)

# List GEO audits
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_audit_type <- "audit_type_example" # character |  (Optional)
var_status <- "status_example" # character |  (Optional)
var_cadence <- "cadence_example" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)

api_instance <- GEOAuditsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListGeoAudits(var_project_id, audit_type = var_audit_type, status = var_status, cadence = var_cadence, page = var_page, per_page = var_per_pagedata_file = "result.txt")
result <- api_instance$ListGeoAudits(var_project_id, audit_type = var_audit_type, status = var_status, cadence = var_cadence, page = var_page, per_page = var_per_page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **audit_type** | Enum [agent_readiness, robots_txt, crawlability, schema, content_readiness, discoverability, site_structure] |  | [optional] 
 **status** | Enum [active, paused, archived] |  | [optional] 
 **cadence** | Enum [once, weekly, monthly] |  | [optional] 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]

### Return type

[**GeoAuditList**](GeoAuditList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated audits |  -  |

# **RunGeoAudit**
> GeoAuditRunResponse RunGeoAudit(project_id, geo_audit_id)

Run a GEO audit now

Starts a run and returns it with status queued; poll GET /geo_audits/{geo_audit_id}/runs/{sequence} until status is completed, failed or unreachable. Limited to 6 manual runs per audit per rolling hour and 200 per account per day (ERR_LIMIT_REACHED); scheduled runs do not count. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Run a GEO audit now
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_geo_audit_id <- "geo_audit_id_example" # character | Audit id

api_instance <- GEOAuditsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$RunGeoAudit(var_project_id, var_geo_audit_iddata_file = "result.txt")
result <- api_instance$RunGeoAudit(var_project_id, var_geo_audit_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **geo_audit_id** | **character**| Audit id | 

### Return type

[**GeoAuditRunResponse**](GeoAuditRunResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | The new run |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **UpdateGeoAudit**
> GeoAuditResponse UpdateGeoAudit(id, geo_audit_update_request)

Update a GEO audit

Updates the schedule, the email alerts or the status. Making an audit recurring or resuming it counts against the plan limit of active recurring audits (ERR_LIMIT_REACHED). Requires a `read_write` scope API key and, for team members, update permission on GEO Optimization.

### Example
```R
library(llmpulse)

# Update a GEO audit
#
# prepare function argument(s)
var_id <- "id_example" # character | Audit id
var_geo_audit_update_request <- GeoAuditUpdateRequest$new(123, "once", 123, 123, "active", "email_alerts_example") # GeoAuditUpdateRequest | 

api_instance <- GEOAuditsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateGeoAudit(var_id, var_geo_audit_update_requestdata_file = "result.txt")
result <- api_instance$UpdateGeoAudit(var_id, var_geo_audit_update_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| Audit id | 
 **geo_audit_update_request** | [**GeoAuditUpdateRequest**](GeoAuditUpdateRequest.md)|  | 

### Return type

[**GeoAuditResponse**](GeoAuditResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The updated audit |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **UpdateGeoAuditIssue**
> GeoAuditIssueResponse UpdateGeoAuditIssue(geo_audit_id, id, geo_audit_issue_update_request)

Accept or reopen a GEO audit issue

Requires a `read_write` scope API key and, for team members, update permission on GEO Optimization.

### Example
```R
library(llmpulse)

# Accept or reopen a GEO audit issue
#
# prepare function argument(s)
var_geo_audit_id <- "geo_audit_id_example" # character | Audit id
var_id <- 56 # integer | Issue id
var_geo_audit_issue_update_request <- GeoAuditIssueUpdateRequest$new("accepted_example", 123) # GeoAuditIssueUpdateRequest | 

api_instance <- GEOAuditsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateGeoAuditIssue(var_geo_audit_id, var_id, var_geo_audit_issue_update_requestdata_file = "result.txt")
result <- api_instance$UpdateGeoAuditIssue(var_geo_audit_id, var_id, var_geo_audit_issue_update_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **geo_audit_id** | **character**| Audit id | 
 **id** | **integer**| Issue id | 
 **geo_audit_issue_update_request** | [**GeoAuditIssueUpdateRequest**](GeoAuditIssueUpdateRequest.md)|  | 

### Return type

[**GeoAuditIssueResponse**](GeoAuditIssueResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The updated issue |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

