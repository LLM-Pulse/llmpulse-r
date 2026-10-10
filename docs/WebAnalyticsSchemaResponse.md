# llmpulse::WebAnalyticsSchemaResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**provider** | **character** | The connected web analytics provider. | [optional] [Enum: [google_analytics, adobe_analytics, matomo, posthog, plausible, piano]] 
**property** | **character** | The property, site, report suite (rsid:...), data view (dataview:...) or project every query runs on. | [optional] 
**query_language** | **character** | The native query format the provider accepts. | [optional] 
**docs_url** | **character** | The provider&#39;s reference for that format. | [optional] 
**allowed_fields** | **array[character]** | Top-level query fields that are forwarded. | [optional] 
**rules** | **array[character]** | What the bridge enforces and the provider&#39;s main constraints. | [optional] 
**example** | **map(object)** | A worked query to adapt. | [optional] 
**fields** | **map(object)** | The provider&#39;s live field list where it offers one: GA4 dimensions and metrics with custom definitions, Adobe ids, Matomo report methods, PostHog event names, the Plausible catalog. Null when the provider did not return it. | [optional] 
**fields_unavailable** | **character** | Present when the field list could not be read; the format and example still apply. | [optional] 
**request_id** | **character** |  | [optional] 


