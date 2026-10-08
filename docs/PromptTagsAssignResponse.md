# llmpulse::PromptTagsAssignResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**prompts_targeted** | **integer** | Prompts of the project among prompt_ids | 
**tags_attached** | [**array[TagRef]**](TagRef.md) |  | 
**new_links_created** | **integer** |  | 
**skipped_already_linked** | **integer** |  | 
**missing_tag_names** | **array[character]** | tag_names that matched no tag and were not created | 
**ignored_prompt_ids** | **array[integer]** | prompt_ids that are not prompts of this project | 
**request_id** | **character** |  | 


