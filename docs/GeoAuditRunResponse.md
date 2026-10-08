# llmpulse::GeoAuditRunResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sequence** | **integer** | Run number within the audit, starting at 1 | [optional] 
**status** | **character** |  | [optional] [Enum: [queued, running, completed, failed, unreachable]] 
**trigger** | **character** |  | [optional] [Enum: [scheduled, manual, api, mcp, legacy_import]] 
**score** | **numeric** |  | [optional] 
**grade** | **character** |  | [optional] 
**score_delta** | **numeric** | Score change against the previous completed run | [optional] 
**comparable_to_previous** | **character** | False when the checks or the audit settings changed since the previous run, so a diff may reflect that change | [optional] 
**new_issues** | **integer** |  | [optional] 
**fixed_issues** | **integer** |  | [optional] 
**regressed_issues** | **integer** |  | [optional] 
**error** | **character** |  | [optional] 
**engine_version** | **character** |  | [optional] 
**created_at** | **character** |  | [optional] 
**finished_at** | **character** |  | [optional] 
**app_url** | **character** |  | [optional] 
**project_id** | **integer** |  | [optional] 
**request_id** | **character** |  | [optional] 


