# llmpulse::AiModelPositionDistributionBrand


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **character** | project or competitor | 
**id** | **integer** | Project id, or competitor id | 
**competitor_id** | **integer** | Null for the project, the competitor id otherwise | 
**name** | **character** |  | 
**domain** | **character** | Bare (scheme-less) domain. Null for the project when it has no URL. | 
**buckets** | [**array[AiModelPositionDistributionBrandBucketsInner]**](AiModelPositionDistributionBrand_buckets_inner.md) | One per position bucket, in order: position_1, position_2_3, position_4_7 and position_8_plus | 
**max_stacked_value** | **integer** | The brand&#39;s largest mentions count of one period, its buckets added up | 


