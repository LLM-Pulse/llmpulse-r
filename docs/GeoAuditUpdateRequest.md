# llmpulse::GeoAuditUpdateRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**cadence** | **character** |  | [optional] [Enum: [once, weekly, monthly]] 
**schedule_day** | **integer** | Weekly: 0 (Sunday) to 6. Monthly: 1 to 28. | [optional] 
**schedule_hour** | **integer** | Hour of the day, 0 to 23, in the audit time zone | [optional] 
**status** | **character** | paused stops scheduled runs, active resumes them, archived is the same as DELETE | [optional] [Enum: [active, paused, archived]] 
**email_alerts** | **character** |  | [optional] 


