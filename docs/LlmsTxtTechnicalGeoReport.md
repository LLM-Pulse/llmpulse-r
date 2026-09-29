# llmpulse::LlmsTxtTechnicalGeoReport

An llms_txt technical GEO report with its files, in the shape GET /technical_geo_reports/{id} returns

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**report_type** | **character** | Always llms_txt | [optional] 
**project_id** | **integer** |  | [optional] 
**batch_id** | **integer** | Bundle the report was created in; null for a report created on its own | [optional] 
**url** | **character** | Always null for llms_txt reports; domain names the website | [optional] 
**domain** | **character** |  | [optional] 
**country_code** | **character** |  | [optional] 
**output_language_code** | **character** | ISO 639-1 code the files were requested in; null when they are written in the website&#39;s own language | [optional] 
**status** | **character** |  | [optional] 
**result_available** | **character** |  | [optional] 
**overall_score** | **numeric** | Always null for llms_txt reports | [optional] 
**created_at** | **character** |  | [optional] 
**updated_at** | **character** |  | [optional] 
**result_data** | [**LlmsTxtTechnicalGeoReportResultData**](LlmsTxtTechnicalGeoReport_result_data.md) |  | [optional] 
**error_message** | **character** |  | [optional] 
**poll_after_seconds** | **integer** | Seconds to wait before polling again while the report runs; null once it has finished | [optional] 
**app_url** | **character** | Opens this report in the app | [optional] 
**request_id** | **character** |  | [optional] 


