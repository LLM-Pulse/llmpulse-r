# llmpulse::AiModelSentimentRow


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model** | **character** | AI model key, as /dimensions/models lists it | [optional] 
**label** | **character** | Display name of the model | [optional] 
**color** | **character** | Hex color the app charts the model with | [optional] 
**sentiments_count** | **integer** | Brand sentiment verdicts in the model&#39;s answers | [optional] 
**positive_count** | **integer** | Positive and very positive verdicts | [optional] 
**negative_count** | **integer** | Negative and very negative verdicts | [optional] 
**net_sentiment** | **numeric** | positive_count minus negative_count as a percentage (-100 to 100) of sentiments_count, neutral verdicts counted in the base; null when sentiments_count is 0 | [optional] 


