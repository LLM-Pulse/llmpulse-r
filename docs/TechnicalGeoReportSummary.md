# llmpulse::TechnicalGeoReportSummary

One technical GEO report's status and score

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**report_type** | **character** | The report_type requested (agent_readiness for ai_readiness) | 
**project_id** | **integer** |  | 
**batch_id** | **integer** | Bundle the report was created in; null for a report created on its own | 
**url** | **character** | The page analysed; null for the domain-level types (robots_txt, agent_readiness, llms_txt, ai_visibility) | 
**domain** | **character** |  | 
**country_code** | **character** | Set only on llms_txt and ai_visibility reports | 
**output_language_code** | **character** | ISO 639-1 code an llms_txt report was requested in; null for an llms_txt report written in the website&#39;s own language and for every other type | 
**status** | **character** | Depends on report_type. Every type ends completed or failed; ai_visibility can also end insufficient_data | 
**result_available** | **character** | Whether status is completed | 
**overall_score** | **numeric** | Null until the report completes, and always for llms_txt | 
**created_at** | **character** |  | 
**updated_at** | **character** |  | 
**app_url** | **character** | Opens this report in the app | [optional] 


