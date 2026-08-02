# llmpulse::SovResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**periods** | [**array[SovResponsePeriodsInner]**](SovResponse_periods_inner.md) | Per-bucket sample size and completeness: mentions is the total the shares were computed on (1-3 mentions produce the 100/50/33.33 low-sample patterns); partial marks buckets still collecting data or clipped by the requested window. | [optional] 
**over_time** | [**array[SovResponseOverTimeInner]**](SovResponse_over_time_inner.md) |  | [optional] 
**current** | [**array[SovResponseCurrentInner]**](SovResponse_current_inner.md) |  | [optional] 
**breakdown** | [**array[SovResponseBreakdownInner]**](SovResponse_breakdown_inner.md) |  | [optional] 
**others** | **array[object]** |  | [optional] 


