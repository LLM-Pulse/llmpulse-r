# llmpulse::SearchConsoleAiVisibilityGapsResponseDataInner


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **character** |  | [optional] 
**impressions** | **integer** |  | [optional] 
**clicks** | **integer** |  | [optional] 
**ctr** | **numeric** | 0..1 fraction | [optional] 
**position** | **numeric** | Impression-weighted average position | [optional] 
**prompt_id** | **integer** | The project&#39;s prompt with the same text as the query; null when no prompt matches | [optional] 
**responses** | **integer** | AI answers the matching prompt got in the window over the account&#39;s enabled models; null when no prompt matches | [optional] 
**brand_visibility** | **numeric** | Brand Visibility of the matching prompt in the window, percent (0-100) of its AI answers that mention the brand, over the account&#39;s enabled models; null when no prompt matches or it has no answer | [optional] 


