# llmpulse::PromptsImportResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**processed_rows** | **integer** | Distinct rows imported or matched to an existing prompt | 
**created** | **integer** |  | 
**duplicates** | **integer** | Rows that matched an existing prompt (they still get the row&#39;s tags, unless a team member lacks update access to Prompts) | 
**tagged** | **integer** | New prompt-tag links | 
**created_tags** | **integer** |  | 
**row_errors** | [**array[PromptsImportResponseRowErrorsInner]**](PromptsImportResponse_row_errors_inner.md) | Rows that were skipped or whose tags were not added, by their index in rows | 
**length_warning** | **character** | Which tracked AI models will skip new prompts that are too long for them | 
**prompts_available** | **integer** | Prompt slots left on the plan; null when unlimited | 
**tracked** | **character** | Whether scheduled runs include the project the prompts were imported into. False when it is paused or beyond the plan&#39;s project limit, so the new prompts do not run until that changes | 
**untracked_reason** | **character** | Why tracked is false: paused or project_limit. Null when tracked | 
**warning** | **character** | What to do when tracked is false. Null when tracked | 
**request_id** | **character** |  | 


