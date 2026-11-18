# llmpulse::AiModelDeclinedAnswersResponseChartInner


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
**date** | **character** | First day of the tracking period | 


