# llmpulse::RecommendationItem

One recommendation item, in the shape GET /recommendations/{id} lists items

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**recommendation_id** | **integer** |  | 
**recommendation_type** | **character** |  | 
**category** | **character** |  | 
**title** | **character** |  | 
**description** | **character** |  | [optional] 
**priority** | **character** |  | [Enum: [high, medium, low]] 
**estimated_impact** | **character** |  | [optional] 
**action_items** | **array[character]** |  | 
**source_refs** | **array[character]** | Evidence codes (e.g. P1, C2) resolved in resolved_source_refs | 
**status** | **character** |  | [Enum: [active, completed, archived]] 
**status_changed_at** | **character** |  | [optional] 
**position** | **integer** |  | 
**metadata** | **map(object)** |  | [optional] 
**created_at** | **character** |  | 
**updated_at** | **character** |  | 
**resolved_source_refs** | [**array[map(object)]**](map.md) | The evidence each source_refs code points to (prompt, citation or own page) | [optional] 
**unresolved_source_refs** | **array[character]** | Present only when a code points to no stored evidence | [optional] 


