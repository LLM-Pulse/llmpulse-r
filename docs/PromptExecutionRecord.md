# llmpulse::PromptExecutionRecord


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**prompt_id** | **integer** |  | 
**executed_at** | **character** | Null while the answer is still pending | 
**duration_ms** | **numeric** |  | 
**success** | **character** | Null while the answer is still pending | 
**model** | **character** |  | [Enum: [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai]] 
**fan_out_queries** | **array[character]** | Sub-queries the model issued while answering; null when the model reports none | 
**has_mention** | **character** |  | 
**has_citation** | **character** |  | 
**mentions_count** | **integer** | 1 when the answer mentions the brand, otherwise 0 | 
**citations_count** | **integer** | 1 when the answer cites the brand, otherwise 0 | 
**app_url** | **character** | Opens this answer in the app. The link names its project, so it opens there for any user with access to that project | 


