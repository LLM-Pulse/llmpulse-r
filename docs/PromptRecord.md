# llmpulse::PromptRecord


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**prompt_text** | **character** |  | 
**collection_id** | **integer** | Primary tag, when the prompt has one | 
**collection_ids** | **array[integer]** | Every tag the prompt belongs to | 
**tags** | [**array[TagRef]**](TagRef.md) |  | 
**country_code** | **character** |  | 
**language_code** | **character** |  | 
**prompt_type** | **character** | Search intent: informational, navigational, commercial or transactional. Null until the prompt is classified | 
**brand_kind** | **character** | Brand focus: brand, brand_other or non_brand. Null until the prompt is classified | 
**last_executed_at** | **character** | Null until the prompt has run | 
**app_url** | **character** | Opens this prompt in the app. The link names its project, so it opens there for any user with access to that project | 


