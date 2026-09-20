# llmpulse::UpdateCompetitorRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**brand_name** | **character** |  | [optional] 
**domain** | **character** | Website domain or host used for citation matching. A full URL is accepted and normalised to its host. | [optional] 
**matching_names** | **array[character]** |  | [optional] 
**color** | **character** | Hex color, e.g. #1a2b3c | [optional] 
**citation_match_mode** | **character** |  | [optional] [Enum: [domain, host, path_prefix]] 
**citation_match_path** | **character** | Required when changing citation_match_mode to path_prefix | [optional] 


