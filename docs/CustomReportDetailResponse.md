# llmpulse::CustomReportDetailResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**id** | **integer** |  | 
**name** | **character** |  | 
**date_range** | [**CustomReportDateRange**](CustomReportDateRange.md) |  | 
**schedule** | [**CustomReportSchedule**](CustomReportSchedule.md) |  | 
**recipients_count** | **integer** |  | [optional] 
**published** | **character** |  | [optional] 
**public_link_active** | **character** |  | [optional] 
**password_protected** | **character** |  | [optional] 
**portal_only** | **character** |  | [optional] 
**last_sent_at** | **character** | When the report was last emailed, on its schedule or with Send now | [optional] 
**created_at** | **character** |  | [optional] 
**updated_at** | **character** |  | [optional] 
**filters** | [**CustomReportFilters**](CustomReportFilters.md) |  | 
**compare_previous** | **character** |  | [optional] 
**attach_excel** | **character** |  | [optional] 
**manual_send_available_at** | **character** | When the 10-minute cooldown after the last manual send ends; null when none is running | [optional] 
**generated_at** | **character** |  | 
**blocks** | [**array[CustomReportBlock]**](CustomReportBlock.md) | The report layout in order | 
**widgets** | [**array[CustomReportWidget]**](CustomReportWidget.md) |  | 
**request_id** | **character** |  | 


