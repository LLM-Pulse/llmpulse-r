# llmpulse::SearchConsoleTimeseriesResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**property** | [**SearchConsoleProperty**](SearchConsoleProperty.md) |  | [optional] 
**from** | **character** |  | [optional] 
**to** | **character** |  | [optional] 
**data_through** | **character** | Latest date Google has published for the property (it lags 2-3 days). Later days are missing, not zero. | [optional] 
**granularity** | **character** |  | [optional] 
**data** | [**array[SearchConsoleTimeseriesResponseDataInner]**](SearchConsoleTimeseriesResponse_data_inner.md) |  | [optional] 
**request_id** | **character** |  | [optional] 


