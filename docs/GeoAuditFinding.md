# llmpulse::GeoAuditFinding


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**check_key** | **character** | Stable key of the check within its audit type | [optional] 
**check_title** | **character** |  | [optional] 
**subject_key** | **character** | What the check is about (site for site-wide checks, a bot slug for robots.txt bot checks) | [optional] 
**subject** | **character** |  | [optional] 
**status** | **character** |  | [optional] [Enum: [pass, warn, fail, info, not_applicable, unknown]] 
**severity** | **character** |  | [optional] [Enum: [critical, high, medium, low, info]] 
**evidence** | **object** |  | [optional] 


