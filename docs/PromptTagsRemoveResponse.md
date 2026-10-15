# llmpulse::PromptTagsRemoveResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**prompts_targeted** | **integer** | Prompts of the project among prompt_ids | 
**tags_detached** | [**array[TagRef]**](TagRef.md) |  | 
**links_removed** | **integer** |  | 
**skipped_not_linked** | **integer** |  | 
**missing_tag_names** | **array[character]** | tag_names that matched no tag | 
**ignored_prompt_ids** | **array[integer]** | prompt_ids that are not prompts of this project | 
**request_id** | **character** |  | 


