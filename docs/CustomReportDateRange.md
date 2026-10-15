# llmpulse::CustomReportDateRange


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **character** | rolling (the last range_days days) or previous_month (the previous calendar month) | [Enum: [rolling, previous_month]] 
**range_days** | **integer** | Length of a rolling window; null for previous_month | 
**from** | **character** | First day of the window as of now (detail only) | [optional] 
**to** | **character** | Last day of the window as of now (detail only) | [optional] 
**label** | **character** | The window as the report shows it (detail only) | [optional] 


