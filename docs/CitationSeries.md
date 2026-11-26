# llmpulse::CitationSeries

The answers citing it under the same filters, by AI model and per period of the account tracking cadence

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**granularity** | **character** |  | [Enum: [day, week, month]] 
**total** | **integer** | Equal to total_responses | 
**by_model** | **map(integer)** | Answers per AI model, keyed by model, largest first | 
**data** | [**array[AiModelPositionDistributionBrandBucketsInnerDataInner]**](AiModelPositionDistributionBrand_buckets_inner_data_inner.md) | One point per period holding a filtered answer, oldest first; a zero means answers ran and none cited it | 


