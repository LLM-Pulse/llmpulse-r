# llmpulse::AiTrafficResponse

Visits from AI assistants measured by the connected web analytics provider, by day over the window.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**provider** | **character** | The connected provider: google_analytics, adobe_analytics, adobe_cja, posthog, plausible, matomo or piano | 
**from** | **character** |  | 
**to** | **character** |  | 
**granularity** | **character** |  | [Enum: [day, week, month]] 
**totals** | [**AiTrafficResponseTotals**](AiTrafficResponse_totals.md) |  | 
**by_source** | [**array[AiTrafficResponseBySourceInner]**](AiTrafficResponse_by_source_inner.md) | One row per AI source with traffic in the window, most sessions first | 
**timeseries** | [**map(map(integer))**](map.md) | Sessions keyed by AI source slug, then by the first day of the period (YYYY-MM-DD); a period without traffic is left out | 
**request_id** | **character** |  | 


