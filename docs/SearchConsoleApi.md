# SearchConsoleApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetSearchConsolePages**](SearchConsoleApi.md#GetSearchConsolePages) | **GET** /search_console/pages | Top Search Console pages (Growth+)
[**GetSearchConsoleQueries**](SearchConsoleApi.md#GetSearchConsoleQueries) | **GET** /search_console/queries | Top Search Console queries (Growth+)
[**GetSearchConsoleSummary**](SearchConsoleApi.md#GetSearchConsoleSummary) | **GET** /search_console/summary | Search Console summary (Growth+)
[**GetSearchConsoleTimeseries**](SearchConsoleApi.md#GetSearchConsoleTimeseries) | **GET** /search_console/timeseries | Search Console time series (Growth+)


# **GetSearchConsolePages**
> GetSearchConsolePages(project_id, range = var.range, from = var.from, to = var.to, sort = "impressions", page = 1, per_page = 20, output = var.output)

Top Search Console pages (Growth+)

Top Google Search Console landing pages over a date range, ranked by impressions, clicks, ctr or position, paginated. Requires a connected Search Console property (Growth+).

### Example
```R
library(llmpulse)

# Top Search Console pages (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_sort <- "impressions" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetSearchConsolePages(var_project_id, range = var_range, from = var_from, to = var_to, sort = var_sort, page = var_page, per_page = var_per_page, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **sort** | Enum [impressions, clicks, ctr, position] |  | [optional] [default to &quot;impressions&quot;]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
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
| **200** | Top pages |  -  |
| **403** | Endpoint requires a higher plan tier |  -  |
| **404** | Resource not found |  -  |

# **GetSearchConsoleQueries**
> GetSearchConsoleQueries(project_id, range = var.range, from = var.from, to = var.to, sort = "impressions", page = 1, per_page = 20, output = var.output)

Top Search Console queries (Growth+)

Top Google Search Console search queries over a date range, ranked by impressions, clicks, ctr or position, paginated. Knowingly undercounts anonymized queries; for exact totals use /search_console/summary. Requires a connected Search Console property (Growth+).

### Example
```R
library(llmpulse)

# Top Search Console queries (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_sort <- "impressions" # character |  (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetSearchConsoleQueries(var_project_id, range = var_range, from = var_from, to = var_to, sort = var_sort, page = var_page, per_page = var_per_page, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **sort** | Enum [impressions, clicks, ctr, position] |  | [optional] [default to &quot;impressions&quot;]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
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
| **200** | Top queries |  -  |
| **403** | Endpoint requires a higher plan tier |  -  |
| **404** | Resource not found |  -  |

# **GetSearchConsoleSummary**
> GetSearchConsoleSummary(project_id, range = var.range, from = var.from, to = var.to, dimension = var.dimension)

Search Console summary (Growth+)

Google Search Console headline totals (impressions, clicks, ctr as a 0..1 fraction, average position) for the project over a date range. Pass dimension=country or dimension=device to also receive the breakdown aggregated over the range. Requires the project to have a connected Search Console property and the Growth plan or above; otherwise returns ERR_SEARCH_CONSOLE_NOT_CONNECTED or ERR_PLAN_REQUIRED.

### Example
```R
library(llmpulse)

# Search Console summary (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_dimension <- "dimension_example" # character | Optional breakdown aggregated over the range (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetSearchConsoleSummary(var_project_id, range = var_range, from = var_from, to = var_to, dimension = var_dimension)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **dimension** | Enum [country, device] | Optional breakdown aggregated over the range | [optional] 

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
| **200** | Search Console summary |  -  |
| **403** | Endpoint requires a higher plan tier |  -  |
| **404** | Resource not found |  -  |

# **GetSearchConsoleTimeseries**
> GetSearchConsoleTimeseries(project_id, range = var.range, from = var.from, to = var.to, granularity = var.granularity, output = var.output)

Search Console time series (Growth+)

Google Search Console property-wide series (impressions, clicks, ctr, position) bucketed by day, week or month. Requires a connected Search Console property (Growth+).

### Example
```R
library(llmpulse)

# Search Console time series (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character |  (Optional)
var_granularity <- "granularity_example" # character |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- SearchConsoleApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetSearchConsoleTimeseries(var_project_id, range = var_range, from = var_from, to = var_to, granularity = var_granularity, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**|  | [optional] 
 **granularity** | Enum [day, week, month] |  | [optional] 
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
| **200** | Search Console time series |  -  |
| **403** | Endpoint requires a higher plan tier |  -  |
| **404** | Resource not found |  -  |

