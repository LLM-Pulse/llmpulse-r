# llmpulse::AiOverviewResultsResponse

How often Google AI Overviews returned a result for the project's prompts. A result rate is a percentage (0-100) of the AI Overview runs, 0 when there is none.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**from** | **character** |  | 
**to** | **character** |  | 
**filters** | [**AiModelInsightsReportFiltersEcho**](AiModelInsightsReportFiltersEcho.md) |  | 
**granularity** | **character** |  | [Enum: [day, week, month]] 
**summary** | [**AiOverviewResultCounts**](AiOverviewResultCounts.md) |  | 
**chart** | [**array[AiOverviewResultsResponseChartInner]**](AiOverviewResultsResponse_chart_inner.md) | One point per period of the window, oldest first, 0 included | 
**by_prompt** | [**AiOverviewResultsResponseByPrompt**](AiOverviewResultsResponse_by_prompt.md) |  | 
**request_id** | **character** |  | 


