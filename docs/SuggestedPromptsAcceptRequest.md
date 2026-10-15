# llmpulse::SuggestedPromptsAcceptRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**ids** | **array[integer]** | Suggestion ids to accept (max 100) | [Max. items: 100] 
**tag_ids** | **array[integer]** | One tag id to put the new prompts in | [optional] [Max. items: 1] 
**tag_names** | **array[character]** | One tag name (case-insensitive) to put the new prompts in | [optional] [Max. items: 1] 
**create_missing** | **character** | Create the tag named in tag_names when it does not exist | [optional] [default to FALSE] 


