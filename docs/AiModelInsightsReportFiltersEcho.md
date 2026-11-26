# llmpulse::AiModelInsightsReportFiltersEcho

The filters a position distribution or AI Overview report was computed with, as the server resolved them. A filter that was not given is left out, except from, to, granularity and competitors.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **character** |  | 
**to** | **character** |  | 
**granularity** | **character** |  | [Enum: [day, week, month]] 
**country_code** | **character** | Comma-separated country codes | [optional] 
**language_code** | **character** | Comma-separated language codes | [optional] 
**collection_id** | **character** | Comma-separated collection ids | [optional] 
**prompt_type** | **character** | Comma-separated prompt types | [optional] 
**brand_kind** | **character** |  | [optional] 
**model** | **character** | The model filter; always ai_overview on the AI Overview report | [optional] [Enum: [chatgpt, ai_mode, ai_overview, perplexity, gemini, naver_ai, baidu_ai, naver_ai_tab, qwen, doubao, bing_ai_mode, bing_ai_overview]] 
**competitors** | **array[integer]** | Competitor ids from the competitors parameter; empty when it was not given | 
**brand1** | **character** | Position distribution only. The id, as a string, of the competitor compared as the first brand; left out for the project brand | [optional] 
**brand2** | **character** | Position distribution only. The id, as a string, of the competitor compared as the second brand, by default the competitor with the most mentions; left out when the project has none to compare | [optional] 


