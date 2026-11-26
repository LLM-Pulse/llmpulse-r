# llmpulse::CitationGroupRow

A cited URL, domain or host (view). url-view rows carry url, url_sha256 and normalized_url, plus page_cache and page_mentions when page details are included; domain and host rows carry domain or host and aggregate_details.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_id** | **integer** | The group&#39;s first citation | 
**view** | **character** | url, domain or host | 
**key** | **character** | The URL as cited, the domain or the host | 
**total_responses** | **integer** | Answers citing it | 
**total_citations** | **integer** |  | 
**citation_rate** | **numeric** | total_responses as a percentage (0-100) of citation_rate_denominator | 
**citation_rate_denominator** | **integer** | Answers matching the filters | 
**avg_citation_position** | **numeric** | Null when no visible citation has a rank | 
**first_seen_at** | **character** |  | 
**last_seen_at** | **character** |  | 
**models** | **map(integer)** | Answers citing it per AI model, keyed by model | 
**url** | **character** | url view only. The URL as cited | [optional] 
**url_sha256** | **character** | url view only. Key of the cited page, shared by the URL&#39;s variants | [optional] 
**normalized_url** | **character** | url view only | [optional] 
**page_cache** | [**CitationPageCache**](CitationPageCache.md) |  | [optional] 
**page_mentions** | [**CitationPageMentions**](CitationPageMentions.md) |  | [optional] 
**domain** | **character** | domain view only | [optional] 
**host** | **character** | host view only | [optional] 
**aggregate_details** | [**CitationGroupRowAggregateDetails**](CitationGroupRow_aggregate_details.md) |  | [optional] 
**citation_series** | [**CitationSeries**](CitationSeries.md) |  | [optional] 


