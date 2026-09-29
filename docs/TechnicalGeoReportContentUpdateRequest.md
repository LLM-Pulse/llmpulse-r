# llmpulse::TechnicalGeoReportContentUpdateRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**report_type** | **character** | Only llms_txt reports have editable content | [Enum: [llms_txt]] 
**content_version** | **character** | result_data.content_version of the report as last read. It changes on every save; a value that no longer matches is refused as stale | 
**edits** | [**TechnicalGeoReportContentUpdateRequestEdits**](TechnicalGeoReportContentUpdateRequest_edits.md) |  | 


