# llmpulse::StudyResponse

One custom AI study with its brief, subjects, dimensions and latest reports

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**title** | **character** |  | 
**study_type** | **character** | brand_set, sector, geo, topic or custom | 
**cadence** | **character** | one_shot or monthly | 
**status** | **character** | active or archived | 
**project_id** | **integer** | The project the study is attached to; null for an account-level study | 
**subjects_count** | **integer** |  | 
**ai_models** | **array[character]** | Analyst models the study runs on | [Enum: ] 
**output_language_code** | **character** | ISO 639-1 code of the language the reports are written in | 
**created_at** | **character** |  | 
**last_report_at** | **character** | When the latest report started; null before the first one | 
**brief** | **character** | What the study asks the analyst models; null when none was written | 
**subjects** | **array[character]** | Names of the subjects it compares | 
**dimensions** | **array[character]** | Keys of the dimensions it scores, as the dimension filter takes them | 
**reports** | [**array[ReputationReportSummary]**](ReputationReportSummary.md) | The 24 latest reports, newest first | 
**request_id** | **character** |  | 


