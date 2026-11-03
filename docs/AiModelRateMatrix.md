# llmpulse::AiModelRateMatrix

Each actor's rate within each model: mentions of the actor (mentions_market_share), or answers citing it (citations_market_share), per answer of the model. Rates are independent, so the actors of a model can add up to more or less than 100.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**denominators_by_model** | **map(integer)** | Answers of each model in the window, keyed by model | [optional] 
**actors** | [**array[AiModelRateMatrixActor]**](AiModelRateMatrixActor.md) | The project and each competitor with a mention (or citation) in the window (only the competitors given in competitors, when it is given), by total descending | [optional] 


