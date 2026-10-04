# llmpulse::AiOrdersUpdateRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**platform** | **character** |  | [Enum: [shopify]] 
**currency** | **character** | ISO 4217 code, e.g. EUR | 
**from** | **character** | First day of the window this push replaces | 
**to** | **character** | Last day of the window; at most 400 days after from | 
**days** | [**array[AiOrdersUpdateRequestDaysInner]**](AiOrdersUpdateRequest_days_inner.md) |  | [Max. items: 400] 


