# llmpulse::ListWebhooks200ResponseDataInner


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**project_id** | **integer** |  | [optional] 
**event_type** | **character** |  | [optional] [Enum: [mention.created, competitor_mention.created, citation.created, prompt_execution.completed, sentiment.negative_detected, recommendation.completed, intelligence_task.completed, intelligence_task.updated, geo_audit_run.completed, geo_audit_alert.triggered]] 
**target_url** | **character** |  | [optional] 
**disabled** | **character** | True when the subscription receives no more events, including when the API key or OAuth connection that created it was revoked. Creating it again with the same project, event and URL replaces it with a new subscription and secret. | [optional] 
**failure_count** | **integer** |  | [optional] 
**last_delivered_at** | **character** |  | [optional] 
**created_at** | **character** |  | [optional] 


