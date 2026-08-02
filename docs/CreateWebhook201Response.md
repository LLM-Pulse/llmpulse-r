# llmpulse::CreateWebhook201Response


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**project_id** | **integer** |  | [optional] 
**event_type** | **character** |  | [optional] [Enum: [mention.created, competitor_mention.created, citation.created, prompt_execution.completed, sentiment.negative_detected, recommendation.completed, intelligence_task.completed]] 
**target_url** | **character** |  | [optional] 
**disabled** | **character** |  | [optional] 
**failure_count** | **integer** |  | [optional] 
**last_delivered_at** | **character** |  | [optional] 
**created_at** | **character** |  | [optional] 
**secret** | **character** | HMAC signing secret (whsec_...). Only returned on create. | [optional] 


