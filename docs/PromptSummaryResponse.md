# llmpulse::PromptSummaryResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**from** | **character** |  | [optional] 
**to** | **character** |  | [optional] 
**filters** | [**MetricsFiltersEcho**](MetricsFiltersEcho.md) |  | [optional] 
**breakdown** | **character** |  | [optional] 
**sort** | **character** |  | [optional] 
**sort_dir** | **character** |  | [optional] 
**page** | **integer** |  | [optional] 
**per_page** | **integer** |  | [optional] 
**total** | **integer** |  | [optional] 
**data** | [**array[PromptSummaryRow]**](PromptSummaryRow.md) |  | [optional] 
**plan_required_fields** | **array[character]** | The row fields left out because they need a higher plan (the sentiment fields below Growth); empty when none is | 
**request_id** | **character** |  | [optional] 


