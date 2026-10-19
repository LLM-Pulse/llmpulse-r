# llmpulse::CreateCompetitorRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**brand_name** | **character** |  | 
**domain** | **character** | URL is accepted and normalised to host (e.g. https://www.openai.com → openai.com) | 
**matching_names** | **array[character]** | Extra names this competitor is matched by; brand_name is added automatically. At most 50 names in all, brand_name included, of up to 100 characters each; a longer list or name is refused with ERR_INVALID_PARAM (422) | [optional] [Max. items: 50] 
**citation_match_mode** | **character** | domain includes the registrable domain and all subdomains; host requires the exact hostname; path_prefix also requires citation_match_path | [optional] [default to &quot;domain&quot;] [Enum: [domain, host, path_prefix]] 
**citation_match_path** | **character** | Required when citation_match_mode&#x3D;path_prefix, e.g. /es. Case-sensitive; trailing slash is optional; query and fragment are ignored | [optional] 


