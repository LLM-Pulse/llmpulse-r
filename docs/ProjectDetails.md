# llmpulse::ProjectDetails


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**name** | **character** | Internal project label (sidebar, settings, admin) | [optional] 
**brand_name** | **character** | LLM-facing brand label (used in prompts and customer-facing charts). Defaults to &#x60;name&#x60; when not set. | [optional] 
**url** | **character** |  | [optional] 
**description** | **character** |  | [optional] 
**matching_names** | **array[character]** |  | [optional] 
**industry** | **character** |  | [optional] 
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
**stats** | [**ProjectDetailsAllOfStats**](ProjectDetails_allOf_stats.md) |  | [optional] 


