# llmpulse::AiModelDeclinedAnswersResponse

How often one AI model declined to answer the project's prompts. An answer is a finished run of the model, a declined one included; a declined answer counts as no answer and never enters the metrics. The window starts at the tracking period holding its first day, and summary, chart and by_prompt count that same window.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**from** | **character** | Start of the tracking period holding the first day asked for | 
**to** | **character** |  | 
**model** | **character** | The model the counts are for | [Enum: [gemini]] 
**cadence** | **character** | The account&#39;s current tracking cadence: daily, weekly or monthly. Chart periods before a switch from weekly to daily stay weekly. | 
**filters** | [**AiModelDeclinedAnswersResponseFilters**](AiModelDeclinedAnswersResponse_filters.md) |  | [optional] 
**summary** | [**AiModelDeclinedAnswersResponseSummary**](AiModelDeclinedAnswersResponse_summary.md) |  | 
**chart** | [**array[AiModelDeclinedAnswersResponseChartInner]**](AiModelDeclinedAnswersResponse_chart_inner.md) | One point per tracking period holding an answer, oldest first. A period without answers has no point; a period with answers and no declines is a real 0. | 
**by_prompt** | [**AiModelDeclinedAnswersResponseByPrompt**](AiModelDeclinedAnswersResponse_by_prompt.md) |  | 
**request_id** | **character** |  | [optional] 


