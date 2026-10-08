# llmpulse::SentimentRecord


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**prompt_execution_id** | **integer** |  | 
**prompt_text** | **character** |  | 
**model** | **character** |  | [Enum: [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai]] 
**analysis** | **character** |  | [Enum: [very_positive, positive, neutral, negative, very_negative]] 
**score** | **numeric** | From -1 (very negative) to 1 (very positive) | 
**comment** | **character** |  | 
**topics** | **character** | Comma-separated topics | 
**competitor_id** | **integer** | Null for a sentiment about the project&#39;s own brand | 
**competitor_name** | **character** | Null for a sentiment about the project&#39;s own brand | 
**is_brand_sentiment** | **character** |  | 
**executed_at** | **character** |  | 
**created_at** | **character** |  | 


