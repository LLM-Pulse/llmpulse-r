# llmpulse::CompetitorSuggestionsResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**page** | **integer** |  | 
**per_page** | **integer** |  | 
**total** | **integer** | Rows matching the filters across every page | 
**request_id** | **character** |  | 
**basis** | **character** |  | [Enum: [brands, citations]] 
**discovery** | [**CompetitorDiscoveryState**](CompetitorDiscoveryState.md) |  | 
**data** | [**array[CompetitorSuggestion]**](CompetitorSuggestion.md) |  | 


