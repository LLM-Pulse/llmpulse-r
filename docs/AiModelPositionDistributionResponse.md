# llmpulse::AiModelPositionDistributionResponse

The positions at which one or two brands were mentioned, in four buckets, per period of the window.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**from** | **character** |  | 
**to** | **character** |  | 
**filters** | [**AiModelInsightsReportFiltersEcho**](AiModelInsightsReportFiltersEcho.md) |  | 
**granularity** | **character** |  | [Enum: [day, week, month]] 
**brands** | [**array[AiModelPositionDistributionBrand]**](AiModelPositionDistributionBrand.md) | The first brand (brand1, else the project) and the second (brand2, else the competitor with the most mentions, else the project), each left out when it has no mention in the window | 
**max_stacked_value** | **integer** | The largest mentions count of one period across the brands, for a shared chart axis | 
**request_id** | **character** |  | 


