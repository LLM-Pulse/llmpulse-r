# llmpulse::CitedUrlOccurrencesResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**page** | **integer** |  | 
**per_page** | **integer** |  | 
**total** | **integer** | Rows matching the filters across every page | 
**request_id** | **character** |  | 
**url_sha256** | **character** |  | 
**data** | [**array[CitedUrlOccurrencesResponseAllOfData]**](CitedUrlOccurrencesResponse_allOf_data.md) | One row per citation of the URL, latest answer first | 


