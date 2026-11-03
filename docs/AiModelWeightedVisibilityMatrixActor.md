# llmpulse::AiModelWeightedVisibilityMatrixActor

An actor (the standard actor shape) with one AI Visibility Score cell per model

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **character** |  | [optional] [Enum: [project, competitor]] 
**id** | **integer** | Project id, or competitor id | [optional] 
**competitor_id** | **integer** | Null for the project, the competitor id otherwise | [optional] 
**name** | **character** |  | [optional] 
**domain** | **character** | Bare (scheme-less) domain. Null for the project actor when the project has no URL. | [optional] 
**total_weighted_visibility_score** | **numeric** | The actor&#39;s AI Visibility Score points summed over the models | [optional] 
**models** | [**map(AiModelWeightedVisibilityCell)**](AiModelWeightedVisibilityCell.md) | One cell per model, keyed by model | [optional] 


