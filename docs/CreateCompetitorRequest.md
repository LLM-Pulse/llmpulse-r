# llmpulse::CreateCompetitorRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**brand_name** | **character** |  | 
**domain** | **character** | URL is accepted and normalised to host (e.g. https://www.openai.com → openai.com) | 
**matching_names** | **array[character]** |  | [optional] 
**citation_match_mode** | **character** | domain includes the registrable domain and all subdomains; host requires the exact hostname; path_prefix also requires citation_match_path | [optional] [default to &quot;domain&quot;] [Enum: [domain, host, path_prefix]] 
**citation_match_path** | **character** | Required when citation_match_mode&#x3D;path_prefix, e.g. /es. Case-sensitive; trailing slash is optional; query and fragment are ignored | [optional] 


