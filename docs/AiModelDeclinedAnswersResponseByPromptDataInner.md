# llmpulse::AiModelDeclinedAnswersResponseByPromptDataInner


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**answers** | **integer** | Finished runs of the model, declined ones included | [optional] 
**declined** | **integer** | Answers the model declined | [optional] 
**decline_rate** | **numeric** |  | [optional] 
**safety_filter** | **integer** | Answers declined by the model&#39;s own safety filters | [optional] 
**safety_filter_rate** | **numeric** |  | [optional] 
**topic_refusal** | **integer** | Answers that declined the topic itself, such as tobacco, gambling or alcohol | [optional] 
**topic_refusal_rate** | **numeric** |  | [optional] 
**prompt_id** | **integer** |  | [optional] 
**prompt_text** | **character** |  | [optional] 
**last_declined_at** | **character** | When the prompt&#39;s latest declined answer of the window was created; null when none was declined | [optional] 


