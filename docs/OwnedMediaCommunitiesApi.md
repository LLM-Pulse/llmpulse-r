# OwnedMediaCommunitiesApi

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetOwnedMediaProfiles**](OwnedMediaCommunitiesApi.md#GetOwnedMediaProfiles) | **GET** /projects/{id}/owned_media | Get a project&#39;s owned-media profiles
[**GetOwnedMediaSummary**](OwnedMediaCommunitiesApi.md#GetOwnedMediaSummary) | **GET** /dimensions/owned_media/summary | Get an owned-media summary
[**ListOwnedMedia**](OwnedMediaCommunitiesApi.md#ListOwnedMedia) | **GET** /dimensions/owned_media | List owned-media citations
[**ListOwnedMediaCitingPrompts**](OwnedMediaCommunitiesApi.md#ListOwnedMediaCitingPrompts) | **GET** /dimensions/owned_media/citing_prompts | List the answers citing an owned-media item
[**ListRedditCitations**](OwnedMediaCommunitiesApi.md#ListRedditCitations) | **GET** /dimensions/reddit | List cited Reddit content
[**UpdateOwnedMediaProfiles**](OwnedMediaCommunitiesApi.md#UpdateOwnedMediaProfiles) | **PATCH** /projects/{id}/owned_media | Update a project&#39;s owned-media profiles


# **GetOwnedMediaProfiles**
> OwnedMediaProfilesResponse GetOwnedMediaProfiles(id)

Get a project's owned-media profiles

The profiles whose citations count as yours in the Owned Media and YouTube Intelligence reports, as Project Settings > Owned Media shows them. platforms holds one entry per platform with whether it is connected, how many extra profiles it accepts and its profiles: the main one, the extra ones, and on Reddit the claimed subreddits and usernames, each with its URL, handle, store (for apps), name, avatar and the state of the scrape that reads them. settings holds the current value of every field PATCH accepts, ready to edit and send back. Requires the Growth plan or above.

### Example
```R
library(llmpulse)

# Get a project's owned-media profiles
#
# prepare function argument(s)
var_id <- 56 # integer | Project ID

api_instance <- OwnedMediaCommunitiesApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetOwnedMediaProfiles(var_iddata_file = "result.txt")
result <- api_instance$GetOwnedMediaProfiles(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| Project ID | 

### Return type

[**OwnedMediaProfilesResponse**](OwnedMediaProfilesResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Profiles per platform and the editable settings |  -  |
| **403** | A plan below Growth answers ERR_PLAN_REQUIRED, and a team member whose permissions do not grant Owned Media ERR_INSUFFICIENT_PERMISSION, with the same status |  -  |
| **404** | Resource not found |  -  |

# **GetOwnedMediaSummary**
> OwnedMediaSummaryResponse GetOwnedMediaSummary(project_id, provider, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, brand_kind = var.brand_kind, range = var.range, from = var.from, to = var.to)

Get an owned-media summary

The numbers behind one Owned Media tab. kpis gives the platform citations (total), yours (your profiles and their content), your_profile and your_content apart, and share_pct; previous gives the same KPIs for the period of the same length that ends just before from, and changes the difference (percent for counts, percentage points for share_pct, null when there is nothing to compare). weekly is the citations per week, yours against everyone else. by_model and by_country split every citation of the platform; content_types (reel, post, tv, pulse, or regular, shorts and live on YouTube) and age_buckets cover posts and videos. provider=mobile_apps adds stores, the per-store totals, and has no content type or age; provider=overview returns platforms, one rollup per platform the caller can read, and no breakdowns. A team member also needs the YouTube Intelligence permission for provider=youtube. Defaults to the last 30 days. Requires the Growth plan or above.

### Example
```R
library(llmpulse)

# Get an owned-media summary
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_provider <- "provider_example" # character | The platform to summarize, or overview for every platform at once
var_model <- "model_example" # character | Filter by one AI model. It must be a model enabled for the API key's user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)

api_instance <- OwnedMediaCommunitiesApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetOwnedMediaSummary(var_project_id, var_provider, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, brand_kind = var_brand_kind, range = var_range, from = var_from, to = var_todata_file = "result.txt")
result <- api_instance$GetOwnedMediaSummary(var_project_id, var_provider, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, brand_kind = var_brand_kind, range = var_range, from = var_from, to = var_to)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **provider** | Enum [youtube, instagram, facebook, tiktok, linkedin, mobile_apps, overview] | The platform to summarize, or overview for every platform at once | 
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai, naver_ai_tab, qwen, doubao] | Filter by one AI model. It must be a model enabled for the API key&#39;s user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 

### Return type

[**OwnedMediaSummaryResponse**](OwnedMediaSummaryResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The KPI cards, comparison, weekly series and breakdowns |  -  |
| **403** | A plan below Growth answers ERR_PLAN_REQUIRED. A team member whose permissions do not grant Owned Media (or YouTube Intelligence for provider&#x3D;youtube) answers ERR_INSUFFICIENT_PERMISSION, with the same status |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **ListOwnedMedia**
> OwnedMediaListResponse ListOwnedMedia(project_id, provider, page = 1, per_page = 20, view = var.view, store = "google_play", owned = var.owned, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, brand_kind = var.brand_kind, range = var.range, from = var.from, to = var.to, output = var.output)

List owned-media citations

Which owned-media content AI answers cite, by platform. `provider` is required. Each row carries a `yours` flag so you can compare your own presence against everyone else cited on the same platform. Video, post, channel and profile rows also carry their image (thumbnail_url or avatar_url, our cached copy where one exists), their average position in the answers and, on YouTube, the video id, the channel handle and URL, and the channel key that /dimensions/owned_media/citing_prompts accepts. view=own_citations returns the raw citations of the connected profile only and stays empty until a profile is connected. For Reddit use /dimensions/reddit. A team member also needs the YouTube Intelligence permission for provider=youtube. Requires the Growth plan or above.

### Example
```R
library(llmpulse)

# List owned-media citations
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_provider <- "provider_example" # character | The platform to report on
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_view <- "view_example" # character | Row shape; the allowed set depends on provider (Optional)
var_store <- "google_play" # character | provider=mobile_apps only (Optional)
var_owned <- "owned_example" # character | Return only rows belonging to the account's own connected profile (Optional)
var_model <- "model_example" # character | Filter by one AI model. It must be a model enabled for the API key's user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- OwnedMediaCommunitiesApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListOwnedMedia(var_project_id, var_provider, page = var_page, per_page = var_per_page, view = var_view, store = var_store, owned = var_owned, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, brand_kind = var_brand_kind, range = var_range, from = var_from, to = var_to, output = var_outputdata_file = "result.txt")
result <- api_instance$ListOwnedMedia(var_project_id, var_provider, page = var_page, per_page = var_per_page, view = var_view, store = var_store, owned = var_owned, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, brand_kind = var_brand_kind, range = var_range, from = var_from, to = var_to, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **provider** | Enum [youtube, instagram, facebook, tiktok, linkedin, mobile_apps] | The platform to report on | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **view** | Enum [videos, channels, posts, profiles, own_citations, apps] | Row shape; the allowed set depends on provider | [optional] 
 **store** | Enum [google_play, app_store] | provider&#x3D;mobile_apps only | [optional] [default to &quot;google_play&quot;]
 **owned** | **character**| Return only rows belonging to the account&#39;s own connected profile | [optional] 
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai, naver_ai_tab, qwen, doubao] | Filter by one AI model. It must be a model enabled for the API key&#39;s user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**OwnedMediaListResponse**](OwnedMediaListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Paginated owned-media rows |  -  |
| **403** | A plan below Growth answers ERR_PLAN_REQUIRED. A team member whose permissions do not grant Owned Media (or YouTube Intelligence for provider&#x3D;youtube) answers ERR_INSUFFICIENT_PERMISSION, with the same status |  -  |
| **422** | Invalid parameters |  -  |

# **ListOwnedMediaCitingPrompts**
> OwnedMediaCitingPromptsResponse ListOwnedMediaCitingPrompts(project_id, provider, page = 1, per_page = 20, url = var.url, profile = var.profile, model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, brand_kind = var.brand_kind, range = var.range, from = var.from, to = var.to, output = var.output)

List the answers citing an owned-media item

The drill-down behind one row of an Owned Media or YouTube Intelligence table. Pass exactly one of url (a post or video URL, any variant of it) or profile (a handle with or without @, a profile or channel URL, or the channel key the YouTube channels rows return). item describes it (title, image, owner, whether it is yours and its stats), citation_count and prompt_count count its citations in the window, and data lists the citing answers newest first, each with its prompt, answer id, model, country, language, execution date, a plain-text excerpt and its link in the app. It shows prompt and answer text, so a team member also needs the Prompts permission, and YouTube Intelligence for provider=youtube. Defaults to the last 30 days. Requires the Growth plan or above.

### Example
```R
library(llmpulse)

# List the answers citing an owned-media item
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_provider <- "provider_example" # character | The platform the item belongs to
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_url <- "url_example" # character | A post or video URL, or a profile or channel URL. Exclusive with profile (Optional)
var_profile <- "profile_example" # character | A handle (with or without @), a profile or channel URL, or a YouTube channel key (handle:..., channel:... or name:...). Exclusive with url (Optional)
var_model <- "model_example" # character | Filter by one AI model. It must be a model enabled for the API key's user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- OwnedMediaCommunitiesApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ListOwnedMediaCitingPrompts(var_project_id, var_provider, page = var_page, per_page = var_per_page, url = var_url, profile = var_profile, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, brand_kind = var_brand_kind, range = var_range, from = var_from, to = var_to, output = var_outputdata_file = "result.txt")
result <- api_instance$ListOwnedMediaCitingPrompts(var_project_id, var_provider, page = var_page, per_page = var_per_page, url = var_url, profile = var_profile, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, brand_kind = var_brand_kind, range = var_range, from = var_from, to = var_to, output = var_output)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **provider** | Enum [youtube, instagram, facebook, tiktok, linkedin] | The platform the item belongs to | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **url** | **character**| A post or video URL, or a profile or channel URL. Exclusive with profile | [optional] 
 **profile** | **character**| A handle (with or without @), a profile or channel URL, or a YouTube channel key (handle:..., channel:... or name:...). Exclusive with url | [optional] 
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai, naver_ai_tab, qwen, doubao] | Filter by one AI model. It must be a model enabled for the API key&#39;s user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **output** | Enum [flat, csv] | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**OwnedMediaCitingPromptsResponse**](OwnedMediaCitingPromptsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The item and a page of the answers that cited it |  -  |
| **403** | A plan below Growth answers ERR_PLAN_REQUIRED. A team member whose permissions do not grant Owned Media and Prompts (and YouTube Intelligence for provider&#x3D;youtube) answers ERR_INSUFFICIENT_PERMISSION, with the same status |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

# **ListRedditCitations**
> ListRedditCitations(project_id, page = 1, per_page = 20, view = "subreddits", subreddit = var.subreddit, author = var.author, status = var.status, owned = var.owned, brand = var.brand, order = var.order, direction = "desc", model = var.model, collection_id = var.collection_id, country_code = var.country_code, language_code = var.language_code, brand_kind = var.brand_kind, range = var.range, from = var.from, to = var.to, output = var.output)

List cited Reddit content

Which Reddit content AI answers cite for your tracked prompts. view=subreddits (default) returns one row per subreddit with its citation count, unique authors and positive/negative sentiment split; view=authors returns one row per author; view=threads returns the individual cited threads with upvotes, comments, average position and dominant sentiment. Requires the Growth plan or above.

### Example
```R
library(llmpulse)

# List cited Reddit content
#
# prepare function argument(s)
var_project_id <- 56 # integer | Project ID
var_page <- 1 # integer |  (Optional)
var_per_page <- 20 # integer |  (Optional)
var_view <- "subreddits" # character |  (Optional)
var_subreddit <- "subreddit_example" # character | Filter to one subreddit (name without the r/ prefix) (Optional)
var_author <- "author_example" # character | Filter to one Reddit author (Optional)
var_status <- "status_example" # character | view=threads only (Optional)
var_owned <- "owned_example" # character | Return only subreddits/authors the account has claimed as its own (Optional)
var_brand <- "brand_example" # character | Filter to citations whose scraped Reddit content mentions a brand: 'brand' for the tracked brand, or a competitor id. Reads the page content, not the AI answer. (Optional)
var_order <- "order_example" # character | Sort field; the allowed set depends on view (Optional)
var_direction <- "desc" # character |  (Optional)
var_model <- "model_example" # character | Filter by one AI model. It must be a model enabled for the API key's user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. (Optional)
var_collection_id <- "12,34" # character | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (Optional)
var_country_code <- "country_code_example" # character | One ISO country code or a comma-separated list (e.g. US,GB,DE) (Optional)
var_language_code <- "language_code_example" # character | One ISO language code or a comma-separated list (e.g. en,es,de) (Optional)
var_brand_kind <- "brand_kind_example" # character | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (Optional)
var_range <- 56 # integer | Number of days to look back (alternative to from/to) (Optional)
var_from <- "from_example" # character |  (Optional)
var_to <- "to_example" # character | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (Optional)
var_output <- "output_example" # character | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (Optional)

api_instance <- OwnedMediaCommunitiesApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$ListRedditCitations(var_project_id, page = var_page, per_page = var_per_page, view = var_view, subreddit = var_subreddit, author = var_author, status = var_status, owned = var_owned, brand = var_brand, order = var_order, direction = var_direction, model = var_model, collection_id = var_collection_id, country_code = var_country_code, language_code = var_language_code, brand_kind = var_brand_kind, range = var_range, from = var_from, to = var_to, output = var_output)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **integer**| Project ID | 
 **page** | **integer**|  | [optional] [default to 1]
 **per_page** | **integer**|  | [optional] [default to 20]
 **view** | Enum [subreddits, authors, threads] |  | [optional] [default to &quot;subreddits&quot;]
 **subreddit** | **character**| Filter to one subreddit (name without the r/ prefix) | [optional] 
 **author** | **character**| Filter to one Reddit author | [optional] 
 **status** | Enum [open, archived] | view&#x3D;threads only | [optional] 
 **owned** | **character**| Return only subreddits/authors the account has claimed as its own | [optional] 
 **brand** | **character**| Filter to citations whose scraped Reddit content mentions a brand: &#39;brand&#39; for the tracked brand, or a competitor id. Reads the page content, not the AI answer. | [optional] 
 **order** | Enum [citations, subreddit, unique_authors, positive_pct, negative_pct, author, avg_position, upvotes, comments, sentiment] | Sort field; the allowed set depends on view | [optional] 
 **direction** | Enum [asc, desc] |  | [optional] [default to &quot;desc&quot;]
 **model** | Enum [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai, naver_ai_tab, qwen, doubao] | Filter by one AI model. It must be a model enabled for the API key&#39;s user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. | [optional] 
 **collection_id** | **character**| One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **country_code** | **character**| One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **language_code** | **character**| One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **brand_kind** | Enum [brand, brand_other, non_brand] | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **range** | **integer**| Number of days to look back (alternative to from/to) | [optional] 
 **from** | **character**|  | [optional] 
 **to** | **character**| End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
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
| **200** | Paginated Reddit rows |  -  |
| **422** | Invalid parameters |  -  |

# **UpdateOwnedMediaProfiles**
> OwnedMediaProfilesUpdateResponse UpdateOwnedMediaProfiles(id, update_owned_media_profiles_request)

Update a project's owned-media profiles

Sets the profiles whose citations count as yours, like Project Settings > Owned Media. Send only the fields to change: a URL field takes a URL, or an empty string or null to clear it, and every list REPLACES the stored one ([] clears it). URLs are normalized like the app (a profile URL is stored in its canonical form, a Google Play package name becomes its listing URL), and anything the app would refuse (a URL from another platform, an extra profile equal to the main one, more than 10 extra profiles, a malformed subreddit) is rejected with ERR_INVALID_PARAM and nothing is applied. A new main or extra profile is scraped in the background for its name and avatar, listed in profile_scrapes_queued. The response is the GET payload after the change. A team member needs the Owned Media create permission, YouTube Intelligence create to change the YouTube channel, and Projects update to change the extra profile or Reddit lists. Requires the Growth plan or above and a `read_write` scope API key.

### Example
```R
library(llmpulse)

# Update a project's owned-media profiles
#
# prepare function argument(s)
var_id <- 56 # integer | Project ID
var_update_owned_media_profiles_request <- updateOwnedMediaProfiles_request$new("youtube_channel_url_example", "app_store_url_example", "google_play_url_example", "instagram_profile_url_example", "facebook_page_url_example", "tiktok_profile_url_example", "linkedin_company_url_example", c("youtube_extra_profile_urls_example"), c("mobile_apps_extra_profile_urls_example"), c("instagram_extra_profile_urls_example"), c("facebook_extra_profile_urls_example"), c("tiktok_extra_profile_urls_example"), c("linkedin_extra_profile_urls_example"), c("reddit_subreddits_example"), c("reddit_usernames_example")) # UpdateOwnedMediaProfilesRequest | 

api_instance <- OwnedMediaCommunitiesApi$new()
# Configure HTTP bearer authorization: BearerAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UpdateOwnedMediaProfiles(var_id, var_update_owned_media_profiles_requestdata_file = "result.txt")
result <- api_instance$UpdateOwnedMediaProfiles(var_id, var_update_owned_media_profiles_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| Project ID | 
 **update_owned_media_profiles_request** | [**UpdateOwnedMediaProfilesRequest**](UpdateOwnedMediaProfilesRequest.md)|  | 

### Return type

[**OwnedMediaProfilesUpdateResponse**](OwnedMediaProfilesUpdateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The profiles after the change |  -  |
| **403** | A plan below Growth answers ERR_PLAN_REQUIRED, a read-only key ERR_INSUFFICIENT_SCOPE, and a team member without the Owned Media create permission (or YouTube Intelligence create for the YouTube channel) ERR_INSUFFICIENT_PERMISSION, with the same status |  -  |
| **404** | Resource not found |  -  |
| **422** | Invalid parameters |  -  |

