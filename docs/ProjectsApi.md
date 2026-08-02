# ProjectsApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateProject**](ProjectsApi.md#CreateProject) | **POST** /projects | Create a project (fast mode)
[**CreateProjectDraft**](ProjectsApi.md#CreateProjectDraft) | **POST** /project_drafts | Start a project draft (wizard step 1)
[**FinalizeProjectDraft**](ProjectsApi.md#FinalizeProjectDraft) | **POST** /project_drafts/{id}/finalize | Finalize a draft into a real project
[**GetProjectDraft**](ProjectsApi.md#GetProjectDraft) | **GET** /project_drafts/{id} | Read a project draft
[**UpdateProjectDraft**](ProjectsApi.md#UpdateProjectDraft) | **PATCH** /project_drafts/{id} | Submit a wizard step


# **CreateProject**
> ProjectCreateResponse CreateProject(project_create_request)

Create a project (fast mode)

Create a complete project in one call: project fields, prompts (queued for execution and categorization), competitors, weekly email subscription. Idempotent via `external_identifier` (embed-enabled accounts only; replay returns 200 with the existing project). Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Create a project (fast mode)
#
# prepare function argument(s)
var_project_create_request <- ProjectCreateRequest$new("website_url_example", "name_example", "main_country_example", "main_language_example", "brand_name_example", "description_example", c("industry_example"), c("matching_names_example"), c("prompts_example"), c(ProjectCreateRequest_competitors_inner$new("domain_example", "brand_name_example", c("matching_names_example"))), ProjectCreateRequest_owned_media$new("youtube_channel_url_example", "instagram_profile_url_example", "facebook_page_url_example", "tiktok_profile_url_example", "app_store_url_example", "google_play_url_example"), "use_subdomain_example", "weekly_email_subscribed_example", "external_identifier_example", "execute_prompts_immediately_example") # ProjectCreateRequest | 

api_instance <- ProjectsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CreateProject(var_project_create_requestdata_file = "result.txt")
result <- api_instance$CreateProject(var_project_create_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_create_request** | [**ProjectCreateRequest**](ProjectCreateRequest.md)|  | 

### Return type

[**ProjectCreateResponse**](ProjectCreateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Created |  -  |
| **200** | Idempotent replay (existing external_identifier) |  -  |
| **403** | API key lacks write permission |  -  |
| **422** | Invalid parameters |  -  |

# **CreateProjectDraft**
> CreateProjectDraft(create_project_draft_request)

Start a project draft (wizard step 1)

Start the multi-step project-creation wizard. Returns a draft_id plus AI suggestions (name, description, industry, brand aliases) for the URL. Cold URLs can take up to ~2 minutes to analyze; pass suggest=false to skip AI and respond instantly. Drafts expire after 24h. Requires a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Start a project draft (wizard step 1)
#
# prepare function argument(s)
var_create_project_draft_request <- createProjectDraft_request$new("website_url_example", "main_country_example", "main_language_example", "use_subdomain_example", "suggest_example", "execute_prompts_immediately_example") # CreateProjectDraftRequest | 

api_instance <- ProjectsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$CreateProjectDraft(var_create_project_draft_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_project_draft_request** | [**CreateProjectDraftRequest**](CreateProjectDraftRequest.md)|  | 

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
| **201** | Draft created; envelope with draft state, suggestions and limits |  -  |
| **422** | Invalid parameters |  -  |
| **403** | API key lacks write permission |  -  |

# **FinalizeProjectDraft**
> FinalizeProjectDraft(id, finalize_project_draft_request = var.finalize_project_draft_request)

Finalize a draft into a real project

Creates the project with all accumulated draft data (same effects as POST /projects). Idempotent: finalizing an already-finalized draft returns 200 with the existing project. Optional overrides: weekly_email_subscribed, execute_prompts_immediately.

### Example
```R
library(llmpulse)

# Finalize a draft into a real project
#
# prepare function argument(s)
var_id <- "id_example" # character | 
var_finalize_project_draft_request <- finalizeProjectDraft_request$new("weekly_email_subscribed_example", "execute_prompts_immediately_example") # FinalizeProjectDraftRequest |  (Optional)

api_instance <- ProjectsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$FinalizeProjectDraft(var_id, finalize_project_draft_request = var_finalize_project_draft_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **finalize_project_draft_request** | [**FinalizeProjectDraftRequest**](FinalizeProjectDraftRequest.md)|  | [optional] 

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
| **201** | Project created |  -  |
| **200** | Idempotent replay |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **GetProjectDraft**
> GetProjectDraft(id, include_suggestions = FALSE)

Read a project draft

### Example
```R
library(llmpulse)

# Read a project draft
#
# prepare function argument(s)
var_id <- "id_example" # character | Draft id (draft_...)
var_include_suggestions <- FALSE # character | Cache-only: returns suggestions for the current step if already generated, never triggers AI (Optional)

api_instance <- ProjectsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$GetProjectDraft(var_id, include_suggestions = var_include_suggestions)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**| Draft id (draft_...) | 
 **include_suggestions** | **character**| Cache-only: returns suggestions for the current step if already generated, never triggers AI | [optional] [default to FALSE]

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
| **200** | Draft envelope |  -  |
| **404** | Resource not found |  -  |

# **UpdateProjectDraft**
> UpdateProjectDraft(id, update_project_draft_request)

Submit a wizard step

Submit one step (details, prompts, competitors, owned_media). Strict forward gating: a step is only accepted when every previous step is complete (`ERR_DRAFT_STATE` otherwise); completed steps can be resubmitted. Responds with the updated draft plus AI suggestions for the next step.

### Example
```R
library(llmpulse)

# Submit a wizard step
#
# prepare function argument(s)
var_id <- "id_example" # character | 
var_update_project_draft_request <- updateProjectDraft_request$new("details", "name_example", "brand_name_example", "description_example", c("industry_example"), c("matching_names_example"), "external_identifier_example", c("prompts_example"), c(123), "youtube_channel_url_example", "instagram_profile_url_example", "facebook_page_url_example", "tiktok_profile_url_example", "app_store_url_example", "google_play_url_example", "suggest_example") # UpdateProjectDraftRequest | 

api_instance <- ProjectsApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$UpdateProjectDraft(var_id, var_update_project_draft_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **character**|  | 
 **update_project_draft_request** | [**UpdateProjectDraftRequest**](UpdateProjectDraftRequest.md)|  | 

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
| **200** | Draft envelope with next-step suggestions |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

