# llmpulse::UpdateCompetitorRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**brand_name** | **character** |  | [optional] 
**domain** | **character** | Website domain or host used for citation matching. A full URL is accepted and normalised to its host. | [optional] 
**matching_names** | **array[character]** | FULL replacement list of the names this competitor is matched by; brand_name is added automatically. At most 50 names in all, brand_name included, of up to 100 characters each; a longer list or name is refused with ERR_INVALID_PARAM (422) and nothing in the request is applied | [optional] [Max. items: 50] 
**color** | **character** | Hex color, e.g. #1a2b3c | [optional] 
**citation_match_mode** | **character** |  | [optional] [Enum: [domain, host, path_prefix]] 
**citation_match_path** | **character** | Required when changing citation_match_mode to path_prefix | [optional] 


