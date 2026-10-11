# llmpulse::SearchConsoleRowsResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**property** | [**SearchConsoleProperty**](SearchConsoleProperty.md) |  | [optional] 
**from** | **character** |  | [optional] 
**to** | **character** |  | [optional] 
**data_through** | **character** | Latest date Google has published for the property (it lags 2-3 days). Later days are missing, not zero. | [optional] 
**page** | **integer** |  | [optional] 
**per_page** | **integer** |  | [optional] 
**total** | **integer** | Rows in this window (one Google request, at most 25,000) | [optional] 
**sort** | **character** |  | [optional] 
**start_row** | **integer** | Present when start_row was set | [optional] 
**truncated** | **character** | Present (true) when Google returned 25,000 rows, so more rows exist past this window | [optional] 
**dimensions** | **array[character]** |  | [optional] 
**data** | [**array[SearchConsoleRowsResponseDataInner]**](SearchConsoleRowsResponse_data_inner.md) | One row per combination; only the requested dimensions are present | [optional] 
**request_id** | **character** |  | [optional] 


