# llmpulse::AiModelInsightsSummaryResponseSummaryWeightedVisibilityByModel


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_weighted_visibility_score** | **numeric** | The brand&#39;s AI Visibility Score across the enabled models, its points there divided by the days with answers in any of them (the Overview&#39;s number for the same filters; a model that answered while disabled keeps its row but stays out of it); 0 when it has none | [optional] 
**models** | [**array[AiModelWeightedVisibilityRow]**](AiModelWeightedVisibilityRow.md) |  | [optional] 


