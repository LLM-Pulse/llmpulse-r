# llmpulse::TechnicalGeoReportsCreateResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**url** | **character** | The URL analysed | 
**country_code** | **character** | The country used, the project country when none was sent | 
**output_language_code** | **character** | ISO 639-1 code the llms.txt files are written in, or auto for the website&#39;s own language | 
**batch_id** | **integer** | Bundle id, for the batch_id filter of GET /technical_geo_reports; null when no report was created | 
**created_reports** | **array[character]** | The report_type of every report created | 
**report_ids** | **map(integer)** | The id of each created report, by report_type | 
**app_urls** | **map(character)** | The link that opens each created report in the app, by report_type | 
**failed_reports** | [**array[TechnicalGeoReportsCreateResponseFailedReportsInner]**](TechnicalGeoReportsCreateResponse_failed_reports_inner.md) | Reports that could not be created, with the reasons | 
**next_endpoint** | **character** | Path template to poll each created report | 
**poll_after_seconds** | **integer** | Seconds to wait before the first poll | 
**request_id** | **character** |  | 


