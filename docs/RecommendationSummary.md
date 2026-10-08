# llmpulse::RecommendationSummary


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**project_id** | **integer** |  | 
**recommendation_type** | **character** |  | [Enum: [ai_visibility, social_community, brand_building, sentiment_reputation]] 
**status** | **character** |  | [Enum: [pending, processing, completed, failed]] 
**error_message** | **character** | Set only when status is failed | 
**generated_at** | **character** | Null until the generation completes | 
**created_at** | **character** |  | 
**updated_at** | **character** |  | 
**total_recommendations** | **integer** |  | 
**high_priority_count** | **integer** |  | 
**summary** | [**RecommendationSummarySummary**](RecommendationSummary_summary.md) |  | 
**context** | **object** | Generation context and run diagnostics as stored; empty until the generation completes. Its keys are not a stable contract | 


