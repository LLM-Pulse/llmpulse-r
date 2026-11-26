# llmpulse::ReputationReportSummary

One reputation or custom-study report's status and analyst model coverage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Report id for GET /reputation/reports/{id}, or GET /studies/{id}/reports/{report_id} for a study report | 
**status** | **character** |  | [Enum: [pending, processing, completed, failed]] 
**created_at** | **character** |  | 
**processed_at** | **character** |  | [optional] 
**available_models** | **array[character]** | Analyst models that produced data | [Enum: ] 
**missing_models** | **array[character]** | Analyst models with no data yet | [Enum: ] 
**error_message** | **character** | Why the report failed; null unless status is failed | [optional] 


