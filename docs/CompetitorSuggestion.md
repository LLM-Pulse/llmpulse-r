# llmpulse::CompetitorSuggestion


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | The suggestion key (brands) or the id of one citing source row (citations) | 
**domain** | **character** |  | 
**brand_name** | **character** | The proposed brand name; null for a cited domain | [optional] 
**matching_names** | **array[character]** | The names a tracked competitor would be matched by; empty for a cited domain | 
**mentions** | **integer** | Answers naming the brand, when the discovery counted them (brands only) | [optional] 
**citations** | **integer** | Answers citing the domain (citations only) | [optional] 


