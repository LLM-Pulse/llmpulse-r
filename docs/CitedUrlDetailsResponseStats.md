# llmpulse::CitedUrlDetailsResponseStats


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_responses** | **integer** | Answers citing the URL under the filters | 
**total_citations** | **integer** |  | 
**citation_rate** | **numeric** | total_responses as a percentage (0-100) of citation_rate_denominator | 
**citation_rate_denominator** | **integer** | Answers matching the filters | 
**avg_citation_position** | **numeric** | Null when no visible citation has a rank | 
**first_seen_at** | **character** | Null when no citation matches the filters | 
**last_seen_at** | **character** | Null when no citation matches the filters | 
**distinct_urls** | **integer** | Spellings of the URL cited (tracking parameters, a trailing slash) | 
**source_types** | [**CitedUrlDetailsResponseStatsSourceTypes**](CitedUrlDetailsResponse_stats_source_types.md) |  | 
**models** | **map(integer)** | Answers citing the URL per AI model, keyed by model | 


