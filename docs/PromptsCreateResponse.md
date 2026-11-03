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
**untracked_reason** | **character** | Why tracked is false: pitch_project, paused or project_limit. Null when tracked | [optional] 
**warning** | **character** | What to do when tracked is false, or why some first runs wait when first_runs_wait_until is set. Null otherwise | [optional] 
**first_runs_wait_until** | **character** | Set when the account&#39;s allowance of AI answers left this cycle cannot give every new prompt one answer per enabled AI model, so the rest run when the allowance resets at this time (00:00 Europe/Madrid). It counts this request&#39;s prompts against what was left when it arrived, not first runs other requests queued moments earlier. Null otherwise, when the allowance is unlimited, when tracked is false or when the account is not active | [optional] 
**data** | [**array[PromptsCreateResponseDataInner]**](PromptsCreateResponse_data_inner.md) |  | [optional] 
**request_id** | **character** |  | [optional] 


