# llmpulse::PromptsImportResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**processed_rows** | **integer** | Distinct rows imported or matched to an existing prompt | 
**created** | **integer** |  | 
**duplicates** | **integer** | Rows that matched an existing prompt (they still get the row&#39;s tags) | 
**tagged** | **integer** | New prompt-tag links | 
**created_tags** | **integer** |  | 
**row_errors** | [**array[PromptsImportResponseRowErrorsInner]**](PromptsImportResponse_row_errors_inner.md) | Rows that were skipped, by their index in rows | 
**length_warning** | **character** | Which tracked AI models will skip new prompts that are too long for them | 
**prompts_available** | **integer** | Prompt slots left on the plan; null when unlimited | 
**request_id** | **character** |  | 


