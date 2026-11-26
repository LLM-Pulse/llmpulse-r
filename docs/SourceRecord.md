# llmpulse::SourceRecord


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**prompt_execution_id** | **integer** |  | 
**domain** | **character** | Registrable domain of the cited URL | 
**url** | **character** | Normalized cited URL (tracking parameters and fragment removed) | 
**url_sha256** | **character** | Key of the cited page, as GET /citation_intelligence/urls/{url_sha256} takes it | 
**position** | **integer** | Rank of the citation in the answer; 0 for a background source reference with no visible rank | 
**source_type** | **character** | owned (the project&#39;s domains), competitor or third_party | 
**is_google_play_link** | **character** |  | 
**is_app_store_link** | **character** |  | 
**created_at** | **character** |  | 


