# llmpulse::AdRow

One row of /dimensions/ads. Fields depend on view: advertisers (domain, ads, executions, prompts, avg_position, best_position) and ads (id, model, title, snippet, url, domain, position, is_client, prompt_id, prompt_text, prompt_execution_id, executed_at).

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **character** | Advertising domain; null on a placement that names none (view&#x3D;ads) | 
**ads** | **integer** | Placements of the domain (view&#x3D;advertisers) | [optional] 
**executions** | **integer** | Answers that carried them (view&#x3D;advertisers) | [optional] 
**prompts** | **integer** | Distinct prompts that triggered them (view&#x3D;advertisers) | [optional] 
**avg_position** | **numeric** | Average position, 1 is the best slot; null when no placement has one (view&#x3D;advertisers) | [optional] 
**best_position** | **integer** | Best position, 1 is the best slot (view&#x3D;advertisers) | [optional] 
**id** | **integer** | The placement (view&#x3D;ads) | [optional] 
**model** | **character** |  | [optional] [Enum: [chatgpt, perplexity, ai_mode, ai_overview, gemini, copilot, amazon_rufus, claude, grok, deepseek, naver_ai, baidu_ai, meta_ai, naver_ai_tab, qwen, doubao, bing_ai_mode, bing_ai_overview]] 
**title** | **character** |  | [optional] 
**snippet** | **character** |  | [optional] 
**url** | **character** |  | [optional] 
**position** | **integer** | Position of the placement, 1 is the best slot (view&#x3D;ads) | [optional] 
**is_client** | **character** | Whether the placement is identified as your brand&#39;s own (view&#x3D;ads) | [optional] 
**prompt_id** | **integer** |  | [optional] 
**prompt_text** | **character** |  | [optional] 
**prompt_execution_id** | **integer** |  | [optional] 
**executed_at** | **character** | When the answer that carried the placement was collected (view&#x3D;ads) | [optional] 


