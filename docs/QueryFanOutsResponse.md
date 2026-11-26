# llmpulse::QueryFanOutsResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**page** | **integer** |  | 
**per_page** | **integer** |  | 
**total** | **integer** | Rows matching the filters across every page | 
**request_id** | **character** |  | 
**view** | **character** | query or prompt, the row shape of data | 
**total_occurrences** | **integer** | Sub-query occurrences across every page (view&#x3D;query) | [optional] 
**data** | [**array[QueryFanOutRow]**](QueryFanOutRow.md) |  | 


