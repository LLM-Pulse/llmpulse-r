# llmpulse::CatalogPromptSuggestionsCreateResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**created** | **integer** |  | 
**skipped** | **integer** | Generated prompts not saved because the project already holds them as a suggestion (from any source or product, in any status). | 
**data** | [**array[CatalogPromptSuggestion]**](CatalogPromptSuggestion.md) |  | 
**request_id** | **character** |  | 


