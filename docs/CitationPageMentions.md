# llmpulse::CitationPageMentions

The brands the cited page mentions, from its analysis for the requesting project. A page not yet analyzed for it has null brand_mentioned, competitor_mentioned and brand_position and empty lists.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brand_mentioned** | **character** |  | 
**competitor_mentioned** | **character** |  | 
**brand_position** | **integer** | Rank of the brand&#39;s first mention on the page; null when it has none | 
**content_gap_status** | **character** | missing_page_cache, content_unavailable, mentions_not_processed, mentioned, gap (a competitor but not the brand) or not_mentioned | 
**brands** | [**array[CitationPageMentionsBrandsInner]**](CitationPageMentions_brands_inner.md) | Each brand the page mentions once, in order of first mention | 
**mentions** | [**array[CitationPageMentionsMentionsInner]**](CitationPageMentions_mentions_inner.md) | Every mention on the page with its snippet; not sent on GET /citation_intelligence/groups | [optional] 


