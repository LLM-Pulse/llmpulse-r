# llmpulse::OwnedMediaCitingPromptsResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**provider** | **character** |  | [optional] 
**from** | **character** |  | [optional] 
**to** | **character** |  | [optional] 
**item** | [**OwnedMediaCitedItem**](OwnedMediaCitedItem.md) |  | [optional] 
**citation_count** | **integer** | Citations of the item in the window | [optional] 
**prompt_count** | **integer** | Distinct prompts whose answers cited it | [optional] 
**page** | **integer** |  | [optional] 
**per_page** | **integer** |  | [optional] 
**total** | **integer** | Citing answers | [optional] 
**data** | [**array[OwnedMediaCitingAnswer]**](OwnedMediaCitingAnswer.md) |  | [optional] 
**request_id** | **character** |  | [optional] 


