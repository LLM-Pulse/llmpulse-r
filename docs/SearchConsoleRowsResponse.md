# llmpulse::SearchConsoleRowsResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**property** | [**SearchConsoleProperty**](SearchConsoleProperty.md) |  | [optional] 
**from** | **character** |  | [optional] 
**to** | **character** |  | [optional] 
**data_through** | **character** | Latest date Google has published for the property, or for every combined property (it lags 2-3 days). Later days are missing, not zero. | [optional] 
**page** | **integer** |  | [optional] 
**per_page** | **integer** |  | [optional] 
**total** | **integer** | Rows in this window (one Google request, at most 25,000) | [optional] 
**sort** | **character** |  | [optional] 
**start_row** | **integer** | Present when start_row was set | [optional] 
**truncated** | **character** | Present (true) when Google returned 25,000 rows, so more rows exist past this window | [optional] 
**dimensions** | **array[character]** |  | [optional] 
**data** | [**array[SearchConsoleRowsResponseDataInner]**](SearchConsoleRowsResponse_data_inner.md) | One row per combination; only the requested dimensions are present | [optional] 
**request_id** | **character** |  | [optional] 
**properties** | [**array[SearchConsoleProperty]**](SearchConsoleProperty.md) | With a list or all in the property parameter, the properties whose data the response holds (instead of property) | [optional] 
**excluded_properties** | [**array[SearchConsoleExcludedProperty]**](SearchConsoleExcludedProperty.md) | With a list or all, selected properties left out because another selected property already counts them | [optional] 
**property_errors** | [**array[SearchConsolePropertyError]**](SearchConsolePropertyError.md) | With a list or all, selected properties Google refused, left out of the figures | [optional] 


