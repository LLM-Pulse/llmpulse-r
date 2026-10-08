# llmpulse::MetricsFiltersEcho

The filters the response was computed with, as the server resolved them. Each endpoint echoes only the keys it reads; a filter that was not given comes back null (or an empty list).

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metrics** | **array[character]** | Requested metrics after alias resolution (mention_rate is echoed as visibility) | [optional] 
**granularity** | **character** | day, week or month | [optional] 
**model** | **character** | The model filter, or null when absent or not enabled for the account | [optional] 
**collection_id** | **character** | The collection_id parameter as sent (one id or a comma-separated list) | [optional] 
**collection_ids** | **array[integer]** |  | [optional] 
**domains** | **array[character]** |  | [optional] 
**country_code** | **character** | Comma-separated country codes | [optional] 
**language_code** | **character** | Comma-separated language codes | [optional] 
**prompt** | **integer** | The prompt id filter | [optional] 
**prompt_type** | **character** | Comma-separated prompt types | [optional] 
**brand_kind** | **character** |  | [optional] 
**competitors** | **array[integer]** | Competitor ids from the competitors parameter; empty when it was not given | [optional] 
**include_project** | **character** |  | [optional] 
**query** | **character** | Only present when a query filter was given | [optional] 


