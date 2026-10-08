# llmpulse::GeoAuditCreateRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**target** | **character** | The domain (site-wide types) or page URL to audit | 
**audit_types** | **array[character]** | One or more audit types; each becomes its own audit and starts its first run | [Enum: ] 
**cadence** | **character** | once (default), weekly or monthly. Weekly and monthly need a type whose checks are tracked and count against the plan limit of recurring audits | [optional] [Enum: [once, weekly, monthly]] 


