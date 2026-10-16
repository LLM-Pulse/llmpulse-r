# llmpulse::ProjectDetailsAllOfStats


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**prompts_count** | **integer** |  | [optional] 
**prompts_by_brand_kind** | [**ProjectDetailsAllOfStatsPromptsByBrandKind**](ProjectDetails_allOf_stats_prompts_by_brand_kind.md) |  | [optional] 
**competitors_count** | **integer** |  | [optional] 
**collections_count** | **integer** |  | [optional] 
**prompts_available** | **integer** | How many prompts can still be added to this project now, the same number the Prompts page offers. The lower of the project&#39;s free slots under prompt_limit and the account&#39;s remaining prompts; 0 when either is full (a project over its limit keeps its prompts). Null when neither caps it | [optional] 


