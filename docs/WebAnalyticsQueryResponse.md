# llmpulse::WebAnalyticsQueryResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**provider** | **character** |  | [optional] [Enum: [google_analytics, adobe_analytics, matomo, posthog, plausible, piano]] 
**property** | **character** |  | [optional] 
**columns** | [**array[WebAnalyticsQueryResponseColumnsInner]**](WebAnalyticsQueryResponse_columns_inner.md) |  | [optional] 
**rows** | [**array[array[object]]**](array.md) | One array per row, values in column order: strings, numbers or null. | [optional] 
**row_count** | **integer** | Rows in this response (at most 5,000). | [optional] 
**total_rows** | **integer** | Rows the provider has for the query, when it reports it. | [optional] 
**truncated** | **character** | True when the provider has more rows than returned; page with its own offset or page field. | [optional] 
**totals** | **map(object)** | Metric totals by metric name, when the query asked for them. | [optional] 
**notes** | **array[character]** | Provider caveats: sampling, thresholds, more rows available. | [optional] 
**meta** | **map(object)** | Provider metadata such as GA4 time zone, currency and remaining property quota. | [optional] 
**fetched_at** | **character** | When the provider answered. | [optional] 
**cached** | **character** | True when the answer came from the 10-minute cache instead of the provider. | [optional] 
**query** | **map(object)** | The request as sent to the provider, with the connected property forced and limits applied. | [optional] 
**request_id** | **character** |  | [optional] 


