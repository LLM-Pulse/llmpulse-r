# llmpulse::ProjectDetails


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**name** | **character** | Internal project label (sidebar, settings, admin) | [optional] 
**brand_name** | **character** | LLM-facing brand label (used in prompts and customer-facing charts). Null when not set, in which case prompts and charts use &#x60;name&#x60;. | [optional] 
**tracked** | **character** | Whether scheduled runs include this project. False when it is paused, or when the plan&#39;s project limit leaves it out (the oldest projects up to the limit run), so its prompts do not run | 
**untracked_reason** | **character** | Why tracked is false: paused or project_limit. Null when tracked | 
**url** | **character** |  | [optional] 
**description** | **character** |  | [optional] 
**matching_names** | **array[character]** |  | [optional] 
**additional_owned_domains** | **array[character]** | Other domains the brand owns (at most 10, each a website&#39;s own domain covering its subdomains), whose citations count as owned like the project website. Empty when none | [optional] 
**industry** | **object** | Industry as stored: one key as a string (e.g. SAAS), or an array of key strings when the project was created with a list or the in-app multi-select. Deliberately untyped so generated clients decode either shape | [optional] 
**business_model** | **character** |  | [optional] 
**business_model_other** | **character** | Set only when business_model is OTHER | [optional] 
**primary_products** | **array[character]** |  | [optional] 
**target_audience** | **character** |  | [optional] 
**brand_voice** | **character** |  | [optional] 
**goals** | **character** |  | [optional] 
**country_code** | **character** |  | [optional] 
**language_code** | **character** |  | [optional] 
**paused** | **character** |  | [optional] 
**google_play_id** | **character** |  | [optional] 
**app_store_id** | **character** |  | [optional] 
**created_at** | **character** |  | [optional] 
**prompt_limit** | **integer** | The most prompts this project can hold, set by the account owner or a co-owner (Account Settings &gt; Prompt Limits). Null when the project has no limit of its own; the account&#39;s plan allowance applies either way | [optional] 
**stats** | [**ProjectDetailsAllOfStats**](ProjectDetails_allOf_stats.md) |  | [optional] 
**data_coverage** | [**ProjectDetailsAllOfDataCoverage**](ProjectDetails_allOf_data_coverage.md) |  | [optional] 
**search_console** | [**ProjectDetailsAllOfSearchConsole**](ProjectDetails_allOf_search_console.md) |  | [optional] 
**ai_traffic** | [**ProjectDetailsAllOfAiTraffic**](ProjectDetails_allOf_ai_traffic.md) |  | [optional] 
**agent_traffic** | [**ProjectDetailsAllOfAgentTraffic**](ProjectDetails_allOf_agent_traffic.md) |  | [optional] 
**request_id** | **character** |  | [optional] 


