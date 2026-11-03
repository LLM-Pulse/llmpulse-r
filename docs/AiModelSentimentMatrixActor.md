# llmpulse::AiModelSentimentMatrixActor

An actor (the standard actor shape) with one net sentiment cell per model

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **character** |  | [optional] [Enum: [project, competitor]] 
**id** | **integer** | Project id, or competitor id | [optional] 
**competitor_id** | **integer** | Null for the project, the competitor id otherwise | [optional] 
**name** | **character** |  | [optional] 
**domain** | **character** | Bare (scheme-less) domain. Null for the project actor when the project has no URL. | [optional] 
**total_sentiments** | **integer** | The actor&#39;s sentiment verdicts summed over the models | [optional] 
**models** | [**map(AiModelSentimentCell)**](AiModelSentimentCell.md) | One cell per model, keyed by model | [optional] 


