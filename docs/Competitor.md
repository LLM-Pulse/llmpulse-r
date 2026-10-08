# llmpulse::Competitor


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**name** | **character** |  | [optional] 
**domain** | **character** | Bare (scheme-less) domain. Null only on the own-brand row (include_project_brand&#x3D;true) when the project has no URL. | [optional] 
**matching_names** | **array[character]** | Alternative names matched as this competitor. Absent on the own-brand row | [optional] 
**citation_match_mode** | [**CitationMatchMode**](CitationMatchMode.md) |  | [optional] [Enum: ] 
**citation_match_path** | **character** | Set only when citation_match_mode is path_prefix | [optional] 
**actor_type** | **character** | Only present when include_project_brand&#x3D;true | [optional] [Enum: [project, competitor]] 
**is_own** | **character** | Only present when include_project_brand&#x3D;true | [optional] 


