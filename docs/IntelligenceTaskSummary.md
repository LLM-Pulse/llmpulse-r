# llmpulse::IntelligenceTaskSummary


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**public_id** | **character** |  | 
**task_type** | **character** |  | 
**title** | **character** |  | 
**status** | **character** |  | 
**prompt_id** | **integer** |  | 
**prompt_text** | **character** |  | 
**word_count** | **integer** |  | 
**manually_edited_at** | **character** | When the content was last edited by hand; null while the output is as generated | 
**created_at** | **character** |  | 
**processed_at** | **character** |  | 
**result_version** | **character** | Concurrency token for content edits: send it back as result_version on PATCH /intelligence_tasks/{id} so an edit composed before a regeneration is refused with ERR_STALE_CONTENT (409). It is \&quot;0\&quot; until the task first completes, then changes each time a generation or regeneration replaces result_data, never on a manual edit or a revert. Treat it as opaque text | 


