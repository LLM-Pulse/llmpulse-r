# llmpulse::IntelligenceTaskUpdateRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**edits** | **map(character)** | Dotted result_data paths (title, sections.0.content, key_points.2) mapped to their replacement text. Only string fields that already exist are editable; sections cannot be added or removed. | 
**result_version** | **character** | Optional. The result_version of the task as last read. When sent, the edit is refused with ERR_STALE_CONTENT (409) and nothing is written if the task was regenerated since. Omitted, null or empty, the edits apply to whatever the task holds now | [optional] 


