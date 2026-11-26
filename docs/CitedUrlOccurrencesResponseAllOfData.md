# llmpulse::CitedUrlOccurrencesResponseAllOfData


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_id** | **integer** |  | 
**answer_id** | **integer** |  | 
**prompt_execution_id** | **integer** | Same as answer_id | 
**prompt_id** | **integer** |  | 
**prompt_text** | **character** |  | 
**model** | **character** |  | [Enum: [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai, naver_ai_tab, qwen, doubao, bing_ai_mode, bing_ai_overview]] 
**executed_at** | **character** |  | 
**citation_position** | **integer** | Rank of the citation in the answer; 0 for a background source reference | 
**url** | **character** | Normalized cited URL | 
**domain** | **character** |  | 
**source_type** | **character** | owned, competitor or third_party | 
**response_excerpt** | **character** | The first 600 characters of the answer | 
**response_truncated** | **character** |  | 
**fan_out_queries** | **array[character]** | Sub-queries the model issued while answering; null when the model reports none | 


