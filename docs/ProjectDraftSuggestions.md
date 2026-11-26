# llmpulse::ProjectDraftSuggestions

AI suggestions for a step. Only the key of the suggested step is sent, and only when status is ready

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**step** | **character** | The step the suggestions are for (details, prompts or competitors) | [optional] 
**status** | **character** | ready, none (not requested, or nothing cached yet) or failed | 
**details** | [**ProjectDraftSuggestionsDetails**](ProjectDraftSuggestions_details.md) |  | [optional] 
**prompts** | **array[character]** |  | [optional] 
**competitors** | [**array[ProjectDraftSuggestionsCompetitorsInner]**](ProjectDraftSuggestions_competitors_inner.md) |  | [optional] 


