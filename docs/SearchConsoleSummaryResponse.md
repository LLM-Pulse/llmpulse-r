# llmpulse::SearchConsoleSummaryResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**property** | [**SearchConsoleProperty**](SearchConsoleProperty.md) |  | [optional] 
**from** | **character** |  | [optional] 
**to** | **character** |  | [optional] 
**data_through** | **character** | Latest date Google has published for the property (it lags 2-3 days). Later days are missing, not zero. | [optional] 
**totals** | [**SearchConsoleMetrics**](SearchConsoleMetrics.md) |  | [optional] 
**dimension** | **character** | Present when a breakdown was requested | [optional] 
**breakdown** | [**array[SearchConsoleSummaryResponseBreakdownInner]**](SearchConsoleSummaryResponse_breakdown_inner.md) | Present when a breakdown was requested, sorted by impressions descending | [optional] 
**breakdown_truncated** | **character** | Present (true) when limit or Google&#39;s 25,000-row maximum left breakdown rows out, so they add up to less than totals | [optional] 
**request_id** | **character** |  | [optional] 


