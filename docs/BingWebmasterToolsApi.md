# BingWebmasterToolsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetBingWebmasterPages**](BingWebmasterToolsApi.md#GetBingWebmasterPages) | **GET** /bing_webmaster/pages | Top Bing Webmaster Tools pages (Growth+)
[**GetBingWebmasterQueries**](BingWebmasterToolsApi.md#GetBingWebmasterQueries) | **GET** /bing_webmaster/queries | Top Bing Webmaster Tools queries (Growth+)
[**GetBingWebmasterSummary**](BingWebmasterToolsApi.md#GetBingWebmasterSummary) | **GET** /bing_webmaster/summary | Bing Webmaster Tools summary (Growth+)
[**GetBingWebmasterTimeseries**](BingWebmasterToolsApi.md#GetBingWebmasterTimeseries) | **GET** /bing_webmaster/timeseries | Bing Webmaster Tools time series (Growth+)


# **GetBingWebmasterPages**
> BingWebmasterListResponse GetBingWebmasterPages(project_id, range = var.range, from = var.from, to = var.to, sort = "impressions", page = 1, per_page = 20, output = var.output)

Top Bing Webmaster Tools pages (Growth+)

The landing pages of the project's connected Bing Webmaster Tools site in Bing Search, ranked and paginated. Each row sums the weekly figures Bing reports for the weeks whose week_ending (the Friday that closes a Bing week) falls in the window: clicks, impressions, ctr (a 0..1 fraction), avg_impression_position weighted by impressions and avg_click_position weighted by clicks (null without clicks). Bing reports only its top pages of each week, about 100, so the rows are not a complete set and never add up to /bing_webmaster/summary. weeks_covered counts the weeks found in the window and data_through is the last week_ending synced. history_current is false right after the site was changed and before its first sync: data is then empty. Requires a connected Bing Webmaster Tools site (ERR_BING_WEBMASTER_NOT_CONNECTED) and the Growth plan or above.

### Example
```R
library(llmpulse)

# Top Bing Webmaster Tools pages (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back, today included (alternative to from/to, which win when both are given). At most 487, the window the Search Console endpoints accept; about 13 months of Bing data are kept. A value that is not a plain positive number returns 422 ERR_INVALID_PARAM even beside from/to. (Optional)
var_from <- "from_example" # character | Start date (YYYY-MM-DD). Without from and to, the window is the last 30 days, today included; with only to, from is 30 days before today. (Optional)
var_to <- "to_example" # character | End date (YYYY-MM-DD), inclusive. Defaults to today. data_through in the response says how far the synced data reaches. (Optional)
var_sort <- "impressions" # character | Sort key. impressions, clicks and ctr sort descending, the two positions ascending; rows without a value sort last. (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- BingWebmasterToolsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetBingWebmasterPages(var_project_id, range = var_range, from = var_from, to = var_to, sort = var_sort, page = var_page, per_page = var_per_page, output = var_outputdata_file = "result.txt")
result <- api_instance$GetBingWebmasterPages(var_project_id, range = var_range, from = var_from, to = var_to, sort = var_sort, page = var_page, per_page = var_per_page, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back, today included (alternative to from/to, which win when both are given). At most 487, the window the Search Console endpoints accept; about 13 months of Bing data are kept. A value that is not a plain positive number returns 422 ERR_INVALID_PARAM even beside from/to. | [optional] 
 **from** | **character**| Start date (YYYY-MM-DD). Without from and to, the window is the last 30 days, today included; with only to, from is 30 days before today. | [optional] 
 **to** | **character**| End date (YYYY-MM-DD), inclusive. Defaults to today. data_through in the response says how far the synced data reaches. | [optional] 
 **sort** | Enum [impressions, clicks, ctr, avg_impression_position, avg_click_position] | Sort key. impressions, clicks and ctr sort descending, the two positions ascending; rows without a value sort last. | [optional] [default to &quot;impressions&quot;]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**BingWebmasterListResponse**](BingWebmasterListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Top pages |  -  |
| **401** | Authentication failed |  -  |
| **403** | Endpoint requires the Growth plan or above |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **GetBingWebmasterQueries**
> BingWebmasterListResponse GetBingWebmasterQueries(project_id, range = var.range, from = var.from, to = var.to, sort = "impressions", page = 1, per_page = 20, output = var.output)

Top Bing Webmaster Tools queries (Growth+)

The Bing search queries of the project's connected Bing Webmaster Tools site, ranked and paginated. Each row sums the weekly figures Bing reports for the weeks whose week_ending (the Friday that closes a Bing week) falls in the window: clicks, impressions, ctr (a 0..1 fraction), avg_impression_position weighted by impressions and avg_click_position weighted by clicks (null without clicks). Bing reports only its top queries of each week, about 100, so the rows are not a complete set and never add up to /bing_webmaster/summary. weeks_covered counts the weeks found in the window and data_through is the last week_ending synced. history_current is false right after the site was changed and before its first sync: data is then empty. Requires a connected Bing Webmaster Tools site (ERR_BING_WEBMASTER_NOT_CONNECTED) and the Growth plan or above.

### Example
```R
library(llmpulse)

# Top Bing Webmaster Tools queries (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back, today included (alternative to from/to, which win when both are given). At most 487, the window the Search Console endpoints accept; about 13 months of Bing data are kept. A value that is not a plain positive number returns 422 ERR_INVALID_PARAM even beside from/to. (Optional)
var_from <- "from_example" # character | Start date (YYYY-MM-DD). Without from and to, the window is the last 30 days, today included; with only to, from is 30 days before today. (Optional)
var_to <- "to_example" # character | End date (YYYY-MM-DD), inclusive. Defaults to today. data_through in the response says how far the synced data reaches. (Optional)
var_sort <- "impressions" # character | Sort key. impressions, clicks and ctr sort descending, the two positions ascending; rows without a value sort last. (Optional)
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- BingWebmasterToolsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetBingWebmasterQueries(var_project_id, range = var_range, from = var_from, to = var_to, sort = var_sort, page = var_page, per_page = var_per_page, output = var_outputdata_file = "result.txt")
result <- api_instance$GetBingWebmasterQueries(var_project_id, range = var_range, from = var_from, to = var_to, sort = var_sort, page = var_page, per_page = var_per_page, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back, today included (alternative to from/to, which win when both are given). At most 487, the window the Search Console endpoints accept; about 13 months of Bing data are kept. A value that is not a plain positive number returns 422 ERR_INVALID_PARAM even beside from/to. | [optional] 
 **from** | **character**| Start date (YYYY-MM-DD). Without from and to, the window is the last 30 days, today included; with only to, from is 30 days before today. | [optional] 
 **to** | **character**| End date (YYYY-MM-DD), inclusive. Defaults to today. data_through in the response says how far the synced data reaches. | [optional] 
 **sort** | Enum [impressions, clicks, ctr, avg_impression_position, avg_click_position] | Sort key. impressions, clicks and ctr sort descending, the two positions ascending; rows without a value sort last. | [optional] [default to &quot;impressions&quot;]
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**BingWebmasterListResponse**](BingWebmasterListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Top queries |  -  |
| **401** | Authentication failed |  -  |
| **403** | Endpoint requires the Growth plan or above |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **GetBingWebmasterSummary**
> BingWebmasterSummaryResponse GetBingWebmasterSummary(project_id, range = var.range, from = var.from, to = var.to)

Bing Webmaster Tools summary (Growth+)

Bing Search clicks, impressions and ctr (a 0..1 fraction) of the project's connected Bing Webmaster Tools site over a date range, summed from the daily site totals synced once a day. Bing reports no average position in its daily totals. About 13 months of history are kept; data_through is the last day synced, and later days are missing, not zero. history_current is false right after the site was changed in Preferences > Project Settings > Connections and before its first sync: the totals are then zero and data_through and last_synced_at null. A connection whose sync_status is on_hold (Bing refused the stored API key, or the site is no longer verified) still answers from the data already synced. Requires a connected Bing Webmaster Tools site and the Growth plan or above; otherwise returns ERR_BING_WEBMASTER_NOT_CONNECTED (with meta.connect_url) or ERR_PLAN_REQUIRED.

### Example
```R
library(llmpulse)

# Bing Webmaster Tools summary (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back, today included (alternative to from/to, which win when both are given). At most 487, the window the Search Console endpoints accept; about 13 months of Bing data are kept. A value that is not a plain positive number returns 422 ERR_INVALID_PARAM even beside from/to. (Optional)
var_from <- "from_example" # character | Start date (YYYY-MM-DD). Without from and to, the window is the last 30 days, today included; with only to, from is 30 days before today. (Optional)
var_to <- "to_example" # character | End date (YYYY-MM-DD), inclusive. Defaults to today. data_through in the response says how far the synced data reaches. (Optional)

api_instance <- BingWebmasterToolsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetBingWebmasterSummary(var_project_id, range = var_range, from = var_from, to = var_todata_file = "result.txt")
result <- api_instance$GetBingWebmasterSummary(var_project_id, range = var_range, from = var_from, to = var_to)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back, today included (alternative to from/to, which win when both are given). At most 487, the window the Search Console endpoints accept; about 13 months of Bing data are kept. A value that is not a plain positive number returns 422 ERR_INVALID_PARAM even beside from/to. | [optional] 
 **from** | **character**| Start date (YYYY-MM-DD). Without from and to, the window is the last 30 days, today included; with only to, from is 30 days before today. | [optional] 
 **to** | **character**| End date (YYYY-MM-DD), inclusive. Defaults to today. data_through in the response says how far the synced data reaches. | [optional] 

### Return type

[**BingWebmasterSummaryResponse**](BingWebmasterSummaryResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Bing Webmaster Tools summary |  -  |
| **401** | Authentication failed |  -  |
| **403** | Endpoint requires the Growth plan or above |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **GetBingWebmasterTimeseries**
> BingWebmasterTimeseriesResponse GetBingWebmasterTimeseries(project_id, range = var.range, from = var.from, to = var.to, granularity = var.granularity, output = var.output)

Bing Webmaster Tools time series (Growth+)

Bing Search clicks, impressions and ctr (a 0..1 fraction) of the project's connected Bing Webmaster Tools site, bucketed by day, week (starting Monday) or month from the daily site totals synced once a day. Days without synced data are left out of the series, not reported as zero. Bing reports no average position in its daily totals. About 13 months of history are kept. history_current is false right after the site was changed and before its first sync: data is then empty. Requires a connected Bing Webmaster Tools site (ERR_BING_WEBMASTER_NOT_CONNECTED) and the Growth plan or above.

### Example
```R
library(llmpulse)

# Bing Webmaster Tools time series (Growth+)
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_range <- 56 # integer | Number of days to look back, today included (alternative to from/to, which win when both are given). At most 487, the window the Search Console endpoints accept; about 13 months of Bing data are kept. A value that is not a plain positive number returns 422 ERR_INVALID_PARAM even beside from/to. (Optional)
var_from <- "from_example" # character | Start date (YYYY-MM-DD). Without from and to, the window is the last 30 days, today included; with only to, from is 30 days before today. (Optional)
var_to <- "to_example" # character | End date (YYYY-MM-DD), inclusive. Defaults to today. data_through in the response says how far the synced data reaches. (Optional)
var_granularity <- "granularity_example" # character |  (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- BingWebmasterToolsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetBingWebmasterTimeseries(var_project_id, range = var_range, from = var_from, to = var_to, granularity = var_granularity, output = var_outputdata_file = "result.txt")
result <- api_instance$GetBingWebmasterTimeseries(var_project_id, range = var_range, from = var_from, to = var_to, granularity = var_granularity, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **range** | **integer**| Number of days to look back, today included (alternative to from/to, which win when both are given). At most 487, the window the Search Console endpoints accept; about 13 months of Bing data are kept. A value that is not a plain positive number returns 422 ERR_INVALID_PARAM even beside from/to. | [optional] 
 **from** | **character**| Start date (YYYY-MM-DD). Without from and to, the window is the last 30 days, today included; with only to, from is 30 days before today. | [optional] 
 **to** | **character**| End date (YYYY-MM-DD), inclusive. Defaults to today. data_through in the response says how far the synced data reaches. | [optional] 
 **granularity** | Enum [day, week, month] |  | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**BingWebmasterTimeseriesResponse**](BingWebmasterTimeseriesResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Bing Webmaster Tools time series |  -  |
| **401** | Authentication failed |  -  |
| **403** | Endpoint requires the Growth plan or above |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

