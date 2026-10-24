# llmpulse::UpdateRecommendationItemRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**status** | **character** | completed, archived, or active to restore the item | [Enum: [active, completed, archived]] 
**reason** | **character** | Optional, with status archived only. competitor only on a PR &amp; Citation Building item that targets a domain. | [optional] [Enum: [not_relevant, too_complex, competitor]] 


