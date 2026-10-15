# llmpulse::CustomReportSummary


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**name** | **character** |  | 
**date_range** | [**CustomReportDateRange**](CustomReportDateRange.md) |  | 
**schedule** | [**CustomReportSchedule**](CustomReportSchedule.md) |  | 
**recipients_count** | **integer** |  | 
**published** | **character** | Whether the shared link is published | 
**public_link_active** | **character** | Whether the shared link opens (published and not made inside a client portal) | 
**password_protected** | **character** |  | 
**portal_only** | **character** | Made inside a client portal, so it cannot be shared or emailed | 
**widget_count** | **integer** |  | 
**widgets** | [**array[CustomReportWidgetRef]**](CustomReportWidgetRef.md) |  | 
**last_sent_at** | **character** | When the report was last emailed, on its schedule or with Send now | [optional] 
**created_at** | **character** |  | 
**updated_at** | **character** |  | 


