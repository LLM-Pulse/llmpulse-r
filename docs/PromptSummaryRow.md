# llmpulse::PromptSummaryRow


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**prompt_id** | **integer** |  | [optional] 
**prompt_text** | **character** |  | [optional] 
**model** | **character** | Only present when breakdown&#x3D;model | [optional] 
**responses** | **integer** |  | [optional] 
**mentions** | **integer** |  | [optional] 
**citations** | **integer** |  | [optional] 
**visibility** | **numeric** |  | [optional] 
**mention_rate** | **numeric** |  | [optional] 
**citation_rate** | **numeric** |  | [optional] 
**avg_mention_position** | **numeric** |  | [optional] 
**avg_position** | **numeric** |  | [optional] 
**app_url** | **character** | Opens this prompt in the app. The link names its project, so it opens there for any user with access to that project | [optional] 
**country_code** | **character** | Country of the prompt, as in /dimensions/prompts | [optional] 
**language_code** | **character** | Language of the prompt, as in /dimensions/prompts | [optional] 
**prompt_type** | **character** | Search intent: informational, navigational, commercial or transactional. Null until the prompt is classified | [optional] 
**brand_kind** | **character** | Brand focus: brand, brand_other or non_brand. Null until the prompt is classified | [optional] 
**tags** | [**array[TagRef]**](TagRef.md) | Every tag the prompt belongs to | [optional] 
**sentiment_responses** | **integer** | Responses in the window with a sentiment verdict for the brand, the base of the sentiment percentages (deduplicated like the sentiment timeseries) | [optional] 
**sentiment_very_positive** | **numeric** | Percentage (0-100) of sentiment_responses whose brand verdict is very positive; null when sentiment_responses is 0 | [optional] 
**sentiment_positive** | **numeric** | Percentage (0-100) of sentiment_responses whose brand verdict is positive; null when sentiment_responses is 0 | [optional] 
**sentiment_neutral** | **numeric** | Percentage (0-100) of sentiment_responses whose brand verdict is neutral; null when sentiment_responses is 0 | [optional] 
**sentiment_negative** | **numeric** | Percentage (0-100) of sentiment_responses whose brand verdict is negative; null when sentiment_responses is 0 | [optional] 
**sentiment_very_negative** | **numeric** | Percentage (0-100) of sentiment_responses whose brand verdict is very negative; null when sentiment_responses is 0 | [optional] 
**net_sentiment** | **numeric** | Positive minus negative percentages (-100 to 100), neutral counted in the base; null when sentiment_responses is 0 | [optional] 


