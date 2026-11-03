# llmpulse::AiModelInsightsSummaryResponse

One entry per AI model the account has enabled or that answered in the window, in the in-app column order: the models list, which every per-model list and map in summary follows. A share, net sentiment or market share value with nothing behind it is null, because 0 is a real value; counts, totals and weighted visibility scores stay 0.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**from** | **character** |  | [optional] 
**to** | **character** |  | [optional] 
**filters** | [**AiModelInsightsFiltersEcho**](AiModelInsightsFiltersEcho.md) |  | [optional] 
**models** | [**array[AiModelInsightsModel]**](AiModelInsightsModel.md) | The AI models the account has enabled or that answered in the window, in the in-app column order | [optional] 
**summary** | [**AiModelInsightsSummaryResponseSummary**](AiModelInsightsSummaryResponse_summary.md) |  | [optional] 
**request_id** | **character** |  | [optional] 


