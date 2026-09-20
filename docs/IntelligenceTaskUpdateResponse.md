# llmpulse::IntelligenceTaskUpdateResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**public_id** | **character** |  | [optional] 
**project_id** | **integer** |  | [optional] 
**task_type** | **character** |  | [optional] 
**title** | **character** |  | [optional] 
**status** | **character** |  | [optional] 
**prompt_id** | **integer** |  | [optional] 
**prompt_text** | **character** |  | [optional] 
**agentic_mode** | **character** |  | [optional] 
**custom_topic** | **character** |  | [optional] 
**user_instructions** | **character** |  | [optional] 
**output_language_code** | **character** |  | [optional] 
**word_count** | **integer** |  | [optional] 
**result_data** | **object** | Only present when status&#x3D;&#39;completed&#39; | [optional] 
**error_message** | **character** |  | [optional] 
**estimated_time** | **character** |  | [optional] 
**created_at** | **character** |  | [optional] 
**processed_at** | **character** |  | [optional] 
**manually_edited_at** | **character** | When the content was last edited by hand; null while the output is as generated | [optional] 
**edited_by_user_id** | **integer** | User behind the last manual edit; null for an unedited task or an edit made from an embedded portal | [optional] 
**request_id** | **character** |  | [optional] 
**changed_paths** | **array[character]** | Paths whose text actually changed; empty when every value matched the stored text | [optional] 


