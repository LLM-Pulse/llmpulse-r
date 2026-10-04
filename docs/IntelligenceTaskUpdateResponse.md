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
**result_data** | **object** | The generated content once status is completed; null before that. A product_listing task returns title, summary, description_html (p, ul, ol, li, strong, em, h3 and br only), faq (question and answer pairs), seo_title, seo_description, image_alts (image_id and alt), changes (field and reason) and labels | [optional] 
**error_message** | **character** |  | [optional] 
**estimated_time** | **character** |  | [optional] 
**created_at** | **character** |  | [optional] 
**processed_at** | **character** |  | [optional] 
**manually_edited_at** | **character** | When the content was last edited by hand; null while the output is as generated | [optional] 
**edited_by_user_id** | **integer** | User behind the last manual edit; null for an unedited task or an edit made from an embedded portal | [optional] 
**request_id** | **character** |  | [optional] 
**changed_paths** | **array[character]** | Paths whose text actually changed; empty when every value matched the stored text | [optional] 


