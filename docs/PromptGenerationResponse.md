# llmpulse::PromptGenerationResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | The run id; poll GET /prompt_generations/{id} with it (kept for 24 hours) | 
**project_id** | **integer** |  | 
**source** | **character** |  | 
**status** | **character** |  | [Enum: [processing, completed, failed]] 
**params** | [**PromptGenerationResponseParams**](PromptGenerationResponse_params.md) |  | 
**created_at** | **character** |  | 
**finished_at** | **character** |  | 
**suggestions_count** | **integer** |  | 
**suggestions** | [**array[SuggestedPrompt]**](SuggestedPrompt.md) | The suggestions the run saved to the Suggested prompts queue, with their current status | 
**error** | [**PromptGenerationResponseError**](PromptGenerationResponse_error.md) |  | 
**request_id** | **character** |  | 


