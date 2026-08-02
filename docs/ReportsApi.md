# ReportsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateTechnicalGeoReports**](ReportsApi.md#CreateTechnicalGeoReports) | **POST** /technical_geo_reports | Run technical GEO analysis


# **CreateTechnicalGeoReports**
> CreateTechnicalGeoReports(create_technical_geo_reports_request)

Run technical GEO analysis

Launches the full technical GEO analysis bundle (crawlability, schema, content readiness, discoverability, site structure, robots.txt, llms.txt, AI visibility) for a URL + country. Each report runs in a background job. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Run technical GEO analysis
#
# prepare function argument(s)
var_create_technical_geo_reports_request <- createTechnicalGeoReports_request$new(123, "url_example", "country_code_example") # CreateTechnicalGeoReportsRequest | 

api_instance <- ReportsApi$new()
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
| **201** | Created |  -  |
| **403** | API key lacks write permission |  -  |
| **422** | Invalid parameters |  -  |

