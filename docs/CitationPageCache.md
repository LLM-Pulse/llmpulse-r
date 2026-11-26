# llmpulse::CitationPageCache

What was read on the cited page. Metadata is null when the page has no usable content.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**present** | **character** | Whether the page has a saved copy | 
**last_crawled_at** | **character** | When the saved copy was read; null without usable content | 
**status_code** | **integer** | A saved successful response or an observed 404/410; null otherwise | 
**error_message** | **character** | Always null; crawl errors are not exposed | 
**content_format** | **character** |  | 
**bytes** | **integer** |  | 
**html_title** | **character** |  | 
**meta_title** | **character** |  | 
**meta_description** | **character** |  | 
**h1** | **character** |  | 
**canonical_url** | **character** |  | 
**language** | **character** |  | 
**mentions_processed** | **character** | Whether the page&#39;s mention analysis has completed for this project | 
**content_available** | **character** |  | 


