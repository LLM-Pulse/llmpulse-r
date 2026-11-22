# llmpulse::BingWebmasterSummaryResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**site** | **character** | The connected site, as Bing Webmaster Tools names it (e.g. https://example.com/) | [optional] 
**sync_status** | **character** | State of the daily sync: pending, syncing, completed, failed or on_hold. on_hold means Bing refused the stored API key or the site is no longer verified: the data already synced still answers but stops updating until the site is reconnected in Preferences &gt; Project Settings &gt; Connections. | [optional] 
**last_synced_at** | **character** | When the site last synced. Null before its first sync, or while history_current is false. | [optional] 
**history_current** | **character** | False right after the site was changed and before its first sync. Until then the response holds no data and data_through is null. | [optional] 
**from** | **character** |  | [optional] 
**to** | **character** |  | [optional] 
**data_through** | **character** | The last day synced for the site. Later days are missing, not zero. | [optional] 
**totals** | [**BingWebmasterMetrics**](BingWebmasterMetrics.md) |  | [optional] 
**request_id** | **character** |  | [optional] 


