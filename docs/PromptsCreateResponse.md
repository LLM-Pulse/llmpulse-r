# llmpulse::PromptsCreateResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**created** | **integer** |  | [optional] 
**skipped** | **integer** |  | [optional] 
**total_after** | **integer** |  | [optional] 
**prompts_available** | **integer** |  | [optional] 
**tracked** | **character** | Whether scheduled runs include the project the prompts were added to. False when it is paused or beyond the plan&#39;s project limit, so the new prompts do not run until that changes | [optional] 
**untracked_reason** | **character** | Why tracked is false: paused or project_limit. Null when tracked | [optional] 
**warning** | **character** | What to do when tracked is false. Null when tracked | [optional] 
**data** | [**array[PromptsCreateResponseDataInner]**](PromptsCreateResponse_data_inner.md) |  | [optional] 
**request_id** | **character** |  | [optional] 


