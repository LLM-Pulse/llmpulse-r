# llmpulse::AiModelInsightsFiltersEcho

The filters the summary was computed with, as the server resolved them. A filter that was not given is left out, except granularity and competitors.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **character** |  | [optional] 
**to** | **character** |  | [optional] 
**granularity** | **character** | day, week or month; day when not given | [optional] 
**country_code** | **character** | Comma-separated country codes | [optional] 
**language_code** | **character** | Comma-separated language codes | [optional] 
**collection_id** | **character** | Comma-separated collection ids | [optional] 
**prompt_type** | **character** | Comma-separated prompt types | [optional] 
**brand_kind** | **character** |  | [optional] 
**competitors** | **array[integer]** | Competitor ids from the competitors parameter; empty when it was not given | [optional] 


