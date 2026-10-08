# llmpulse::GeoAuditResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | Stable audit id | [optional] 
**audit_type** | **character** |  | [optional] [Enum: [agent_readiness, robots_txt, crawlability, schema, content_readiness, discoverability, site_structure]] 
**target** | **character** | The audited domain (site-wide types) or page URL, normalized | [optional] 
**country_code** | **character** |  | [optional] 
**cadence** | **character** |  | [optional] [Enum: [once, weekly, monthly]] 
**status** | **character** |  | [optional] [Enum: [active, paused, archived]] 
**paused_reason** | **character** | user, or unreachable when three runs in a row could not reach the site | [optional] 
**schedule** | [**GeoAuditSchedule**](GeoAuditSchedule.md) |  | [optional] 
**next_run_at** | **character** |  | [optional] 
**email_alerts** | **character** |  | [optional] 
**recurring_available** | **character** | Whether this audit type can run weekly or monthly | [optional] 
**checks_tracked** | **character** | Whether runs of this type produce findings and issues, or a score only | [optional] 
**latest_run** | [**GeoAuditRun**](GeoAuditRun.md) |  | [optional] 
**open_issues** | **integer** |  | [optional] 
**open_critical_issues** | **integer** |  | [optional] 
**created_at** | **character** |  | [optional] 
**app_url** | **character** |  | [optional] 
**project_id** | **integer** |  | [optional] 
**request_id** | **character** |  | [optional] 


