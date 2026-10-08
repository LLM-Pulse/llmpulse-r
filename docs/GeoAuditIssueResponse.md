# llmpulse::GeoAuditIssueResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**check_key** | **character** |  | [optional] 
**check_title** | **character** |  | [optional] 
**subject_key** | **character** |  | [optional] 
**subject** | **character** |  | [optional] 
**severity** | **character** |  | [optional] 
**state** | **character** |  | [optional] [Enum: [open, fixed, gone]] 
**badge** | **character** | How the latest comparable run moved the issue | [optional] [Enum: [new, persisting, regressed, fixed, gone]] 
**accepted** | **character** |  | [optional] 
**accepted_at** | **character** |  | [optional] 
**regression_count** | **integer** |  | [optional] 
**evidence** | **object** |  | [optional] 
**updated_at** | **character** |  | [optional] 
**project_id** | **integer** |  | [optional] 
**request_id** | **character** |  | [optional] 


