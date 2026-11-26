# llmpulse::CitingDomainMentionShareResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**filters** | [**CitationIntelligenceFiltersEcho**](CitationIntelligenceFiltersEcho.md) |  | 
**normalization** | **character** | How the shares are computed | 
**data** | [**array[CitingDomainMentionShareResponseDataInner]**](CitingDomainMentionShareResponse_data_inner.md) | One row per requested domain (normalized, at most 50), in the order given | 
**request_id** | **character** |  | 


