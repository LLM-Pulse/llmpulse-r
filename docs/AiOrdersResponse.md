# llmpulse::AiOrdersResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**platform** | **character** |  | 
**currency** | **character** | ISO 4217 code of the most recent stored day; null when the window holds no stored order | 
**from** | **character** |  | 
**to** | **character** |  | 
**totals** | [**AiOrdersResponseTotals**](AiOrdersResponse_totals.md) |  | 
**by_source** | [**array[AiOrdersResponseBySourceInner]**](AiOrdersResponse_by_source_inner.md) | One row per AI assistant, highest revenue first | 
**series** | [**array[AiOrdersResponseSeriesInner]**](AiOrdersResponse_series_inner.md) | Days that have stored orders, oldest first | 
**request_id** | **character** |  | 


