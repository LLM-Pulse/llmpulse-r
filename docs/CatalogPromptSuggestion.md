# llmpulse::CatalogPromptSuggestion


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**prompt** | **character** |  | 
**status** | **character** | pending, accepted or rejected | 
**source** | **character** | Always catalog | 
**country_code** | **character** |  | 
**language_code** | **character** |  | 
**product** | [**CatalogPromptSuggestionProduct**](CatalogPromptSuggestion_product.md) |  | 
**prompt_id** | **integer** | The tracked prompt an accepted suggestion became; null until accepted | 
**accepted_at** | **character** | When the suggestion was accepted; null until then | 
**created_at** | **character** |  | 


