# llmpulse::AiModelDeclinedAnswersResponseByPrompt

One row per prompt with an answer in the window, highest decline rate first, then more declines, more answers and the prompt id

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **integer** |  | [optional] 
**per_page** | **integer** |  | [optional] 
**total** | **integer** | Prompts with an answer in the window | [optional] 
**data** | [**array[AiModelDeclinedAnswersResponseByPromptDataInner]**](AiModelDeclinedAnswersResponse_by_prompt_data_inner.md) |  | [optional] 


