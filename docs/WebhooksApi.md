# WebhooksApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateWebhook**](WebhooksApi.md#CreateWebhook) | **POST** /webhooks | Create a webhook subscription
[**DeleteWebhook**](WebhooksApi.md#DeleteWebhook) | **DELETE** /webhooks/{id} | Delete a webhook subscription
[**ListWebhooks**](WebhooksApi.md#ListWebhooks) | **GET** /webhooks | List webhook subscriptions
[**SampleWebhookPayloads**](WebhooksApi.md#SampleWebhookPayloads) | **GET** /webhooks/sample/{event_type} | Sample event payloads


# **CreateWebhook**
> CreateWebhook201Response CreateWebhook(create_webhook_request)

Create a webhook subscription

Subscribes a public HTTPS URL to a project event. LLM Pulse POSTs a JSON envelope (`event`, `occurred_at`, `project_id`, `subscription_id`, `data`) to the URL every time the event occurs, signed via the `X-LLMPulse-Signature` header (HMAC-SHA256 of the raw body computed with the subscription secret). Failed deliveries are retried 5 times with backoff; subscriptions auto-disable after 20 consecutive failed deliveries. Idempotent for the same project + event + URL. Requires a `read_write` scope API key and the Scale plan or above.

### Example
```R
library(llmpulse)

# Create a webhook subscription
#
# prepare function argument(s)
var_create_webhook_request <- createWebhook_request$new(123, "mention.created", "target_url_example") # CreateWebhookRequest | 

api_instance <- WebhooksApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateWebhook(var_create_webhook_requestdata_file = "result.txt")
result <- api_instance$CreateWebhook(var_create_webhook_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_webhook_request** | [**CreateWebhookRequest**](CreateWebhookRequest.md)|  | 

### Return type

[**CreateWebhook201Response**](createWebhook_201_response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created. The signing secret is only returned by this endpoint. |  -  |
| **401** | Authentication failed |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **DeleteWebhook**
> DeleteWebhook200Response DeleteWebhook(id)

Delete a webhook subscription

Deletes a webhook subscription; the target URL stops receiving events immediately. Requires a `read_write` scope API key and the Scale plan or above.

### Example
```R
library(llmpulse)

# Delete a webhook subscription
#
# prepare function argument(s)
var_id <- 56 # integer | 

api_instance <- WebhooksApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DeleteWebhook(var_iddata_file = "result.txt")
result <- api_instance$DeleteWebhook(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 

### Return type

[**DeleteWebhook200Response**](deleteWebhook_200_response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **401** | Authentication failed |  -  |
| **403** | API key lacks write permission |  -  |
| **404** | Resource not found |  -  |

# **ListWebhooks**
> ListWebhooks200Response ListWebhooks(project_id = var.project_id, page = var.page, per_page = var.per_page)

List webhook subscriptions

Lists active webhook subscriptions for the account, optionally filtered by project. Requires the Scale plan or above.

### Example
```R
library(llmpulse)

# List webhook subscriptions
#
# prepare function argument(s)
var_project_id <- 56 # integer | Optional project filter (Optional)
var_page <- 56 # integer |  (Optional)
var_per_page <- 56 # integer | Max 100 (Optional)

api_instance <- WebhooksApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListWebhooks(project_id = var_project_id, page = var_page, per_page = var_per_pagedata_file = "result.txt")
result <- api_instance$ListWebhooks(project_id = var_project_id, page = var_page, per_page = var_per_page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Optional project filter | [optional] 
 **page** | **integer**|  | [optional] 
 **per_page** | **integer**| Max 100 | [optional] 

### Return type

[**ListWebhooks200Response**](listWebhooks_200_response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **401** | Authentication failed |  -  |
| **403** | Endpoint requires a higher plan tier |  -  |

# **SampleWebhookPayloads**
> SampleWebhookPayloads200Response SampleWebhookPayloads(event_type, project_id)

Sample event payloads

Returns up to 3 example event payloads for the event type, built from the project's most recent real data (or a static sample when the project has no data). Used by integration editors such as the Zapier sample loader. Requires the Scale plan or above.

### Example
```R
library(llmpulse)

# Sample event payloads
#
# prepare function argument(s)
var_event_type <- "event_type_example" # character | 
var_project_id <- 56 # integer | 

api_instance <- WebhooksApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SampleWebhookPayloads(var_event_type, var_project_iddata_file = "result.txt")
result <- api_instance$SampleWebhookPayloads(var_event_type, var_project_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_type** | Enum [mention.created, competitor_mention.created, citation.created, prompt_execution.completed, sentiment.negative_detected, recommendation.completed, intelligence_task.completed] |  | 
 **project_id** | **integer**|  | 

### Return type

[**SampleWebhookPayloads200Response**](sampleWebhookPayloads_200_response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **401** | Authentication failed |  -  |
| **403** | Endpoint requires a higher plan tier |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

