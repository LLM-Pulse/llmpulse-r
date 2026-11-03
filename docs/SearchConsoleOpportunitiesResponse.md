# llmpulse::SearchConsoleOpportunitiesResponse


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
**min_position** | **numeric** |  | [optional] 
**max_position** | **numeric** |  | [optional] 
**top_ctr** | **numeric** | CTR (0..1) of the property&#39;s queries averaging position 3 or better in the window; null when there are none, and then no potential_clicks | [optional] 
**page** | **integer** |  | [optional] 
**per_page** | **integer** |  | [optional] 
**total** | **integer** | Rows in the report before paging | [optional] 
**truncated** | **character** | Present (true) when Google returned its 25,000-row maximum for a property, so the report covers its top rows only | [optional] 
**data** | [**array[SearchConsoleOpportunitiesResponseDataInner]**](SearchConsoleOpportunitiesResponse_data_inner.md) |  | [optional] 
**request_id** | **character** |  | [optional] 


