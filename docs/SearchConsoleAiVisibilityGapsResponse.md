# llmpulse::SearchConsoleAiVisibilityGapsResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**property** | [**SearchConsoleProperty**](SearchConsoleProperty.md) |  | [optional] 
**properties** | [**array[SearchConsoleProperty]**](SearchConsoleProperty.md) | With a list or all in the property parameter, the properties whose data the response holds (instead of property) | [optional] 
**excluded_properties** | [**array[SearchConsoleExcludedProperty]**](SearchConsoleExcludedProperty.md) | With a list or all, selected properties left out because another selected property already counts them | [optional] 
**property_errors** | [**array[SearchConsolePropertyError]**](SearchConsolePropertyError.md) | With a list or all, selected properties Google refused, left out of the figures | [optional] 
**from** | **character** |  | [optional] 
**to** | **character** |  | [optional] 
**data_through** | **character** | Latest date Google has published for the property, or for every combined property (it lags 2-3 days). Later days are missing, not zero. | [optional] 
**min_impressions** | **integer** |  | [optional] 
**unmatched_only** | **character** |  | [optional] 
**matched_count** | **integer** | Queries with at least min_impressions that match a prompt of the project, counted before unmatched_only leaves them out | [optional] 
**page** | **integer** |  | [optional] 
**per_page** | **integer** |  | [optional] 
**total** | **integer** | Rows in the report before paging | [optional] 
**truncated** | **character** | Present (true) when Google returned its 25,000-row maximum for a property, so the report covers its top rows only | [optional] 
**data** | [**array[SearchConsoleAiVisibilityGapsResponseDataInner]**](SearchConsoleAiVisibilityGapsResponse_data_inner.md) |  | [optional] 
**request_id** | **character** |  | [optional] 


