# llmpulse::ListWebhooks200ResponseDataInner


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**project_id** | **integer** |  | [optional] 
**event_type** | **character** |  | [optional] [Enum: [mention.created, competitor_mention.created, citation.created, prompt_execution.completed, sentiment.negative_detected, recommendation.completed, intelligence_task.completed, intelligence_task.updated, geo_audit_run.completed, geo_audit_alert.triggered]] 
**target_url** | **character** | The URL deliveries are sent to. A read-only API key receives only its scheme, host and any non-default port followed by &#x60;/…&#x60; (for example &#x60;https://hook.eu1.make.com/…&#x60;); a &#x60;read_write&#x60; scope key receives the full URL. | [optional] 
**disabled** | **character** | True when the subscription receives no more events, including when the API key or OAuth connection that created it was revoked, or when that API key is limited to some projects and no longer covers the subscription&#39;s project. Creating it again with the same project, event and URL replaces it with a new subscription and secret. | [optional] 
**failure_count** | **integer** |  | [optional] 
**last_delivered_at** | **character** |  | [optional] 
**created_at** | **character** |  | [optional] 


