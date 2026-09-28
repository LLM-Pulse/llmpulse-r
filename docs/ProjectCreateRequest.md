# llmpulse::ProjectCreateRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**website_url** | **character** | Public HTTP(S) URL with a DNS hostname or public IP address. Credentials, private and special IP addresses, localhost and internal hostnames are rejected. | 
**name** | **character** | Project name, as plain text. It can be changed later with PATCH /projects/{id} | 
**main_country** | **character** |  | 
**main_language** | **character** |  | 
**brand_name** | **character** |  | [optional] 
**description** | **character** |  | [optional] 
**industry** | **array[character]** | Industry keys, case-insensitive; a single key string is also accepted. An unknown key returns ERR_INVALID_PARAM listing the valid keys (the same list as the in-app industry picker, e.g. TECHNOLOGY, SAAS, ECOMMERCE) | [optional] 
**business_model** | **character** | Business model key (e.g. B2B_SAAS, MARKETPLACE); unknown keys are rejected | [optional] 
**business_model_other** | **character** | Free-text business model, only accepted when business_model is OTHER; rejected against any other key | [optional] 
**target_audience** | **character** | Who the brand sells to. Context for Recommendations and GEO Writer (Brand Book) | [optional] 
**brand_voice** | **character** | Tone of voice guidance for generated content (Brand Book) | [optional] 
**goals** | **character** | What the brand wants to achieve. Context for GEO Writer and prompt suggestions | [optional] 
**primary_products** | **array[character]** | Main products or services | [optional] 
**matching_names** | **array[character]** |  | [optional] 
**prompts** | **array[character]** |  | [optional] [Max. items: 100] 
**collections** | [**array[ProjectCreateRequestCollectionsInner]**](ProjectCreateRequest_collections_inner.md) | Collections (prompt tags) created with the project, each tagging prompts of this request by their exact text, so no separate tagging calls are needed. A text that is not in prompts returns ERR_INVALID_PARAM. A team member also needs Tags: Create permission. | [optional] [Max. items: 50] 
**competitors** | [**array[ProjectCreateRequestCompetitorsInner]**](ProjectCreateRequest_competitors_inner.md) |  | [optional] 
**owned_media** | [**ProjectCreateRequestOwnedMedia**](ProjectCreateRequest_owned_media.md) |  | [optional] 
**use_subdomain** | **character** |  | [optional] [default to FALSE] 
**weekly_email_subscribed** | **character** |  | [optional] [default to FALSE] 
**external_identifier** | **character** | Embed-enabled (Enterprise) accounts only; other accounts receive ERR_PLAN_REQUIRED. Idempotency key and embed-session join key, unique per account | [optional] [Pattern: ^[a-z0-9_-]{1,64}$] 
**execute_prompts_immediately** | **character** |  | [optional] [default to TRUE] 


