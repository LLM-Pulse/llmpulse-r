# llmpulse::CustomReportDateRange


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **character** | rolling (the last range_days days), previous_month (the previous calendar month), previous_3_months (the 3 calendar months before the current one) or custom (fixed dates, custom_from to custom_to) | [Enum: [rolling, previous_month, previous_3_months, custom]] 
**range_days** | **integer** | Length of a rolling window; null for the other types | 
**custom_from** | **character** | First day chosen for a custom range; null for the other types | 
**custom_to** | **character** | Last day chosen for a custom range, which can be after today; null for the other types | 
**from** | **character** | First day of the window as of now (detail only) | [optional] 
**to** | **character** | Last day of the window as of now (detail only); a custom range stops at today | [optional] 
**label** | **character** | The window as the report shows it (detail only) | [optional] 


