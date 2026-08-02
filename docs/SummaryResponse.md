# llmpulse::SummaryResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**from** | **character** |  | [optional] 
**to** | **character** |  | [optional] 
**granularity** | **character** |  | [optional] 
**filters** | **object** |  | [optional] 
**series** | [**map(array[TimeseriesSeries])**](array.md) |  | [optional] 
**request_id** | **character** |  | [optional] 
**summary** | [**map(array[SummaryResponseAllOfSummaryValueInner])**](array.md) |  | [optional] 
**position_distribution** | [**SummaryResponseAllOfPositionDistribution**](SummaryResponse_allOf_position_distribution.md) |  | [optional] 


