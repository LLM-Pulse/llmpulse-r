# llmpulse::SovResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**from** | **character** |  | [optional] 
**to** | **character** |  | [optional] 
**granularity** | **character** | day, week or month | [optional] 
**filters** | [**MetricsFiltersEcho**](MetricsFiltersEcho.md) |  | [optional] 
**periods** | [**array[SovResponsePeriodsInner]**](SovResponse_periods_inner.md) | Per-bucket sample size and completeness: mentions is the total the shares were computed on (1-3 mentions produce the 100/50/33.33 low-sample patterns); partial marks buckets still collecting data or clipped by the requested window; confidence and margin_of_error read the sample size. | [optional] 
**sample** | [**SovResponseSample**](SovResponse_sample.md) |  | [optional] 
**over_time** | [**array[SovResponseOverTimeInner]**](SovResponse_over_time_inner.md) |  | [optional] 
**current** | [**array[SovResponseCurrentInner]**](SovResponse_current_inner.md) |  | [optional] 
**breakdown** | [**array[SovResponseBreakdownInner]**](SovResponse_breakdown_inner.md) |  | [optional] 
**others** | [**array[SovResponseOthersInner]**](SovResponse_others_inner.md) | Actors ranked fifth and below, folded into the Others share of breakdown | [optional] 
**request_id** | **character** |  | [optional] 


