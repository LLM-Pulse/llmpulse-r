# llmpulse::AnswerRecord

One answer. Without query a row carries response and response_truncated; with query it carries snippet and match_count instead

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**prompt_id** | **integer** |  | 
**prompt_text** | **character** |  | 
**model** | **character** |  | [Enum: [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai, naver_ai_tab, qwen, doubao, bing_ai_mode, bing_ai_overview]] 
**executed_at** | **character** |  | 
**duration_ms** | **numeric** | Milliseconds our pipeline spent processing the collected answer, rounded to one decimal place | 
**no_result** | **character** | True for a sentinel non-answer (no answer could be collected after all retries, or the model declined to answer, today only Gemini); excluded from platform metrics | 
**no_result_reason** | **character** | Present only when no_result is true. declined &#x3D; the model declined to answer and response holds its reply; no_answer &#x3D; no answer could be collected | [optional] [Enum: [declined, no_answer]] 
**mentions_count** | **integer** | Mentions of your brand in the answer | 
**citations_count** | **integer** | Citations of your brand in the answer | 
**app_url** | **character** | Opens this answer in the app. The link names its project, so it opens there for any user with access to that project | 
**response** | **character** | The answer text, cut to 10,000 characters (without query) | [optional] 
**response_truncated** | **character** | Whether response was cut (without query) | [optional] 
**snippet** | **character** | The text around the first match (with query) | [optional] 
**match_count** | **integer** | Matches of query in the answer (with query) | [optional] 


